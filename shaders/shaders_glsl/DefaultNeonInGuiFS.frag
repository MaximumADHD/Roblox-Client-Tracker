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

uniform vec4 CB0[31];
varying vec4 VARYING2;
varying vec4 VARYING4;

void main()
{
    float f0 = clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0);
    vec3 f1 = pow(VARYING2.xyz * 1.35000002384185791015625, vec3(4.0)) * 4.0;
    vec4 f2 = vec4(f1.x, f1.y, f1.z, vec4(0.0).w);
    f2.w = f0 * VARYING2.w;
    vec3 f3 = mix(CB0[14].xyz, sqrt(clamp(f2.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(f0));
    gl_FragData[0] = vec4(f3.x, f3.y, f3.z, f2.w);
}

