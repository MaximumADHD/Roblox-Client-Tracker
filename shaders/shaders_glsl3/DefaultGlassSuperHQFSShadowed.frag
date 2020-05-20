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

struct LightShadowGPUTransform
{
    mat4 transform;
};

struct MaterialParams
{
    float textureTiling;
    float plasticRoughness;
    float normalShadowScale;
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
uniform vec4 CB8[24];
uniform vec4 CB2[4];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D StudsMapTexture;
uniform sampler2D SpecularMapTexture;
uniform sampler2D GBufferDepthTexture;
uniform sampler2D GBufferColorTexture;

in vec2 VARYING0;
in vec2 VARYING1;
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
    vec2 f0 = VARYING1;
    f0.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float f1 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec2 f2 = VARYING0 * CB2[0].x;
    vec4 f3 = texture(DiffuseMapTexture, f2);
    vec2 f4 = texture(NormalMapTexture, f2).wy * 2.0;
    vec2 f5 = f4 - vec2(1.0);
    float f6 = sqrt(clamp(1.0 + dot(vec2(1.0) - f4, f5), 0.0, 1.0));
    vec2 f7 = (vec3(f5, f6).xy + (vec3((texture(NormalDetailMapTexture, f2 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f1;
    float f8 = f3.w;
    vec3 f9 = ((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f8 + CB2[2].w, 0.0, 1.0))) * f3.xyz) * (1.0 + (f7.x * CB2[0].z))) * (texture(StudsMapTexture, f0).x * 2.0);
    vec4 f10 = mix(texture(SpecularMapTexture, f2 * CB2[1].w), texture(SpecularMapTexture, f2), vec4(clamp((f1 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0)));
    float f11 = f10.y;
    float f12 = VARYING2.w * 2.0;
    float f13 = clamp((f12 - 1.0) + f8, 0.0, 1.0);
    float f14 = clamp(f12, 0.0, 1.0);
    vec3 f15 = normalize(((VARYING6.xyz * f7.x) + (cross(VARYING5.xyz, VARYING6.xyz) * f7.y)) + (VARYING5.xyz * (f6 * 10.0)));
    vec3 f16 = -CB0[11].xyz;
    float f17 = dot(f15, f16);
    float f18 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f19 = VARYING3.yzx - (VARYING3.yzx * f18);
    vec4 f20 = vec4(clamp(f18, 0.0, 1.0));
    vec4 f21 = mix(texture(LightMapTexture, f19), vec4(0.0), f20);
    vec4 f22 = mix(texture(LightGridSkylightTexture, f19), vec4(1.0), f20);
    vec3 f23 = (f21.xyz * (f21.w * 120.0)).xyz;
    float f24 = f22.x;
    float f25 = f22.y;
    vec3 f26 = VARYING7.xyz - CB0[41].xyz;
    vec3 f27 = VARYING7.xyz - CB0[42].xyz;
    vec3 f28 = VARYING7.xyz - CB0[43].xyz;
    vec4 f29 = vec4(VARYING7.xyz, 1.0) * mat4(CB8[((dot(f26, f26) < CB0[41].w) ? 0 : ((dot(f27, f27) < CB0[42].w) ? 1 : ((dot(f28, f28) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f26, f26) < CB0[41].w) ? 0 : ((dot(f27, f27) < CB0[42].w) ? 1 : ((dot(f28, f28) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f26, f26) < CB0[41].w) ? 0 : ((dot(f27, f27) < CB0[42].w) ? 1 : ((dot(f28, f28) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f26, f26) < CB0[41].w) ? 0 : ((dot(f27, f27) < CB0[42].w) ? 1 : ((dot(f28, f28) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f30 = textureLod(ShadowAtlasTexture, f29.xy, 0.0);
    vec2 f31 = vec2(0.0);
    f31.x = CB0[45].z;
    vec2 f32 = f31;
    f32.y = CB0[45].w;
    float f33 = (2.0 * f29.z) - 1.0;
    float f34 = exp(CB0[45].z * f33);
    float f35 = -exp((-CB0[45].w) * f33);
    vec2 f36 = (f32 * CB0[46].y) * vec2(f34, f35);
    vec2 f37 = f36 * f36;
    float f38 = f30.x;
    float f39 = max(f30.y - (f38 * f38), f37.x);
    float f40 = f34 - f38;
    float f41 = f30.z;
    float f42 = max(f30.w - (f41 * f41), f37.y);
    float f43 = f35 - f41;
    float f44 = (f17 > 0.0) ? mix(f25, mix(min((f34 <= f38) ? 1.0 : clamp(((f39 / (f39 + (f40 * f40))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f35 <= f41) ? 1.0 : clamp(((f42 / (f42 + (f43 * f43))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f25, clamp((length(VARYING7.xyz - CB0[7].xyz) * CB0[45].y) - (CB0[45].x * CB0[45].y), 0.0, 1.0)), CB0[46].x) : 0.0;
    vec3 f45 = f9 * f9;
    float f46 = length(VARYING4.xyz);
    vec3 f47 = VARYING4.xyz / vec3(f46);
    vec3 f48 = f45 * f13;
    float f49 = CB0[26].w * f1;
    float f50 = max(9.9999997473787516355514526367188e-05, dot(f15, f47));
    vec3 f51 = reflect(-f47, f15);
    float f52 = f11 * 5.0;
    vec3 f53 = vec4(f51, f52).xyz;
    vec3 f54 = textureLod(PrefilteredEnvTexture, f53, f52).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f51.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec4 f55 = texture(PrecomputedBRDFTexture, vec2(f11, f50));
    vec3 f56 = vec3(f24);
    vec3 f57 = mix(f23, f54, f56) * mix(vec3(1.0), f45, vec3(0.5));
    vec3 f58 = normalize(f16 + f47);
    float f59 = clamp(f17, 0.0, 1.0);
    float f60 = f11 * f11;
    float f61 = max(0.001000000047497451305389404296875, dot(f15, f58));
    float f62 = dot(f16, f58);
    float f63 = 1.0 - f62;
    float f64 = f63 * f63;
    float f65 = (f64 * f64) * f63;
    vec3 f66 = vec3(f65) + (vec3(0.039999999105930328369140625) * (1.0 - f65));
    float f67 = f60 * f60;
    float f68 = (((f61 * f67) - f61) * f61) + 1.0;
    float f69 = f55.x;
    float f70 = f55.y;
    vec3 f71 = ((vec3(0.039999999105930328369140625) * f69) + vec3(f70)) / vec3(f69 + f70);
    vec3 f72 = f71 * f49;
    vec3 f73 = f15 * f15;
    bvec3 f74 = lessThan(f15, vec3(0.0));
    vec3 f75 = vec3(f74.x ? f73.x : vec3(0.0).x, f74.y ? f73.y : vec3(0.0).y, f74.z ? f73.z : vec3(0.0).z);
    vec3 f76 = f73 - f75;
    float f77 = f76.x;
    float f78 = f76.y;
    float f79 = f76.z;
    float f80 = f75.x;
    float f81 = f75.y;
    float f82 = f75.z;
    vec3 f83 = (mix(textureLod(PrefilteredEnvIndoorTexture, f53, f52).xyz * f23, f54, f56) * f71) * f49;
    float f84 = 1.0 - f50;
    float f85 = 1.0 - VARYING2.w;
    float f86 = mix(0.660000026226043701171875, 1.0, f85 * f85);
    mat4 f87 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 f88 = vec4(CB0[7].xyz - VARYING4.xyz, 1.0) * f87;
    vec4 f89 = vec4(CB0[7].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * f86) / max(dot(VARYING4.xyz, f15), 0.00999999977648258209228515625)))) + (f15 * (3.0 * (1.0 - f86)))), 1.0) * f87;
    float f90 = f88.w;
    vec2 f91 = ((f88.xy * 0.5) + vec2(0.5 * f90)).xy / vec2(f90);
    float f92 = f89.w;
    vec2 f93 = ((f89.xy * 0.5) + vec2(0.5 * f92)).xy / vec2(f92);
    vec2 f94 = f93 - vec2(0.5);
    vec2 f95 = (f93 - f91) * clamp(vec2(1.0) - ((f94 * f94) * 4.0), vec2(0.0), vec2(1.0));
    vec2 f96 = normalize(f95) * CB0[23].x;
    vec4 f97 = texture(GBufferColorTexture, f91 + (f95 * clamp(min(texture(GBufferDepthTexture, f93 + f96).x * 500.0, texture(GBufferDepthTexture, f93 - f96).x * 500.0) - f90, 0.0, 1.0)));
    vec3 f98 = f97.xyz;
    vec3 f99 = ((f98 * f98) * CB0[15].x).xyz;
    vec3 f100 = f99 * mix(vec3(1.0), VARYING2.xyz, vec3(f14));
    vec4 f101 = vec4(f100.x, f100.y, f100.z, vec4(0.0).w);
    f101.w = mix(1.0, f97.w, dot(f100.xyz, vec3(1.0)) / (dot(f99, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 f102 = mix(mix(f101, vec4(mix((((((((vec3(1.0) - (f66 * f49)) * CB0[10].xyz) * f59) * f44) + (((vec3(1.0) - f72) * (((((((CB0[35].xyz * f77) + (CB0[37].xyz * f78)) + (CB0[39].xyz * f79)) + (CB0[36].xyz * f80)) + (CB0[38].xyz * f81)) + (CB0[40].xyz * f82)) + (((((((CB0[29].xyz * f77) + (CB0[31].xyz * f78)) + (CB0[33].xyz * f79)) + (CB0[30].xyz * f80)) + (CB0[32].xyz * f81)) + (CB0[34].xyz * f82)) * f24))) * f13)) + (CB0[27].xyz + (CB0[28].xyz * f24))) * f48) + ((f23 * mix(f48, f83 * (1.0 / (max(max(f83.x, f83.y), f83.z) + 0.00999999977648258209228515625)), f72 * (f49 * (1.0 - f24)))) * f13), f57, vec3(VARYING7.w)), 1.0), vec4(f13)), vec4(f57, 1.0), vec4(((f84 * f84) * 0.800000011920928955078125) * f14)) + vec4((((f66 * (((f67 + (f67 * f67)) / (((f68 * f68) * ((f62 * 3.0) + 0.5)) * ((f61 * 0.75) + 0.25))) * f59)) * CB0[10].xyz) * f44) + (f83 * f13), 0.0);
    float f103 = clamp(exp2((CB0[13].z * f46) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f104 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f103) * 5.0).xyz;
    bvec3 f105 = bvec3(CB0[13].w != 0.0);
    vec3 f106 = mix(vec3(f105.x ? CB0[14].xyz.x : f104.x, f105.y ? CB0[14].xyz.y : f104.y, f105.z ? CB0[14].xyz.z : f104.z), f102.xyz, vec3(f103));
    vec4 f107 = vec4(f106.x, f106.y, f106.z, f102.w);
    f107.w = f103 * f102.w;
    vec3 f108 = sqrt(clamp(f107.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f108.x, f108.y, f108.z, f107.w);
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
//$$GBufferDepthTexture=s10
//$$GBufferColorTexture=s9
