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
    vec4 f4 = mix(texture(DiffuseMapTexture, f3 * CB2[2].y), texture(DiffuseMapTexture, f3), vec4(clamp((clamp(1.0 - (VARYING4.w * 0.0033333334140479564666748046875), 0.0, 1.0) * CB2[4].x) - (CB2[3].x * CB2[4].x), 0.0, 1.0)));
    vec2 f5 = mix(texture(NormalMapTexture, f3 * CB2[2].z), texture(NormalMapTexture, f3), vec4(clamp((f2 * CB2[4].y) - (CB2[3].y * CB2[4].y), 0.0, 1.0))).wy * 2.0;
    vec2 f6 = f5 - vec2(1.0);
    float f7 = sqrt(clamp(1.0 + dot(vec2(1.0) - f5, f6), 0.0, 1.0));
    vec2 f8 = (vec3(f6, f7).xy + (vec3((texture(NormalDetailMapTexture, f3 * CB2[1].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[2].x)).xy * f2;
    float f9 = f8.x;
    vec4 f10 = mix(texture(SpecularMapTexture, f3 * CB2[2].w), texture(SpecularMapTexture, f3), vec4(clamp((f2 * CB2[4].z) - (CB2[3].z * CB2[4].z), 0.0, 1.0)));
    float f11 = f10.x;
    float f12 = f10.y;
    float f13 = ((1.0 - f12) * f2) * CB2[0].w;
    vec3 f14 = normalize(((VARYING6.xyz * f9) + (cross(VARYING5.xyz, VARYING6.xyz) * f8.y)) + (VARYING5.xyz * f7));
    vec3 f15 = -CB0[11].xyz;
    float f16 = dot(f14, f15);
    vec3 f17 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f4.w + CB2[3].w, 0.0, 1.0))) * f4.xyz) * (1.0 + (f9 * CB2[1].x))) * (texture(StudsMapTexture, f0).x * 2.0), VARYING2.w).xyz;
    float f18 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f19 = VARYING3.yzx - (VARYING3.yzx * f18);
    vec4 f20 = vec4(clamp(f18, 0.0, 1.0));
    vec4 f21 = mix(texture(LightMapTexture, f19), vec4(0.0), f20);
    vec4 f22 = mix(texture(LightGridSkylightTexture, f19), vec4(1.0), f20);
    float f23 = f22.x;
    float f24 = f22.y;
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
    vec3 f44 = normalize(VARYING4.xyz);
    float f45 = CB0[26].w * f2;
    float f46 = max(f12, 0.04500000178813934326171875);
    float f47 = (f13 != 0.0) ? 0.0 : (f46 * 5.0);
    vec3 f48 = vec4(reflect(-f44, f14), f47).xyz;
    vec3 f49 = textureLod(PrefilteredEnvTexture, f48, f47).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f14.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec4 f50 = texture(PrecomputedBRDFTexture, vec2(f46, max(9.9999997473787516355514526367188e-05, dot(f14, f44))));
    vec3 f51 = mix((f17 * f17).xyz, f49, vec3(f13));
    vec3 f52 = mix(vec3(0.039999999105930328369140625), f51, vec3(f11));
    vec3 f53 = normalize(f15 + f44);
    float f54 = clamp(f16, 0.0, 1.0);
    float f55 = f46 * f46;
    float f56 = max(0.001000000047497451305389404296875, dot(f14, f53));
    float f57 = dot(f15, f53);
    float f58 = 1.0 - f57;
    float f59 = f58 * f58;
    float f60 = (f59 * f59) * f58;
    vec3 f61 = vec3(f60) + (f52 * (1.0 - f60));
    float f62 = f55 * f55;
    float f63 = (((f56 * f62) - f56) * f56) + 1.0;
    float f64 = 1.0 - (f11 * f45);
    float f65 = f50.x;
    float f66 = f50.y;
    vec3 f67 = ((f52 * f65) + vec3(f66)) / vec3(f65 + f66);
    vec3 f68 = (vec3(1.0) - (f67 * f45)) * f64;
    vec3 f69 = f14 * f14;
    bvec3 f70 = lessThan(f14, vec3(0.0));
    vec3 f71 = vec3(f70.x ? f69.x : vec3(0.0).x, f70.y ? f69.y : vec3(0.0).y, f70.z ? f69.z : vec3(0.0).z);
    vec3 f72 = f69 - f71;
    float f73 = f72.x;
    float f74 = f72.y;
    float f75 = f72.z;
    float f76 = f71.x;
    float f77 = f71.y;
    float f78 = f71.z;
    vec3 f79 = (mix(textureLod(PrefilteredEnvIndoorTexture, f48, f47).xyz, f49, vec3(f23)) * f67) * f45;
    vec3 f80 = (((((((((vec3(1.0) - (f61 * f45)) * f64) * CB0[10].xyz) * f54) * f43) + (f68 * (((((((CB0[35].xyz * f73) + (CB0[37].xyz * f74)) + (CB0[39].xyz * f75)) + (CB0[36].xyz * f76)) + (CB0[38].xyz * f77)) + (CB0[40].xyz * f78)) + (((((((CB0[29].xyz * f73) + (CB0[31].xyz * f74)) + (CB0[33].xyz * f75)) + (CB0[30].xyz * f76)) + (CB0[32].xyz * f77)) + (CB0[34].xyz * f78)) * f23)))) + (CB0[27].xyz + (CB0[28].xyz * f23))) * f51) + (((((f61 * ((f62 + (f62 * f62)) / (((f63 * f63) * ((f57 * 3.0) + 0.5)) * ((f56 * 0.75) + 0.25)))) * CB0[10].xyz) * f54) * f43) + f79)) + ((f21.xyz * (f21.w * 120.0)).xyz * mix(f51, f79 * (1.0 / (max(max(f79.x, f79.y), f79.z) + 0.00999999977648258209228515625)), ((vec3(1.0) - f68) * f45) * (1.0 - f23)));
    vec4 f81 = vec4(f80.x, f80.y, f80.z, vec4(0.0).w);
    f81.w = VARYING2.w;
    vec2 f82 = min(VARYING0.wz, VARYING1.wz);
    float f83 = min(f82.x, f82.y) / f1;
    vec3 f84 = mix(CB0[14].xyz, (sqrt(clamp((f81.xyz * clamp((clamp((f1 * CB0[24].x) + CB0[24].y, 0.0, 1.0) * (1.5 - f83)) + f83, 0.0, 1.0)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))))).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(f84.x, f84.y, f84.z, f81.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$ShadowAtlasTexture=s1
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
