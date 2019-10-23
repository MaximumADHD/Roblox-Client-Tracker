#version 150

struct UIParams
{
    vec4 Normal;
    mat4 Transform;
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
    vec3 Exposure;
    vec4 LightConfig0;
    vec4 LightConfig1;
    vec4 LightConfig2;
    vec4 LightConfig3;
    vec4 ShadowMatrix0;
    vec4 ShadowMatrix1;
    vec4 ShadowMatrix2;
    vec4 RefractionBias_FadeDistance_GlowFactor_SpecMul;
    vec4 OutlineBrightness_ShadowInfo;
    vec4 SkyGradientTop_EnvDiffuse;
    vec4 SkyGradientBottom_EnvSpec;
    vec3 AmbientColorNoIBL;
    vec3 SkyAmbientNoIBL;
    vec4 AmbientCube[12];
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

uniform vec4 CB1[5];
uniform vec4 CB0[47];
uniform vec4 CB2[1];
in vec4 POSITION;
in vec2 TEXCOORD0;
in vec4 COLOR0;
out vec2 VARYING0;
out vec4 VARYING1;

void main()
{
    vec4 v0 = (POSITION * mat4(CB1[1], CB1[2], CB1[3], CB1[4])) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v1 = v0;
    v1.z = v0.z - CB2[0].x;
    gl_Position = v1;
    VARYING0 = TEXCOORD0;
    VARYING1 = COLOR0;
}

