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
    float _886 = clamp(dot(step(CB0[20].xyz, abs(VARYING5.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _830 = VARYING5.yzx - (VARYING5.yzx * _886);
    vec4 _840 = vec4(clamp(_886, 0.0, 1.0));
    vec4 _841 = mix(texture3D(LightMapTexture, _830), vec4(0.0), _840);
    vec4 _846 = mix(texture3D(LightGridSkylightTexture, _830), vec4(1.0), _840);
    float _881 = _846.y;
    vec4 _916 = vec4(CB3[0].w);
    float _954 = -VARYING6.x;
    vec2 _1015 = (((mix(texture2D(NormalMap1Texture, VARYING2), texture2D(NormalMap2Texture, VARYING2), _916) * VARYING0.x) + (mix(texture2D(NormalMap1Texture, VARYING3), texture2D(NormalMap2Texture, VARYING3), _916) * VARYING0.y)) + (mix(texture2D(NormalMap1Texture, VARYING4), texture2D(NormalMap2Texture, VARYING4), _916) * VARYING0.z)).wy * 2.0;
    vec2 _1017 = _1015 - vec2(1.0);
    vec3 _989 = vec3(dot(VARYING1, VARYING0.xyz));
    vec3 _1010 = normalize(((mix(vec3(VARYING6.z, 0.0, _954), vec3(VARYING6.y, _954, 0.0), _989) * _1017.x) + (mix(vec3(0.0, -1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), _989) * _1017.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - _1015, _1017), 0.0, 1.0))));
    vec3 _707 = mix(VARYING6, _1010, vec3(0.25));
    vec3 _714 = normalize(VARYING7.xyz);
    vec3 _732 = textureCube(EnvMapTexture, reflect(-_714, _707)).xyz;
    vec3 _1048 = vec3(CB0[15].x);
    vec3 _786 = (mix(CB3[1].xyz, mix(_732, (_732 * _732) * CB0[15].w, _1048) * 1.0, vec3(((clamp(0.7799999713897705078125 - (2.5 * abs(dot(_707, _714))), 0.0, 1.0) + 0.300000011920928955078125) * VARYING0.w) * CB3[2].z)) * (min(((_841.xyz * (_841.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _846.x), vec3(CB0[17].w)) + (CB0[10].xyz * _881))) + (CB0[10].xyz * ((((2.0 * clamp(1.0 - (VARYING7.w * CB0[24].y), 0.0, 1.0)) * CB3[2].z) * _881) * pow(clamp(dot(_1010, normalize((-CB0[11].xyz) + _714)), 0.0, 1.0), 900.0)));
    vec4 _1181 = vec4(_786.x, _786.y, _786.z, vec4(0.0).w);
    _1181.w = 1.0;
    vec3 _1102 = mix(CB0[14].xyz, mix(_1181.xyz, sqrt(clamp(_1181.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _1048).xyz, vec3(clamp(VARYING5.w, 0.0, 1.0)));
    gl_FragData[0] = vec4(_1102.x, _1102.y, _1102.z, _1181.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$EnvMapTexture=s3
