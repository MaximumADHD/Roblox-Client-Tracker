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

struct Params
{
    vec4 TextureSize;
    vec4 Params1;
    vec4 Params2;
    vec4 Params3;
    vec4 Params4;
    vec4 Params5;
    vec4 Params6;
    vec4 Bloom;
};

uniform vec4 CB0[47];
uniform vec4 CB1[8];
uniform sampler2D colorTexture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = vec2(CB1[0].z, 0.0);
    vec2 f1 = f0 * 1.5;
    vec2 f2 = f0 * 0.5;
    vec3 f3 = texture(colorTexture, VARYING0 + f1).xyz;
    vec3 f4 = texture(colorTexture, VARYING0 + f2).xyz;
    vec3 f5 = texture(colorTexture, VARYING0 - f2).xyz;
    vec3 f6 = texture(colorTexture, VARYING0 - f1).xyz;
    _entryPointOutput = vec4((((((f3 * f3) * CB0[15].x) + ((f4 * f4) * CB0[15].x)) + ((f5 * f5) * CB0[15].x)) + ((f6 * f6) * CB0[15].x)) * 0.25, 1.0);
}

//$$colorTexture=s1
