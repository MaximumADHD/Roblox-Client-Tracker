#version 110

struct Globals
{
    mat4 ViewProjection;
    vec4 ViewRight;
    vec4 ViewUp;
    vec4 ViewDir;
    vec3 CameraPosition;
    vec3 AmbientColor;
    vec3 SkyAmbient;
    vec3 Lamp0Color;
    vec3 Lamp0Dir;
    vec3 Lamp1Color;
    vec4 FogParams;
    vec4 FogColor_GlobalForceFieldTime;
    vec4 Technology_Exposure;
    vec4 LightBorder;
    vec4 LightConfig0;
    vec4 LightConfig1;
    vec4 LightConfig2;
    vec4 LightConfig3;
    vec4 ShadowMatrix0;
    vec4 ShadowMatrix1;
    vec4 ShadowMatrix2;
    vec4 RefractionBias_FadeDistance_GlowFactor_SpecMul;
    vec4 OutlineBrightness_ShadowInfo;
    vec4 CascadeSphere0;
    vec4 CascadeSphere1;
    vec4 CascadeSphere2;
    vec4 CascadeSphere3;
    float hybridLerpDist;
    float hybridLerpSlope;
    float evsmPosExp;
    float evsmNegExp;
    float globalShadow;
    float shadowBias;
    float shadowAlphaRef;
    float debugFlagsShadows;
};

struct Params
{
    vec4 WaveParams;
    vec4 WaterColor;
    vec4 WaterParams;
};

uniform vec4 CB0[32];
uniform vec4 CB3[3];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D NormalMap1Texture;
uniform sampler2D NormalMap2Texture;
uniform samplerCube EnvMapTexture;

varying vec4 VARYING0;
varying vec3 VARYING1;
varying vec2 VARYING2;
varying vec2 VARYING3;
varying vec2 VARYING4;
varying vec4 VARYING5;
varying vec3 VARYING6;
varying vec4 VARYING7;

void main()
{
    float _901 = clamp(dot(step(CB0[20].xyz, abs(VARYING5.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _845 = VARYING5.yzx - (VARYING5.yzx * _901);
    vec4 _855 = vec4(clamp(_901, 0.0, 1.0));
    vec4 _856 = mix(texture3D(LightMapTexture, _845), vec4(0.0), _855);
    vec4 _861 = mix(texture3D(LightGridSkylightTexture, _845), vec4(1.0), _855);
    vec3 _871 = (_856.xyz * (_856.w * 120.0)).xyz;
    float _878 = _861.x;
    float _896 = _861.y;
    vec4 _931 = vec4(CB3[0].w);
    float _969 = -VARYING6.x;
    vec2 _1030 = (((mix(texture2D(NormalMap1Texture, VARYING2), texture2D(NormalMap2Texture, VARYING2), _931) * VARYING0.x) + (mix(texture2D(NormalMap1Texture, VARYING3), texture2D(NormalMap2Texture, VARYING3), _931) * VARYING0.y)) + (mix(texture2D(NormalMap1Texture, VARYING4), texture2D(NormalMap2Texture, VARYING4), _931) * VARYING0.z)).wy * 2.0;
    vec2 _1032 = _1030 - vec2(1.0);
    vec3 _1004 = vec3(dot(VARYING1, VARYING0.xyz));
    vec3 _1025 = normalize(((mix(vec3(VARYING6.z, 0.0, _969), vec3(VARYING6.y, _969, 0.0), _1004) * _1032.x) + (mix(vec3(0.0, -1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), _1004) * _1032.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - _1030, _1032), 0.0, 1.0))));
    vec3 _715 = mix(VARYING6, _1025, vec3(0.25));
    vec3 _722 = normalize(VARYING7.xyz);
    vec3 _752 = textureCube(EnvMapTexture, reflect(-_722, _715)).xyz;
    vec3 _1063 = vec3(CB0[15].x);
    vec3 _801 = mix(CB3[1].xyz * (min((_871 + CB0[8].xyz) + (CB0[9].xyz * _878), vec3(CB0[17].w)) + (CB0[10].xyz * _896)), (mix(_752, (_752 * _752) * CB0[15].w, _1063) * _878) + (_871 * 0.100000001490116119384765625), vec3(((clamp(0.7799999713897705078125 - (2.5 * abs(dot(_715, _722))), 0.0, 1.0) + 0.300000011920928955078125) * VARYING0.w) * CB3[2].z)) + (CB0[10].xyz * ((((2.0 * clamp(1.0 - (VARYING7.w * CB0[24].y), 0.0, 1.0)) * CB3[2].z) * _896) * pow(clamp(dot(_1025, normalize((-CB0[11].xyz) + _722)), 0.0, 1.0), 900.0)));
    vec4 _1198 = vec4(_801.x, _801.y, _801.z, vec4(0.0).w);
    _1198.w = 1.0;
    vec3 _1117 = mix(CB0[14].xyz, mix(_1198.xyz, sqrt(clamp(_1198.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _1063).xyz, vec3(clamp(VARYING5.w, 0.0, 1.0)));
    gl_FragData[0] = vec4(_1117.x, _1117.y, _1117.z, _1198.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$EnvMapTexture=s3
