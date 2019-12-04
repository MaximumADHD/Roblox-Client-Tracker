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
    float debugFlags;
};

struct MaterialParams
{
    float textureTiling;
    float specularScale;
    float glossScale;
    float reflectionScale;
    float normalShadowScale;
    float specularLod;
    float glossLod;
    float normalDetailTiling;
    float normalDetailScale;
    float farTilingDiffuse;
    float farTilingNormal;
    float farTilingSpecular;
    float farDiffuseCutoff;
    float farNormalCutoff;
    float farSpecularCutoff;
    float optBlendColorK;
    float farDiffuseCutoffScale;
    float farNormalCutoffScale;
    float farSpecularCutoffScale;
    float isNonSmoothPlastic;
};

uniform vec4 CB0[47];
uniform vec4 CB2[5];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D StudsMapTexture;
uniform sampler2D SpecularMapTexture;
uniform sampler2D GBufferDepthTexture;
uniform sampler2D GBufferColorTexture;
uniform samplerCube EnvironmentMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec3 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
in float VARYING8;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = VARYING1.xy;
    f0.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float f1 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec2 f2 = VARYING0.xy * CB2[0].x;
    vec4 f3 = texture(DiffuseMapTexture, f2);
    vec2 f4 = texture(NormalMapTexture, f2).wy * 2.0;
    vec2 f5 = f4 - vec2(1.0);
    float f6 = sqrt(clamp(1.0 + dot(vec2(1.0) - f4, f5), 0.0, 1.0));
    vec2 f7 = (vec3(f5, f6).xy + (vec3((texture(NormalDetailMapTexture, f2 * CB2[1].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[2].x)).xy * f1;
    float f8 = f7.x;
    float f9 = f3.w;
    vec3 f10 = ((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f9 + CB2[3].w, 0.0, 1.0))) * f3.xyz) * (1.0 + (f8 * CB2[1].x))) * (texture(StudsMapTexture, f0).x * 2.0);
    vec4 f11 = mix(texture(SpecularMapTexture, f2 * CB2[2].w), texture(SpecularMapTexture, f2), vec4(clamp((f1 * CB2[4].z) - (CB2[3].z * CB2[4].z), 0.0, 1.0)));
    vec2 f12 = mix(vec2(CB2[1].y, CB2[1].z), (f11.xy * vec2(CB2[0].y, CB2[0].z)) + vec2(0.0, 0.00999999977648258209228515625), vec2(f1));
    float f13 = VARYING2.w * 2.0;
    float f14 = clamp(f13, 0.0, 1.0);
    vec3 f15 = normalize(((VARYING6.xyz * f8) + (cross(VARYING5.xyz, VARYING6.xyz) * f7.y)) + (VARYING5.xyz * (f6 * 10.0)));
    vec3 f16 = -CB0[11].xyz;
    float f17 = dot(f15, f16);
    float f18 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f19 = VARYING3.yzx - (VARYING3.yzx * f18);
    vec4 f20 = vec4(clamp(f18, 0.0, 1.0));
    vec4 f21 = mix(texture(LightMapTexture, f19), vec4(0.0), f20);
    vec4 f22 = mix(texture(LightGridSkylightTexture, f19), vec4(1.0), f20);
    vec3 f23 = (f21.xyz * (f21.w * 120.0)).xyz;
    float f24 = f22.x;
    vec4 f25 = texture(ShadowMapTexture, VARYING7.xy);
    float f26 = (1.0 - ((step(f25.x, VARYING7.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * f25.y)) * f22.y;
    vec3 f27 = f10 * f10;
    vec3 f28 = normalize(VARYING4.xyz);
    vec3 f29 = texture(EnvironmentMapTexture, reflect(-VARYING4.xyz, f15)).xyz;
    vec3 f30 = mix(f23, (f29 * f29) * CB0[15].x, vec3(f24)) * mix(vec3(1.0), f27, vec3(0.5));
    float f31 = 1.0 - dot(f15, f28);
    float f32 = 1.0 - VARYING2.w;
    float f33 = mix(0.660000026226043701171875, 1.0, f32 * f32);
    mat4 f34 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 f35 = vec4(CB0[7].xyz - VARYING4.xyz, 1.0) * f34;
    vec4 f36 = vec4(CB0[7].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * f33) / max(dot(VARYING4.xyz, f15), 0.00999999977648258209228515625)))) + (f15 * (3.0 * (1.0 - f33)))), 1.0) * f34;
    float f37 = f35.w;
    vec2 f38 = ((f35.xy * 0.5) + vec2(0.5 * f37)).xy / vec2(f37);
    float f39 = f36.w;
    vec2 f40 = ((f36.xy * 0.5) + vec2(0.5 * f39)).xy / vec2(f39);
    vec2 f41 = f40 - vec2(0.5);
    vec2 f42 = (f40 - f38) * clamp(vec2(1.0) - ((f41 * f41) * 4.0), vec2(0.0), vec2(1.0));
    vec2 f43 = normalize(f42) * CB0[23].x;
    vec4 f44 = texture(GBufferColorTexture, f38 + (f42 * clamp(min(texture(GBufferDepthTexture, f40 + f43).x * 500.0, texture(GBufferDepthTexture, f40 - f43).x * 500.0) - f37, 0.0, 1.0)));
    vec3 f45 = f44.xyz;
    vec3 f46 = ((f45 * f45) * CB0[15].x).xyz;
    vec3 f47 = f46 * mix(vec3(1.0), VARYING2.xyz, vec3(f14));
    vec4 f48 = vec4(f47.x, f47.y, f47.z, vec4(0.0).w);
    f48.w = mix(1.0, f44.w, dot(f47.xyz, vec3(1.0)) / (dot(f46, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 f49 = mix(mix(f48, vec4(mix((min(f23 + (CB0[8].xyz + (CB0[9].xyz * f24)), vec3(CB0[16].w)) + (((CB0[10].xyz * clamp(f17, 0.0, 1.0)) + (CB0[12].xyz * max(-f17, 0.0))) * f26)) * f27, f30, vec3(mix((f11.y * f1) * CB2[0].w, 1.0, VARYING7.w))), 1.0), vec4(clamp((f13 - 1.0) + f9, 0.0, 1.0))), vec4(f30, 1.0), vec4(((f31 * f31) * 0.800000011920928955078125) * f14)) + vec4(CB0[10].xyz * ((((step(0.0, f17) * mix(f12.x, CB2[0].y, VARYING7.w)) * f26) * pow(clamp(dot(f15, normalize(f16 + f28)), 0.0, 1.0), mix(f12.y, CB2[0].z, VARYING7.w))) * f14), 0.0);
    float f50 = clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0);
    vec3 f51 = mix(CB0[14].xyz, sqrt(clamp(f49.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(f50));
    vec4 f52 = vec4(f51.x, f51.y, f51.z, f49.w);
    f52.w = mix(1.0, f49.w, f50);
    _entryPointOutput = f52;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
//$$GBufferDepthTexture=s10
//$$GBufferColorTexture=s9
//$$EnvironmentMapTexture=s2
