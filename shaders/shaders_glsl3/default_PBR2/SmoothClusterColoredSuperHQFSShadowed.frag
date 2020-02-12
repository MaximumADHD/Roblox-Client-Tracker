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

uniform vec4 CB0[47];
uniform vec4 CB8[24];
uniform vec4 CB4[36];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2DArray AlbedoMapTexture;
uniform sampler2DArray NormalMapTexture;
uniform sampler2DArray SpecularMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec3 VARYING4;
in vec4 VARYING5;
in vec3 VARYING6;
in vec4 VARYING7;
in vec3 VARYING8;
in vec4 VARYING9;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = vec3(VARYING1.xy, VARYING2.x);
    vec4 f1 = texture(AlbedoMapTexture, f0);
    vec3 f2 = vec3(VARYING1.zw, VARYING2.z);
    vec4 f3 = texture(AlbedoMapTexture, f2);
    vec4 f4 = texture(AlbedoMapTexture, VARYING3.xyz);
    int f5 = int(VARYING9.x + 0.5);
    int f6 = int(VARYING9.y + 0.5);
    int f7 = int(VARYING9.z + 0.5);
    vec2 f8 = f1.xz - vec2(0.5);
    vec2 f9 = f3.xz - vec2(0.5);
    vec2 f10 = f4.xz - vec2(0.5);
    vec3 f11 = vec3(0.0);
    f11.x = CB4[f5 * 1 + 0].x * f1.y;
    float f12 = f8.x;
    float f13 = f8.y;
    vec3 f14 = f11;
    f14.y = (CB4[f5 * 1 + 0].y * f12) - (CB4[f5 * 1 + 0].z * f13);
    vec3 f15 = f14;
    f15.z = (CB4[f5 * 1 + 0].z * f12) + (CB4[f5 * 1 + 0].y * f13);
    vec3 f16 = vec3(0.0);
    f16.x = CB4[f6 * 1 + 0].x * f3.y;
    float f17 = f9.x;
    float f18 = f9.y;
    vec3 f19 = f16;
    f19.y = (CB4[f6 * 1 + 0].y * f17) - (CB4[f6 * 1 + 0].z * f18);
    vec3 f20 = f19;
    f20.z = (CB4[f6 * 1 + 0].z * f17) + (CB4[f6 * 1 + 0].y * f18);
    vec3 f21 = vec3(0.0);
    f21.x = CB4[f7 * 1 + 0].x * f4.y;
    float f22 = f10.x;
    float f23 = f10.y;
    vec3 f24 = f21;
    f24.y = (CB4[f7 * 1 + 0].y * f22) - (CB4[f7 * 1 + 0].z * f23);
    vec3 f25 = f24;
    f25.z = (CB4[f7 * 1 + 0].z * f22) + (CB4[f7 * 1 + 0].y * f23);
    vec4 f26 = ((vec4(f15.x, f15.y, f15.z, f1.w) * VARYING0.x) + (vec4(f20.x, f20.y, f20.z, f3.w) * VARYING0.y)) + (vec4(f25.x, f25.y, f25.z, f4.w) * VARYING0.z);
    float f27 = f26.x;
    float f28 = f27 - f26.z;
    vec3 f29 = vec4(vec3(f28, f27, f28) + (vec3(f26.yzy) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f30 = clamp(1.0 - (VARYING7.w * CB0[23].y), 0.0, 1.0);
    float f31 = -VARYING6.x;
    vec2 f32 = (((texture(NormalMapTexture, f0) * VARYING0.x) + (texture(NormalMapTexture, f2) * VARYING0.y)) + (texture(NormalMapTexture, VARYING3.xyz) * VARYING0.z)).wy * 2.0;
    vec2 f33 = f32 - vec2(1.0);
    vec3 f34 = vec3(dot(VARYING8, VARYING0.xyz));
    vec3 f35 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f31), vec3(VARYING6.y, f31, 0.0), f34) * f33.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f34) * f33.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - f32, f33), 0.0, 1.0)))), 0.0).xyz;
    vec4 f36 = ((texture(SpecularMapTexture, f0) * VARYING0.x) + (texture(SpecularMapTexture, f2) * VARYING0.y)) + (texture(SpecularMapTexture, VARYING3.xyz) * VARYING0.z);
    vec3 f37 = -CB0[11].xyz;
    float f38 = dot(f35, f37);
    float f39 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f40 = VARYING4.yzx - (VARYING4.yzx * f39);
    vec4 f41 = vec4(clamp(f39, 0.0, 1.0));
    vec4 f42 = mix(texture(LightMapTexture, f40), vec4(0.0), f41);
    vec4 f43 = mix(texture(LightGridSkylightTexture, f40), vec4(1.0), f41);
    vec3 f44 = (f42.xyz * (f42.w * 120.0)).xyz;
    float f45 = f43.x;
    float f46 = f43.y;
    vec3 f47 = VARYING5.xyz - CB0[41].xyz;
    vec3 f48 = VARYING5.xyz - CB0[42].xyz;
    vec3 f49 = VARYING5.xyz - CB0[43].xyz;
    vec4 f50 = vec4(VARYING5.xyz, 1.0) * mat4(CB8[((dot(f47, f47) < CB0[41].w) ? 0 : ((dot(f48, f48) < CB0[42].w) ? 1 : ((dot(f49, f49) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f47, f47) < CB0[41].w) ? 0 : ((dot(f48, f48) < CB0[42].w) ? 1 : ((dot(f49, f49) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f47, f47) < CB0[41].w) ? 0 : ((dot(f48, f48) < CB0[42].w) ? 1 : ((dot(f49, f49) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f47, f47) < CB0[41].w) ? 0 : ((dot(f48, f48) < CB0[42].w) ? 1 : ((dot(f49, f49) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f51 = textureLod(ShadowAtlasTexture, f50.xy, 0.0);
    vec2 f52 = vec2(0.0);
    f52.x = CB0[45].z;
    vec2 f53 = f52;
    f53.y = CB0[45].w;
    float f54 = (2.0 * f50.z) - 1.0;
    float f55 = exp(CB0[45].z * f54);
    float f56 = -exp((-CB0[45].w) * f54);
    vec2 f57 = (f53 * CB0[46].y) * vec2(f55, f56);
    vec2 f58 = f57 * f57;
    float f59 = f51.x;
    float f60 = max(f51.y - (f59 * f59), f58.x);
    float f61 = f55 - f59;
    float f62 = f51.z;
    float f63 = max(f51.w - (f62 * f62), f58.y);
    float f64 = f56 - f62;
    float f65 = (f38 > 0.0) ? mix(f46, mix(min((f55 <= f59) ? 1.0 : clamp(((f60 / (f60 + (f61 * f61))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f56 <= f62) ? 1.0 : clamp(((f63 / (f63 + (f64 * f64))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f46, clamp((length(VARYING5.xyz - CB0[7].xyz) * CB0[45].y) - (CB0[45].x * CB0[45].y), 0.0, 1.0)), CB0[46].x) : 0.0;
    vec3 f66 = normalize(VARYING7.xyz);
    vec3 f67 = (f29 * f29).xyz;
    float f68 = f36.y;
    float f69 = CB0[26].w * f30;
    vec3 f70 = reflect(-f66, f35);
    vec3 f71 = normalize(f37 + f66);
    float f72 = clamp(f38, 0.0, 1.0);
    float f73 = f68 * f68;
    float f74 = max(0.001000000047497451305389404296875, dot(f35, f71));
    float f75 = dot(f37, f71);
    float f76 = 1.0 - f75;
    float f77 = f76 * f76;
    float f78 = (f77 * f77) * f76;
    vec3 f79 = vec3(f78) + (vec3(0.039999999105930328369140625) * (1.0 - f78));
    float f80 = f73 * f73;
    float f81 = (((f74 * f80) - f74) * f74) + 1.0;
    float f82 = f68 * 5.0;
    vec3 f83 = vec4(f70, f82).xyz;
    vec4 f84 = texture(PrecomputedBRDFTexture, vec2(f68, max(9.9999997473787516355514526367188e-05, dot(f35, f66))));
    float f85 = f84.x;
    float f86 = f84.y;
    vec3 f87 = ((vec3(0.039999999105930328369140625) * f85) + vec3(f86)) / vec3(f85 + f86);
    vec3 f88 = f87 * f69;
    vec3 f89 = f35 * f35;
    bvec3 f90 = lessThan(f35, vec3(0.0));
    vec3 f91 = vec3(f90.x ? f89.x : vec3(0.0).x, f90.y ? f89.y : vec3(0.0).y, f90.z ? f89.z : vec3(0.0).z);
    vec3 f92 = f89 - f91;
    float f93 = f92.x;
    float f94 = f92.y;
    float f95 = f92.z;
    float f96 = f91.x;
    float f97 = f91.y;
    float f98 = f91.z;
    vec3 f99 = (mix(textureLod(PrefilteredEnvIndoorTexture, f83, f82).xyz * f44, textureLod(PrefilteredEnvTexture, f83, f82).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f70.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f45)) * f87) * f69;
    vec3 f100 = (((((((((vec3(1.0) - (f79 * f69)) * CB0[10].xyz) * f72) * f65) + ((vec3(1.0) - f88) * (((((((CB0[35].xyz * f93) + (CB0[37].xyz * f94)) + (CB0[39].xyz * f95)) + (CB0[36].xyz * f96)) + (CB0[38].xyz * f97)) + (CB0[40].xyz * f98)) + (((((((CB0[29].xyz * f93) + (CB0[31].xyz * f94)) + (CB0[33].xyz * f95)) + (CB0[30].xyz * f96)) + (CB0[32].xyz * f97)) + (CB0[34].xyz * f98)) * f45)))) + (CB0[27].xyz + (CB0[28].xyz * f45))) + vec3((f36.z * 2.0) * f30)) * f67) + ((((((f79 * (((f80 + (f80 * f80)) / (((f81 * f81) * ((f75 * 3.0) + 0.5)) * ((f74 * 0.75) + 0.25))) * f72)) * CB0[10].xyz) * f65) * f30) * VARYING0.w) + f99)) + (f44 * mix(f67, f99 * (1.0 / (max(max(f99.x, f99.y), f99.z) + 0.00999999977648258209228515625)), f88 * (f69 * (1.0 - f45))));
    vec4 f101 = vec4(f100.x, f100.y, f100.z, vec4(0.0).w);
    f101.w = 1.0;
    vec3 f102 = mix(CB0[14].xyz, sqrt(clamp(f101.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(clamp(VARYING5.w, 0.0, 1.0)));
    _entryPointOutput = vec4(f102.x, f102.y, f102.z, f101.w);
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s2
