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
    float f1 = VARYING4.w * CB0[23].y;
    float f2 = clamp(1.0 - f1, 0.0, 1.0);
    vec2 f3 = VARYING0.xy * CB2[0].x;
    vec4 f4 = mix(texture2D(DiffuseMapTexture, f3 * CB2[2].y), texture2D(DiffuseMapTexture, f3), vec4(clamp((clamp(1.0 - (VARYING4.w * 0.0033333334140479564666748046875), 0.0, 1.0) * CB2[4].x) - (CB2[3].x * CB2[4].x), 0.0, 1.0)));
    vec2 f5 = mix(texture2D(NormalMapTexture, f3 * CB2[2].z), texture2D(NormalMapTexture, f3), vec4(clamp((f2 * CB2[4].y) - (CB2[3].y * CB2[4].y), 0.0, 1.0))).wy * 2.0;
    vec2 f6 = f5 - vec2(1.0);
    float f7 = sqrt(clamp(1.0 + dot(vec2(1.0) - f5, f6), 0.0, 1.0));
    vec2 f8 = (vec3(f6, f7).xy + (vec3((texture2D(NormalDetailMapTexture, f3 * CB2[1].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[2].x)).xy * f2;
    float f9 = f8.x;
    vec4 f10 = mix(texture2D(SpecularMapTexture, f3 * CB2[2].w), texture2D(SpecularMapTexture, f3), vec4(clamp((f2 * CB2[4].z) - (CB2[3].z * CB2[4].z), 0.0, 1.0)));
    float f11 = f10.x;
    float f12 = f10.y;
    float f13 = ((1.0 - f12) * f2) * CB2[0].w;
    vec3 f14 = normalize(((VARYING6.xyz * f9) + (cross(VARYING5.xyz, VARYING6.xyz) * f8.y)) + (VARYING5.xyz * f7));
    vec3 f15 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f4.w + CB2[3].w, 0.0, 1.0))) * f4.xyz) * (1.0 + (f9 * CB2[1].x))) * (texture2D(StudsMapTexture, f0).x * 2.0), VARYING2.w).xyz;
    float f16 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f17 = VARYING3.yzx - (VARYING3.yzx * f16);
    vec4 f18 = vec4(clamp(f16, 0.0, 1.0));
    vec4 f19 = mix(texture3D(LightMapTexture, f17), vec4(0.0), f18);
    vec4 f20 = mix(texture3D(LightGridSkylightTexture, f17), vec4(1.0), f18);
    float f21 = f20.x;
    vec4 f22 = texture2D(ShadowMapTexture, VARYING7.xy);
    float f23 = (1.0 - ((step(f22.x, VARYING7.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * f22.y)) * f20.y;
    vec3 f24 = normalize(VARYING4.xyz);
    float f25 = CB0[26].w * f2;
    float f26 = max(f12, 0.04500000178813934326171875);
    float f27 = (f13 != 0.0) ? 0.0 : (f26 * 5.0);
    vec3 f28 = vec4(reflect(-f24, f14), f27).xyz;
    vec3 f29 = textureCubeLod(PrefilteredEnvTexture, f28, f27).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f14.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec4 f30 = texture2D(PrecomputedBRDFTexture, vec2(f26, max(9.9999997473787516355514526367188e-05, dot(f14, f24))));
    vec3 f31 = mix((f15 * f15).xyz, f29, vec3(f13));
    vec3 f32 = mix(vec3(0.039999999105930328369140625), f31, vec3(f11));
    vec3 f33 = -CB0[11].xyz;
    vec3 f34 = normalize(f33 + f24);
    float f35 = dot(f14, f33);
    float f36 = clamp(f35, 0.0, 1.0);
    float f37 = f26 * f26;
    float f38 = max(0.001000000047497451305389404296875, dot(f14, f34));
    float f39 = dot(f33, f34);
    float f40 = 1.0 - f39;
    float f41 = f40 * f40;
    float f42 = (f41 * f41) * f40;
    vec3 f43 = vec3(f42) + (f32 * (1.0 - f42));
    float f44 = f37 * f37;
    float f45 = (((f38 * f44) - f38) * f38) + 1.0;
    float f46 = 1.0 - (f11 * f25);
    float f47 = f30.x;
    float f48 = f30.y;
    vec3 f49 = ((f32 * f47) + vec3(f48)) / vec3(f47 + f48);
    vec3 f50 = (vec3(1.0) - (f49 * f25)) * f46;
    vec3 f51 = f14 * f14;
    bvec3 f52 = lessThan(f14, vec3(0.0));
    vec3 f53 = vec3(f52.x ? f51.x : vec3(0.0).x, f52.y ? f51.y : vec3(0.0).y, f52.z ? f51.z : vec3(0.0).z);
    vec3 f54 = f51 - f53;
    float f55 = f54.x;
    float f56 = f54.y;
    float f57 = f54.z;
    float f58 = f53.x;
    float f59 = f53.y;
    float f60 = f53.z;
    vec3 f61 = (mix(textureCubeLod(PrefilteredEnvIndoorTexture, f28, f27).xyz, f29, vec3(f21)) * f49) * f25;
    vec3 f62 = ((((((((((vec3(1.0) - (f43 * f25)) * f46) * CB0[10].xyz) * f36) + ((CB0[12].xyz * (1.0 - (f11 * CB0[26].w))) * clamp(-f35, 0.0, 1.0))) * f23) + (f50 * (((((((CB0[35].xyz * f55) + (CB0[37].xyz * f56)) + (CB0[39].xyz * f57)) + (CB0[36].xyz * f58)) + (CB0[38].xyz * f59)) + (CB0[40].xyz * f60)) + (((((((CB0[29].xyz * f55) + (CB0[31].xyz * f56)) + (CB0[33].xyz * f57)) + (CB0[30].xyz * f58)) + (CB0[32].xyz * f59)) + (CB0[34].xyz * f60)) * f21)))) + (CB0[27].xyz + (CB0[28].xyz * f21))) * f31) + (((((f43 * ((f44 + (f44 * f44)) / (((f45 * f45) * ((f39 * 3.0) + 0.5)) * ((f38 * 0.75) + 0.25)))) * CB0[10].xyz) * f36) * f23) + f61)) + ((f19.xyz * (f19.w * 120.0)).xyz * mix(f31, f61 * (1.0 / (max(max(f61.x, f61.y), f61.z) + 0.00999999977648258209228515625)), ((vec3(1.0) - f50) * f25) * (1.0 - f21)));
    vec4 f63 = vec4(f62.x, f62.y, f62.z, vec4(0.0).w);
    f63.w = VARYING2.w;
    vec2 f64 = min(VARYING0.wz, VARYING1.wz);
    float f65 = min(f64.x, f64.y) / f1;
    vec3 f66 = mix(CB0[14].xyz, (sqrt(clamp((f63.xyz * clamp((clamp((f1 * CB0[24].x) + CB0[24].y, 0.0, 1.0) * (1.5 - f65)) + f65, 0.0, 1.0)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))))).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    gl_FragData[0] = vec4(f66.x, f66.y, f66.z, f63.w);
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
