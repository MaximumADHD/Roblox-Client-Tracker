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

uniform vec4 CB0[32];
uniform vec4 CB2[1];
in vec4 POSITION;
in vec2 TEXCOORD0;
in vec4 COLOR0;
out vec2 VARYING0;
out vec4 VARYING1;
out vec3 VARYING2;

void main()
{
    vec4 _119 = POSITION * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _174 = _119;
    _174.z = _119.z - CB2[0].x;
    gl_Position = _174;
    VARYING0 = TEXCOORD0;
    VARYING1 = COLOR0;
    VARYING2 = CB0[7].xyz - POSITION.xyz;
}

