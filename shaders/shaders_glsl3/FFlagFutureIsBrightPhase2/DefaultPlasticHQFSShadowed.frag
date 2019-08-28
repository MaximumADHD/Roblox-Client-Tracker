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
    vec2 f2 = texture(NormalMapTexture, f0).wy * 2.0;
    vec2 f3 = f2 - vec2(1.0);
    float f4 = sqrt(clamp(1.0 + dot(vec2(1.0) - f2, f3), 0.0, 1.0));
    vec2 f5 = ((vec3(f3, f4).xy + (vec3((texture(NormalDetailMapTexture, VARYING0.xy * CB2[0].x).wy * 2.0) - vec2(1.0), 0.0).xy * (clamp(VARYING2.w - 0.5, 0.0, 1.0) * clamp(1.0 - (2.0 * VARYING7.w), 0.0, 1.0)))).xy * clamp(1.0 - f1, 0.0, 1.0)).xy * CB2[4].w;
    vec3 f6 = normalize(((VARYING6.xyz * f5.x) + (cross(VARYING5.xyz, VARYING6.xyz) * f5.y)) + (VARYING5.xyz * f4));
    vec3 f7 = -CB0[11].xyz;
    float f8 = dot(f6, f7);
    vec3 f9 = vec4(VARYING2.xyz * (texture(DiffuseMapTexture, f0).x * 2.0), VARYING2.w).xyz;
    vec3 f10 = vec3(CB0[15].x);
    float f11 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f12 = VARYING3.yzx - (VARYING3.yzx * f11);
    vec4 f13 = vec4(clamp(f11, 0.0, 1.0));
    vec4 f14 = mix(texture(LightMapTexture, f12), vec4(0.0), f13);
    vec4 f15 = mix(texture(LightGridSkylightTexture, f12), vec4(1.0), f13);
    float f16 = f15.y;
    vec3 f17 = VARYING7.xyz - CB0[26].xyz;
    vec3 f18 = VARYING7.xyz - CB0[27].xyz;
    vec3 f19 = VARYING7.xyz - CB0[28].xyz;
    vec4 f20 = vec4(VARYING7.xyz, 1.0) * mat4(CB8[((dot(f17, f17) < CB0[26].w) ? 0 : ((dot(f18, f18) < CB0[27].w) ? 1 : ((dot(f19, f19) < CB0[28].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f17, f17) < CB0[26].w) ? 0 : ((dot(f18, f18) < CB0[27].w) ? 1 : ((dot(f19, f19) < CB0[28].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f17, f17) < CB0[26].w) ? 0 : ((dot(f18, f18) < CB0[27].w) ? 1 : ((dot(f19, f19) < CB0[28].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f17, f17) < CB0[26].w) ? 0 : ((dot(f18, f18) < CB0[27].w) ? 1 : ((dot(f19, f19) < CB0[28].w) ? 2 : 3))) * 4 + 3]);
    vec4 f21 = textureLod(ShadowAtlasTexture, f20.xy, 0.0);
    vec2 f22 = vec2(0.0);
    f22.x = CB0[30].z;
    vec2 f23 = f22;
    f23.y = CB0[30].w;
    float f24 = (2.0 * f20.z) - 1.0;
    float f25 = exp(CB0[30].z * f24);
    float f26 = -exp((-CB0[30].w) * f24);
    vec2 f27 = (f23 * CB0[31].y) * vec2(f25, f26);
    vec2 f28 = f27 * f27;
    float f29 = f21.x;
    float f30 = max(f21.y - (f29 * f29), f28.x);
    float f31 = f25 - f29;
    float f32 = f21.z;
    float f33 = max(f21.w - (f32 * f32), f28.y);
    float f34 = f26 - f32;
    float f35 = (f8 > 0.0) ? mix(f16, mix(min((f25 <= f29) ? 1.0 : clamp(((f30 / (f30 + (f31 * f31))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f26 <= f32) ? 1.0 : clamp(((f33 / (f33 + (f34 * f34))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f16, clamp((length(VARYING7.xyz - CB0[7].xyz) * CB0[30].y) - (CB0[30].x * CB0[30].y), 0.0, 1.0)), CB0[31].x) : 0.0;
    vec3 f36 = texture(EnvironmentMapTexture, reflect(-VARYING4.xyz, f6)).xyz;
    vec3 f37 = ((min(((f14.xyz * (f14.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * f15.x), vec3(CB0[17].w)) + (((CB0[10].xyz * clamp(f8, 0.0, 1.0)) + (CB0[12].xyz * max(-f8, 0.0))) * f35)) * mix(mix(f9, f9 * f9, f10).xyz, mix(f36, (f36 * f36) * CB0[15].w, f10), vec3(VARYING7.w)).xyz) + (CB0[10].xyz * (((step(0.0, f8) * CB2[0].y) * f35) * pow(clamp(dot(f6, normalize(f7 + normalize(VARYING4.xyz))), 0.0, 1.0), CB2[0].z)));
    vec4 f38 = vec4(f37.x, f37.y, f37.z, vec4(0.0).w);
    f38.w = VARYING2.w;
    vec2 f39 = min(VARYING0.wz, VARYING1.wz);
    float f40 = min(f39.x, f39.y) / f1;
    vec3 f41 = (f38.xyz * clamp((clamp((f1 * CB0[25].x) + CB0[25].y, 0.0, 1.0) * (1.5 - f40)) + f40, 0.0, 1.0)).xyz;
    vec3 f42 = mix(CB0[14].xyz, mix(f41, sqrt(clamp(f41 * CB0[15].z, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125)))))), f10).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(f42.x, f42.y, f42.z, f38.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$ShadowAtlasTexture=s1
//$$EnvironmentMapTexture=s2
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8