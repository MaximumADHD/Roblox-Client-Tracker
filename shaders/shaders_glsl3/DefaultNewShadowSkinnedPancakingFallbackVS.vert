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

uniform vec4 CB1[216];
uniform vec4 CB0[32];
in vec4 POSITION;
in vec2 TEXCOORD0;
in vec4 COLOR0;
out vec3 VARYING0;
out vec2 VARYING1;

void main()
{
    int _193 = int(COLOR0.x) * 3;
    vec4 _232 = vec4(dot(CB1[_193 * 1 + 0], POSITION), dot(CB1[(_193 + 1) * 1 + 0], POSITION), dot(CB1[(_193 + 2) * 1 + 0], POSITION), 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _285 = _232;
    _285.z = 0.5;
    vec3 _287 = vec3(TEXCOORD0.x, TEXCOORD0.y, vec3(0.0).z);
    _287.z = COLOR0.w * 0.0039215688593685626983642578125;
    gl_Position = _285;
    VARYING0 = _287;
    VARYING1 = vec2(_232.zw);
}

