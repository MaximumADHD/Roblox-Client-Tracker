#version 150

struct EmitterParams
{
    vec4 ModulateColor;
    vec4 Params;
    vec4 AtlasParams;
};

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

uniform vec4 CB1[3];
uniform vec4 CB0[32];
in vec4 POSITION;
in vec4 TEXCOORD0;
in vec2 TEXCOORD1;
in vec4 TEXCOORD2;
in vec2 TEXCOORD3;
out vec3 VARYING0;
out vec4 VARYING1;
out vec2 VARYING2;
out vec4 VARYING3;

void main()
{
    vec2 _331 = (TEXCOORD1 * 2.0) - vec2(1.0);
    vec4 _334 = TEXCOORD0 * vec4(0.00390625, 0.00390625, 0.00019175345369148999452590942382813, 3.0518509447574615478515625e-05);
    vec2 _338 = _334.xy + vec2(127.0);
    float _430 = _334.z;
    float _431 = cos(_430);
    float _434 = sin(_430);
    float _437 = _338.x;
    vec4 _555 = vec4(0.0);
    _555.x = _431 * _437;
    vec4 _558 = _555;
    _558.y = (-_434) * _437;
    float _448 = _338.y;
    vec4 _561 = _558;
    _561.z = _434 * _448;
    vec4 _564 = _561;
    _564.w = _431 * _448;
    vec4 _360 = (POSITION + (CB0[4] * dot(_331, _564.xy))) + (CB0[5] * dot(_331, _564.zw));
    mat4 _370 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _371 = _360 * _370;
    vec3 _567 = vec3(TEXCOORD1.x, TEXCOORD1.y, vec3(0.0).z);
    _567.y = 1.0 - TEXCOORD1.y;
    float _385 = _371.w;
    vec3 _570 = _567;
    _570.z = (CB0[13].z - _385) * CB0[13].w;
    vec4 _398 = (_360 + (CB0[6] * CB1[1].x)) * _370;
    vec4 _575 = _371;
    _575.z = (_398.z * _385) / _398.w;
    vec2 _471 = (vec2(0.5) * (_575.xy / vec2(_385)).xy) + vec2(0.5);
    vec3 _579 = vec3(_471.x, _471.y, vec3(0.0).z);
    _579.z = min(_385 - CB1[1].x, 495.0);
    vec4 _582 = vec4(_579.x, _579.y, _579.z, vec4(0.0).w);
    _582.w = 1.0 / _437;
    vec2 _496 = (TEXCOORD3 + ((TEXCOORD1 * (CB1[2].z - 1.0)) + vec2(0.5))) * CB1[2].xy;
    vec2 _585 = _496;
    _585.y = 1.0 - _496.y;
    gl_Position = _575;
    VARYING0 = _570;
    VARYING1 = TEXCOORD2 * 0.0039215688593685626983642578125;
    VARYING2 = _585;
    VARYING3 = _582;
}

