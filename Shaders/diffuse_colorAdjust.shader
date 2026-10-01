
Shader "Diffuse/ColorAdjust"{
	Properties{
		_MainTex("Color (RGB) Alpha (A)", 2D) = "white" {}
		_Hue("Hue", Range(-360, 360)) = 0.
		_Brightness("Brightness", Range(-1, 1)) = 0.
		_Contrast("Contrast", Range(0, 2)) = 1
		_Saturation("Saturation", Range(0, 2)) = 1
		_ColorTint("Color Tint", Color) = (1, 1, 1, 1) // add _Color property
	}
	SubShader {
	    Tags { "RenderType"="Opaque" }
	    LOD 200

	CGPROGRAM
	#pragma surface surf Lambert

	sampler2D _MainTex;
	fixed4 _Color;

	struct Input {
	    float2 uv_MainTex;
		float4 color : COLOR;
	};

	float4 _ColorTint;
				float _Hue;
				float _Brightness;
				float _Contrast;
				float _Saturation;
				inline float3 applyHue(float3 aColor, float aHue)
				{
					float angle = radians(aHue);
					float3 k = float3(0.57735, 0.57735, 0.57735);
					float cosAngle = cos(angle);
					//Rodrigues' rotation formula
					return aColor * cosAngle + cross(k, aColor) * sin(angle) + k * dot(k, aColor) * (1 - cosAngle);
				}
				inline float4 applyHSBEffect(float4 startColor)
				{
					float4 outputColor = startColor;

				    outputColor.rgb = applyHue(outputColor.rgb, _Hue);
					outputColor.rgb = (outputColor.rgb - 0.5f) * (_Contrast)+0.5f;
					outputColor.rgb = outputColor.rgb + _Brightness;
					float3 intensity = dot(outputColor.rgb, float3(0.299, 0.587, 0.114));
					outputColor.rgb = lerp(intensity, outputColor.rgb, _Saturation);
					return outputColor;
				}
	void surf (Input IN, inout SurfaceOutput o) {
		float4 startColor = tex2D(_MainTex, IN.uv_MainTex);
		float4 c = applyHSBEffect(startColor) * _ColorTint;

    	o.Albedo = c.rgb * IN.color.rgb;
	    o.Alpha = c.a* IN.color.a;
	}
	ENDCG
	}
Fallback "Legacy Shaders/VertexLit"
		SubShader{
		    Tags {"RenderType" = "Opaque" }
			LOD 100
			Pass
			{
				CGPROGRAM
				#pragma vertex vert
				#pragma fragment frag

				// make fog work
				#pragma multi_compile_fog

				#include "UnityCG.cginc"
				struct appdata
				{
					float4 vertex : POSITION;
					float2 uv : TEXCOORD0;
					float4 color : COLOR;
				};
				struct v2f
				{
					float2 uv : TEXCOORD0;
					float4 vertex : SV_POSITION;
					float4 color : COLOR;
					UNITY_FOG_COORDS(1)
				};
				sampler2D _MainTex;
				float4 _MainTex_ST;
				float _Hue;
				float _Brightness;
				float _Contrast;
				float _Saturation;
				float4 _ColorTint;
				float4 _Color;

				v2f vert(appdata v)
				{
					v2f o;
					o.vertex = UnityObjectToClipPos(v.vertex);
					o.uv = TRANSFORM_TEX(v.uv, _MainTex);
					o.color = v.color;
					UNITY_TRANSFER_FOG(o,o.vertex);
					return o;
				}
				inline float3 applyHue(float3 aColor, float aHue)
				{
					float angle = radians(aHue);
					float3 k = float3(0.57735, 0.57735, 0.57735);
					float cosAngle = cos(angle);
					//Rodrigues' rotation formula
					return aColor * cosAngle + cross(k, aColor) * sin(angle) + k * dot(k, aColor) * (1 - cosAngle);
				}
				inline float4 applyHSBEffect(float4 startColor)
				{
					float4 outputColor = startColor;

				    outputColor.rgb = applyHue(outputColor.rgb, _Hue);
					outputColor.rgb = (outputColor.rgb - 0.5f) * (_Contrast)+0.5f;
					outputColor.rgb = outputColor.rgb + _Brightness;
					float4 intensity = dot(outputColor.rgb, float3(0.299, 0.587, 0.114));
					outputColor.rgb = lerp(intensity, outputColor.rgb, _Saturation);
					return outputColor;
				}
				fixed4 frag(v2f i) : SV_Target
				{
					float4 startColor = tex2D(_MainTex, i.uv);
					float4 col = _Color;
					float4 hsbColor = applyHSBEffect(startColor) * _ColorTint;

					UNITY_APPLY_FOG(i.fogCoord, hsbColor);
					return hsbColor;
				}
				ENDCG
			}
		}
}
