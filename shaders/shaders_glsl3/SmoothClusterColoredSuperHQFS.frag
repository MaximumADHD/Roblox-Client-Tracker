#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[52];
uniform vec4 CB4[36];
uniform sampler2D ShadowMapTexture;
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
    float f30 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    float f31 = -VARYING6.x;
    vec2 f32 = (((texture(NormalMapTexture, f0) * VARYING0.x) + (texture(NormalMapTexture, f2) * VARYING0.y)) + (texture(NormalMapTexture, VARYING3.xyz) * VARYING0.z)).wy * 2.0;
    vec2 f33 = f32 - vec2(1.0);
    vec3 f34 = vec3(dot(VARYING7, VARYING0.xyz));
    vec3 f35 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f31), vec3(VARYING6.y, f31, 0.0), f34) * f33.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f34) * f33.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - f32, f33), 0.0, 1.0)))), 0.0).xyz;
    vec4 f36 = ((texture(SpecularMapTexture, f0) * VARYING0.x) + (texture(SpecularMapTexture, f2) * VARYING0.y)) + (texture(SpecularMapTexture, VARYING3.xyz) * VARYING0.z);
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
    vec3 f48 = (f29 * f29).xyz;
    float f49 = f36.y;
    float f50 = CB0[26].w * f30;
    vec3 f51 = reflect(-f47, f35);
    vec3 f52 = -CB0[11].xyz;
    float f53 = dot(f35, f52) * ((1.0 - ((step(f45.x, f46) * clamp(CB0[24].z + (CB0[24].w * abs(f46 - 0.5)), 0.0, 1.0)) * f45.y)) * f42.y);
    vec3 f54 = normalize(f52 + f47);
    float f55 = clamp(f53, 0.0, 1.0);
    float f56 = f49 * f49;
    float f57 = max(0.001000000047497451305389404296875, dot(f35, f54));
    float f58 = dot(f52, f54);
    float f59 = 1.0 - f58;
    float f60 = f59 * f59;
    float f61 = (f60 * f60) * f59;
    vec3 f62 = vec3(f61) + (vec3(0.039999999105930328369140625) * (1.0 - f61));
    float f63 = f56 * f56;
    float f64 = (((f57 * f63) - f57) * f57) + 1.0;
    float f65 = f49 * 5.0;
    vec3 f66 = vec4(f51, f65).xyz;
    vec4 f67 = texture(PrecomputedBRDFTexture, vec2(f49, max(9.9999997473787516355514526367188e-05, dot(f35, f47))));
    float f68 = f67.x;
    float f69 = f67.y;
    vec3 f70 = ((vec3(0.039999999105930328369140625) * f68) + vec3(f69)) / vec3(f68 + f69);
    vec3 f71 = f70 * f50;
    vec3 f72 = f35 * f35;
    bvec3 f73 = lessThan(f35, vec3(0.0));
    vec3 f74 = vec3(f73.x ? f72.x : vec3(0.0).x, f73.y ? f72.y : vec3(0.0).y, f73.z ? f72.z : vec3(0.0).z);
    vec3 f75 = f72 - f74;
    float f76 = f75.x;
    float f77 = f75.y;
    float f78 = f75.z;
    float f79 = f74.x;
    float f80 = f74.y;
    float f81 = f74.z;
    vec3 f82 = (mix(textureLod(PrefilteredEnvIndoorTexture, f66, f65).xyz * f43, textureLod(PrefilteredEnvTexture, f66, f65).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f51.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f44)) * f70) * f50;
    vec3 f83 = (((((((((vec3(1.0) - (f62 * f50)) * CB0[10].xyz) * f55) + (CB0[12].xyz * clamp(-f53, 0.0, 1.0))) + ((vec3(1.0) - f71) * (((((((CB0[35].xyz * f76) + (CB0[37].xyz * f77)) + (CB0[39].xyz * f78)) + (CB0[36].xyz * f79)) + (CB0[38].xyz * f80)) + (CB0[40].xyz * f81)) + (((((((CB0[29].xyz * f76) + (CB0[31].xyz * f77)) + (CB0[33].xyz * f78)) + (CB0[30].xyz * f79)) + (CB0[32].xyz * f80)) + (CB0[34].xyz * f81)) * f44)))) + (CB0[27].xyz + (CB0[28].xyz * f44))) + vec3((f36.z * 2.0) * f30)) * f48) + (((((f62 * (((f63 + (f63 * f63)) / (((f64 * f64) * ((f58 * 3.0) + 0.5)) * ((f57 * 0.75) + 0.25))) * f55)) * CB0[10].xyz) * f30) * VARYING0.w) + f82)) + (f43 * mix(f48, f82 * (1.0 / (max(max(f82.x, f82.y), f82.z) + 0.00999999977648258209228515625)), f71 * (f50 * (1.0 - f44))));
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
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s2
