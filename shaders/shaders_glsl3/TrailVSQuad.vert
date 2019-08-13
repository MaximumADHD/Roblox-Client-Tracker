#version 150

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
in vec4 POSITION;
in vec3 TEXCOORD0;
in vec4 TEXCOORD1;
out vec4 VARYING0;
out vec4 VARYING1;
out vec3 VARYING2;

void main()
{
    vec4 _212 = vec4(0.0);
    _212.x = TEXCOORD0.x;
    vec4 _215 = _212;
    _215.y = TEXCOORD0.y;
    vec4 _217 = _215;
    _217.z = 0.0;
    vec2 _160 = _217.xy * TEXCOORD0.z;
    vec4 _221 = vec4(_160.x, _160.y, _217.z, _217.w);
    _221.w = TEXCOORD0.z;
    gl_Position = (POSITION + (CB0[6] * CB1[0].x)) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = _221;
    VARYING1 = TEXCOORD1 * 0.0039215688593685626983642578125;
    VARYING2 = CB0[7].xyz - POSITION.xyz;
}

