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
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
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
    float f16 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f17 = VARYING3.yzx - (VARYING3.yzx * f16);
    vec4 f18 = vec4(clamp(f16, 0.0, 1.0));
    vec4 f19 = mix(texture(LightMapTexture, f17), vec4(0.0), f18);
    vec4 f20 = mix(texture(LightGridSkylightTexture, f17), vec4(1.0), f18);
    vec3 f21 = (f19.xyz * (f19.w * 120.0)).xyz;
    float f22 = f20.x;
    vec4 f23 = texture(ShadowMapTexture, VARYING7.xy);
    float f24 = (1.0 - ((step(f23.x, VARYING7.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * f23.y)) * f20.y;
    vec3 f25 = f10 * f10;
    vec3 f26 = normalize(VARYING4.xyz);
    vec3 f27 = f25 * f14;
    float f28 = CB0[26].w * f1;
    float f29 = max(9.9999997473787516355514526367188e-05, dot(f15, f26));
    float f30 = f12 * 5.0;
    vec3 f31 = vec4(reflect(-f26, f15), f30).xyz;
    vec3 f32 = textureLod(PrefilteredEnvTexture, f31, f30).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f15.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec4 f33 = texture(PrecomputedBRDFTexture, vec2(f12, f29));
    vec3 f34 = vec3(f22);
    vec3 f35 = mix(f21, f32, f34) * mix(vec3(1.0), f25, vec3(0.5));
    vec3 f36 = -CB0[11].xyz;
    vec3 f37 = normalize(f36 + f26);
    float f38 = dot(f15, f36);
    float f39 = clamp(f38, 0.0, 1.0);
    float f40 = f12 * f12;
    float f41 = max(0.001000000047497451305389404296875, dot(f15, f37));
    float f42 = dot(f36, f37);
    float f43 = 1.0 - f42;
    float f44 = f43 * f43;
    float f45 = (f44 * f44) * f43;
    vec3 f46 = vec3(f45) + (vec3(0.039999999105930328369140625) * (1.0 - f45));
    float f47 = f40 * f40;
    float f48 = (((f41 * f47) - f41) * f41) + 1.0;
    float f49 = f33.x;
    float f50 = f33.y;
    vec3 f51 = ((vec3(0.039999999105930328369140625) * f49) + vec3(f50)) / vec3(f49 + f50);
    vec3 f52 = (vec3(1.0) - (f51 * f28)) * 1.0;
    vec3 f53 = f15 * f15;
    bvec3 f54 = lessThan(f15, vec3(0.0));
    vec3 f55 = vec3(f54.x ? f53.x : vec3(0.0).x, f54.y ? f53.y : vec3(0.0).y, f54.z ? f53.z : vec3(0.0).z);
    vec3 f56 = f53 - f55;
    float f57 = f56.x;
    float f58 = f56.y;
    float f59 = f56.z;
    float f60 = f55.x;
    float f61 = f55.y;
    float f62 = f55.z;
    vec3 f63 = (mix(textureLod(PrefilteredEnvIndoorTexture, f31, f30).xyz, f32, f34) * f51) * f28;
    float f64 = 1.0 - f29;
    vec4 f65 = mix(vec4(mix((((((((((vec3(1.0) - (f46 * f28)) * 1.0) * CB0[10].xyz) * f39) + ((CB0[12].xyz * 1.0) * clamp(-f38, 0.0, 1.0))) * f24) + ((f52 * (((((((CB0[35].xyz * f57) + (CB0[37].xyz * f58)) + (CB0[39].xyz * f59)) + (CB0[36].xyz * f60)) + (CB0[38].xyz * f61)) + (CB0[40].xyz * f62)) + (((((((CB0[29].xyz * f57) + (CB0[31].xyz * f58)) + (CB0[33].xyz * f59)) + (CB0[30].xyz * f60)) + (CB0[32].xyz * f61)) + (CB0[34].xyz * f62)) * f22))) * f14)) + (CB0[27].xyz + (CB0[28].xyz * f22))) * f27) + ((f21 * mix(f27, f63 * (1.0 / (max(max(f63.x, f63.y), f63.z) + 0.00999999977648258209228515625)), ((vec3(1.0) - f52) * f28) * (1.0 - f22))) * f14), f35, vec3(mix(((1.0 - f12) * f1) * CB2[0].w, 1.0, VARYING7.w))) * f14, f14), vec4(f35, 1.0), vec4(((f64 * f64) * 0.800000011920928955078125) * clamp(f13, 0.0, 1.0))) + vec4(((((f46 * ((f47 + (f47 * f47)) / (((f48 * f48) * ((f42 * 3.0) + 0.5)) * ((f41 * 0.75) + 0.25)))) * CB0[10].xyz) * f39) * f24) + (f63 * f14), 0.0);
    float f66 = clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0);
    vec3 f67 = mix(CB0[14].xyz, sqrt(clamp(f65.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(f66));
    vec4 f68 = vec4(f67.x, f67.y, f67.z, f65.w);
    f68.w = mix(1.0, f65.w, f66);
    _entryPointOutput = f68;
}

//$$ShadowMapTexture=s1
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
