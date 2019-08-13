#version 110

struct Params
{
    mat4 World;
    mat4 ViewProjection;
    vec4 Color1;
    vec4 Color2;
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

uniform vec4 CB1[10];
uniform vec4 CB0[32];
attribute vec4 POSITION;
attribute vec2 TEXCOORD0;
attribute vec4 COLOR0;
varying vec2 VARYING0;
varying vec4 VARYING1;

void main()
{
    vec4 _118 = POSITION * mat4(CB1[0], CB1[1], CB1[2], CB1[3]);
    vec4 _175 = _118 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    _175.z = 0.0;
    gl_Position = _175;
    VARYING0 = TEXCOORD0;
    VARYING1 = COLOR0 * mix(CB1[9], CB1[8], vec4(_118.y * 0.0005882352706976234912872314453125));
    gl_PointSize = 2.0;
}

