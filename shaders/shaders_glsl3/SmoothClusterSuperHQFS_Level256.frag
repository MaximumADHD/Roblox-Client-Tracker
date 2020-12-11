#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform vec4 CB4[36];
uniform sampler2D ShadowMapTexture;
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
in vec3 VARYING8;
in vec4 VARYING9;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = vec3(VARYING1.xy, VARYING2.x);
    vec3 f1 = vec3(VARYING1.zw, VARYING2.z);
    vec4 f2 = ((texture(SpecularMapTexture, f0) * VARYING0.x) + (texture(SpecularMapTexture, f1) * VARYING0.y)) + (texture(SpecularMapTexture, VARYING3.xyz) * VARYING0.z);
    vec4 f3 = texture(AlbedoMapTexture, f0);
    vec4 f4 = texture(AlbedoMapTexture, f1);
    vec4 f5 = texture(AlbedoMapTexture, VARYING3.xyz);
    int f6 = int(VARYING9.x + 0.5);
    int f7 = int(VARYING9.y + 0.5);
    int f8 = int(VARYING9.z + 0.5);
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
    float f31 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    float f32 = -VARYING6.x;
    vec2 f33 = (((texture(NormalMapTexture, f0) * VARYING0.x) + (texture(NormalMapTexture, f1) * VARYING0.y)) + (texture(NormalMapTexture, VARYING3.xyz) * VARYING0.z)).wy * 2.0;
    vec2 f34 = f33 - vec2(1.0);
    vec3 f35 = vec3(dot(VARYING7, VARYING0.xyz));
    vec3 f36 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f32), vec3(VARYING6.y, f32, 0.0), f35) * f34.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f35) * f34.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - f33, f34), 0.0, 1.0)))), 0.0).xyz;
    vec3 f37 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f38 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f39 = VARYING4.yzx - (VARYING4.yzx * f38);
    vec4 f40 = vec4(clamp(f38, 0.0, 1.0));
    vec4 f41 = mix(texture(LightMapTexture, f39), vec4(0.0), f40);
    vec4 f42 = mix(texture(LightGridSkylightTexture, f39), vec4(1.0), f40);
    vec3 f43 = (f41.xyz * (f41.w * 120.0)).xyz;
    float f44 = f42.x;
    vec4 f45 = texture(ShadowMapTexture, f37.xy);
    float f46 = f37.z;
    vec3 f47 = normalize(VARYING8);
    vec3 f48 = (f30 * f30).xyz;
    float f49 = f2.y;
    float f50 = CB0[26].w * f31;
    vec3 f51 = reflect(-f47, f36);
    vec3 f52 = -CB0[11].xyz;
    float f53 = dot(f36, f52) * ((1.0 - ((step(f45.x, f46) * clamp(CB0[24].z + (CB0[24].w * abs(f46 - 0.5)), 0.0, 1.0)) * f45.y)) * f42.y);
    vec3 f54 = normalize(f52 + f47);
    float f55 = clamp(f53, 0.0, 1.0);
    float f56 = f49 * f49;
    float f57 = max(0.001000000047497451305389404296875, dot(f36, f54));
    float f58 = dot(f52, f54);
    float f59 = 1.0 - f58;
    float f60 = f59 * f59;
    float f61 = (f60 * f60) * f59;
    vec3 f62 = vec3(f61) + (vec3(0.039999999105930328369140625) * (1.0 - f61));
    float f63 = f56 * f56;
    float f64 = (((f57 * f63) - f57) * f57) + 1.0;
    float f65 = f49 * 5.0;
    vec3 f66 = vec4(f51, f65).xyz;
    vec4 f67 = texture(PrecomputedBRDFTexture, vec2(f49, max(9.9999997473787516355514526367188e-05, dot(f36, f47))));
    float f68 = f67.x;
    float f69 = f67.y;
    vec3 f70 = ((vec3(0.039999999105930328369140625) * f68) + vec3(f69)) / vec3(f68 + f69);
    vec3 f71 = f70 * f50;
    vec3 f72 = f36 * f36;
    bvec3 f73 = lessThan(f36, vec3(0.0));
    vec3 f74 = vec3(f73.x ? f72.x : vec3(0.0).x, f73.y ? f72.y : vec3(0.0).y, f73.z ? f72.z : vec3(0.0).z);
    vec3 f75 = f72 - f74;
    float f76 = f75.x;
    float f77 = f75.y;
    float f78 = f75.z;
    float f79 = f74.x;
    float f80 = f74.y;
    float f81 = f74.z;
    vec3 f82 = (mix(textureLod(PrefilteredEnvIndoorTexture, f66, f65).xyz * f43, textureLod(PrefilteredEnvTexture, f66, f65).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f51.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f44)) * f70) * f50;
    vec3 f83 = (((((((((vec3(1.0) - (f62 * f50)) * CB0[10].xyz) * f55) + (CB0[12].xyz * clamp(-f53, 0.0, 1.0))) + ((vec3(1.0) - f71) * (((((((CB0[35].xyz * f76) + (CB0[37].xyz * f77)) + (CB0[39].xyz * f78)) + (CB0[36].xyz * f79)) + (CB0[38].xyz * f80)) + (CB0[40].xyz * f81)) + (((((((CB0[29].xyz * f76) + (CB0[31].xyz * f77)) + (CB0[33].xyz * f78)) + (CB0[30].xyz * f79)) + (CB0[32].xyz * f80)) + (CB0[34].xyz * f81)) * f44)))) + ((CB0[27].xyz + (CB0[28].xyz * f44)) * 1.0)) + vec3((f2.z * 2.0) * f31)) * f48) + (((((f62 * (((f63 + (f63 * f63)) / (((f64 * f64) * ((f58 * 3.0) + 0.5)) * ((f57 * 0.75) + 0.25))) * f55)) * CB0[10].xyz) * f31) * VARYING0.w) + f82)) + ((f43 * mix(f48, f82 * (1.0 / (max(max(f82.x, f82.y), f82.z) + 0.00999999977648258209228515625)), f71 * (f50 * (1.0 - f44)))) * 1.0);
    vec4 f84 = vec4(f83.x, f83.y, f83.z, vec4(0.0).w);
    f84.w = 1.0;
    float f85 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f86 = textureLod(PrefilteredEnvTexture, vec4(-VARYING8, 0.0).xyz, max(CB0[13].y, f85) * 5.0).xyz;
    bvec3 f87 = bvec3(CB0[13].w != 0.0);
    vec3 f88 = sqrt(clamp(mix(vec3(f87.x ? CB0[14].xyz.x : f86.x, f87.y ? CB0[14].xyz.y : f86.y, f87.z ? CB0[14].xyz.z : f86.z), f84.xyz, vec3(f85)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f88.x, f88.y, f88.z, f84.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$SpecularMapTexture=s2
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
