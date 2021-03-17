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
uniform sampler2D StudsMapTexture;
uniform sampler2D SpecularMapTexture;

in vec2 VARYING0;
in vec2 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
in float VARYING8;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = VARYING1;
    f0.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float f1 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec2 f2 = VARYING0 * CB2[0].x;
    vec4 f3 = texture(DiffuseMapTexture, f2);
    vec4 f4 = texture(NormalMapTexture, f2);
    vec2 f5 = f4.wy * 2.0;
    vec2 f6 = f5 - vec2(1.0);
    float f7 = sqrt(clamp(1.0 + dot(vec2(1.0) - f5, f6), 0.0, 1.0));
    vec4 f8 = texture(NormalDetailMapTexture, f2 * CB2[0].w);
    vec2 f9 = (vec3(f6, f7).xy + (vec3((f8.wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f1;
    float f10 = f3.w;
    vec4 f11 = texture(StudsMapTexture, f0);
    vec3 f12 = ((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f10 + CB2[2].w, 0.0, 1.0))) * f3.xyz) * (1.0 + (f9.x * CB2[0].z))) * (f11.x * 2.0);
    vec4 f13 = texture(SpecularMapTexture, f2 * CB2[1].w);
    vec4 f14 = texture(SpecularMapTexture, f2);
    vec4 f15 = mix(f13, f14, vec4(clamp((f1 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0)));
    float f16 = f15.y;
    float f17 = VARYING2.w * 2.0;
    float f18 = clamp((f17 - 1.0) + f10, 0.0, 1.0);
    float f19 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f20 = VARYING6.xyz * f19;
    vec3 f21 = VARYING5.xyz * f19;
    vec3 f22 = normalize(((f20 * f9.x) + (cross(f21, f20) * f9.y)) + (f21 * (f7 * 10.0)));
    vec3 f23 = -CB0[11].xyz;
    float f24 = dot(f22, f23);
    vec3 f25 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f26 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f27 = VARYING3.yzx - (VARYING3.yzx * f26);
    vec4 f28 = texture(LightMapTexture, f27);
    vec4 f29 = texture(LightGridSkylightTexture, f27);
    vec4 f30 = vec4(clamp(f26, 0.0, 1.0));
    vec4 f31 = mix(f28, vec4(0.0), f30);
    vec4 f32 = mix(f29, vec4(1.0), f30);
    vec3 f33 = (f31.xyz * (f31.w * 120.0)).xyz;
    float f34 = f32.x;
    float f35 = f32.y;
    vec3 f36 = f25 - CB0[41].xyz;
    vec3 f37 = f25 - CB0[42].xyz;
    vec3 f38 = f25 - CB0[43].xyz;
    vec4 f39 = vec4(f25, 1.0) * mat4(CB8[((dot(f36, f36) < CB0[41].w) ? 0 : ((dot(f37, f37) < CB0[42].w) ? 1 : ((dot(f38, f38) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f36, f36) < CB0[41].w) ? 0 : ((dot(f37, f37) < CB0[42].w) ? 1 : ((dot(f38, f38) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f36, f36) < CB0[41].w) ? 0 : ((dot(f37, f37) < CB0[42].w) ? 1 : ((dot(f38, f38) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f36, f36) < CB0[41].w) ? 0 : ((dot(f37, f37) < CB0[42].w) ? 1 : ((dot(f38, f38) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f40 = textureLod(ShadowAtlasTexture, f39.xy, 0.0);
    vec2 f41 = vec2(0.0);
    f41.x = CB0[46].z;
    vec2 f42 = f41;
    f42.y = CB0[46].w;
    float f43 = (2.0 * f39.z) - 1.0;
    float f44 = exp(CB0[46].z * f43);
    float f45 = -exp((-CB0[46].w) * f43);
    vec2 f46 = (f42 * CB0[47].y) * vec2(f44, f45);
    vec2 f47 = f46 * f46;
    float f48 = f40.x;
    float f49 = max(f40.y - (f48 * f48), f47.x);
    float f50 = f44 - f48;
    float f51 = f40.z;
    float f52 = max(f40.w - (f51 * f51), f47.y);
    float f53 = f45 - f51;
    vec3 f54 = f12 * f12;
    float f55 = length(VARYING4.xyz);
    vec3 f56 = VARYING4.xyz / vec3(f55);
    float f57 = CB0[26].w * f1;
    float f58 = max(9.9999997473787516355514526367188e-05, dot(f22, f56));
    vec3 f59 = reflect(-f56, f22);
    float f60 = f16 * 5.0;
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
    vec4 f65 = texture(PrecomputedBRDFTexture, vec2(f16, f58));
    vec3 f66 = normalize(f23 + f56);
    float f67 = clamp(f24 * ((f24 > 0.0) ? mix(f35, mix(min((f44 <= f48) ? 1.0 : clamp(((f49 / (f49 + (f50 * f50))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f45 <= f51) ? 1.0 : clamp(((f52 / (f52 + (f53 * f53))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f35, clamp((length(f25 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)), CB0[47].x) : 0.0), 0.0, 1.0);
    float f68 = f16 * f16;
    float f69 = max(0.001000000047497451305389404296875, dot(f22, f66));
    float f70 = dot(f23, f66);
    float f71 = 1.0 - f70;
    float f72 = f71 * f71;
    float f73 = (f72 * f72) * f71;
    vec3 f74 = vec3(f73) + (vec3(0.039999999105930328369140625) * (1.0 - f73));
    float f75 = f68 * f68;
    float f76 = (((f69 * f75) - f69) * f69) + 1.0;
    vec3 f77 = vec3(f34);
    vec3 f78 = mix(f33, f62, f77) * mix(vec3(1.0), f54, vec3(0.5));
    float f79 = f65.x;
    float f80 = f65.y;
    vec3 f81 = ((vec3(0.039999999105930328369140625) * f79) + vec3(f80)) / vec3(f79 + f80);
    vec3 f82 = f22 * f22;
    bvec3 f83 = lessThan(f22, vec3(0.0));
    vec3 f84 = vec3(f83.x ? f82.x : vec3(0.0).x, f83.y ? f82.y : vec3(0.0).y, f83.z ? f82.z : vec3(0.0).z);
    vec3 f85 = f82 - f84;
    float f86 = f85.x;
    float f87 = f85.y;
    float f88 = f85.z;
    float f89 = f84.x;
    float f90 = f84.y;
    float f91 = f84.z;
    float f92 = 1.0 - f58;
    vec4 f93 = mix(vec4(mix(((((((vec3(1.0) - (f74 * f57)) * CB0[10].xyz) * f67) + (f33 * f18)) + (((vec3(1.0) - (f81 * f57)) * (((((((CB0[35].xyz * f86) + (CB0[37].xyz * f87)) + (CB0[39].xyz * f88)) + (CB0[36].xyz * f89)) + (CB0[38].xyz * f90)) + (CB0[40].xyz * f91)) + (((((((CB0[29].xyz * f86) + (CB0[31].xyz * f87)) + (CB0[33].xyz * f88)) + (CB0[30].xyz * f89)) + (CB0[32].xyz * f90)) + (CB0[34].xyz * f91)) * f34))) * f18)) + (CB0[27].xyz + (CB0[28].xyz * f34))) * (f54 * f18), f78, vec3(VARYING7.w)) * f18, f18), vec4(f78, 1.0), vec4(((f92 * f92) * 0.800000011920928955078125) * clamp(f17, 0.0, 1.0))) + vec4(((f74 * (((f75 + (f75 * f75)) / (((f76 * f76) * ((f70 * 3.0) + 0.5)) * ((f69 * 0.75) + 0.25))) * f67)) * CB0[10].xyz) + (((mix(f64, f62, f77) * f81) * f57) * f18), 0.0);
    float f94 = clamp(exp2((CB0[13].z * f55) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f95 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f94) * 5.0).xyz;
    bvec3 f96 = bvec3(CB0[13].w != 0.0);
    vec3 f97 = mix(vec3(f96.x ? CB0[14].xyz.x : f95.x, f96.y ? CB0[14].xyz.y : f95.y, f96.z ? CB0[14].xyz.z : f95.z), f93.xyz, vec3(f94));
    vec4 f98 = vec4(f97.x, f97.y, f97.z, f93.w);
    f98.w = 1.0 - ((1.0 - f93.w) * f94);
    vec3 f99 = sqrt(clamp(f98.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f99.x, f99.y, f99.z, f98.w);
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
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
