#version 110

struct Params
{
    mat4 world;
    mat4 viewProjection;
    vec4 color0;
    vec4 color1;
    vec4 fogOffset;
    vec4 glare;
    vec4 irradiance[6];
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

uniform vec4 CB1[18];
uniform vec4 CB0[47];
uniform sampler2D DiffuseMapTexture;

varying vec4 VARYING0;
varying vec2 VARYING1;

void main()
{
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING1) * VARYING0;
    vec3 f1 = f0.xyz;
    gl_FragData[0] = vec4(sqrt(clamp(((f1 * f1) * exp2(CB1[10].x)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) * f0.w, 0.0);
}

//$$DiffuseMapTexture=s0
