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
    vec4 f7 = texture(NormalDetailMapTexture, f1 * CB2[0].w);
    vec2 f8 = (vec3(f5, f6).xy + (vec3((f7.wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f0;
    float f9 = f2.w;
    vec3 f10 = (mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f9 + CB2[2].w, 0.0, 1.0))) * f2.xyz) * (1.0 + (f8.x * CB2[0].z));
    vec4 f11 = texture(SpecularMapTexture, f1 * CB2[1].w);
    vec4 f12 = texture(SpecularMapTexture, f1);
    float f13 = VARYING2.w * 2.0;
    float f14 = clamp((f13 - 1.0) + f9, 0.0, 1.0);
    float f15 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f16 = VARYING6.xyz * f15;
    vec3 f17 = VARYING5.xyz * f15;
    vec3 f18 = normalize(((f16 * f8.x) + (cross(f17, f16) * f8.y)) + (f17 * (f6 * 10.0)));
    vec3 f19 = -CB0[11].xyz;
    float f20 = dot(f18, f19);
    vec3 f21 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f22 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f23 = VARYING3.yzx - (VARYING3.yzx * f22);
    vec4 f24 = texture(LightMapTexture, f23);
    vec4 f25 = texture(LightGridSkylightTexture, f23);
    vec4 f26 = vec4(clamp(f22, 0.0, 1.0));
    vec4 f27 = mix(f24, vec4(0.0), f26);
    vec4 f28 = mix(f25, vec4(1.0), f26);
    vec3 f29 = (f27.xyz * (f27.w * 120.0)).xyz;
    float f30 = f28.x;
    float f31 = f28.y;
    vec3 f32 = f21 - CB0[41].xyz;
    vec3 f33 = f21 - CB0[42].xyz;
    vec3 f34 = f21 - CB0[43].xyz;
    vec4 f35 = vec4(f21, 1.0) * mat4(CB8[((dot(f32, f32) < CB0[41].w) ? 0 : ((dot(f33, f33) < CB0[42].w) ? 1 : ((dot(f34, f34) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f32, f32) < CB0[41].w) ? 0 : ((dot(f33, f33) < CB0[42].w) ? 1 : ((dot(f34, f34) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f32, f32) < CB0[41].w) ? 0 : ((dot(f33, f33) < CB0[42].w) ? 1 : ((dot(f34, f34) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f32, f32) < CB0[41].w) ? 0 : ((dot(f33, f33) < CB0[42].w) ? 1 : ((dot(f34, f34) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f36 = textureLod(ShadowAtlasTexture, f35.xy, 0.0);
    vec2 f37 = vec2(0.0);
    f37.x = CB0[46].z;
    vec2 f38 = f37;
    f38.y = CB0[46].w;
    float f39 = (2.0 * f35.z) - 1.0;
    float f40 = exp(CB0[46].z * f39);
    float f41 = -exp((-CB0[46].w) * f39);
    vec2 f42 = (f38 * CB0[47].y) * vec2(f40, f41);
    vec2 f43 = f42 * f42;
    float f44 = f36.x;
    float f45 = max(f36.y - (f44 * f44), f43.x);
    float f46 = f40 - f44;
    float f47 = f36.z;
    float f48 = max(f36.w - (f47 * f47), f43.y);
    float f49 = f41 - f47;
    vec3 f50 = f10 * f10;
    float f51 = length(VARYING4.xyz);
    vec3 f52 = VARYING4.xyz / vec3(f51);
    float f53 = 0.08900000154972076416015625 + (mix(f11, f12, vec4(clamp((f0 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0))).y * 0.9110000133514404296875);
    float f54 = CB0[26].w * f0;
    float f55 = max(9.9999997473787516355514526367188e-05, dot(f18, f52));
    vec3 f56 = reflect(-f52, f18);
    float f57 = f53 * 5.0;
    vec3 f58 = vec4(f56, f57).xyz;
    vec3 f59 = textureLod(PrefilteredEnvTexture, f58, f57).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f56.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f60 = textureLod(PrefilteredEnvIndoorTexture, f58, f57).xyz;
    vec3 f61;
    if (CB0[27].w == 0.0)
    {
        f61 = f60;
    }
    else
    {
        f61 = mix(f60, textureLod(PrefilteredEnvBlendTargetTexture, f58, f57).xyz, vec3(CB0[27].w));
    }
    vec4 f62 = texture(PrecomputedBRDFTexture, vec2(f53, f55));
    vec3 f63 = normalize(f19 + f52);
    float f64 = clamp(f20 * (((f20 * CB0[47].x) > 0.0) ? mix(min((f40 <= f44) ? 1.0 : clamp(((f45 / (f45 + (f46 * f46))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f41 <= f47) ? 1.0 : clamp(((f48 / (f48 + (f49 * f49))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f31, clamp((length(f21 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f31), 0.0, 1.0);
    float f65 = f53 * f53;
    float f66 = max(0.001000000047497451305389404296875, dot(f18, f63));
    float f67 = dot(f19, f63);
    float f68 = 1.0 - f67;
    float f69 = f68 * f68;
    float f70 = (f69 * f69) * f68;
    vec3 f71 = vec3(f70) + (vec3(0.039999999105930328369140625) * (1.0 - f70));
    float f72 = f65 * f65;
    float f73 = (((f66 * f72) - f66) * f66) + 1.0;
    vec3 f74 = vec3(f30);
    vec3 f75 = mix(f29, f59, f74) * mix(vec3(1.0), f50, vec3(0.5));
    float f76 = f62.x;
    float f77 = f62.y;
    vec3 f78 = ((vec3(0.039999999105930328369140625) * f76) + vec3(f77)) / vec3(f76 + f77);
    vec3 f79 = f18 * f18;
    bvec3 f80 = lessThan(f18, vec3(0.0));
    vec3 f81 = vec3(f80.x ? f79.x : vec3(0.0).x, f80.y ? f79.y : vec3(0.0).y, f80.z ? f79.z : vec3(0.0).z);
    vec3 f82 = f79 - f81;
    float f83 = f82.x;
    float f84 = f82.y;
    float f85 = f82.z;
    float f86 = f81.x;
    float f87 = f81.y;
    float f88 = f81.z;
    float f89 = 1.0 - f55;
    vec4 f90 = mix(vec4(mix(((((((vec3(1.0) - (f71 * f54)) * CB0[10].xyz) * f64) + (f29 * f14)) + (((vec3(1.0) - (f78 * f54)) * (((((((CB0[35].xyz * f83) + (CB0[37].xyz * f84)) + (CB0[39].xyz * f85)) + (CB0[36].xyz * f86)) + (CB0[38].xyz * f87)) + (CB0[40].xyz * f88)) + (((((((CB0[29].xyz * f83) + (CB0[31].xyz * f84)) + (CB0[33].xyz * f85)) + (CB0[30].xyz * f86)) + (CB0[32].xyz * f87)) + (CB0[34].xyz * f88)) * f30))) * f14)) + (CB0[27].xyz + (CB0[28].xyz * f30))) * (f50 * f14), f75, vec3(VARYING7.w)) * f14, f14), vec4(f75, 1.0), vec4(((f89 * f89) * 0.800000011920928955078125) * clamp(f13, 0.0, 1.0))) + vec4(((f71 * (((f72 + (f72 * f72)) / (((f73 * f73) * ((f67 * 3.0) + 0.5)) * ((f66 * 0.75) + 0.25))) * f64)) * CB0[10].xyz) + (((mix(f61, f59, f74) * f78) * f54) * f14), 0.0);
    float f91 = clamp(exp2((CB0[13].z * f51) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f92 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f91) * 5.0).xyz;
    bvec3 f93 = bvec3(!(CB0[13].w == 0.0));
    vec3 f94 = mix(vec3(f93.x ? CB0[14].xyz.x : f92.x, f93.y ? CB0[14].xyz.y : f92.y, f93.z ? CB0[14].xyz.z : f92.z), f90.xyz, vec3(f91));
    vec4 f95 = vec4(f94.x, f94.y, f94.z, f90.w);
    f95.w = 1.0 - ((1.0 - f90.w) * f91);
    vec3 f96 = sqrt(clamp(f95.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f96.x, f96.y, f96.z, f95.w);
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
