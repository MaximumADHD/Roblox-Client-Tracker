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
    float debugFlags;
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
uniform vec4 CB2[4];
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
    vec2 f7 = (vec3(f5, f6).xy + (vec3((texture2D(NormalDetailMapTexture, f2 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f1;
    float f8 = f3.w;
    vec3 f9 = ((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f8 + CB2[2].w, 0.0, 1.0))) * f3.xyz) * (1.0 + (f7.x * CB2[0].z))) * (texture2D(StudsMapTexture, f0).x * 2.0);
    vec4 f10 = mix(texture2D(SpecularMapTexture, f2 * CB2[1].w), texture2D(SpecularMapTexture, f2), vec4(clamp((f1 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0)));
    float f11 = f10.y;
    float f12 = VARYING2.w * 2.0;
    float f13 = clamp(f12, 0.0, 1.0);
    float f14 = clamp((f12 - 1.0) + f8, 0.0, 1.0);
    vec3 f15 = normalize(((VARYING6.xyz * f7.x) + (cross(VARYING5.xyz, VARYING6.xyz) * f7.y)) + (VARYING5.xyz * (f6 * 10.0)));
    float f16 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f17 = VARYING3.yzx - (VARYING3.yzx * f16);
    vec4 f18 = vec4(clamp(f16, 0.0, 1.0));
    vec4 f19 = mix(texture3D(LightMapTexture, f17), vec4(0.0), f18);
    vec4 f20 = mix(texture3D(LightGridSkylightTexture, f17), vec4(1.0), f18);
    vec3 f21 = (f19.xyz * (f19.w * 120.0)).xyz;
    float f22 = f20.x;
    vec4 f23 = texture2D(ShadowMapTexture, VARYING7.xy);
    float f24 = (1.0 - ((step(f23.x, VARYING7.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * f23.y)) * f20.y;
    vec3 f25 = f9 * f9;
    vec3 f26 = normalize(VARYING4.xyz);
    vec3 f27 = textureCube(EnvironmentMapTexture, reflect(-VARYING4.xyz, f15)).xyz;
    vec3 f28 = mix(f21, (f27 * f27) * CB0[15].x, vec3(f22)) * mix(vec3(1.0), f25, vec3(0.5));
    vec3 f29 = -CB0[11].xyz;
    vec3 f30 = normalize(f29 + f26);
    float f31 = dot(f15, f29);
    float f32 = clamp(f31, 0.0, 1.0);
    float f33 = f11 * f11;
    float f34 = max(0.001000000047497451305389404296875, dot(f15, f30));
    float f35 = dot(f29, f30);
    float f36 = 1.0 - f35;
    float f37 = f36 * f36;
    float f38 = (f37 * f37) * f36;
    vec3 f39 = vec3(f38) + (vec3(0.039999999105930328369140625) * (1.0 - f38));
    float f40 = f33 * f33;
    float f41 = (((f34 * f40) - f34) * f34) + 1.0;
    float f42 = 1.0 - max(9.9999997473787516355514526367188e-05, dot(f15, f26));
    float f43 = 1.0 - VARYING2.w;
    float f44 = mix(0.660000026226043701171875, 1.0, f43 * f43);
    mat4 f45 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 f46 = vec4(CB0[7].xyz - VARYING4.xyz, 1.0) * f45;
    vec4 f47 = vec4(CB0[7].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * f44) / max(dot(VARYING4.xyz, f15), 0.00999999977648258209228515625)))) + (f15 * (3.0 * (1.0 - f44)))), 1.0) * f45;
    float f48 = f46.w;
    vec2 f49 = ((f46.xy * 0.5) + vec2(0.5 * f48)).xy / vec2(f48);
    float f50 = f47.w;
    vec2 f51 = ((f47.xy * 0.5) + vec2(0.5 * f50)).xy / vec2(f50);
    vec2 f52 = f51 - vec2(0.5);
    vec2 f53 = (f51 - f49) * clamp(vec2(1.0) - ((f52 * f52) * 4.0), vec2(0.0), vec2(1.0));
    vec2 f54 = normalize(f53) * CB0[23].x;
    vec4 f55 = texture2D(GBufferColorTexture, f49 + (f53 * clamp(min(texture2D(GBufferDepthTexture, f51 + f54).x * 500.0, texture2D(GBufferDepthTexture, f51 - f54).x * 500.0) - f48, 0.0, 1.0)));
    vec3 f56 = f55.xyz;
    vec3 f57 = ((f56 * f56) * CB0[15].x).xyz;
    vec3 f58 = f57 * mix(vec3(1.0), VARYING2.xyz, vec3(f13));
    vec4 f59 = vec4(f58.x, f58.y, f58.z, vec4(0.0).w);
    f59.w = mix(1.0, f55.w, dot(f58.xyz, vec3(1.0)) / (dot(f57, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 f60 = mix(mix(f59, vec4(mix(((((((vec3(1.0) - (f39 * (CB0[26].w * f1))) * CB0[10].xyz) * f32) + (CB0[12].xyz * clamp(-f31, 0.0, 1.0))) * f24) + min(f21 + (CB0[8].xyz + (CB0[9].xyz * f22)), vec3(CB0[16].w))) * (f25 * f14), f28, vec3(VARYING7.w)), 1.0), vec4(f14)), vec4(f28, 1.0), vec4(((f42 * f42) * 0.800000011920928955078125) * f13)) + vec4(((f39 * (((f40 + (f40 * f40)) / (((f41 * f41) * ((f35 * 3.0) + 0.5)) * ((f34 * 0.75) + 0.25))) * f32)) * CB0[10].xyz) * f24, 0.0);
    float f61 = clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0);
    vec3 f62 = mix(CB0[14].xyz, sqrt(clamp(f60.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(f61));
    vec4 f63 = vec4(f62.x, f62.y, f62.z, f60.w);
    f63.w = mix(1.0, f60.w, f61);
    gl_FragData[0] = f63;
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
