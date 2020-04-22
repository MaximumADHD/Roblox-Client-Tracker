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
    vec4 Exposure_DoFDistance;
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
in vec3 VARYING7;
in vec4 VARYING8;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = vec3(VARYING1.xy, VARYING2.x);
    vec4 f1 = texture(AlbedoMapTexture, f0);
    vec3 f2 = vec3(VARYING1.zw, VARYING2.z);
    vec4 f3 = texture(AlbedoMapTexture, f2);
    vec4 f4 = texture(AlbedoMapTexture, VARYING3.xyz);
    int f5 = int(VARYING8.x + 0.5);
    int f6 = int(VARYING8.y + 0.5);
    int f7 = int(VARYING8.z + 0.5);
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
    vec3 f30 = CB0[7].xyz - VARYING5.xyz;
    float f31 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    float f32 = -VARYING6.x;
    vec2 f33 = (((texture(NormalMapTexture, f0) * VARYING0.x) + (texture(NormalMapTexture, f2) * VARYING0.y)) + (texture(NormalMapTexture, VARYING3.xyz) * VARYING0.z)).wy * 2.0;
    vec2 f34 = f33 - vec2(1.0);
    vec3 f35 = vec3(dot(VARYING7, VARYING0.xyz));
    vec3 f36 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f32), vec3(VARYING6.y, f32, 0.0), f35) * f34.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f35) * f34.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - f33, f34), 0.0, 1.0)))), 0.0).xyz;
    vec4 f37 = ((texture(SpecularMapTexture, f0) * VARYING0.x) + (texture(SpecularMapTexture, f2) * VARYING0.y)) + (texture(SpecularMapTexture, VARYING3.xyz) * VARYING0.z);
    vec3 f38 = -CB0[11].xyz;
    float f39 = dot(f36, f38);
    float f40 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f41 = VARYING4.yzx - (VARYING4.yzx * f40);
    vec4 f42 = vec4(clamp(f40, 0.0, 1.0));
    vec4 f43 = mix(texture(LightMapTexture, f41), vec4(0.0), f42);
    vec4 f44 = mix(texture(LightGridSkylightTexture, f41), vec4(1.0), f42);
    vec3 f45 = (f43.xyz * (f43.w * 120.0)).xyz;
    float f46 = f44.x;
    float f47 = f44.y;
    vec3 f48 = VARYING5.xyz - CB0[41].xyz;
    vec3 f49 = VARYING5.xyz - CB0[42].xyz;
    vec3 f50 = VARYING5.xyz - CB0[43].xyz;
    vec4 f51 = vec4(VARYING5.xyz, 1.0) * mat4(CB8[((dot(f48, f48) < CB0[41].w) ? 0 : ((dot(f49, f49) < CB0[42].w) ? 1 : ((dot(f50, f50) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f48, f48) < CB0[41].w) ? 0 : ((dot(f49, f49) < CB0[42].w) ? 1 : ((dot(f50, f50) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f48, f48) < CB0[41].w) ? 0 : ((dot(f49, f49) < CB0[42].w) ? 1 : ((dot(f50, f50) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f48, f48) < CB0[41].w) ? 0 : ((dot(f49, f49) < CB0[42].w) ? 1 : ((dot(f50, f50) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f52 = textureLod(ShadowAtlasTexture, f51.xy, 0.0);
    vec2 f53 = vec2(0.0);
    f53.x = CB0[45].z;
    vec2 f54 = f53;
    f54.y = CB0[45].w;
    float f55 = (2.0 * f51.z) - 1.0;
    float f56 = exp(CB0[45].z * f55);
    float f57 = -exp((-CB0[45].w) * f55);
    vec2 f58 = (f54 * CB0[46].y) * vec2(f56, f57);
    vec2 f59 = f58 * f58;
    float f60 = f52.x;
    float f61 = max(f52.y - (f60 * f60), f59.x);
    float f62 = f56 - f60;
    float f63 = f52.z;
    float f64 = max(f52.w - (f63 * f63), f59.y);
    float f65 = f57 - f63;
    float f66 = (f39 > 0.0) ? mix(f47, mix(min((f56 <= f60) ? 1.0 : clamp(((f61 / (f61 + (f62 * f62))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f57 <= f63) ? 1.0 : clamp(((f64 / (f64 + (f65 * f65))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f47, clamp((length(VARYING5.xyz - CB0[7].xyz) * CB0[45].y) - (CB0[45].x * CB0[45].y), 0.0, 1.0)), CB0[46].x) : 0.0;
    vec3 f67 = normalize(f30);
    vec3 f68 = (f29 * f29).xyz;
    float f69 = f37.y;
    float f70 = CB0[26].w * f31;
    vec3 f71 = reflect(-f67, f36);
    vec3 f72 = normalize(f38 + f67);
    float f73 = clamp(f39, 0.0, 1.0);
    float f74 = f69 * f69;
    float f75 = max(0.001000000047497451305389404296875, dot(f36, f72));
    float f76 = dot(f38, f72);
    float f77 = 1.0 - f76;
    float f78 = f77 * f77;
    float f79 = (f78 * f78) * f77;
    vec3 f80 = vec3(f79) + (vec3(0.039999999105930328369140625) * (1.0 - f79));
    float f81 = f74 * f74;
    float f82 = (((f75 * f81) - f75) * f75) + 1.0;
    float f83 = f69 * 5.0;
    vec3 f84 = vec4(f71, f83).xyz;
    vec4 f85 = texture(PrecomputedBRDFTexture, vec2(f69, max(9.9999997473787516355514526367188e-05, dot(f36, f67))));
    float f86 = f85.x;
    float f87 = f85.y;
    vec3 f88 = ((vec3(0.039999999105930328369140625) * f86) + vec3(f87)) / vec3(f86 + f87);
    vec3 f89 = f88 * f70;
    vec3 f90 = f36 * f36;
    bvec3 f91 = lessThan(f36, vec3(0.0));
    vec3 f92 = vec3(f91.x ? f90.x : vec3(0.0).x, f91.y ? f90.y : vec3(0.0).y, f91.z ? f90.z : vec3(0.0).z);
    vec3 f93 = f90 - f92;
    float f94 = f93.x;
    float f95 = f93.y;
    float f96 = f93.z;
    float f97 = f92.x;
    float f98 = f92.y;
    float f99 = f92.z;
    vec3 f100 = (mix(textureLod(PrefilteredEnvIndoorTexture, f84, f83).xyz * f45, textureLod(PrefilteredEnvTexture, f84, f83).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f71.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f46)) * f88) * f70;
    vec3 f101 = (((((((((vec3(1.0) - (f80 * f70)) * CB0[10].xyz) * f73) * f66) + ((vec3(1.0) - f89) * (((((((CB0[35].xyz * f94) + (CB0[37].xyz * f95)) + (CB0[39].xyz * f96)) + (CB0[36].xyz * f97)) + (CB0[38].xyz * f98)) + (CB0[40].xyz * f99)) + (((((((CB0[29].xyz * f94) + (CB0[31].xyz * f95)) + (CB0[33].xyz * f96)) + (CB0[30].xyz * f97)) + (CB0[32].xyz * f98)) + (CB0[34].xyz * f99)) * f46)))) + (CB0[27].xyz + (CB0[28].xyz * f46))) + vec3((f37.z * 2.0) * f31)) * f68) + ((((((f80 * (((f81 + (f81 * f81)) / (((f82 * f82) * ((f76 * 3.0) + 0.5)) * ((f75 * 0.75) + 0.25))) * f73)) * CB0[10].xyz) * f66) * f31) * VARYING0.w) + f100)) + (f45 * mix(f68, f100 * (1.0 / (max(max(f100.x, f100.y), f100.z) + 0.00999999977648258209228515625)), f89 * (f70 * (1.0 - f46))));
    vec4 f102 = vec4(f101.x, f101.y, f101.z, vec4(0.0).w);
    f102.w = 1.0;
    float f103 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f104 = textureLod(PrefilteredEnvTexture, vec4(-f30, 0.0).xyz, max(CB0[13].y, f103) * 5.0).xyz;
    bvec3 f105 = bvec3(CB0[13].w != 0.0);
    vec3 f106 = sqrt(clamp(mix(vec3(f105.x ? CB0[14].xyz.x : f104.x, f105.y ? CB0[14].xyz.y : f104.y, f105.z ? CB0[14].xyz.z : f104.z), f102.xyz, vec3(f103)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f106.x, f106.y, f106.z, f102.w);
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
