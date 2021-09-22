#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
#include <SAParams.h>
uniform vec4 CB0[53];
uniform vec4 CB8[24];
uniform vec4 CB3[1];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D Tc2DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;

in vec2 VARYING0;
in vec2 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec3 f1 = VARYING4.xyz / vec3(f0);
    float f2 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec4 f3 = texture(Tc2DiffuseMapTexture, VARYING1);
    float f4 = f3.w;
    vec4 f5 = vec4(mix(vec4(texture(DiffuseMapTexture, VARYING0).xyz * VARYING2.xyz, f4).xyz, f3.xyz, vec3(f4)), 0.0);
    vec4 f6 = vec4(f3.xyz, 0.0);
    bvec4 f7 = bvec4(!(CB3[0].x == 0.0));
    vec2 f8 = texture(NormalMapTexture, VARYING1).wy * 2.0;
    vec2 f9 = f8 - vec2(1.0);
    float f10 = sqrt(clamp(1.0 + dot(vec2(1.0) - f8, f9), 0.0, 1.0));
    vec2 f11 = vec3(f9, f10).xy * f2;
    vec4 f12 = texture(SpecularMapTexture, VARYING1);
    float f13 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f14 = VARYING6.xyz * f13;
    vec3 f15 = VARYING5.xyz * f13;
    vec3 f16 = normalize(((f14 * f11.x) + ((cross(f15, f14) * VARYING6.w) * f11.y)) + (f15 * f10));
    vec3 f17 = -CB0[11].xyz;
    float f18 = dot(f16, f17);
    vec3 f19 = vec4(vec4(f7.x ? f5.x : f6.x, f7.y ? f5.y : f6.y, f7.z ? f5.z : f6.z, f7.w ? f5.w : f6.w).xyz, VARYING2.w).xyz;
    vec3 f20 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f21 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f22 = VARYING3.yzx - (VARYING3.yzx * f21);
    vec4 f23 = vec4(clamp(f21, 0.0, 1.0));
    vec4 f24 = mix(texture(LightMapTexture, f22), vec4(0.0), f23);
    vec4 f25 = mix(texture(LightGridSkylightTexture, f22), vec4(1.0), f23);
    vec3 f26 = (f24.xyz * (f24.w * 120.0)).xyz;
    float f27 = f25.x;
    float f28 = f25.y;
    vec3 f29 = f20 - CB0[41].xyz;
    vec3 f30 = f20 - CB0[42].xyz;
    vec3 f31 = f20 - CB0[43].xyz;
    vec4 f32 = vec4(f20, 1.0) * mat4(CB8[((dot(f29, f29) < CB0[41].w) ? 0 : ((dot(f30, f30) < CB0[42].w) ? 1 : ((dot(f31, f31) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f29, f29) < CB0[41].w) ? 0 : ((dot(f30, f30) < CB0[42].w) ? 1 : ((dot(f31, f31) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f29, f29) < CB0[41].w) ? 0 : ((dot(f30, f30) < CB0[42].w) ? 1 : ((dot(f31, f31) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f29, f29) < CB0[41].w) ? 0 : ((dot(f30, f30) < CB0[42].w) ? 1 : ((dot(f31, f31) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f33 = textureLod(ShadowAtlasTexture, f32.xy, 0.0);
    vec2 f34 = vec2(0.0);
    f34.x = CB0[46].z;
    vec2 f35 = f34;
    f35.y = CB0[46].w;
    float f36 = (2.0 * f32.z) - 1.0;
    float f37 = exp(CB0[46].z * f36);
    float f38 = -exp((-CB0[46].w) * f36);
    vec2 f39 = (f35 * CB0[47].y) * vec2(f37, f38);
    vec2 f40 = f39 * f39;
    float f41 = f33.x;
    float f42 = max(f33.y - (f41 * f41), f40.x);
    float f43 = f37 - f41;
    float f44 = f33.z;
    float f45 = max(f33.w - (f44 * f44), f40.y);
    float f46 = f38 - f44;
    vec3 f47 = (f19 * f19).xyz;
    float f48 = CB0[26].w * f2;
    float f49 = max(f12.y, 0.04500000178813934326171875);
    vec3 f50 = reflect(-f1, f16);
    float f51 = f49 * 5.0;
    vec3 f52 = vec4(f50, f51).xyz;
    vec4 f53 = texture(PrecomputedBRDFTexture, vec2(f49, max(9.9999997473787516355514526367188e-05, dot(f16, f1))));
    float f54 = f12.x * f48;
    vec3 f55 = mix(vec3(0.039999999105930328369140625), f47, vec3(f54));
    vec3 f56 = normalize(f17 + f1);
    float f57 = clamp(f18 * (((f18 * CB0[47].x) > 0.0) ? mix(min((f37 <= f41) ? 1.0 : clamp(((f42 / (f42 + (f43 * f43))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f38 <= f44) ? 1.0 : clamp(((f45 / (f45 + (f46 * f46))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f28, clamp((length(f20 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f28), 0.0, 1.0);
    float f58 = f49 * f49;
    float f59 = max(0.001000000047497451305389404296875, dot(f16, f56));
    float f60 = dot(f17, f56);
    float f61 = 1.0 - f60;
    float f62 = f61 * f61;
    float f63 = (f62 * f62) * f61;
    vec3 f64 = vec3(f63) + (f55 * (1.0 - f63));
    float f65 = f58 * f58;
    float f66 = (((f59 * f65) - f59) * f59) + 1.0;
    float f67 = 1.0 - f54;
    float f68 = f48 * f67;
    vec3 f69 = vec3(f67);
    float f70 = f53.x;
    float f71 = f53.y;
    vec3 f72 = ((f55 * f70) + vec3(f71)) / vec3(f70 + f71);
    vec3 f73 = f69 - (f72 * f68);
    vec3 f74 = f16 * f16;
    bvec3 f75 = lessThan(f16, vec3(0.0));
    vec3 f76 = vec3(f75.x ? f74.x : vec3(0.0).x, f75.y ? f74.y : vec3(0.0).y, f75.z ? f74.z : vec3(0.0).z);
    vec3 f77 = f74 - f76;
    float f78 = f77.x;
    float f79 = f77.y;
    float f80 = f77.z;
    float f81 = f76.x;
    float f82 = f76.y;
    float f83 = f76.z;
    vec3 f84 = (mix(textureLod(PrefilteredEnvIndoorTexture, f52, f51).xyz * f26, textureLod(PrefilteredEnvTexture, f52, f51).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f50.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f27)) * f72) * f48;
    vec3 f85 = (((((((f69 - (f64 * f68)) * CB0[10].xyz) * f57) + (f73 * (((((((CB0[35].xyz * f78) + (CB0[37].xyz * f79)) + (CB0[39].xyz * f80)) + (CB0[36].xyz * f81)) + (CB0[38].xyz * f82)) + (CB0[40].xyz * f83)) + (((((((CB0[29].xyz * f78) + (CB0[31].xyz * f79)) + (CB0[33].xyz * f80)) + (CB0[30].xyz * f81)) + (CB0[32].xyz * f82)) + (CB0[34].xyz * f83)) * f27)))) + (CB0[27].xyz + (CB0[28].xyz * f27))) * f47) + (((f64 * (((f65 + (f65 * f65)) / (((f66 * f66) * ((f60 * 3.0) + 0.5)) * ((f59 * 0.75) + 0.25))) * f57)) * CB0[10].xyz) + f84)) + ((f26 * mix(f47, f84 * (1.0 / (max(max(f84.x, f84.y), f84.z) + 0.00999999977648258209228515625)), (vec3(1.0) - f73) * (f48 * (1.0 - f27)))) * 1.0);
    vec4 f86 = vec4(f85.x, f85.y, f85.z, vec4(0.0).w);
    f86.w = VARYING2.w;
    float f87 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f88 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f87) * 5.0).xyz;
    bvec3 f89 = bvec3(!(CB0[13].w == 0.0));
    vec3 f90 = sqrt(clamp(mix(vec3(f89.x ? CB0[14].xyz.x : f88.x, f89.y ? CB0[14].xyz.y : f88.y, f89.z ? CB0[14].xyz.z : f88.z), f86.xyz, vec3(f87)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f91 = vec4(f90.x, f90.y, f90.z, f86.w);
    f91.w = VARYING2.w;
    _entryPointOutput = f91;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$Tc2DiffuseMapTexture=s0
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5
