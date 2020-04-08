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
    vec4 Exposure_DoFDistance;
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
    float debugFlags;
};

struct UIParams
{
    vec4 Normal;
    mat4 Transform;
};

uniform vec4 CB0[47];
uniform vec4 CB1[5];
uniform vec4 CB2[1];
attribute vec4 POSITION;
attribute vec2 TEXCOORD0;
attribute vec4 COLOR0;
varying vec2 VARYING0;
varying vec4 VARYING1;
varying vec3 VARYING2;
varying vec3 VARYING3;
varying vec4 VARYING4;
varying vec3 VARYING5;

void main()
{
    vec4 v0 = POSITION * mat4(CB1[1], CB1[2], CB1[3], CB1[4]);
    vec4 v1 = v0 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v2 = v1;
    v2.z = v1.z - CB2[0].x;
    float v3 = dot(CB1[0].xyz, -CB0[11].xyz);
    vec3 v4 = v0.xyz;
    vec4 v5 = vec4(v0.xyz, 1.0);
    gl_Position = v2;
    VARYING0 = TEXCOORD0;
    VARYING1 = COLOR0;
    VARYING2 = (CB0[10].xyz * clamp(v3, 0.0, 1.0)) + (CB0[12].xyz * clamp(-v3, 0.0, 1.0));
    VARYING3 = ((v4 + (CB1[0].xyz * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
    VARYING4 = vec4(dot(CB0[20], v5), dot(CB0[21], v5), dot(CB0[22], v5), 1.0);
    VARYING5 = CB0[7].xyz - v4;
}

