#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
#include <MaterialParams.h>
uniform vec4 CB0[53];
uniform vec4 CB8[24];
uniform vec4 CB2[4];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D SpecularMapTexture;

in vec2 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    float f0 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec2 f1 = VARYING0 * CB2[0].x;
    vec4 f2 = texture(DiffuseMapTexture, f1);
    vec4 f3 = texture(NormalMapTexture, f1);
    vec2 f4 = f3.wy * 2.0;
    vec2 f5 = f4 - vec2(1.0);
    float f6 = sqrt(clamp(1.0 + dot(vec2(1.0) - f4, f5), 0.0, 1.0));
    vec3 f7 = vec3(f5, f6);
    vec2 f8 = f7.xy + (vec3((texture(NormalDetailMapTexture, f1 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f9 = f7;
    f9.x = f8.x;
    vec3 f10 = f9;
    f10.y = f8.y;
    vec2 f11 = f10.xy * f0;
    float f12 = f11.x;
    vec3 f13 = (VARYING2.xyz * f2.xyz) * (1.0 + (f12 * CB2[0].z));
    vec4 f14 = texture(SpecularMapTexture, f1 * CB2[1].w);
    vec4 f15 = texture(SpecularMapTexture, f1);
    float f16 = VARYING2.w * 2.0;
    float f17 = clamp((f16 - 1.0) + f2.w, 0.0, 1.0);
    float f18 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f19 = VARYING6.xyz * f18;
    vec3 f20 = VARYING5.xyz * f18;
    vec3 f21 = normalize(((f19 * f12) + (cross(f20, f19) * f11.y)) + (f20 * (f6 * 10.0)));
    vec3 f22 = -CB0[11].xyz;
    float f23 = dot(f21, f22);
    vec3 f24 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f25 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f26 = VARYING3.yzx - (VARYING3.yzx * f25);
    vec4 f27 = texture(LightMapTexture, f26);
    vec4 f28 = texture(LightGridSkylightTexture, f26);
    vec4 f29 = vec4(clamp(f25, 0.0, 1.0));
    vec4 f30 = mix(f27, vec4(0.0), f29);
    vec4 f31 = mix(f28, vec4(1.0), f29);
    vec3 f32 = f30.xyz * (f30.w * 120.0);
    float f33 = f31.x;
    float f34 = f31.y;
    vec3 f35 = f24 - CB0[41].xyz;
    vec3 f36 = f24 - CB0[42].xyz;
    vec3 f37 = f24 - CB0[43].xyz;
    vec4 f38 = vec4(f24, 1.0) * mat4(CB8[((dot(f35, f35) < CB0[41].w) ? 0 : ((dot(f36, f36) < CB0[42].w) ? 1 : ((dot(f37, f37) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f35, f35) < CB0[41].w) ? 0 : ((dot(f36, f36) < CB0[42].w) ? 1 : ((dot(f37, f37) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f35, f35) < CB0[41].w) ? 0 : ((dot(f36, f36) < CB0[42].w) ? 1 : ((dot(f37, f37) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f35, f35) < CB0[41].w) ? 0 : ((dot(f36, f36) < CB0[42].w) ? 1 : ((dot(f37, f37) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f39 = textureLod(ShadowAtlasTexture, f38.xy, 0.0);
    vec2 f40 = vec2(0.0);
    f40.x = CB0[46].z;
    vec2 f41 = f40;
    f41.y = CB0[46].w;
    float f42 = (2.0 * f38.z) - 1.0;
    float f43 = exp(CB0[46].z * f42);
    float f44 = -exp((-CB0[46].w) * f42);
    vec2 f45 = (f41 * CB0[47].y) * vec2(f43, f44);
    vec2 f46 = f45 * f45;
    float f47 = f39.x;
    float f48 = max(f39.y - (f47 * f47), f46.x);
    float f49 = f43 - f47;
    float f50 = f39.z;
    float f51 = max(f39.w - (f50 * f50), f46.y);
    float f52 = f44 - f50;
    vec3 f53 = f13 * f13;
    float f54 = length(VARYING4.xyz);
    vec3 f55 = VARYING4.xyz / vec3(f54);
    float f56 = 0.08900000154972076416015625 + (mix(f14, f15, vec4(clamp((f0 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0))).y * 0.9110000133514404296875);
    float f57 = CB0[26].w * f0;
    float f58 = max(9.9999997473787516355514526367188e-05, dot(f21, f55));
    vec3 f59 = reflect(-f55, f21);
    float f60 = f56 * 5.0;
    vec3 f61 = vec4(f59, f60).xyz;
    vec3 f62 = textureLod(PrefilteredEnvTexture, f61, f60).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f59.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f63 = textureLod(PrefilteredEnvIndoorTexture, f61, f60).xyz;
    vec3 f64;
    if (CB0[27].w == 0.0)
    {
        f64 = f63;
    }
    else
    {
        f64 = mix(f63, textureLod(PrefilteredEnvBlendTargetTexture, f61, f60).xyz, vec3(CB0[27].w));
    }
    vec4 f65 = texture(PrecomputedBRDFTexture, vec2(f56, f58));
    float f66 = CB0[9].w * CB0[9].w;
    vec3 f67 = normalize(f22 + f55);
    float f68 = clamp((f23 * CB0[9].w) * (((f23 * CB0[47].x) > 0.0) ? mix(min((f43 <= f47) ? 1.0 : clamp(((f48 / (f48 + (f49 * f49))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f44 <= f50) ? 1.0 : clamp(((f51 / (f51 + (f52 * f52))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f34, clamp((length(f24 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f34), 0.0, 1.0);
    float f69 = f56 * f56;
    float f70 = max(0.001000000047497451305389404296875, dot(f21, f67));
    float f71 = dot(f22, f67);
    float f72 = 1.0 - f71;
    float f73 = f72 * f72;
    float f74 = (f73 * f73) * f72;
    vec3 f75 = vec3(f74) + (vec3(0.039999999105930328369140625) * (1.0 - f74));
    float f76 = f69 * f69;
    float f77 = (((f70 * f76) - f70) * f70) + 1.0;
    vec3 f78 = vec3(f33);
    vec3 f79 = mix(f32, f62, f78) * mix(vec3(1.0), f53, vec3(0.5));
    float f80 = f65.x;
    float f81 = f65.y;
    vec3 f82 = ((vec3(0.039999999105930328369140625) * f80) + vec3(f81)) / vec3(f80 + f81);
    vec3 f83 = f21 * f21;
    bvec3 f84 = lessThan(f21, vec3(0.0));
    vec3 f85 = vec3(f84.x ? f83.x : vec3(0.0).x, f84.y ? f83.y : vec3(0.0).y, f84.z ? f83.z : vec3(0.0).z);
    vec3 f86 = f83 - f85;
    float f87 = f86.x;
    float f88 = f86.y;
    float f89 = f86.z;
    float f90 = f85.x;
    float f91 = f85.y;
    float f92 = f85.z;
    float f93 = 1.0 - f58;
    vec4 f94 = mix(vec4(mix(((((((vec3(1.0) - (f75 * f57)) * CB0[10].xyz) * f68) + (f32 * f17)) + (((vec3(1.0) - (f82 * f57)) * (((((((CB0[35].xyz * f87) + (CB0[37].xyz * f88)) + (CB0[39].xyz * f89)) + (CB0[36].xyz * f90)) + (CB0[38].xyz * f91)) + (CB0[40].xyz * f92)) + (((((((CB0[29].xyz * f87) + (CB0[31].xyz * f88)) + (CB0[33].xyz * f89)) + (CB0[30].xyz * f90)) + (CB0[32].xyz * f91)) + (CB0[34].xyz * f92)) * f33))) * f17)) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f33))) * (f53 * f17), f79, vec3(VARYING7.w)) * f17, f17), vec4(f79, 1.0), vec4(((f93 * f93) * 0.800000011920928955078125) * clamp(f16, 0.0, 1.0))) + vec4((((f75 * (((f76 + (f76 * f76)) / (((f77 * f77) * ((f71 * 3.0) + 0.5)) * ((f70 * 0.75) + 0.25))) * f68)) * CB0[10].xyz) * f66) + ((((mix(f64, f62, f78) * f82) * f57) * f66) * f17), 0.0);
    float f95 = clamp(exp2((CB0[13].z * f54) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f96 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f95) * 5.0).xyz;
    bvec3 f97 = bvec3(!(CB0[13].w == 0.0));
    vec3 f98 = mix(vec3(f97.x ? CB0[14].xyz.x : f96.x, f97.y ? CB0[14].xyz.y : f96.y, f97.z ? CB0[14].xyz.z : f96.z), f94.xyz, vec3(f95));
    vec4 f99 = f94;
    f99.x = f98.x;
    vec4 f100 = f99;
    f100.y = f98.y;
    vec4 f101 = f100;
    f101.z = f98.z;
    vec4 f102 = f101;
    f102.w = 1.0 - ((1.0 - f94.w) * f95);
    vec3 f103 = sqrt(clamp(f102.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f104 = f102;
    f104.x = f103.x;
    vec4 f105 = f104;
    f105.y = f103.y;
    vec4 f106 = f105;
    f106.z = f103.z;
    _entryPointOutput = f106;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$SpecularMapTexture=s5
