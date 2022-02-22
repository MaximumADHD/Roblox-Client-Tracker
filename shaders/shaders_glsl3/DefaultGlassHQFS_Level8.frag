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
    float f13 = f2.w;
    vec3 f14 = (mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f13 + CB2[2].w, 0.0, 1.0))) * f2.xyz) * (1.0 + (f12 * CB2[0].z));
    vec4 f15 = texture(SpecularMapTexture, f1 * CB2[1].w);
    vec4 f16 = texture(SpecularMapTexture, f1);
    vec4 f17 = mix(f15, f16, vec4(clamp((f0 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0)));
    float f18 = f17.y;
    float f19 = VARYING2.w * 2.0;
    float f20 = clamp((f19 - 1.0) + f13, 0.0, 1.0);
    float f21 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f22 = VARYING6.xyz * f21;
    vec3 f23 = VARYING5.xyz * f21;
    vec3 f24 = normalize(((f22 * f12) + (cross(f23, f22) * f11.y)) + (f23 * (f6 * 10.0)));
    vec3 f25 = -CB0[11].xyz;
    float f26 = dot(f24, f25);
    vec3 f27 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f28 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f29 = VARYING3.yzx - (VARYING3.yzx * f28);
    vec4 f30 = texture(LightMapTexture, f29);
    vec4 f31 = texture(LightGridSkylightTexture, f29);
    vec4 f32 = vec4(clamp(f28, 0.0, 1.0));
    vec4 f33 = mix(f30, vec4(0.0), f32);
    vec4 f34 = mix(f31, vec4(1.0), f32);
    vec3 f35 = f33.xyz * (f33.w * 120.0);
    float f36 = f34.x;
    float f37 = f34.y;
    vec3 f38 = f27 - CB0[41].xyz;
    vec3 f39 = f27 - CB0[42].xyz;
    vec3 f40 = f27 - CB0[43].xyz;
    vec4 f41 = vec4(f27, 1.0) * mat4(CB8[((dot(f38, f38) < CB0[41].w) ? 0 : ((dot(f39, f39) < CB0[42].w) ? 1 : ((dot(f40, f40) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f38, f38) < CB0[41].w) ? 0 : ((dot(f39, f39) < CB0[42].w) ? 1 : ((dot(f40, f40) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f38, f38) < CB0[41].w) ? 0 : ((dot(f39, f39) < CB0[42].w) ? 1 : ((dot(f40, f40) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f38, f38) < CB0[41].w) ? 0 : ((dot(f39, f39) < CB0[42].w) ? 1 : ((dot(f40, f40) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f42 = textureLod(ShadowAtlasTexture, f41.xy, 0.0);
    vec2 f43 = vec2(0.0);
    f43.x = CB0[46].z;
    vec2 f44 = f43;
    f44.y = CB0[46].w;
    float f45 = (2.0 * f41.z) - 1.0;
    float f46 = exp(CB0[46].z * f45);
    float f47 = -exp((-CB0[46].w) * f45);
    vec2 f48 = (f44 * CB0[47].y) * vec2(f46, f47);
    vec2 f49 = f48 * f48;
    float f50 = f42.x;
    float f51 = max(f42.y - (f50 * f50), f49.x);
    float f52 = f46 - f50;
    float f53 = f42.z;
    float f54 = max(f42.w - (f53 * f53), f49.y);
    float f55 = f47 - f53;
    vec3 f56 = f14 * f14;
    float f57 = length(VARYING4.xyz);
    vec3 f58 = VARYING4.xyz / vec3(f57);
    float f59 = CB0[26].w * f0;
    float f60 = max(9.9999997473787516355514526367188e-05, dot(f24, f58));
    vec3 f61 = reflect(-f58, f24);
    float f62 = f18 * 5.0;
    vec3 f63 = vec4(f61, f62).xyz;
    vec3 f64 = textureLod(PrefilteredEnvTexture, f63, f62).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f61.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f65 = textureLod(PrefilteredEnvIndoorTexture, f63, f62).xyz;
    vec3 f66;
    if (CB0[27].w == 0.0)
    {
        f66 = f65;
    }
    else
    {
        f66 = mix(f65, textureLod(PrefilteredEnvBlendTargetTexture, f63, f62).xyz, vec3(CB0[27].w));
    }
    vec4 f67 = texture(PrecomputedBRDFTexture, vec2(f18, f60));
    float f68 = CB0[9].w * CB0[9].w;
    vec3 f69 = normalize(f25 + f58);
    float f70 = clamp((f26 * CB0[9].w) * (((f26 * CB0[47].x) > 0.0) ? mix(min((f46 <= f50) ? 1.0 : clamp(((f51 / (f51 + (f52 * f52))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f47 <= f53) ? 1.0 : clamp(((f54 / (f54 + (f55 * f55))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f37, clamp((length(f27 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f37), 0.0, 1.0);
    float f71 = f18 * f18;
    float f72 = max(0.001000000047497451305389404296875, dot(f24, f69));
    float f73 = dot(f25, f69);
    float f74 = 1.0 - f73;
    float f75 = f74 * f74;
    float f76 = (f75 * f75) * f74;
    vec3 f77 = vec3(f76) + (vec3(0.039999999105930328369140625) * (1.0 - f76));
    float f78 = f71 * f71;
    float f79 = (((f72 * f78) - f72) * f72) + 1.0;
    vec3 f80 = vec3(f36);
    vec3 f81 = mix(f35, f64, f80) * mix(vec3(1.0), f56, vec3(0.5));
    float f82 = f67.x;
    float f83 = f67.y;
    vec3 f84 = ((vec3(0.039999999105930328369140625) * f82) + vec3(f83)) / vec3(f82 + f83);
    vec3 f85 = f24 * f24;
    bvec3 f86 = lessThan(f24, vec3(0.0));
    vec3 f87 = vec3(f86.x ? f85.x : vec3(0.0).x, f86.y ? f85.y : vec3(0.0).y, f86.z ? f85.z : vec3(0.0).z);
    vec3 f88 = f85 - f87;
    float f89 = f88.x;
    float f90 = f88.y;
    float f91 = f88.z;
    float f92 = f87.x;
    float f93 = f87.y;
    float f94 = f87.z;
    float f95 = 1.0 - f60;
    vec4 f96 = mix(vec4(mix(((((((vec3(1.0) - (f77 * f59)) * CB0[10].xyz) * f70) + (f35 * f20)) + (((vec3(1.0) - (f84 * f59)) * (((((((CB0[35].xyz * f89) + (CB0[37].xyz * f90)) + (CB0[39].xyz * f91)) + (CB0[36].xyz * f92)) + (CB0[38].xyz * f93)) + (CB0[40].xyz * f94)) + (((((((CB0[29].xyz * f89) + (CB0[31].xyz * f90)) + (CB0[33].xyz * f91)) + (CB0[30].xyz * f92)) + (CB0[32].xyz * f93)) + (CB0[34].xyz * f94)) * f36))) * f20)) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f36))) * (f56 * f20), f81, vec3(VARYING7.w)) * f20, f20), vec4(f81, 1.0), vec4(((f95 * f95) * 0.800000011920928955078125) * clamp(f19, 0.0, 1.0))) + vec4((((f77 * (((f78 + (f78 * f78)) / (((f79 * f79) * ((f73 * 3.0) + 0.5)) * ((f72 * 0.75) + 0.25))) * f70)) * CB0[10].xyz) * f68) + ((((mix(f66, f64, f80) * f84) * f59) * f68) * f20), 0.0);
    float f97 = clamp(exp2((CB0[13].z * f57) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f98 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f97) * 5.0).xyz;
    bvec3 f99 = bvec3(!(CB0[13].w == 0.0));
    vec3 f100 = mix(vec3(f99.x ? CB0[14].xyz.x : f98.x, f99.y ? CB0[14].xyz.y : f98.y, f99.z ? CB0[14].xyz.z : f98.z), f96.xyz, vec3(f97));
    vec4 f101 = f96;
    f101.x = f100.x;
    vec4 f102 = f101;
    f102.y = f100.y;
    vec4 f103 = f102;
    f103.z = f100.z;
    vec4 f104 = f103;
    f104.w = 1.0 - ((1.0 - f96.w) * f97);
    vec3 f105 = sqrt(clamp(f104.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f106 = f104;
    f106.x = f105.x;
    vec4 f107 = f106;
    f107.y = f105.y;
    vec4 f108 = f107;
    f108.z = f105.z;
    _entryPointOutput = f108;
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
