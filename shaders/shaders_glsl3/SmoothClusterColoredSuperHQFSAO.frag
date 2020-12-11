#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform vec4 CB4[36];
uniform sampler2D ShadowMapTexture;
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
    vec4 f37 = texture(AOMapTexture, gl_FragCoord.xy * CB0[45].xy);
    float f38 = f37.x;
    vec3 f39 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f40 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f41 = VARYING4.yzx - (VARYING4.yzx * f40);
    vec4 f42 = vec4(clamp(f40, 0.0, 1.0));
    vec4 f43 = mix(texture(LightMapTexture, f41), vec4(0.0), f42);
    vec4 f44 = mix(texture(LightGridSkylightTexture, f41), vec4(1.0), f42);
    vec3 f45 = (f43.xyz * (f43.w * 120.0)).xyz;
    float f46 = f44.x;
    vec4 f47 = texture(ShadowMapTexture, f39.xy);
    float f48 = f39.z;
    vec3 f49 = normalize(VARYING8);
    vec3 f50 = (f30 * f30).xyz;
    float f51 = f2.y;
    float f52 = CB0[26].w * f31;
    vec3 f53 = reflect(-f49, f36);
    vec3 f54 = -CB0[11].xyz;
    float f55 = dot(f36, f54) * ((1.0 - ((step(f47.x, f48) * clamp(CB0[24].z + (CB0[24].w * abs(f48 - 0.5)), 0.0, 1.0)) * f47.y)) * f44.y);
    vec3 f56 = normalize(f54 + f49);
    float f57 = clamp(f55, 0.0, 1.0);
    float f58 = f51 * f51;
    float f59 = max(0.001000000047497451305389404296875, dot(f36, f56));
    float f60 = dot(f54, f56);
    float f61 = 1.0 - f60;
    float f62 = f61 * f61;
    float f63 = (f62 * f62) * f61;
    vec3 f64 = vec3(f63) + (vec3(0.039999999105930328369140625) * (1.0 - f63));
    float f65 = f58 * f58;
    float f66 = (((f59 * f65) - f59) * f59) + 1.0;
    float f67 = f51 * 5.0;
    vec3 f68 = vec4(f53, f67).xyz;
    vec4 f69 = texture(PrecomputedBRDFTexture, vec2(f51, max(9.9999997473787516355514526367188e-05, dot(f36, f49))));
    float f70 = f69.x;
    float f71 = f69.y;
    vec3 f72 = ((vec3(0.039999999105930328369140625) * f70) + vec3(f71)) / vec3(f70 + f71);
    vec3 f73 = f72 * f52;
    vec3 f74 = f36 * f36;
    bvec3 f75 = lessThan(f36, vec3(0.0));
    vec3 f76 = vec3(f75.x ? f74.x : vec3(0.0).x, f75.y ? f74.y : vec3(0.0).y, f75.z ? f74.z : vec3(0.0).z);
    vec3 f77 = f74 - f76;
    float f78 = f77.x;
    float f79 = f77.y;
    float f80 = f77.z;
    float f81 = f76.x;
    float f82 = f76.y;
    float f83 = f76.z;
    vec3 f84 = (mix(textureLod(PrefilteredEnvIndoorTexture, f68, f67).xyz * f45, textureLod(PrefilteredEnvTexture, f68, f67).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f53.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f46)) * f72) * f52;
    vec3 f85 = (((((((((vec3(1.0) - (f64 * f52)) * CB0[10].xyz) * f57) + (CB0[12].xyz * clamp(-f55, 0.0, 1.0))) + ((vec3(1.0) - f73) * (((((((CB0[35].xyz * f78) + (CB0[37].xyz * f79)) + (CB0[39].xyz * f80)) + (CB0[36].xyz * f81)) + (CB0[38].xyz * f82)) + (CB0[40].xyz * f83)) + (((((((CB0[29].xyz * f78) + (CB0[31].xyz * f79)) + (CB0[33].xyz * f80)) + (CB0[30].xyz * f81)) + (CB0[32].xyz * f82)) + (CB0[34].xyz * f83)) * f46)))) + ((CB0[27].xyz + (CB0[28].xyz * f46)) * (f38 * f38))) + vec3((f2.z * 2.0) * f31)) * f50) + (((((f64 * (((f65 + (f65 * f65)) / (((f66 * f66) * ((f60 * 3.0) + 0.5)) * ((f59 * 0.75) + 0.25))) * f57)) * CB0[10].xyz) * f31) * VARYING0.w) + f84)) + ((f45 * mix(f50, f84 * (1.0 / (max(max(f84.x, f84.y), f84.z) + 0.00999999977648258209228515625)), f73 * (f52 * (1.0 - f46)))) * f38);
    vec4 f86 = vec4(f85.x, f85.y, f85.z, vec4(0.0).w);
    f86.w = 1.0;
    float f87 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f88 = textureLod(PrefilteredEnvTexture, vec4(-VARYING8, 0.0).xyz, max(CB0[13].y, f87) * 5.0).xyz;
    bvec3 f89 = bvec3(CB0[13].w != 0.0);
    vec3 f90 = sqrt(clamp(mix(vec3(f89.x ? CB0[14].xyz.x : f88.x, f89.y ? CB0[14].xyz.y : f88.y, f89.z ? CB0[14].xyz.z : f88.z), f86.xyz, vec3(f87)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f90.x, f90.y, f90.z, f86.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$AOMapTexture=s10
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$SpecularMapTexture=s2
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
