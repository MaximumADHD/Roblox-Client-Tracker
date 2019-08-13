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

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec3 VARYING2;
varying vec3 VARYING3;
varying vec3 VARYING4;

void main()
{
    vec4 _471 = texture2D(texTexture, VARYING0.xy / vec2(VARYING0.w));
    vec3 _484 = (_471.xyz * VARYING1.xyz).xyz;
    vec3 _559 = vec3(CB0[15].x);
    float _661 = clamp(dot(step(CB0[20].xyz, abs(VARYING2 - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _605 = VARYING2.yzx - (VARYING2.yzx * _661);
    vec4 _615 = vec4(clamp(_661, 0.0, 1.0));
    vec4 _616 = mix(texture3D(LightMapTexture, _605), vec4(0.0), _615);
    vec4 _621 = mix(texture3D(LightGridSkylightTexture, _605), vec4(1.0), _615);
    vec4 _671 = texture2D(ShadowMapTexture, VARYING3.xy);
    vec3 _502 = mix(_484, _484 * _484, _559).xyz;
    vec3 _523 = mix(_502, (min(((_616.xyz * (_616.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _621.x), vec3(CB0[17].w)) + (CB0[10].xyz * ((1.0 - ((step(_671.x, VARYING3.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING3.z - 0.5)), 0.0, 1.0)) * _671.y)) * _621.y))) * _502, vec3(CB1[0].z)).xyz;
    float _537 = VARYING1.w * _471.w;
    vec3 _543 = mix(CB0[14].xyz, mix(_523, sqrt(clamp(_523 * CB0[15].z, vec3(0.0), vec3(1.0))), _559).xyz, vec3(clamp((CB0[13].x * length(VARYING4)) + CB0[13].y, 0.0, 1.0))).xyz * _537;
    vec4 _807 = vec4(_543.x, _543.y, _543.z, vec4(0.0).w);
    _807.w = _537 * CB1[0].y;
    gl_FragData[0] = _807;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$texTexture=s0
