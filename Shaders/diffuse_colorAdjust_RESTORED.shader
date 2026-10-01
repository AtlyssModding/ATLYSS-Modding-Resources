Shader "Diffuse/ColorAdjust_RESTORED"
{
    Properties
    {
        _MainTex ("Albedo (RGB)", 2D) = "white" {}
		_Hue ("Hue", Range(-360, 360)) = 0
		_Brightness ("Brightness", Range(-1, 1)) = 0
		_Contrast ("Contrast", Range(0, 2)) = 1
		_Saturation ("Saturation", Range(0, 2)) = 1
		_ColorTint ("Color Tint", Color) = (1,1,1,1)
    }

    SubShader
    {
        Tags { "RenderType"="Opaque" }
        LOD 200

        CGPROGRAM
        // Physically based Lambert lighting model, and enable shadows on all light types
        #pragma surface surf Lambert fullforwardshadows
        
        // Use shader model 3.0 target, to get nicer looking lighting
        #pragma target 3.0

        sampler2D _MainTex;

        struct Input
        {
            float2 uv_MainTex;
        };

        half _Glossiness;
        half _Metallic;
		half _Hue;
		half _Brightness;
		half _Contrast;
		half _Saturation;
        fixed4 _ColorTint;

        // Add instancing support for this shader. You need to check 'Enable Instancing' on materials that use the shader.
        // See https://docs.unity3d.com/Manual/GPUInstancing.html for more information about instancing.
        // #pragma instancing_options assumeuniformscaling
        UNITY_INSTANCING_BUFFER_START(Props)
            // put more per-instance properties here
        UNITY_INSTANCING_BUFFER_END(Props)

		float3 applyHue(float3 aColor, float aHue)
		{
			float angle = radians(aHue);
			float3 k = float3(0.57735, 0.57735, 0.57735);
			float cosAngle = cos(angle);

			return aColor * cosAngle + cross(k, aColor) * sin(angle) + k * dot(k, aColor) * (1 - cosAngle);
		}

        void surf (Input IN, inout SurfaceOutput o)
        {
            // Albedo comes from a texture tinted by color
            fixed4 c = tex2D (_MainTex, IN.uv_MainTex) * _ColorTint;

			// HBCS Adjustments
			c.rgb = applyHue(c.rgb, _Hue);
			c.rgb = (c.rgb - .5) * (_Contrast) + .5;
			c.rgb = c.rgb + _Brightness;
			float3 intensity = dot(c.rgb, float3(0.299, 0.587, 0.114));
			c.rgb = lerp(intensity, c.rgb, _Saturation);

            o.Albedo = c.rgb;
            o.Alpha = c.a;
        }
        ENDCG
    }
    FallBack "Diffuse"
}
