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

struct EmitterParams
{
    vec4 ModulateColor;
    vec4 Params;
    vec4 AtlasParams;
};

uniform vec4 CB0[32];
uniform vec4 CB1[3];
uniform sampler2D LightingAtlasTexture;
uniform sampler2D depthTexTexture;
uniform sampler2D texTexture;

varying vec3 VARYING0;
varying vec4 VARYING1;
varying vec2 VARYING2;
varying vec4 VARYING3;

void main()
{
    vec4 _302 = texture2D(texTexture, VARYING0.xy);
    vec4 _307 = VARYING1 * CB1[0];
    vec3 _319 = _302.xyz * _307.xyz;
    vec4 _470 = vec4(_319.x, _319.y, _319.z, vec4(0.0).w);
    _470.w = (_302.w * _307.w) * clamp(VARYING3.w * abs((texture2D(depthTexTexture, VARYING3.xy).x * 500.0) - VARYING3.z), 0.0, 1.0);
    vec3 _388 = vec3(CB0[15].x);
    vec4 _398 = texture2D(LightingAtlasTexture, VARYING2);
    vec3 _339 = mix(_470.xyz, _470.xyz * _470.xyz, _388).xyz;
    vec3 _351 = mix(_339, (_398.xyz * (_398.w * 120.0)) * _339, vec3(CB1[2].w)).xyz;
    vec3 _441 = mix(CB0[14].xyz, mix(_351, sqrt(clamp(_351 * CB0[15].z, vec3(0.0), vec3(1.0))), _388).xyz, vec3(clamp(VARYING0.z, 0.0, 1.0)));
    gl_FragData[0] = vec4(_441.x, _441.y, _441.z, _470.w);
}

//$$LightingAtlasTexture=s2
//$$depthTexTexture=s3
//$$texTexture=s0
