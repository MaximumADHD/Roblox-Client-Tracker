#version 150
#extension GL_ARB_arrays_of_arrays : require

struct IBLDebugParams
{
    mat4 World;
    vec4 Params;
    vec4 AvgIrradianceIndoor;
    vec4 AvgIrradianceOutdoor;
    vec4 SkyCubeMapSize[6];
    vec4 SkyCubeMap[6][16];
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

uniform vec4 CB1[109];
uniform vec4 CB0[47];
in vec4 POSITION;
in vec3 NORMAL;
out vec3 VARYING0;

void main()
{
    mat4 v0 = mat4(CB1[0], CB1[1], CB1[2], CB1[3]);
    gl_Position = (POSITION * v0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = normalize(NORMAL * mat3(v0[0].xyz, v0[1].xyz, v0[2].xyz));
}

