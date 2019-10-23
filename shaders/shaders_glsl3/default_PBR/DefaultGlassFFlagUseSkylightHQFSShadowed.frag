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

struct LightShadowGPUTransform
{
    mat4 transform;
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
uniform vec4 CB8[24];
uniform vec4 CB2[5];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D ShadowAtlasTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D StudsMapTexture;
uniform sampler2D SpecularMapTexture;

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
    float f12 = f11.y;
    float f13 = VARYING2.w * 2.0;
    float f14 = clamp((f13 - 1.0) + f9, 0.0, 1.0);
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
    vec3 f45 = f10 * f10;
    vec3 f46 = normalize(VARYING4.xyz);
    vec3 f47 = f45 * f14;
    float f48 = CB0[26].w * f1;
    float f49 = max(9.9999997473787516355514526367188e-05, dot(f15, f46));
    float f50 = f12 * 5.0;
    vec3 f51 = vec4(reflect(-f46, f15), f50).xyz;
    vec3 f52 = textureLod(PrefilteredEnvTexture, f51, f50).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f15.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec4 f53 = texture(PrecomputedBRDFTexture, vec2(f12, f49));
    vec3 f54 = vec3(f24);
    vec3 f55 = mix(f23, f52, f54) * mix(vec3(1.0), f45, vec3(0.5));
    vec3 f56 = normalize(f16 + f46);
    float f57 = clamp(f17, 0.0, 1.0);
    float f58 = f12 * f12;
    float f59 = max(0.001000000047497451305389404296875, dot(f15, f56));
    float f60 = dot(f16, f56);
    float f61 = 1.0 - f60;
    float f62 = f61 * f61;
    float f63 = (f62 * f62) * f61;
    vec3 f64 = vec3(f63) + (vec3(0.039999999105930328369140625) * (1.0 - f63));
    float f65 = f58 * f58;
    float f66 = (((f59 * f65) - f59) * f59) + 1.0;
    float f67 = f53.x;
    float f68 = f53.y;
    vec3 f69 = ((vec3(0.039999999105930328369140625) * f67) + vec3(f68)) / vec3(f67 + f68);
    vec3 f70 = (vec3(1.0) - (f69 * f48)) * 1.0;
    vec3 f71 = f15 * f15;
    bvec3 f72 = lessThan(f15, vec3(0.0));
    vec3 f73 = vec3(f72.x ? f71.x : vec3(0.0).x, f72.y ? f71.y : vec3(0.0).y, f72.z ? f71.z : vec3(0.0).z);
    vec3 f74 = f71 - f73;
    float f75 = f74.x;
    float f76 = f74.y;
    float f77 = f74.z;
    float f78 = f73.x;
    float f79 = f73.y;
    float f80 = f73.z;
    vec3 f81 = (mix(textureLod(PrefilteredEnvIndoorTexture, f51, f50).xyz, f52, f54) * f69) * f48;
    float f82 = 1.0 - f49;
    vec4 f83 = mix(vec4(mix(((((((((vec3(1.0) - (f64 * f48)) * 1.0) * CB0[10].xyz) * f57) * f44) + ((f70 * (((((((CB0[35].xyz * f75) + (CB0[37].xyz * f76)) + (CB0[39].xyz * f77)) + (CB0[36].xyz * f78)) + (CB0[38].xyz * f79)) + (CB0[40].xyz * f80)) + (((((((CB0[29].xyz * f75) + (CB0[31].xyz * f76)) + (CB0[33].xyz * f77)) + (CB0[30].xyz * f78)) + (CB0[32].xyz * f79)) + (CB0[34].xyz * f80)) * f24))) * f14)) + (CB0[27].xyz + (CB0[28].xyz * f24))) * f47) + ((f23 * mix(f47, f81 * (1.0 / (max(max(f81.x, f81.y), f81.z) + 0.00999999977648258209228515625)), ((vec3(1.0) - f70) * f48) * (1.0 - f24))) * f14), f55, vec3(mix(((1.0 - f12) * f1) * CB2[0].w, 1.0, VARYING7.w))) * f14, f14), vec4(f55, 1.0), vec4(((f82 * f82) * 0.800000011920928955078125) * clamp(f13, 0.0, 1.0))) + vec4(((((f64 * ((f65 + (f65 * f65)) / (((f66 * f66) * ((f60 * 3.0) + 0.5)) * ((f59 * 0.75) + 0.25)))) * CB0[10].xyz) * f57) * f44) + (f81 * f14), 0.0);
    float f84 = clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0);
    vec3 f85 = mix(CB0[14].xyz, sqrt(clamp(f83.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(f84));
    vec4 f86 = vec4(f85.x, f85.y, f85.z, f83.w);
    f86.w = mix(1.0, f83.w, f84);
    _entryPointOutput = f86;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$ShadowAtlasTexture=s1
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
