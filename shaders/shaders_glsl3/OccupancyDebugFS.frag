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

uniform vec4 CB0[32];
uniform vec4 CB1[8];
uniform sampler2D GBufferDepthTexture;
uniform sampler3D OccupancyTexture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(GBufferDepthTexture, VARYING0);
    float f1 = f0.x * 500.0;
    if (f1 > 499.0)
    {
        discard;
    }
    vec3 f2 = vec3((vec2((VARYING0.x * 2.0) - 1.0, 1.0 - (VARYING0.y * 2.0)) * CB1[4].xy) + CB1[4].zw, -1.0) * f1;
    _entryPointOutput = vec4(texture(OccupancyTexture, (((((CB0[7].xyz + (CB0[4].xyz * f2.x)) + (CB0[5].xyz * f2.y)) + (CB0[6].xyz * f2.z)).yxz * CB0[17].xyz) + CB0[18].xyz).yzx).xyz, 1.0);
}

//$$GBufferDepthTexture=s0
//$$OccupancyTexture=s1
