Shader "LODDER/ Triplanar Terrain Specular" {
	Properties {
		_SpecColor ("Specular Color", Color) = (0.5, 0.5, 0.5, 1)
		_Shininess ("Shininess", Range (0.03, 1)) = 0.078125

		// set by terrain engine
		[HideInInspector] _Control ("Control (RGBA)", 2D) = "red" {}
		[HideInInspector] _Splat7 ("Layer 7 (A)", 2D) = "white" {}
		[HideInInspector] _Splat6 ("Layer 6 (B)", 2D) = "white" {}
		[HideInInspector] _Splat5 ("Layer 5 (G)", 2D) = "white" {}
		[HideInInspector] _Splat4 ("Layer 4 (R)", 2D) = "white" {}
		[HideInInspector] _Splat3 ("Layer 3 (A)", 2D) = "white" {}
		[HideInInspector] _Splat2 ("Layer 2 (B)", 2D) = "white" {}
		[HideInInspector] _Splat1 ("Layer 1 (G)", 2D) = "white" {}
		[HideInInspector] _Splat0 ("Layer 0 (R)", 2D) = "white" {}
		[HideInInspector] _Normal7 ("Normal 7 (A)", 2D) = "bump" {}
		[HideInInspector] _Normal6 ("Normal 6 (B)", 2D) = "bump" {}
		[HideInInspector] _Normal5 ("Normal 5 (G)", 2D) = "bump" {}
		[HideInInspector] _Normal4 ("Normal 4 (R)", 2D) = "bump" {}
		[HideInInspector] _Normal3 ("Normal 3 (A)", 2D) = "bump" {}
		[HideInInspector] _Normal2 ("Normal 2 (B)", 2D) = "bump" {}
		[HideInInspector] _Normal1 ("Normal 1 (G)", 2D) = "bump" {}
		[HideInInspector] _Normal0 ("Normal 0 (R)", 2D) = "bump" {}
		// used in fallback on old cards & base map
		[HideInInspector] _MainTex ("BaseMap (RGB)", 2D) = "white" {}
		[HideInInspector] _Color ("Main Color", Color) = (1,1,1,1)
	//	_Normals0 ("Normals0", Range(0.001, 5.0)) = 1
	//	_Normals1 ("Normals1", Range(0.001, 5.0)) = 1
	//	_Normals2 ("Normals2", Range(0.001, 5.0)) = 1
	//	_Normals3 ("Normals3", Range(0.001, 5.0)) = 1
		 _Color0 ("Color0", Color) = (1,1,1,1)
		 _Color1 ("Color1", Color) = (1,1,1,1)
		 _Color2 ("Color2", Color) = (1,1,1,1)
		 _Color3 ("Color3", Color) = (1,1,1,1)
		 _Color4 ("Color4", Color) = (1,1,1,1)
		 _Color5 ("Color5", Color) = (1,1,1,1)
		 _Color6 ("Color6", Color) = (1,1,1,1)
		 _Color7 ("Color7", Color) = (1,1,1,1)
		 _Color8 ("Color8", Color) = (1,1,1,1)
		 _Color9 ("Color9", Color) = (1,1,1,1)
		 _Color10 ("Color10", Color) = (1,1,1,1)
		 _tiles0x ("tile0X", float) = 0.03
		 _tiles0y ("tile0Y", float) = 0.03
		 _tiles0z ("tile0Z", float) = 0.03
		 _tiles1x ("tile1X", float) = 0.03
		 _tiles1y ("tile1Y", float) = 0.03
		 _tiles1z ("tile1Z", float) = 0.03
		 _tiles2x ("tile2X", float) = 0.03
		 _tiles2y ("tile2Y", float) = 0.03
		 _tiles2z ("tile2Z", float) = 0.03
		 _tiles3x ("tile3X", float) = 0.03
		 _tiles3y ("tile3Y", float) = 0.03
		 _tiles3z ("tile3Z", float) = 0.03
		 _tiles4x ("tile4X", float) = 0.03
		 _tiles4y ("tile4Y", float) = 0.03
		 _tiles4z ("tile4Z", float) = 0.03
		 _tiles5x ("tile5X", float) = 0.03
		 _tiles5y ("tile5Y", float) = 0.03
		 _tiles5z ("tile5Z", float) = 0.03
		 _tiles6x ("tile6X", float) = 0.03
		 _tiles6y ("tile6Y", float) = 0.03
		 _tiles6z ("tile6Z", float) = 0.03
		 _tiles7x ("tile7X", float) = 0.03
		 _tiles7y ("tile7Y", float) = 0.03
		 _tiles7z ("tile7Z", float) = 0.03
		 _tiles8x ("tile8X", float) = 0.03
		 _tiles8y ("tile8Y", float) = 0.03
		 _tiles8z ("tile8Z", float) = 0.03
		 _tiles9x ("tile9X", float) = 0.03
		 _tiles9y ("tile9Y", float) = 0.03
		 _tiles9z ("tile9Z", float) = 0.03
		 _tiles10x ("tile10X", float) = 0.03
		 _tiles10y ("tile10Y", float) = 0.03
		 _tiles10z ("tile10Z", float) = 0.03
		 _offset0x ("offset0X", float) = 0
		 _offset0y ("offset0Y", float) = 0
		 _offset0z ("offset0Z", float) = 0
		 _offset1x ("offset1X", float) = 0
		 _offset1y ("offset1Y", float) = 0
		 _offset1z ("offset1Z", float) = 0
		 _offset2x ("offset2X", float) = 0
		 _offset2y ("offset2Y", float) = 0
		 _offset2z ("offset2Z", float) = 0
		 _offset3x ("offset3X", float) = 0
		 _offset3y ("offset3Y", float) = 0
		 _offset3z ("offset3Z", float) = 0 
		 _offset4x ("offset4X", float) = 0
		 _offset4y ("offset4Y", float) = 0
		 _offset4z ("offset4Z", float) = 0
		 _offset5x ("offset5X", float) = 0
		 _offset5y ("offset5Y", float) = 0
		 _offset6z ("offset5Z", float) = 0
		 _offset6x ("offset6X", float) = 0
		 _offset6y ("offset6Y", float) = 0
		 _offset6z ("offset6Z", float) = 0
		 _offset7x ("offset7X", float) = 0
		 _offset7y ("offset7Y", float) = 0
		 _offset7z ("offset7Z", float) = 0
		 _offset8x ("offset8X", float) = 0
		 _offset8y ("offset8Y", float) = 0
		 _offset8z ("offset8Z", float) = 0
		 _offset9x ("offset9X", float) = 0
		 _offset9y ("offset9Y", float) = 0
		 _offset9z ("offset9Z", float) = 0
		 _offset10x ("offset10X", float) = 0
		 _offset10y ("offset10Y", float) = 0
		 _offset10z ("offset10Z", float) = 0
	}

	SubShader {
		Tags {
			"SplatCount" = "4"
			"Queue" = "Geometry-100"
			"RenderType" = "Opaque"
			"TerrainCompatible" = "true"
		}

		CGPROGRAM
		#pragma surface surf BlinnPhong vertex:SplatmapVert finalcolor:SplatmapFinalColor finalprepass:SplatmapFinalPrepass finalgbuffer:SplatmapFinalGBuffer
		#pragma multi_compile_fog
		#pragma multi_compile __ _TERRAIN_NORMAL_MAP
		#pragma target 3.0
		// needs more than 8 texcoords
		#pragma exclude_renderers gles

		#include "TerrainSplatmapCustom.cginc"

		half _Shininess;

		void surf(Input IN, inout SurfaceOutput o)
		{
			half4 splat_control;
			half weight;
			fixed4 mixedDiffuse;
			SplatmapMix(IN, splat_control, weight, mixedDiffuse, o.Normal);
			o.Albedo = mixedDiffuse.rgb;
			o.Alpha = weight;
			o.Gloss = mixedDiffuse.a;
			o.Specular = _Shininess;
		}
		ENDCG
	}

	Dependency "AddPassShader" = "Hidden/TerrainEngine/Splatmap/Specular-AddPass"
	Dependency "BaseMapShader" = "Hidden/TerrainEngine/Splatmap/Specular-Base"

	Fallback "Nature/Terrain/Diffuse"
}
