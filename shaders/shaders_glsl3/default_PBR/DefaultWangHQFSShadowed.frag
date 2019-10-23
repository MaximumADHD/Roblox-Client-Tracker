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
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D ShadowAtlasTexture;
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
    float f17 = f16.x;
    float f18 = f16.y;
    float f19 = ((1.0 - f18) * f2) * CB2[0].w;
    vec3 f20 = normalize(((VARYING6.xyz * f15) + (cross(VARYING5.xyz, VARYING6.xyz) * f14.y)) + (VARYING5.xyz * f13));
    vec3 f21 = -CB0[11].xyz;
    float f22 = dot(f20, f21);
    vec3 f23 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f10.w + CB2[3].w, 0.0, 1.0))) * f10.xyz) * (1.0 + (f15 * CB2[1].x))) * (texture(StudsMapTexture, f0).x * 2.0), VARYING2.w).xyz;
    float f24 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f25 = VARYING3.yzx - (VARYING3.yzx * f24);
    vec4 f26 = vec4(clamp(f24, 0.0, 1.0));
    vec4 f27 = mix(texture(LightMapTexture, f25), vec4(0.0), f26);
    vec4 f28 = mix(texture(LightGridSkylightTexture, f25), vec4(1.0), f26);
    float f29 = f28.x;
    float f30 = f28.y;
    vec3 f31 = VARYING7.xyz - CB0[41].xyz;
    vec3 f32 = VARYING7.xyz - CB0[42].xyz;
    vec3 f33 = VARYING7.xyz - CB0[43].xyz;
    vec4 f34 = vec4(VARYING7.xyz, 1.0) * mat4(CB8[((dot(f31, f31) < CB0[41].w) ? 0 : ((dot(f32, f32) < CB0[42].w) ? 1 : ((dot(f33, f33) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f31, f31) < CB0[41].w) ? 0 : ((dot(f32, f32) < CB0[42].w) ? 1 : ((dot(f33, f33) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f31, f31) < CB0[41].w) ? 0 : ((dot(f32, f32) < CB0[42].w) ? 1 : ((dot(f33, f33) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f31, f31) < CB0[41].w) ? 0 : ((dot(f32, f32) < CB0[42].w) ? 1 : ((dot(f33, f33) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f35 = textureLod(ShadowAtlasTexture, f34.xy, 0.0);
    vec2 f36 = vec2(0.0);
    f36.x = CB0[45].z;
    vec2 f37 = f36;
    f37.y = CB0[45].w;
    float f38 = (2.0 * f34.z) - 1.0;
    float f39 = exp(CB0[45].z * f38);
    float f40 = -exp((-CB0[45].w) * f38);
    vec2 f41 = (f37 * CB0[46].y) * vec2(f39, f40);
    vec2 f42 = f41 * f41;
    float f43 = f35.x;
    float f44 = max(f35.y - (f43 * f43), f42.x);
    float f45 = f39 - f43;
    float f46 = f35.z;
    float f47 = max(f35.w - (f46 * f46), f42.y);
    float f48 = f40 - f46;
    float f49 = (f22 > 0.0) ? mix(f30, mix(min((f39 <= f43) ? 1.0 : clamp(((f44 / (f44 + (f45 * f45))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f40 <= f46) ? 1.0 : clamp(((f47 / (f47 + (f48 * f48))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f30, clamp((length(VARYING7.xyz - CB0[7].xyz) * CB0[45].y) - (CB0[45].x * CB0[45].y), 0.0, 1.0)), CB0[46].x) : 0.0;
    vec3 f50 = normalize(VARYING4.xyz);
    float f51 = CB0[26].w * f2;
    float f52 = max(f18, 0.04500000178813934326171875);
    float f53 = (f19 != 0.0) ? 0.0 : (f52 * 5.0);
    vec3 f54 = vec4(reflect(-f50, f20), f53).xyz;
    vec3 f55 = textureLod(PrefilteredEnvTexture, f54, f53).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f20.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec4 f56 = texture(PrecomputedBRDFTexture, vec2(f52, max(9.9999997473787516355514526367188e-05, dot(f20, f50))));
    vec3 f57 = mix((f23 * f23).xyz, f55, vec3(f19));
    vec3 f58 = mix(vec3(0.039999999105930328369140625), f57, vec3(f17));
    vec3 f59 = normalize(f21 + f50);
    float f60 = clamp(f22, 0.0, 1.0);
    float f61 = f52 * f52;
    float f62 = max(0.001000000047497451305389404296875, dot(f20, f59));
    float f63 = dot(f21, f59);
    float f64 = 1.0 - f63;
    float f65 = f64 * f64;
    float f66 = (f65 * f65) * f64;
    vec3 f67 = vec3(f66) + (f58 * (1.0 - f66));
    float f68 = f61 * f61;
    float f69 = (((f62 * f68) - f62) * f62) + 1.0;
    float f70 = 1.0 - (f17 * f51);
    float f71 = f56.x;
    float f72 = f56.y;
    vec3 f73 = ((f58 * f71) + vec3(f72)) / vec3(f71 + f72);
    vec3 f74 = (vec3(1.0) - (f73 * f51)) * f70;
    vec3 f75 = f20 * f20;
    bvec3 f76 = lessThan(f20, vec3(0.0));
    vec3 f77 = vec3(f76.x ? f75.x : vec3(0.0).x, f76.y ? f75.y : vec3(0.0).y, f76.z ? f75.z : vec3(0.0).z);
    vec3 f78 = f75 - f77;
    float f79 = f78.x;
    float f80 = f78.y;
    float f81 = f78.z;
    float f82 = f77.x;
    float f83 = f77.y;
    float f84 = f77.z;
    vec3 f85 = (mix(textureLod(PrefilteredEnvIndoorTexture, f54, f53).xyz, f55, vec3(f29)) * f73) * f51;
    vec3 f86 = (((((((((vec3(1.0) - (f67 * f51)) * f70) * CB0[10].xyz) * f60) * f49) + (f74 * (((((((CB0[35].xyz * f79) + (CB0[37].xyz * f80)) + (CB0[39].xyz * f81)) + (CB0[36].xyz * f82)) + (CB0[38].xyz * f83)) + (CB0[40].xyz * f84)) + (((((((CB0[29].xyz * f79) + (CB0[31].xyz * f80)) + (CB0[33].xyz * f81)) + (CB0[30].xyz * f82)) + (CB0[32].xyz * f83)) + (CB0[34].xyz * f84)) * f29)))) + (CB0[27].xyz + (CB0[28].xyz * f29))) * f57) + (((((f67 * ((f68 + (f68 * f68)) / (((f69 * f69) * ((f63 * 3.0) + 0.5)) * ((f62 * 0.75) + 0.25)))) * CB0[10].xyz) * f60) * f49) + f85)) + ((f27.xyz * (f27.w * 120.0)).xyz * mix(f57, f85 * (1.0 / (max(max(f85.x, f85.y), f85.z) + 0.00999999977648258209228515625)), ((vec3(1.0) - f74) * f51) * (1.0 - f29)));
    vec4 f87 = vec4(f86.x, f86.y, f86.z, vec4(0.0).w);
    f87.w = VARYING2.w;
    vec2 f88 = min(VARYING0.wz, VARYING1.wz);
    float f89 = min(f88.x, f88.y) / f1;
    vec3 f90 = mix(CB0[14].xyz, (sqrt(clamp((f87.xyz * clamp((clamp((f1 * CB0[24].x) + CB0[24].y, 0.0, 1.0) * (1.5 - f89)) + f89, 0.0, 1.0)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))))).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(f90.x, f90.y, f90.z, f87.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$ShadowAtlasTexture=s1
//$$WangTileMapTexture=s9
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
