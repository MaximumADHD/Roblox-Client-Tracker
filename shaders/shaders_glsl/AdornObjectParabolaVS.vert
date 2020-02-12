#version 110

struct AdornParams
{
    mat4 World;
    vec4 Color;
    vec4 Params;
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
    float debugFlags;
};

uniform vec4 CB1[6];
uniform vec4 CB0[47];
attribute vec4 POSITION;
varying vec4 VARYING0;
varying vec3 VARYING1;

void main()
{
    float v0 = POSITION.x * 0.5;
    float v1 = (v0 + 0.5) * CB1[5].z;
    float v2 = atan(((2.0 * CB1[5].x) * v1) + CB1[5].y);
    vec2 v3 = POSITION.yz * CB1[5].w;
    float v4 = v3.x;
    vec4 v5 = vec4(((-v4) * sin(v2)) + v1, (v4 * cos(v2)) + (v1 * ((CB1[5].x * v1) + CB1[5].y)), v3.y, 1.0) * mat4(CB1[0], CB1[1], CB1[2], CB1[3]);
    gl_Position = vec4(v5.xyz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = vec4(CB1[4].xyz, 0.5 - v0);
    VARYING1 = CB0[7].xyz - v5.xyz;
}

