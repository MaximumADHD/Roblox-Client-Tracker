#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
uniform vec4 CB0[53];
uniform vec4 CB8[24];
uniform vec4 CB4[36];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2DArray SpecularMapTexture;
uniform sampler2DArray AlbedoMapTexture;
uniform sampler2DArray NormalMapTexture;

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
    vec3 f1 = vec3(VARYING1.zw, VARYING2.z);
    vec4 f2 = ((texture(SpecularMapTexture, f0) * VARYING0.x) + (texture(SpecularMapTexture, f1) * VARYING0.y)) + (texture(SpecularMapTexture, VARYING3.xyz) * VARYING0.z);
    vec4 f3 = texture(AlbedoMapTexture, f0);
    vec4 f4 = texture(AlbedoMapTexture, f1);
    vec4 f5 = texture(AlbedoMapTexture, VARYING3.xyz);
    int f6 = int(VARYING8.x + 0.5);
    int f7 = int(VARYING8.y + 0.5);
    int f8 = int(VARYING8.z + 0.5);
    vec2 f9 = f3.xz - vec2(0.5);
    vec2 f10 = f4.xz - vec2(0.5);
    vec2 f11 = f5.xz - vec2(0.5);
    vec3 f12 = vec3(0.0);
    f12.x = CB4[f6 * 1 + 0].x * f3.y;
    float f13 = f9.x;
    float f14 = f9.y;
    vec3 f15 = f12;
    f15.y = (CB4[f6 * 1 + 0].y * f13) - (CB4[f6 * 1 + 0].z * f14);
    vec3 f16 = f15;
    f16.z = (CB4[f6 * 1 + 0].z * f13) + (CB4[f6 * 1 + 0].y * f14);
    vec3 f17 = vec3(0.0);
    f17.x = CB4[f7 * 1 + 0].x * f4.y;
    float f18 = f10.x;
    float f19 = f10.y;
    vec3 f20 = f17;
    f20.y = (CB4[f7 * 1 + 0].y * f18) - (CB4[f7 * 1 + 0].z * f19);
    vec3 f21 = f20;
    f21.z = (CB4[f7 * 1 + 0].z * f18) + (CB4[f7 * 1 + 0].y * f19);
    vec3 f22 = vec3(0.0);
    f22.x = CB4[f8 * 1 + 0].x * f5.y;
    float f23 = f11.x;
    float f24 = f11.y;
    vec3 f25 = f22;
    f25.y = (CB4[f8 * 1 + 0].y * f23) - (CB4[f8 * 1 + 0].z * f24);
    vec3 f26 = f25;
    f26.z = (CB4[f8 * 1 + 0].z * f23) + (CB4[f8 * 1 + 0].y * f24);
    vec4 f27 = ((vec4(f16.x, f16.y, f16.z, f3.w) * VARYING0.x) + (vec4(f21.x, f21.y, f21.z, f4.w) * VARYING0.y)) + (vec4(f26.x, f26.y, f26.z, f5.w) * VARYING0.z);
    float f28 = f27.x;
    float f29 = f28 - f27.z;
    vec3 f30 = vec4(vec3(f29, f28, f29) + (vec3(f27.yzy) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 f31 = CB0[7].xyz - VARYING5.xyz;
    float f32 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    float f33 = -VARYING6.x;
    vec2 f34 = (((texture(NormalMapTexture, f0) * VARYING0.x) + (texture(NormalMapTexture, f1) * VARYING0.y)) + (texture(NormalMapTexture, VARYING3.xyz) * VARYING0.z)).wy * 2.0;
    vec2 f35 = f34 - vec2(1.0);
    vec3 f36 = vec3(dot(VARYING7, VARYING0.xyz));
    vec3 f37 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f33), vec3(VARYING6.y, f33, 0.0), f36) * f35.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f36) * f35.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - f34, f35), 0.0, 1.0)))), 0.0).xyz;
    vec3 f38 = -CB0[11].xyz;
    float f39 = dot(f37, f38);
    vec3 f40 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f41 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f42 = VARYING4.yzx - (VARYING4.yzx * f41);
    vec4 f43 = vec4(clamp(f41, 0.0, 1.0));
    vec4 f44 = mix(texture(LightMapTexture, f42), vec4(0.0), f43);
    vec4 f45 = mix(texture(LightGridSkylightTexture, f42), vec4(1.0), f43);
    float f46 = f45.x;
    float f47 = f45.y;
    vec3 f48 = f40 - CB0[41].xyz;
    vec3 f49 = f40 - CB0[42].xyz;
    vec3 f50 = f40 - CB0[43].xyz;
    vec4 f51 = vec4(f40, 1.0) * mat4(CB8[((dot(f48, f48) < CB0[41].w) ? 0 : ((dot(f49, f49) < CB0[42].w) ? 1 : ((dot(f50, f50) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f48, f48) < CB0[41].w) ? 0 : ((dot(f49, f49) < CB0[42].w) ? 1 : ((dot(f50, f50) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f48, f48) < CB0[41].w) ? 0 : ((dot(f49, f49) < CB0[42].w) ? 1 : ((dot(f50, f50) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f48, f48) < CB0[41].w) ? 0 : ((dot(f49, f49) < CB0[42].w) ? 1 : ((dot(f50, f50) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f52 = textureLod(ShadowAtlasTexture, f51.xy, 0.0);
    vec2 f53 = vec2(0.0);
    f53.x = CB0[46].z;
    vec2 f54 = f53;
    f54.y = CB0[46].w;
    float f55 = (2.0 * f51.z) - 1.0;
    float f56 = exp(CB0[46].z * f55);
    float f57 = -exp((-CB0[46].w) * f55);
    vec2 f58 = (f54 * CB0[47].y) * vec2(f56, f57);
    vec2 f59 = f58 * f58;
    float f60 = f52.x;
    float f61 = max(f52.y - (f60 * f60), f59.x);
    float f62 = f56 - f60;
    float f63 = f52.z;
    float f64 = max(f52.w - (f63 * f63), f59.y);
    float f65 = f57 - f63;
    vec3 f66 = normalize(f31);
    vec3 f67 = (f30 * f30).xyz;
    float f68 = f2.y;
    float f69 = CB0[26].w * f32;
    vec3 f70 = reflect(-f66, f37);
    vec3 f71 = normalize(f38 + f66);
    float f72 = clamp(f39 * ((f39 > 0.0) ? mix(f47, mix(min((f56 <= f60) ? 1.0 : clamp(((f61 / (f61 + (f62 * f62))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f57 <= f63) ? 1.0 : clamp(((f64 / (f64 + (f65 * f65))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f47, clamp((length(f40 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)), CB0[47].x) : 0.0), 0.0, 1.0);
    float f73 = f68 * f68;
    float f74 = max(0.001000000047497451305389404296875, dot(f37, f71));
    float f75 = dot(f38, f71);
    float f76 = 1.0 - f75;
    float f77 = f76 * f76;
    float f78 = (f77 * f77) * f76;
    vec3 f79 = vec3(f78) + (vec3(0.039999999105930328369140625) * (1.0 - f78));
    float f80 = f73 * f73;
    float f81 = (((f74 * f80) - f74) * f74) + 1.0;
    float f82 = f68 * 5.0;
    vec3 f83 = vec4(f70, f82).xyz;
    vec4 f84 = texture(PrecomputedBRDFTexture, vec2(f68, max(9.9999997473787516355514526367188e-05, dot(f37, f66))));
    float f85 = f84.x;
    float f86 = f84.y;
    vec3 f87 = ((vec3(0.039999999105930328369140625) * f85) + vec3(f86)) / vec3(f85 + f86);
    vec3 f88 = f87 * f69;
    vec3 f89 = f37 * f37;
    bvec3 f90 = lessThan(f37, vec3(0.0));
    vec3 f91 = vec3(f90.x ? f89.x : vec3(0.0).x, f90.y ? f89.y : vec3(0.0).y, f90.z ? f89.z : vec3(0.0).z);
    vec3 f92 = f89 - f91;
    float f93 = f92.x;
    float f94 = f92.y;
    float f95 = f92.z;
    float f96 = f91.x;
    float f97 = f91.y;
    float f98 = f91.z;
    vec3 f99 = ((((((CB0[35].xyz * f93) + (CB0[37].xyz * f94)) + (CB0[39].xyz * f95)) + (CB0[36].xyz * f96)) + (CB0[38].xyz * f97)) + (CB0[40].xyz * f98)) + (((((((CB0[29].xyz * f93) + (CB0[31].xyz * f94)) + (CB0[33].xyz * f95)) + (CB0[30].xyz * f96)) + (CB0[32].xyz * f97)) + (CB0[34].xyz * f98)) * f46);
    vec3 f100 = (mix(textureLod(PrefilteredEnvIndoorTexture, f83, f82).xyz, textureLod(PrefilteredEnvTexture, f83, f82).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f70.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f46)) * f87) * f69;
    vec3 f101 = ((((((((vec3(1.0) - (f79 * f69)) * CB0[10].xyz) * f72) + (((vec3(1.0) - f88) * f99) * CB0[25].w)) + ((CB0[27].xyz + (CB0[28].xyz * f46)) * 1.0)) + vec3((f2.z * 2.0) * f32)) * f67) + (((((f79 * (((f80 + (f80 * f80)) / (((f81 * f81) * ((f75 * 3.0) + 0.5)) * ((f74 * 0.75) + 0.25))) * f72)) * CB0[10].xyz) * f32) * VARYING0.w) + f100)) + (((f44.xyz * (f44.w * 120.0)).xyz * mix(f67, f100 * (1.0 / (max(max(f99.x, f99.y), f99.z) + 0.00999999977648258209228515625)), f88 * (f69 * (1.0 - f46)))) * 1.0);
    vec4 f102 = vec4(f101.x, f101.y, f101.z, vec4(0.0).w);
    f102.w = 1.0;
    float f103 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f104 = textureLod(PrefilteredEnvTexture, vec4(-f31, 0.0).xyz, max(CB0[13].y, f103) * 5.0).xyz;
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
//$$SpecularMapTexture=s2
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
