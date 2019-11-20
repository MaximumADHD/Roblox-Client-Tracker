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
uniform sampler2D ShadowAtlasTexture;
uniform samplerCube EnvironmentMapTexture;
uniform sampler2D WangTileMapTexture;
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
    float f1 = VARYING4.w * CB0[23].y;
    float f2 = clamp(1.0 - f1, 0.0, 1.0);
    vec2 f3 = VARYING0.xy * CB2[0].x;
    vec2 f4 = f3 * 4.0;
    vec2 f5 = f4 * 0.25;
    vec4 f6 = vec4(dFdx(f5), dFdy(f5));
    vec2 f7 = (texture(WangTileMapTexture, f4 * vec2(0.0078125)).xy * 0.99609375) + (fract(f4) * 0.25);
    vec2 f8 = f6.xy;
    vec2 f9 = f6.zw;
    vec4 f10 = textureGrad(DiffuseMapTexture, f7, f8, f9);
    vec2 f11 = textureGrad(NormalMapTexture, f7, f8, f9).wy * 2.0;
    vec2 f12 = f11 - vec2(1.0);
    float f13 = sqrt(clamp(1.0 + dot(vec2(1.0) - f11, f12), 0.0, 1.0));
    vec2 f14 = (vec3(f12, f13).xy + (vec3((texture(NormalDetailMapTexture, f3 * CB2[1].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[2].x)).xy * f2;
    float f15 = f14.x;
    vec4 f16 = textureGrad(SpecularMapTexture, f7, f8, f9);
    float f17 = f16.y;
    vec3 f18 = normalize(((VARYING6.xyz * f15) + (cross(VARYING5.xyz, VARYING6.xyz) * f14.y)) + (VARYING5.xyz * f13));
    vec3 f19 = -CB0[11].xyz;
    float f20 = dot(f18, f19);
    vec3 f21 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f10.w + CB2[3].w, 0.0, 1.0))) * f10.xyz) * (1.0 + (f15 * CB2[1].x))) * (texture(StudsMapTexture, f0).x * 2.0), VARYING2.w).xyz;
    float f22 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f23 = VARYING3.yzx - (VARYING3.yzx * f22);
    vec4 f24 = vec4(clamp(f22, 0.0, 1.0));
    vec4 f25 = mix(texture(LightMapTexture, f23), vec4(0.0), f24);
    vec4 f26 = mix(texture(LightGridSkylightTexture, f23), vec4(1.0), f24);
    float f27 = f26.y;
    vec3 f28 = VARYING7.xyz - CB0[41].xyz;
    vec3 f29 = VARYING7.xyz - CB0[42].xyz;
    vec3 f30 = VARYING7.xyz - CB0[43].xyz;
    vec4 f31 = vec4(VARYING7.xyz, 1.0) * mat4(CB8[((dot(f28, f28) < CB0[41].w) ? 0 : ((dot(f29, f29) < CB0[42].w) ? 1 : ((dot(f30, f30) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f28, f28) < CB0[41].w) ? 0 : ((dot(f29, f29) < CB0[42].w) ? 1 : ((dot(f30, f30) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f28, f28) < CB0[41].w) ? 0 : ((dot(f29, f29) < CB0[42].w) ? 1 : ((dot(f30, f30) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f28, f28) < CB0[41].w) ? 0 : ((dot(f29, f29) < CB0[42].w) ? 1 : ((dot(f30, f30) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f32 = textureLod(ShadowAtlasTexture, f31.xy, 0.0);
    vec2 f33 = vec2(0.0);
    f33.x = CB0[45].z;
    vec2 f34 = f33;
    f34.y = CB0[45].w;
    float f35 = (2.0 * f31.z) - 1.0;
    float f36 = exp(CB0[45].z * f35);
    float f37 = -exp((-CB0[45].w) * f35);
    vec2 f38 = (f34 * CB0[46].y) * vec2(f36, f37);
    vec2 f39 = f38 * f38;
    float f40 = f32.x;
    float f41 = max(f32.y - (f40 * f40), f39.x);
    float f42 = f36 - f40;
    float f43 = f32.z;
    float f44 = max(f32.w - (f43 * f43), f39.y);
    float f45 = f37 - f43;
    float f46 = (f20 > 0.0) ? mix(f27, mix(min((f36 <= f40) ? 1.0 : clamp(((f41 / (f41 + (f42 * f42))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f37 <= f43) ? 1.0 : clamp(((f44 / (f44 + (f45 * f45))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f27, clamp((length(VARYING7.xyz - CB0[7].xyz) * CB0[45].y) - (CB0[45].x * CB0[45].y), 0.0, 1.0)), CB0[46].x) : 0.0;
    vec3 f47 = normalize(VARYING4.xyz);
    float f48 = CB0[26].w * f2;
    float f49 = max(f17, 0.04500000178813934326171875);
    vec3 f50 = texture(EnvironmentMapTexture, reflect(-f47, f18)).xyz;
    vec3 f51 = mix((f21 * f21).xyz, (f50 * f50) * CB0[15].x, vec3(((1.0 - f17) * f2) * CB2[0].w));
    float f52 = f16.x * f48;
    vec3 f53 = normalize(f19 + f47);
    float f54 = clamp(f20, 0.0, 1.0);
    float f55 = f49 * f49;
    float f56 = max(0.001000000047497451305389404296875, dot(f18, f53));
    float f57 = dot(f19, f53);
    float f58 = 1.0 - f57;
    float f59 = f58 * f58;
    float f60 = (f59 * f59) * f58;
    vec3 f61 = vec3(f60) + (mix(vec3(0.039999999105930328369140625), f51, vec3(f52)) * (1.0 - f60));
    float f62 = f55 * f55;
    float f63 = (((f56 * f62) - f56) * f56) + 1.0;
    vec3 f64 = (((((((vec3(1.0) - (f61 * f48)) * (1.0 - f52)) * CB0[10].xyz) * f54) * f46) + min((f25.xyz * (f25.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f26.x)), vec3(CB0[16].w))) * f51) + ((((f61 * ((f62 + (f62 * f62)) / (((f63 * f63) * ((f57 * 3.0) + 0.5)) * ((f56 * 0.75) + 0.25)))) * CB0[10].xyz) * f54) * f46);
    vec4 f65 = vec4(f64.x, f64.y, f64.z, vec4(0.0).w);
    f65.w = VARYING2.w;
    vec2 f66 = min(VARYING0.wz, VARYING1.wz);
    float f67 = min(f66.x, f66.y) / f1;
    vec3 f68 = mix(CB0[14].xyz, (sqrt(clamp((f65.xyz * clamp((clamp((f1 * CB0[24].x) + CB0[24].y, 0.0, 1.0) * (1.5 - f67)) + f67, 0.0, 1.0)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))))).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(f68.x, f68.y, f68.z, f65.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$ShadowAtlasTexture=s1
//$$EnvironmentMapTexture=s2
//$$WangTileMapTexture=s9
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
