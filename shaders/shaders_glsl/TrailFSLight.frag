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

struct TrailParams
{
    vec4 Params;
};

uniform vec4 CB0[32];
uniform vec4 CB1[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D texTexture;

varying vec3 VARYING0;
varying vec4 VARYING1;
varying vec3 VARYING2;
varying vec3 VARYING3;
varying vec3 VARYING4;

void main()
{
    vec4 _463 = texture2D(texTexture, VARYING0.xy);
    vec3 _476 = (_463.xyz * VARYING1.xyz).xyz;
    vec3 _551 = vec3(CB0[15].x);
    float _653 = clamp(dot(step(CB0[20].xyz, abs(VARYING2 - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _597 = VARYING2.yzx - (VARYING2.yzx * _653);
    vec4 _607 = vec4(clamp(_653, 0.0, 1.0));
    vec4 _608 = mix(texture3D(LightMapTexture, _597), vec4(0.0), _607);
    vec4 _613 = mix(texture3D(LightGridSkylightTexture, _597), vec4(1.0), _607);
    vec4 _663 = texture2D(ShadowMapTexture, VARYING3.xy);
    vec3 _494 = mix(_476, _476 * _476, _551).xyz;
    vec3 _515 = mix(_494, (min(((_608.xyz * (_608.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _613.x), vec3(CB0[17].w)) + (CB0[10].xyz * ((1.0 - ((step(_663.x, VARYING3.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING3.z - 0.5)), 0.0, 1.0)) * _663.y)) * _613.y))) * _494, vec3(CB1[0].z)).xyz;
    float _529 = VARYING1.w * _463.w;
    vec3 _535 = mix(CB0[14].xyz, mix(_515, sqrt(clamp(_515 * CB0[15].z, vec3(0.0), vec3(1.0))), _551).xyz, vec3(clamp((CB0[13].x * length(VARYING4)) + CB0[13].y, 0.0, 1.0))).xyz * _529;
    vec4 _797 = vec4(_535.x, _535.y, _535.z, vec4(0.0).w);
    _797.w = _529 * CB1[0].y;
    gl_FragData[0] = _797;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$texTexture=s0
