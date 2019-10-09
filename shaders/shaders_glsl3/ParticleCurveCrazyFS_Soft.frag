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

struct EmitterParams
{
    vec4 ModulateColor;
    vec4 Params;
    vec4 AtlasParams;
};

uniform vec4 CB0[31];
uniform vec4 CB1[3];
uniform sampler2D depthTexTexture;
uniform sampler2D texTexture;

in vec3 VARYING0;
in vec4 VARYING1;
in vec4 VARYING3;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(texTexture, VARYING0.xy);
    vec3 f1 = (f0.xyz * CB1[0].xyz).xyz;
    float f2 = (f0.w * VARYING1.w) * (clamp(VARYING3.w * abs((texture(depthTexTexture, VARYING3.xy).x * 500.0) - VARYING3.z), 0.0, 1.0) * clamp(VARYING0.z, 0.0, 1.0));
    vec3 f3 = sqrt(clamp((f1 * f1) * CB0[15].y, vec3(0.0), vec3(1.0))).xyz * f2;
    vec4 f4 = vec4(f3.x, f3.y, f3.z, vec4(0.0).w);
    f4.w = f2 * CB1[1].y;
    _entryPointOutput = f4;
}

//$$depthTexTexture=s3
//$$texTexture=s0
