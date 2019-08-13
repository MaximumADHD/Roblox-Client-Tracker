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
attribute vec4 POSITION;
attribute vec4 TEXCOORD0;
attribute vec2 TEXCOORD1;
attribute vec2 TEXCOORD3;
varying vec3 VARYING0;

void main()
{
    vec2 _319 = (TEXCOORD3 + (TEXCOORD1 * CB1[2].z)) * CB1[2].xy;
    vec2 _333 = (TEXCOORD1 * 2.0) - vec2(1.0);
    vec4 _336 = TEXCOORD0 * vec4(0.00390625, 0.00390625, 0.00019175345369148999452590942382813, 3.0518509447574615478515625e-05);
    vec2 _340 = _336.xy + vec2(127.0);
    float _371 = _336.z;
    float _372 = cos(_371);
    float _375 = sin(_371);
    float _378 = _340.x;
    vec4 _456 = vec4(0.0);
    _456.x = _372 * _378;
    vec4 _459 = _456;
    _459.y = (-_375) * _378;
    float _389 = _340.y;
    vec4 _462 = _459;
    _462.z = _375 * _389;
    vec4 _465 = _462;
    _465.w = _372 * _389;
    vec3 _364 = (POSITION.xyz + (CB0[4].xyz * dot(_333, _465.xy))) + (CB0[5].xyz * dot(_333, _465.zw));
    gl_Position = vec4((_319.x * 2.0) - 1.0, 1.0 - (_319.y * 2.0), 0.0, 1.0);
    VARYING0 = ((_364 + (normalize(CB0[7].xyz - _364) * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz;
}

