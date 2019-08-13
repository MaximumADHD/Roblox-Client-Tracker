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
    vec4 Technology_Exposure;
    vec4 LightBorder;
    vec4 LightConfig0;
    vec4 LightConfig1;
    vec4 LightConfig2;
    vec4 LightConfig3;
    vec4 ShadowMatrix0;
    vec4 ShadowMatrix1;
    vec4 ShadowMatrix2;
    vec4 RefractionBias_FadeDistance_GlowFactor_SpecMul;
    vec4 OutlineBrightness_ShadowInfo;
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

uniform vec4 CB0[32];
uniform vec4 CB8[24];
uniform vec4 CB2[5];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D ShadowAtlasTexture;
uniform samplerCube EnvironmentMapTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D StudsMapTexture;
uniform sampler2D SpecularMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
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
    float f1 = VARYING4.w * CB0[24].y;
    float f2 = clamp(1.0 - f1, 0.0, 1.0);
    vec2 f3 = VARYING0.xy * CB2[0].x;
    vec4 f4 = mix(texture(DiffuseMapTexture, f3 * CB2[2].y), texture(DiffuseMapTexture, f3), vec4(clamp((clamp(1.0 - (VARYING4.w * 0.0033333334140479564666748046875), 0.0, 1.0) * CB2[4].x) - (CB2[3].x * CB2[4].x), 0.0, 1.0)));
    vec2 f5 = mix(texture(NormalMapTexture, f3 * CB2[2].z), texture(NormalMapTexture, f3), vec4(clamp((f2 * CB2[4].y) - (CB2[3].y * CB2[4].y), 0.0, 1.0))).wy * 2.0;
    vec2 f6 = f5 - vec2(1.0);
    float f7 = sqrt(clamp(1.0 + dot(vec2(1.0) - f5, f6), 0.0, 1.0));
    vec2 f8 = (vec3(f6, f7).xy + (vec3((texture(NormalDetailMapTexture, f3 * CB2[1].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[2].x)).xy * f2;
    float f9 = f8.x;
    vec4 f10 = mix(texture(SpecularMapTexture, f3 * CB2[2].w), texture(SpecularMapTexture, f3), vec4(clamp((f2 * CB2[4].z) - (CB2[3].z * CB2[4].z), 0.0, 1.0)));
    vec2 f11 = mix(vec2(CB2[1].y, CB2[1].z), (f10.xy * vec2(CB2[0].y, CB2[0].z)) + vec2(0.0, 0.00999999977648258209228515625), vec2(f2));
    vec3 f12 = normalize(((VARYING6.xyz * f9) + (cross(VARYING5.xyz, VARYING6.xyz) * f8.y)) + (VARYING5.xyz * f7));
    vec3 f13 = -CB0[11].xyz;
    float f14 = dot(f12, f13);
    vec3 f15 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f4.w + CB2[3].w, 0.0, 1.0))) * f4.xyz) * (1.0 + (f9 * CB2[1].x))) * (texture(StudsMapTexture, f0).x * 2.0), VARYING2.w).xyz;
    vec3 f16 = vec3(CB0[15].x);
    float f17 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f18 = VARYING3.yzx - (VARYING3.yzx * f17);
    vec4 f19 = vec4(clamp(f17, 0.0, 1.0));
    vec4 f20 = mix(texture(LightMapTexture, f18), vec4(0.0), f19);
    vec4 f21 = mix(texture(LightGridSkylightTexture, f18), vec4(1.0), f19);
    float f22 = f21.y;
    vec3 f23 = VARYING7.xyz - CB0[26].xyz;
    vec3 f24 = VARYING7.xyz - CB0[27].xyz;
    vec3 f25 = VARYING7.xyz - CB0[28].xyz;
    vec4 f26 = vec4(VARYING7.xyz, 1.0) * mat4(CB8[((dot(f23, f23) < CB0[26].w) ? 0 : ((dot(f24, f24) < CB0[27].w) ? 1 : ((dot(f25, f25) < CB0[28].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f23, f23) < CB0[26].w) ? 0 : ((dot(f24, f24) < CB0[27].w) ? 1 : ((dot(f25, f25) < CB0[28].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f23, f23) < CB0[26].w) ? 0 : ((dot(f24, f24) < CB0[27].w) ? 1 : ((dot(f25, f25) < CB0[28].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f23, f23) < CB0[26].w) ? 0 : ((dot(f24, f24) < CB0[27].w) ? 1 : ((dot(f25, f25) < CB0[28].w) ? 2 : 3))) * 4 + 3]);
    vec4 f27 = textureLod(ShadowAtlasTexture, f26.xy, 0.0);
    vec2 f28 = vec2(0.0);
    f28.x = CB0[30].z;
    vec2 f29 = f28;
    f29.y = CB0[30].w;
    float f30 = (2.0 * f26.z) - 1.0;
    float f31 = exp(CB0[30].z * f30);
    float f32 = -exp((-CB0[30].w) * f30);
    vec2 f33 = (f29 * CB0[31].y) * vec2(f31, f32);
    vec2 f34 = f33 * f33;
    float f35 = f27.x;
    float f36 = max(f27.y - (f35 * f35), f34.x);
    float f37 = f31 - f35;
    float f38 = f27.z;
    float f39 = max(f27.w - (f38 * f38), f34.y);
    float f40 = f32 - f38;
    float f41 = (f14 > 0.0) ? mix(f22, mix(min((f31 <= f35) ? 1.0 : clamp(((f36 / (f36 + (f37 * f37))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f32 <= f38) ? 1.0 : clamp(((f39 / (f39 + (f40 * f40))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f22, clamp((length(VARYING7.xyz - CB0[7].xyz) * CB0[30].y) - (CB0[30].x * CB0[30].y), 0.0, 1.0)), CB0[31].x) : 0.0;
    vec3 f42 = texture(EnvironmentMapTexture, reflect(-VARYING4.xyz, f12)).xyz;
    vec3 f43 = ((min(((f20.xyz * (f20.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * f21.x), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(f14, 0.0, 1.0)) + (CB0[12].xyz * max(-f14, 0.0))) * f41)) * mix(mix(f15, f15 * f15, f16).xyz, mix(f42, (f42 * f42) * CB0[15].w, f16), vec3((f10.y * f2) * CB2[0].w)).xyz) + (CB0[10].xyz * (((step(0.0, f14) * f11.x) * f41) * pow(clamp(dot(f12, normalize(f13 + normalize(VARYING4.xyz))), 0.0, 1.0), f11.y)));
    vec4 f44 = vec4(f43.x, f43.y, f43.z, vec4(0.0).w);
    f44.w = VARYING2.w;
    vec2 f45 = min(VARYING0.wz, VARYING1.wz);
    float f46 = min(f45.x, f45.y) / f1;
    vec3 f47 = (f44.xyz * clamp((clamp((f1 * CB0[25].x) + CB0[25].y, 0.0, 1.0) * (1.5 - f46)) + f46, 0.0, 1.0)).xyz;
    vec3 f48 = mix(CB0[14].xyz, mix(f47, sqrt(clamp(f47 * CB0[15].z, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125)))))), f16).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(f48.x, f48.y, f48.z, f44.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$ShadowAtlasTexture=s1
//$$EnvironmentMapTexture=s2
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
