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

uniform vec4 CB0[32];
varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;

void main()
{
    vec3 f0 = VARYING1.xyz - VARYING2.xyz;
    float f1 = max(0.0, VARYING2.w - 1.0);
    float f2 = 2.0 * dot(f0, normalize(VARYING1.xyz - CB0[7].xyz));
    float f3 = dot(f0, f0);
    float f4 = f2 * f2;
    if (f4 < (4.0 * (f3 - (VARYING2.w * VARYING2.w))))
    {
        discard;
    }
    if (f4 > (4.0 * (f3 - (f1 * f1))))
    {
        discard;
    }
    gl_FragData[0] = VARYING0;
}

