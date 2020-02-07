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

struct TrailParams
{
    vec4 Params;
};

uniform vec4 CB0[47];
uniform vec4 CB1[1];
uniform sampler2D texTexture;

varying vec2 VARYING0;
varying vec4 VARYING1;
varying vec3 VARYING2;

void main()
{
    vec4 f0 = texture2D(texTexture, VARYING0);
    vec3 f1 = (f0.xyz * VARYING1.xyz).xyz;
    vec3 f2 = mix(CB0[14].xyz, sqrt(clamp((f1 * f1).xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(clamp((CB0[13].x * length(VARYING2)) + CB0[13].y, 0.0, 1.0)));
    float f3 = VARYING1.w * f0.w;
    vec4 f4 = vec4(f2.x, f2.y, f2.z, vec4(0.0).w);
    f4.w = f3;
    vec3 f5 = f4.xyz * f3;
    vec4 f6 = vec4(f5.x, f5.y, f5.z, f4.w);
    f6.w = f3 * CB1[0].y;
    gl_FragData[0] = f6;
}

//$$texTexture=s0
