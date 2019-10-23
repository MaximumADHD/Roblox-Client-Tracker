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
    float debugFlagsShadows;
};

uniform vec4 CB0[47];
uniform sampler2D DiffuseMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING4;
varying vec4 VARYING5;

void main()
{
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING0.xy);
    float f1 = f0.x;
    float f2 = (f1 > 0.0) ? ((1.0 - clamp(abs(f1 - CB0[14].w) * 13.0, 0.0, 1.0)) * f0.w) : 0.0;
    float f3 = max(max(1.0 - clamp(abs(dot(normalize(VARYING5.xyz), normalize(VARYING4.xyz))) * 2.0, 0.0, 1.0), 0.0), f2);
    float f4 = VARYING2.w * max(mix(f2, 1.0, f3) * f3, VARYING1.x);
    vec4 f5 = vec4(VARYING2.xyz * VARYING2.xyz, f4);
    float f6 = clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0);
    vec3 f7 = mix(CB0[14].xyz, sqrt(clamp(f5.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(f6));
    vec4 f8 = vec4(f7.x, f7.y, f7.z, f5.w);
    f8.w = mix(1.0, f4, f6);
    gl_FragData[0] = f8;
}

//$$DiffuseMapTexture=s3
