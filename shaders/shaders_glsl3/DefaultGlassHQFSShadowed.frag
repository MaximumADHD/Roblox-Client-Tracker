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
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D StudsMapTexture;
uniform sampler2D SpecularMapTexture;
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
    vec2 f7 = (vec3(f5, f6).xy + (vec3((texture(NormalDetailMapTexture, f2 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f1;
    float f8 = f3.w;
    vec3 f9 = ((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f8 + CB2[2].w, 0.0, 1.0))) * f3.xyz) * (1.0 + (f7.x * CB2[0].z))) * (texture(StudsMapTexture, f0).x * 2.0);
    vec4 f10 = mix(texture(SpecularMapTexture, f2 * CB2[1].w), texture(SpecularMapTexture, f2), vec4(clamp((f1 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0)));
    float f11 = f10.y;
    float f12 = VARYING2.w * 2.0;
    float f13 = clamp((f12 - 1.0) + f8, 0.0, 1.0);
    vec3 f14 = normalize(((VARYING6.xyz * f7.x) + (cross(VARYING5.xyz, VARYING6.xyz) * f7.y)) + (VARYING5.xyz * (f6 * 10.0)));
    vec3 f15 = -CB0[11].xyz;
    float f16 = dot(f14, f15);
    float f17 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f18 = VARYING3.yzx - (VARYING3.yzx * f17);
    vec4 f19 = vec4(clamp(f17, 0.0, 1.0));
    vec4 f20 = mix(texture(LightMapTexture, f18), vec4(0.0), f19);
    vec4 f21 = mix(texture(LightGridSkylightTexture, f18), vec4(1.0), f19);
    vec3 f22 = (f20.xyz * (f20.w * 120.0)).xyz;
    float f23 = f21.x;
    float f24 = f21.y;
    vec3 f25 = VARYING7.xyz - CB0[41].xyz;
    vec3 f26 = VARYING7.xyz - CB0[42].xyz;
    vec3 f27 = VARYING7.xyz - CB0[43].xyz;
    vec4 f28 = vec4(VARYING7.xyz, 1.0) * mat4(CB8[((dot(f25, f25) < CB0[41].w) ? 0 : ((dot(f26, f26) < CB0[42].w) ? 1 : ((dot(f27, f27) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f25, f25) < CB0[41].w) ? 0 : ((dot(f26, f26) < CB0[42].w) ? 1 : ((dot(f27, f27) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f25, f25) < CB0[41].w) ? 0 : ((dot(f26, f26) < CB0[42].w) ? 1 : ((dot(f27, f27) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f25, f25) < CB0[41].w) ? 0 : ((dot(f26, f26) < CB0[42].w) ? 1 : ((dot(f27, f27) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f29 = textureLod(ShadowAtlasTexture, f28.xy, 0.0);
    vec2 f30 = vec2(0.0);
    f30.x = CB0[45].z;
    vec2 f31 = f30;
    f31.y = CB0[45].w;
    float f32 = (2.0 * f28.z) - 1.0;
    float f33 = exp(CB0[45].z * f32);
    float f34 = -exp((-CB0[45].w) * f32);
    vec2 f35 = (f31 * CB0[46].y) * vec2(f33, f34);
    vec2 f36 = f35 * f35;
    float f37 = f29.x;
    float f38 = max(f29.y - (f37 * f37), f36.x);
    float f39 = f33 - f37;
    float f40 = f29.z;
    float f41 = max(f29.w - (f40 * f40), f36.y);
    float f42 = f34 - f40;
    float f43 = (f16 > 0.0) ? mix(f24, mix(min((f33 <= f37) ? 1.0 : clamp(((f38 / (f38 + (f39 * f39))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f34 <= f40) ? 1.0 : clamp(((f41 / (f41 + (f42 * f42))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f24, clamp((length(VARYING7.xyz - CB0[7].xyz) * CB0[45].y) - (CB0[45].x * CB0[45].y), 0.0, 1.0)), CB0[46].x) : 0.0;
    vec3 f44 = f9 * f9;
    vec3 f45 = normalize(VARYING4.xyz);
    vec3 f46 = texture(EnvironmentMapTexture, reflect(-VARYING4.xyz, f14)).xyz;
    vec3 f47 = mix(f22, (f46 * f46) * CB0[15].x, vec3(f23)) * mix(vec3(1.0), f44, vec3(0.5));
    vec3 f48 = normalize(f15 + f45);
    float f49 = clamp(f16, 0.0, 1.0);
    float f50 = f11 * f11;
    float f51 = max(0.001000000047497451305389404296875, dot(f14, f48));
    float f52 = dot(f15, f48);
    float f53 = 1.0 - f52;
    float f54 = f53 * f53;
    float f55 = (f54 * f54) * f53;
    vec3 f56 = vec3(f55) + (vec3(0.039999999105930328369140625) * (1.0 - f55));
    float f57 = f50 * f50;
    float f58 = (((f51 * f57) - f51) * f51) + 1.0;
    float f59 = 1.0 - max(9.9999997473787516355514526367188e-05, dot(f14, f45));
    vec4 f60 = mix(vec4(mix((((((vec3(1.0) - (f56 * (CB0[26].w * f1))) * CB0[10].xyz) * f49) * f43) + min(f22 + (CB0[8].xyz + (CB0[9].xyz * f23)), vec3(CB0[16].w))) * (f44 * f13), f47, vec3(VARYING7.w)) * f13, f13), vec4(f47, 1.0), vec4(((f59 * f59) * 0.800000011920928955078125) * clamp(f12, 0.0, 1.0))) + vec4(((f56 * (((f57 + (f57 * f57)) / (((f58 * f58) * ((f52 * 3.0) + 0.5)) * ((f51 * 0.75) + 0.25))) * f49)) * CB0[10].xyz) * f43, 0.0);
    float f61 = clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0);
    vec3 f62 = mix(CB0[14].xyz, sqrt(clamp(f60.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(f61));
    vec4 f63 = vec4(f62.x, f62.y, f62.z, f60.w);
    f63.w = mix(1.0, f60.w, f61);
    _entryPointOutput = f63;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
//$$EnvironmentMapTexture=s2
