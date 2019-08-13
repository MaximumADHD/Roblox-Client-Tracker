#version 110

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
attribute vec4 POSITION;
attribute vec4 TEXCOORD0;
attribute vec2 TEXCOORD1;
attribute vec4 TEXCOORD2;
attribute vec2 TEXCOORD3;
varying vec3 VARYING0;
varying vec4 VARYING1;
varying vec2 VARYING2;

void main()
{
    vec2 _285 = (TEXCOORD1 * 2.0) - vec2(1.0);
    vec4 _288 = TEXCOORD0 * vec4(0.00390625, 0.00390625, 0.00019175345369148999452590942382813, 3.0518509447574615478515625e-05);
    vec2 _292 = _288.xy + vec2(127.0);
    float _374 = _288.z;
    float _375 = cos(_374);
    float _378 = sin(_374);
    float _381 = _292.x;
    vec4 _469 = vec4(0.0);
    _469.x = _375 * _381;
    vec4 _472 = _469;
    _472.y = (-_378) * _381;
    float _392 = _292.y;
    vec4 _475 = _472;
    _475.z = _378 * _392;
    vec4 _478 = _475;
    _478.w = _375 * _392;
    vec4 _314 = (POSITION + (CB0[4] * dot(_285, _478.xy))) + (CB0[5] * dot(_285, _478.zw));
    mat4 _324 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _325 = _314 * _324;
    vec3 _481 = vec3(TEXCOORD1.x, TEXCOORD1.y, vec3(0.0).z);
    _481.y = 1.0 - TEXCOORD1.y;
    float _339 = _325.w;
    vec3 _484 = _481;
    _484.z = (CB0[13].z - _339) * CB0[13].w;
    vec4 _352 = (_314 + (CB0[6] * CB1[1].x)) * _324;
    vec4 _489 = _325;
    _489.z = (_352.z * _339) / _352.w;
    vec2 _415 = (TEXCOORD3 + ((TEXCOORD1 * (CB1[2].z - 1.0)) + vec2(0.5))) * CB1[2].xy;
    vec2 _492 = _415;
    _492.y = 1.0 - _415.y;
    gl_Position = _489;
    VARYING0 = _484;
    VARYING1 = TEXCOORD2 * 0.0039215688593685626983642578125;
    VARYING2 = _492;
}

