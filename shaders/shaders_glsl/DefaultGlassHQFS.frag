#version 110
#extension GL_ARB_shader_texture_lod : require

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
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D StudsMapTexture;
uniform sampler2D SpecularMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec3 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;
varying float VARYING8;

void main()
{
    vec2 f0 = VARYING1.xy;
    f0.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float f1 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec2 f2 = VARYING0.xy * CB2[0].x;
    vec4 f3 = texture2D(DiffuseMapTexture, f2);
    vec2 f4 = texture2D(NormalMapTexture, f2).wy * 2.0;
    vec2 f5 = f4 - vec2(1.0);
    float f6 = sqrt(clamp(1.0 + dot(vec2(1.0) - f4, f5), 0.0, 1.0));
    vec2 f7 = (vec3(f5, f6).xy + (vec3((texture2D(NormalDetailMapTexture, f2 * CB2[1].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[2].x)).xy * f1;
    float f8 = f7.x;
    float f9 = f3.w;
    vec3 f10 = ((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f9 + CB2[3].w, 0.0, 1.0))) * f3.xyz) * (1.0 + (f8 * CB2[1].x))) * (texture2D(StudsMapTexture, f0).x * 2.0);
    vec4 f11 = mix(texture2D(SpecularMapTexture, f2 * CB2[2].w), texture2D(SpecularMapTexture, f2), vec4(clamp((f1 * CB2[4].z) - (CB2[3].z * CB2[4].z), 0.0, 1.0)));
    float f12 = f11.y;
    float f13 = VARYING2.w * 2.0;
    float f14 = clamp((f13 - 1.0) + f9, 0.0, 1.0);
    vec3 f15 = normalize(((VARYING6.xyz * f8) + (cross(VARYING5.xyz, VARYING6.xyz) * f7.y)) + (VARYING5.xyz * (f6 * 10.0)));
    float f16 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f17 = VARYING3.yzx - (VARYING3.yzx * f16);
    vec4 f18 = vec4(clamp(f16, 0.0, 1.0));
    vec4 f19 = mix(texture3D(LightMapTexture, f17), vec4(0.0), f18);
    vec4 f20 = mix(texture3D(LightGridSkylightTexture, f17), vec4(1.0), f18);
    vec3 f21 = (f19.xyz * (f19.w * 120.0)).xyz;
    float f22 = f20.x;
    vec4 f23 = texture2D(ShadowMapTexture, VARYING7.xy);
    float f24 = (1.0 - ((step(f23.x, VARYING7.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * f23.y)) * f20.y;
    vec3 f25 = f10 * f10;
    vec3 f26 = normalize(VARYING4.xyz);
    vec3 f27 = f25 * f14;
    float f28 = CB0[26].w * f1;
    float f29 = max(9.9999997473787516355514526367188e-05, dot(f15, f26));
    vec3 f30 = reflect(-f26, f15);
    float f31 = f12 * 5.0;
    vec3 f32 = vec4(f30, f31).xyz;
    vec3 f33 = textureCubeLod(PrefilteredEnvTexture, f32, f31).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f30.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec4 f34 = texture2D(PrecomputedBRDFTexture, vec2(f12, f29));
    vec3 f35 = vec3(f22);
    vec3 f36 = mix(f21, f33, f35) * mix(vec3(1.0), f25, vec3(0.5));
    vec3 f37 = -CB0[11].xyz;
    vec3 f38 = normalize(f37 + f26);
    float f39 = dot(f15, f37);
    float f40 = clamp(f39, 0.0, 1.0);
    float f41 = f12 * f12;
    float f42 = max(0.001000000047497451305389404296875, dot(f15, f38));
    float f43 = dot(f37, f38);
    float f44 = 1.0 - f43;
    float f45 = f44 * f44;
    float f46 = (f45 * f45) * f44;
    vec3 f47 = vec3(f46) + (vec3(0.039999999105930328369140625) * (1.0 - f46));
    float f48 = f41 * f41;
    float f49 = (((f42 * f48) - f42) * f42) + 1.0;
    float f50 = f34.x;
    float f51 = f34.y;
    vec3 f52 = ((vec3(0.039999999105930328369140625) * f50) + vec3(f51)) / vec3(f50 + f51);
    vec3 f53 = (vec3(1.0) - (f52 * f28)) * 1.0;
    vec3 f54 = f15 * f15;
    bvec3 f55 = lessThan(f15, vec3(0.0));
    vec3 f56 = vec3(f55.x ? f54.x : vec3(0.0).x, f55.y ? f54.y : vec3(0.0).y, f55.z ? f54.z : vec3(0.0).z);
    vec3 f57 = f54 - f56;
    float f58 = f57.x;
    float f59 = f57.y;
    float f60 = f57.z;
    float f61 = f56.x;
    float f62 = f56.y;
    float f63 = f56.z;
    vec3 f64 = (mix(textureCubeLod(PrefilteredEnvIndoorTexture, f32, f31).xyz * f21, f33, f35) * f52) * f28;
    float f65 = 1.0 - f29;
    vec4 f66 = mix(vec4(mix((((((((((vec3(1.0) - (f47 * f28)) * 1.0) * CB0[10].xyz) * f40) + ((CB0[12].xyz * 1.0) * clamp(-f39, 0.0, 1.0))) * f24) + ((f53 * (((((((CB0[35].xyz * f58) + (CB0[37].xyz * f59)) + (CB0[39].xyz * f60)) + (CB0[36].xyz * f61)) + (CB0[38].xyz * f62)) + (CB0[40].xyz * f63)) + (((((((CB0[29].xyz * f58) + (CB0[31].xyz * f59)) + (CB0[33].xyz * f60)) + (CB0[30].xyz * f61)) + (CB0[32].xyz * f62)) + (CB0[34].xyz * f63)) * f22))) * f14)) + (CB0[27].xyz + (CB0[28].xyz * f22))) * f27) + ((f21 * mix(f27, f64 * (1.0 / (max(max(f64.x, f64.y), f64.z) + 0.00999999977648258209228515625)), ((vec3(1.0) - f53) * f28) * (1.0 - f22))) * f14), f36, vec3(VARYING7.w)) * f14, f14), vec4(f36, 1.0), vec4(((f65 * f65) * 0.800000011920928955078125) * clamp(f13, 0.0, 1.0))) + vec4(((((f47 * ((f48 + (f48 * f48)) / (((f49 * f49) * ((f43 * 3.0) + 0.5)) * ((f42 * 0.75) + 0.25)))) * CB0[10].xyz) * f40) * f24) + (f64 * f14), 0.0);
    float f67 = clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0);
    vec3 f68 = mix(CB0[14].xyz, sqrt(clamp(f66.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(f67));
    vec4 f69 = vec4(f68.x, f68.y, f68.z, f66.w);
    f69.w = mix(1.0, f66.w, f67);
    gl_FragData[0] = f69;
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
