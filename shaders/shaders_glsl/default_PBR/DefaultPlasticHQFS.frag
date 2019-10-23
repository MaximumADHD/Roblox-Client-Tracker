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
    vec2 f3 = texture2D(NormalMapTexture, f0).wy * 2.0;
    vec2 f4 = f3 - vec2(1.0);
    float f5 = sqrt(clamp(1.0 + dot(vec2(1.0) - f3, f4), 0.0, 1.0));
    vec2 f6 = ((vec3(f4, f5).xy + (vec3((texture2D(NormalDetailMapTexture, VARYING0.xy * CB2[0].x).wy * 2.0) - vec2(1.0), 0.0).xy * (clamp(VARYING2.w - 0.5, 0.0, 1.0) * clamp(1.0 - (2.0 * VARYING7.w), 0.0, 1.0)))).xy * f2).xy * CB2[4].w;
    vec3 f7 = normalize(((VARYING6.xyz * f6.x) + (cross(VARYING5.xyz, VARYING6.xyz) * f6.y)) + (VARYING5.xyz * f5));
    vec3 f8 = vec4(VARYING2.xyz * (texture2D(DiffuseMapTexture, f0).x * 2.0), VARYING2.w).xyz;
    float f9 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f10 = VARYING3.yzx - (VARYING3.yzx * f9);
    vec4 f11 = vec4(clamp(f9, 0.0, 1.0));
    vec4 f12 = mix(texture3D(LightMapTexture, f10), vec4(0.0), f11);
    vec4 f13 = mix(texture3D(LightGridSkylightTexture, f10), vec4(1.0), f11);
    float f14 = f13.x;
    vec4 f15 = texture2D(ShadowMapTexture, VARYING7.xy);
    float f16 = (1.0 - ((step(f15.x, VARYING7.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * f15.y)) * f13.y;
    vec3 f17 = normalize(VARYING4.xyz);
    float f18 = CB0[26].w * f2;
    float f19 = max(CB2[0].z, 0.04500000178813934326171875);
    float f20 = (VARYING7.w != 0.0) ? 0.0 : (f19 * 5.0);
    vec3 f21 = vec4(reflect(-f17, f7), f20).xyz;
    vec3 f22 = textureCubeLod(PrefilteredEnvTexture, f21, f20).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f7.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec4 f23 = texture2D(PrecomputedBRDFTexture, vec2(f19, max(9.9999997473787516355514526367188e-05, dot(f7, f17))));
    vec3 f24 = mix((f8 * f8).xyz, f22, vec3(VARYING7.w));
    vec3 f25 = -CB0[11].xyz;
    vec3 f26 = normalize(f25 + f17);
    float f27 = dot(f7, f25);
    float f28 = clamp(f27, 0.0, 1.0);
    float f29 = f19 * f19;
    float f30 = max(0.001000000047497451305389404296875, dot(f7, f26));
    float f31 = dot(f25, f26);
    float f32 = 1.0 - f31;
    float f33 = f32 * f32;
    float f34 = (f33 * f33) * f32;
    vec3 f35 = vec3(f34) + (vec3(0.039999999105930328369140625) * (1.0 - f34));
    float f36 = f29 * f29;
    float f37 = (((f30 * f36) - f30) * f30) + 1.0;
    float f38 = f23.x;
    float f39 = f23.y;
    vec3 f40 = ((vec3(0.039999999105930328369140625) * f38) + vec3(f39)) / vec3(f38 + f39);
    vec3 f41 = (vec3(1.0) - (f40 * f18)) * 1.0;
    vec3 f42 = f7 * f7;
    bvec3 f43 = lessThan(f7, vec3(0.0));
    vec3 f44 = vec3(f43.x ? f42.x : vec3(0.0).x, f43.y ? f42.y : vec3(0.0).y, f43.z ? f42.z : vec3(0.0).z);
    vec3 f45 = f42 - f44;
    float f46 = f45.x;
    float f47 = f45.y;
    float f48 = f45.z;
    float f49 = f44.x;
    float f50 = f44.y;
    float f51 = f44.z;
    vec3 f52 = (mix(textureCubeLod(PrefilteredEnvIndoorTexture, f21, f20).xyz, f22, vec3(f14)) * f40) * f18;
    vec3 f53 = ((((((((((vec3(1.0) - (f35 * f18)) * 1.0) * CB0[10].xyz) * f28) + ((CB0[12].xyz * 1.0) * clamp(-f27, 0.0, 1.0))) * f16) + (f41 * (((((((CB0[35].xyz * f46) + (CB0[37].xyz * f47)) + (CB0[39].xyz * f48)) + (CB0[36].xyz * f49)) + (CB0[38].xyz * f50)) + (CB0[40].xyz * f51)) + (((((((CB0[29].xyz * f46) + (CB0[31].xyz * f47)) + (CB0[33].xyz * f48)) + (CB0[30].xyz * f49)) + (CB0[32].xyz * f50)) + (CB0[34].xyz * f51)) * f14)))) + (CB0[27].xyz + (CB0[28].xyz * f14))) * f24) + (((((f35 * ((f36 + (f36 * f36)) / (((f37 * f37) * ((f31 * 3.0) + 0.5)) * ((f30 * 0.75) + 0.25)))) * CB0[10].xyz) * f28) * f16) + f52)) + ((f12.xyz * (f12.w * 120.0)).xyz * mix(f24, f52 * (1.0 / (max(max(f52.x, f52.y), f52.z) + 0.00999999977648258209228515625)), ((vec3(1.0) - f41) * f18) * (1.0 - f14)));
    vec4 f54 = vec4(f53.x, f53.y, f53.z, vec4(0.0).w);
    f54.w = VARYING2.w;
    vec2 f55 = min(VARYING0.wz, VARYING1.wz);
    float f56 = min(f55.x, f55.y) / f1;
    vec3 f57 = mix(CB0[14].xyz, (sqrt(clamp((f54.xyz * clamp((clamp((f1 * CB0[24].x) + CB0[24].y, 0.0, 1.0) * (1.5 - f56)) + f56, 0.0, 1.0)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))))).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    gl_FragData[0] = vec4(f57.x, f57.y, f57.z, f54.w);
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
