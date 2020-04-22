#version 150

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

in vec3 VARYING0;
in vec2 VARYING1;
in vec4 VARYING2;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING1) * VARYING2;
    vec3 f1 = f0.xyz;
    vec3 f2 = normalize(VARYING0);
    float f3 = exp2(CB1[10].x / (0.001000000047497451305389404296875 + pow(clamp(f2.y, 0.0, 1.0), CB1[10].y)));
    vec3 f4 = clamp(f2, vec3(0.0), vec3(1.0));
    vec3 f5 = f4 * f4;
    vec3 f6 = clamp(-f2, vec3(0.0), vec3(1.0));
    vec3 f7 = f6 * f6;
    float f8 = clamp(f3, 0.0, 1.0);
    _entryPointOutput = vec4(mix(vec4((((((((CB1[12] * f5.x) + (CB1[13] * f7.x)) + (CB1[14] * f5.y)) + (CB1[15] * f7.y)) + (CB1[16] * f5.z)) + (CB1[17] * f7.z)).xyz * CB0[14].xyz) + (CB0[10].xyz * (clamp(pow(vec3(0.5 + (dot(f2, -CB0[11].xyz) * 0.5)), CB1[11].xyz) * (1.0 - f3), vec3(0.0), vec3(1.0)) * CB1[11].w)), f8).xyz, (f1 * f1).xyz, vec3(clamp(f8, 0.0, 1.0))).xyz * f0.w, 1.0 - f8);
}

//$$DiffuseMapTexture=s0
