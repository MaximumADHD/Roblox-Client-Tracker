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
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube EnvironmentMapTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;

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
    float f1 = VARYING4.w * CB0[23].y;
    vec2 f2 = texture(NormalMapTexture, f0).wy * 2.0;
    vec2 f3 = f2 - vec2(1.0);
    float f4 = sqrt(clamp(1.0 + dot(vec2(1.0) - f2, f3), 0.0, 1.0));
    vec2 f5 = ((vec3(f3, f4).xy + (vec3((texture(NormalDetailMapTexture, VARYING0.xy * CB2[0].x).wy * 2.0) - vec2(1.0), 0.0).xy * (clamp(VARYING2.w - 0.5, 0.0, 1.0) * clamp(1.0 - (2.0 * VARYING7.w), 0.0, 1.0)))).xy * clamp(1.0 - f1, 0.0, 1.0)).xy * CB2[4].w;
    vec3 f6 = normalize(((VARYING6.xyz * f5.x) + (cross(VARYING5.xyz, VARYING6.xyz) * f5.y)) + (VARYING5.xyz * f4));
    vec3 f7 = -CB0[11].xyz;
    float f8 = dot(f6, f7);
    vec3 f9 = vec4(VARYING2.xyz * (texture(DiffuseMapTexture, f0).x * 2.0), VARYING2.w).xyz;
    float f10 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f11 = VARYING3.yzx - (VARYING3.yzx * f10);
    vec4 f12 = vec4(clamp(f10, 0.0, 1.0));
    vec4 f13 = mix(texture(LightMapTexture, f11), vec4(0.0), f12);
    vec4 f14 = mix(texture(LightGridSkylightTexture, f11), vec4(1.0), f12);
    float f15 = f14.y;
    vec3 f16 = VARYING7.xyz - CB0[41].xyz;
    vec3 f17 = VARYING7.xyz - CB0[42].xyz;
    vec3 f18 = VARYING7.xyz - CB0[43].xyz;
    vec4 f19 = vec4(VARYING7.xyz, 1.0) * mat4(CB8[((dot(f16, f16) < CB0[41].w) ? 0 : ((dot(f17, f17) < CB0[42].w) ? 1 : ((dot(f18, f18) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f16, f16) < CB0[41].w) ? 0 : ((dot(f17, f17) < CB0[42].w) ? 1 : ((dot(f18, f18) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f16, f16) < CB0[41].w) ? 0 : ((dot(f17, f17) < CB0[42].w) ? 1 : ((dot(f18, f18) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f16, f16) < CB0[41].w) ? 0 : ((dot(f17, f17) < CB0[42].w) ? 1 : ((dot(f18, f18) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f20 = textureLod(ShadowAtlasTexture, f19.xy, 0.0);
    vec2 f21 = vec2(0.0);
    f21.x = CB0[45].z;
    vec2 f22 = f21;
    f22.y = CB0[45].w;
    float f23 = (2.0 * f19.z) - 1.0;
    float f24 = exp(CB0[45].z * f23);
    float f25 = -exp((-CB0[45].w) * f23);
    vec2 f26 = (f22 * CB0[46].y) * vec2(f24, f25);
    vec2 f27 = f26 * f26;
    float f28 = f20.x;
    float f29 = max(f20.y - (f28 * f28), f27.x);
    float f30 = f24 - f28;
    float f31 = f20.z;
    float f32 = max(f20.w - (f31 * f31), f27.y);
    float f33 = f25 - f31;
    float f34 = (f8 > 0.0) ? mix(f15, mix(min((f24 <= f28) ? 1.0 : clamp(((f29 / (f29 + (f30 * f30))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f25 <= f31) ? 1.0 : clamp(((f32 / (f32 + (f33 * f33))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f15, clamp((length(VARYING7.xyz - CB0[7].xyz) * CB0[45].y) - (CB0[45].x * CB0[45].y), 0.0, 1.0)), CB0[46].x) : 0.0;
    vec3 f35 = texture(EnvironmentMapTexture, reflect(-VARYING4.xyz, f6)).xyz;
    vec3 f36 = ((min((f13.xyz * (f13.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f14.x)), vec3(CB0[16].w)) + (((CB0[10].xyz * clamp(f8, 0.0, 1.0)) + (CB0[12].xyz * clamp(-f8, 0.0, 1.0))) * f34)) * mix((f9 * f9).xyz, (f35 * f35) * CB0[15].x, vec3(VARYING7.w)).xyz) + (CB0[10].xyz * (((step(0.0, f8) * CB2[0].y) * f34) * pow(clamp(dot(f6, normalize(f7 + normalize(VARYING4.xyz))), 0.0, 1.0), CB2[0].z)));
    vec4 f37 = vec4(f36.x, f36.y, f36.z, vec4(0.0).w);
    f37.w = VARYING2.w;
    vec2 f38 = min(VARYING0.wz, VARYING1.wz);
    float f39 = min(f38.x, f38.y) / f1;
    vec3 f40 = mix(CB0[14].xyz, (sqrt(clamp((f37.xyz * clamp((clamp((f1 * CB0[24].x) + CB0[24].y, 0.0, 1.0) * (1.5 - f39)) + f39, 0.0, 1.0)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))))).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(f40.x, f40.y, f40.z, f37.w);
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$EnvironmentMapTexture=s2
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
