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

struct EmitterParams
{
    vec4 ModulateColor;
    vec4 Params;
    vec4 AtlasParams;
};

uniform vec4 CB0[32];
uniform vec4 CB1[3];
uniform sampler2D LightingAtlasTexture;
uniform sampler2D texTexture;

varying vec3 VARYING0;
varying vec4 VARYING1;
varying vec2 VARYING2;

void main()
{
    vec4 _262 = texture2D(texTexture, VARYING0.xy);
    vec4 _267 = VARYING1 * CB1[0];
    vec3 _272 = _262.xyz * _267.xyz;
    vec4 _398 = vec4(_272.x, _272.y, _272.z, vec4(0.0).w);
    _398.w = _262.w * _267.w;
    vec3 _323 = vec3(CB0[15].x);
    vec4 _333 = texture2D(LightingAtlasTexture, VARYING2);
    vec3 _292 = mix(_398.xyz, _398.xyz * _398.xyz, _323).xyz;
    vec3 _304 = mix(_292, (_333.xyz * (_333.w * 120.0)) * _292, vec3(CB1[2].w)).xyz;
    vec3 _376 = mix(CB0[14].xyz, mix(_304, sqrt(clamp(_304 * CB0[15].z, vec3(0.0), vec3(1.0))), _323).xyz, vec3(clamp(VARYING0.z, 0.0, 1.0)));
    gl_FragData[0] = vec4(_376.x, _376.y, _376.z, _398.w);
}

//$$LightingAtlasTexture=s2
//$$texTexture=s0
