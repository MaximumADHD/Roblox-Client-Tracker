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
uniform sampler2D AOMapTexture;
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
    vec4 f40 = texture(AOMapTexture, gl_FragCoord.xy * CB0[45].xy);
    float f41 = f40.x;
    vec3 f42 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f43 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f44 = VARYING4.yzx - (VARYING4.yzx * f43);
    vec4 f45 = vec4(clamp(f43, 0.0, 1.0));
    vec4 f46 = mix(texture(LightMapTexture, f44), vec4(0.0), f45);
    vec4 f47 = mix(texture(LightGridSkylightTexture, f44), vec4(1.0), f45);
    vec3 f48 = (f46.xyz * (f46.w * 120.0)).xyz;
    float f49 = f47.x;
    float f50 = f47.y;
    vec3 f51 = f42 - CB0[41].xyz;
    vec3 f52 = f42 - CB0[42].xyz;
    vec3 f53 = f42 - CB0[43].xyz;
    vec4 f54 = vec4(f42, 1.0) * mat4(CB8[((dot(f51, f51) < CB0[41].w) ? 0 : ((dot(f52, f52) < CB0[42].w) ? 1 : ((dot(f53, f53) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f51, f51) < CB0[41].w) ? 0 : ((dot(f52, f52) < CB0[42].w) ? 1 : ((dot(f53, f53) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f51, f51) < CB0[41].w) ? 0 : ((dot(f52, f52) < CB0[42].w) ? 1 : ((dot(f53, f53) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f51, f51) < CB0[41].w) ? 0 : ((dot(f52, f52) < CB0[42].w) ? 1 : ((dot(f53, f53) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f55 = textureLod(ShadowAtlasTexture, f54.xy, 0.0);
    vec2 f56 = vec2(0.0);
    f56.x = CB0[46].z;
    vec2 f57 = f56;
    f57.y = CB0[46].w;
    float f58 = (2.0 * f54.z) - 1.0;
    float f59 = exp(CB0[46].z * f58);
    float f60 = -exp((-CB0[46].w) * f58);
    vec2 f61 = (f57 * CB0[47].y) * vec2(f59, f60);
    vec2 f62 = f61 * f61;
    float f63 = f55.x;
    float f64 = max(f55.y - (f63 * f63), f62.x);
    float f65 = f59 - f63;
    float f66 = f55.z;
    float f67 = max(f55.w - (f66 * f66), f62.y);
    float f68 = f60 - f66;
    vec3 f69 = normalize(f31);
    vec3 f70 = (f30 * f30).xyz;
    float f71 = f2.y;
    float f72 = CB0[26].w * f32;
    vec3 f73 = reflect(-f69, f37);
    vec3 f74 = normalize(f38 + f69);
    float f75 = clamp(f39 * ((f39 > 0.0) ? mix(f50, mix(min((f59 <= f63) ? 1.0 : clamp(((f64 / (f64 + (f65 * f65))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f60 <= f66) ? 1.0 : clamp(((f67 / (f67 + (f68 * f68))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f50, clamp((length(f42 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)), CB0[47].x) : 0.0), 0.0, 1.0);
    float f76 = f71 * f71;
    float f77 = max(0.001000000047497451305389404296875, dot(f37, f74));
    float f78 = dot(f38, f74);
    float f79 = 1.0 - f78;
    float f80 = f79 * f79;
    float f81 = (f80 * f80) * f79;
    vec3 f82 = vec3(f81) + (vec3(0.039999999105930328369140625) * (1.0 - f81));
    float f83 = f76 * f76;
    float f84 = (((f77 * f83) - f77) * f77) + 1.0;
    float f85 = f71 * 5.0;
    vec3 f86 = vec4(f73, f85).xyz;
    vec4 f87 = texture(PrecomputedBRDFTexture, vec2(f71, max(9.9999997473787516355514526367188e-05, dot(f37, f69))));
    float f88 = f87.x;
    float f89 = f87.y;
    vec3 f90 = ((vec3(0.039999999105930328369140625) * f88) + vec3(f89)) / vec3(f88 + f89);
    vec3 f91 = f90 * f72;
    vec3 f92 = f37 * f37;
    bvec3 f93 = lessThan(f37, vec3(0.0));
    vec3 f94 = vec3(f93.x ? f92.x : vec3(0.0).x, f93.y ? f92.y : vec3(0.0).y, f93.z ? f92.z : vec3(0.0).z);
    vec3 f95 = f92 - f94;
    float f96 = f95.x;
    float f97 = f95.y;
    float f98 = f95.z;
    float f99 = f94.x;
    float f100 = f94.y;
    float f101 = f94.z;
    vec3 f102 = (mix(textureLod(PrefilteredEnvIndoorTexture, f86, f85).xyz * f48, textureLod(PrefilteredEnvTexture, f86, f85).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f73.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f49)) * f90) * f72;
    vec3 f103 = ((((((((vec3(1.0) - (f82 * f72)) * CB0[10].xyz) * f75) + ((vec3(1.0) - f91) * (((((((CB0[35].xyz * f96) + (CB0[37].xyz * f97)) + (CB0[39].xyz * f98)) + (CB0[36].xyz * f99)) + (CB0[38].xyz * f100)) + (CB0[40].xyz * f101)) + (((((((CB0[29].xyz * f96) + (CB0[31].xyz * f97)) + (CB0[33].xyz * f98)) + (CB0[30].xyz * f99)) + (CB0[32].xyz * f100)) + (CB0[34].xyz * f101)) * f49)))) + ((CB0[27].xyz + (CB0[28].xyz * f49)) * (f41 * f41))) + vec3((f2.z * 2.0) * f32)) * f70) + (((((f82 * (((f83 + (f83 * f83)) / (((f84 * f84) * ((f78 * 3.0) + 0.5)) * ((f77 * 0.75) + 0.25))) * f75)) * CB0[10].xyz) * f32) * VARYING0.w) + f102)) + ((f48 * mix(f70, f102 * (1.0 / (max(max(f102.x, f102.y), f102.z) + 0.00999999977648258209228515625)), f91 * (f72 * (1.0 - f49)))) * f41);
    vec4 f104 = vec4(f103.x, f103.y, f103.z, vec4(0.0).w);
    f104.w = 1.0;
    float f105 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f106 = textureLod(PrefilteredEnvTexture, vec4(-f31, 0.0).xyz, max(CB0[13].y, f105) * 5.0).xyz;
    bvec3 f107 = bvec3(CB0[13].w != 0.0);
    vec3 f108 = sqrt(clamp(mix(vec3(f107.x ? CB0[14].xyz.x : f106.x, f107.y ? CB0[14].xyz.y : f106.y, f107.z ? CB0[14].xyz.z : f106.z), f104.xyz, vec3(f105)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f108.x, f108.y, f108.z, f104.w);
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$AOMapTexture=s10
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$SpecularMapTexture=s2
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
