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
    vec2 _301 = (TEXCOORD1 * 2.0) - vec2(1.0);
    vec4 _304 = TEXCOORD0 * vec4(0.00390625, 0.00390625, 0.00019175345369148999452590942382813, 3.0518509447574615478515625e-05);
    vec2 _308 = _304.xy + vec2(127.0);
    float _395 = _304.z;
    float _396 = cos(_395);
    float _399 = sin(_395);
    float _402 = _308.x;
    vec4 _489 = vec4(0.0);
    _489.x = _396 * _402;
    vec4 _492 = _489;
    _492.y = (-_399) * _402;
    float _413 = _308.y;
    vec4 _495 = _492;
    _495.z = _399 * _413;
    vec4 _498 = _495;
    _498.w = _396 * _413;
    vec4 _330 = (vec4(POSITION.xyz, 1.0) + (CB0[4] * dot(_301, _498.xy))) + (CB0[5] * dot(_301, _498.zw));
    mat4 _340 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _341 = _330 * _340;
    vec3 _501 = vec3(TEXCOORD1.x, TEXCOORD1.y, vec3(0.0).z);
    _501.y = 1.0 - TEXCOORD1.y;
    vec3 _503 = _501;
    _503.z = (CB0[13].x * length(CB0[7].xyz - POSITION.xyz)) + CB0[13].y;
    vec4 _369 = (_330 + (CB0[6] * CB1[1].x)) * _340;
    vec4 _508 = _341;
    _508.z = (_369.z * _341.w) / _369.w;
    vec2 _436 = (TEXCOORD3 + ((TEXCOORD1 * (CB1[2].z - 1.0)) + vec2(0.5))) * CB1[2].xy;
    vec2 _511 = _436;
    _511.y = 1.0 - _436.y;
    gl_Position = _508;
    VARYING0 = _503;
    VARYING1 = TEXCOORD2 * 0.0039215688593685626983642578125;
    VARYING2 = _511;
}

