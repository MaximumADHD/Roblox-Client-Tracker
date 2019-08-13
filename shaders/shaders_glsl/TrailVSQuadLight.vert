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
attribute vec4 POSITION;
attribute vec3 TEXCOORD0;
attribute vec4 TEXCOORD1;
varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec3 VARYING2;
varying vec3 VARYING3;
varying vec3 VARYING4;

void main()
{
    vec4 _334 = vec4(0.0);
    _334.x = TEXCOORD0.x;
    vec4 _337 = _334;
    _337.y = TEXCOORD0.y;
    vec4 _339 = _337;
    _339.z = 0.0;
    vec2 _233 = _339.xy * TEXCOORD0.z;
    vec4 _343 = vec4(_233.x, _233.y, _339.z, _339.w);
    _343.w = TEXCOORD0.z;
    vec4 _272 = vec4(POSITION.xyz, 1.0);
    gl_Position = (POSITION + (CB0[6] * CB1[0].x)) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = _343;
    VARYING1 = TEXCOORD1 * 0.0039215688593685626983642578125;
    VARYING2 = (POSITION.yxz * CB0[17].xyz) + CB0[18].xyz;
    VARYING3 = vec3(dot(CB0[21], _272), dot(CB0[22], _272), dot(CB0[23], _272));
    VARYING4 = CB0[7].xyz - POSITION.xyz;
}

