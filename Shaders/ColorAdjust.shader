Shader "Unlit/ColorAdjust"
{
    Properties
    {
        _MainTex ("Texture", 2D) = "white" {}
        _ColorTint ("Color", Color) = (1,1,1,1)
        _Cutoff ("Alpha cutoff", Range(0, 1)) = 0.5
        _Hue ("Hue", Range(-360, 360)) = 0
        _Saturation ("Saturation", Range(0, 2)) = 1
        _Brightness ("Brightness", Range(-1, 1)) = 0
        _Contrast ("Contrast", Range(0, 2)) = 1

        [Header(Shine)] [Space]
        _ShineValue ("Shine Value", Range(0, 1)) = 0
        _ColorTint2 ("Color Tint2", Color) = (1,1,1,1)
        _ShineValue2 ("Shine Value2", Range(0, 1)) = 0
        _ColorTint3 ("Color Tint3", Color) = (1,1,1,1)
        
        [Enum(UnityEngine.Rendering.CullMode)] _CullMode ("Cull Mode", Int) = 2
    }
    CGINCLUDE

    float3 applyHue(float3 color, float hue)
    {
        float angle = radians(hue);
        float3 k = float3(0.57735, 0.57735, 0.57735);
        float cosAngle = cos(angle);
        //Rodrigues' rotation formula
        return color * cosAngle + cross(k, color) * sin(angle) + k * dot(k, color) * (1 - cosAngle);
    }

    float4 applyHSBEffect(float4 color, float hue, float saturation, float brightness, float contrast)
    {
        color.rgb = applyHue(color.rgb, hue);
        color.rgb = (color.rgb - 0.5) * contrast + 0.5;
        color.rgb = color.rgb + brightness;
        float3 intensity = dot(color.rgb, float3(0.299, 0.587, 0.114));
        color.rgb = lerp(intensity, color.rgb, saturation);
        return color;
    }

    ENDCG
    SubShader
    {
        Tags { "RenderType"="Opaque" }
        LOD 100
        Cull [_CullMode]
        Pass
        {
            CGPROGRAM

            #pragma vertex vert
            #pragma fragment frag

            #pragma multi_compile_fog

            #include "UnityCG.cginc"

            struct appdata
            {
                float4 vertex : POSITION;
                float2 uv : TEXCOORD0;

                UNITY_VERTEX_INPUT_INSTANCE_ID
            };

            struct v2f
            {
                float4 vertex : SV_POSITION;
                float2 uv : TEXCOORD0;
                float3 shine : TEXCOORD1;
                UNITY_FOG_COORDS(2)

                UNITY_VERTEX_OUTPUT_STEREO
            };

            sampler2D _MainTex;
            float4 _MainTex_ST;
            float3 _ColorTint;
            float _Cutoff;

            float _Hue;
            float _Saturation;
            float _Brightness;
            float _Contrast;

            float _ShineValue, _ShineValue2;
            float3 _ColorTint2, _ColorTint3;

            v2f vert (appdata v)
            {
                v2f o;

                UNITY_SETUP_INSTANCE_ID(v);
                UNITY_INITIALIZE_OUTPUT(v2f, o);
                UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

                o.vertex = UnityObjectToClipPos(v.vertex);
                o.uv = TRANSFORM_TEX(v.uv, _MainTex);
                o.shine = _ShineValue * _ColorTint2 + _ShineValue2 * _ColorTint3;

                UNITY_TRANSFER_FOG(o, o.vertex);
                return o;
            }

            float4 applyHSBEffect(float4 color)
            {
                return applyHSBEffect(color, _Hue, _Saturation, _Brightness, _Contrast);
            }

            fixed4 frag (v2f i) : SV_Target
            {
                float4 albedo = tex2D(_MainTex, i.uv);
                float4 col = applyHSBEffect(albedo);
                col.rgb *= _ColorTint;
                col.rgb += i.shine;

                clip(col.a - _Cutoff);

                UNITY_APPLY_FOG(i.fogCoord, col);
                return col;
            }

            ENDCG
        }
    }
}