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
    float debugFlagsShadows;
};

uniform vec4 CB0[47];
uniform sampler2D GBufferDepthTexture;
uniform sampler2D DiffuseMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING4;
in vec4 VARYING5;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = vec4(CB0[7].xyz - VARYING4.xyz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    float f1 = f0.w;
    float f2 = texture(GBufferDepthTexture, ((f0.xy * 0.5) + vec2(0.5 * f1)).xy / vec2(f1)).x * 500.0;
    vec4 f3 = texture(DiffuseMapTexture, VARYING0.xy);
    float f4 = f3.x;
    float f5 = (f4 > 0.0) ? ((1.0 - clamp(abs(f4 - CB0[14].w) * 13.0, 0.0, 1.0)) * f3.w) : 0.0;
    float f6 = max(max(1.0 - clamp(abs(dot(normalize(VARYING5.xyz), normalize(VARYING4.xyz))) * 2.0, 0.0, 1.0), (f2 > 499.0) ? 0.0 : (1.0 - clamp((f2 - f1) * 3.0, 0.0, 1.0))), f5);
    float f7 = VARYING2.w * max(mix(f5, 1.0, f6) * f6, VARYING1.x);
    vec4 f8 = vec4(VARYING2.xyz * VARYING2.xyz, f7);
    float f9 = clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0);
    vec3 f10 = mix(CB0[14].xyz, sqrt(clamp(f8.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(f9));
    vec4 f11 = vec4(f10.x, f10.y, f10.z, f8.w);
    f11.w = mix(1.0, f7, f9);
    _entryPointOutput = f11;
}

//$$GBufferDepthTexture=s10
//$$DiffuseMapTexture=s3
