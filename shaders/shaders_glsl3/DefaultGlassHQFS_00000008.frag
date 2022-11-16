#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
#include <MaterialParams.h>
uniform vec4 CB0[58];
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
    vec2 f0 = clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0));
    vec2 f1 = VARYING0 * CB2[0].x;
    float f2 = f0.y;
    vec4 f3 = texture(DiffuseMapTexture, f1);
    vec4 f4 = texture(NormalMapTexture, f1);
    vec2 f5 = f4.wy * 2.0;
    vec2 f6 = f5 - vec2(1.0);
    float f7 = sqrt(clamp(1.0 + dot(vec2(1.0) - f5, f6), 0.0, 1.0));
    vec3 f8 = vec3(f6, f7);
    vec2 f9 = f8.xy + (vec3((texture(NormalDetailMapTexture, f1 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f10 = f8;
    f10.x = f9.x;
    vec3 f11 = f10;
    f11.y = f9.y;
    vec2 f12 = f11.xy * f2;
    float f13 = f12.x;
    vec3 f14 = (VARYING2.xyz * f3.xyz) * (1.0 + (f13 * 0.20000000298023223876953125));
    vec4 f15 = texture(SpecularMapTexture, f1 * CB2[1].w);
    vec4 f16 = texture(SpecularMapTexture, f1);
    float f17 = VARYING2.w * 2.0;
    float f18 = clamp((f17 - 1.0) + f3.w, 0.0, 1.0);
    float f19 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f20 = VARYING6.xyz * f19;
    vec3 f21 = VARYING5.xyz * f19;
    vec3 f22 = normalize(((f20 * f13) + (cross(f21, f20) * f12.y)) + (f21 * (f7 * 10.0)));
    vec3 f23 = -CB0[16].xyz;
    float f24 = dot(f22, f23);
    vec3 f25 = f14 * f14;
    float f26 = length(VARYING4.xyz);
    vec3 f27 = VARYING4.xyz / vec3(f26);
    float f28 = 0.08900000154972076416015625 + (mix(f15, f16, vec4(clamp((f2 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0))).y * 0.9110000133514404296875);
    float f29 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f30 = max(9.9999997473787516355514526367188e-05, dot(f22, f27));
    vec3 f31 = -f27;
    vec3 f32 = reflect(f31, f22);
    float f33 = f28 * 5.0;
    vec3 f34 = vec4(f32, f33).xyz;
    vec3 f35 = textureLod(PrefilteredEnvTexture, f34, f33).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f32.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f36 = textureLod(PrefilteredEnvIndoorTexture, f34, f33).xyz;
    vec3 f37;
    if (CB0[32].w == 0.0)
    {
        f37 = f36;
    }
    else
    {
        f37 = mix(f36, textureLod(PrefilteredEnvBlendTargetTexture, f34, f33).xyz, vec3(CB0[32].w));
    }
    vec4 f38 = texture(PrecomputedBRDFTexture, vec2(f28, f30));
    vec3 f39 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f40 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f41 = VARYING3.yzx - (VARYING3.yzx * f40);
    vec4 f42 = texture(LightMapTexture, f41);
    vec4 f43 = texture(LightGridSkylightTexture, f41);
    vec4 f44 = vec4(clamp(f40, 0.0, 1.0));
    vec4 f45 = mix(f42, vec4(0.0), f44);
    vec4 f46 = mix(f43, vec4(1.0), f44);
    vec3 f47 = f45.xyz * (f45.w * 120.0);
    float f48 = f46.x;
    float f49 = f46.y;
    vec3 f50 = f39 - CB0[46].xyz;
    vec3 f51 = f39 - CB0[47].xyz;
    vec3 f52 = f39 - CB0[48].xyz;
    vec4 f53 = vec4(f39, 1.0) * mat4(CB8[((dot(f50, f50) < CB0[46].w) ? 0 : ((dot(f51, f51) < CB0[47].w) ? 1 : ((dot(f52, f52) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f50, f50) < CB0[46].w) ? 0 : ((dot(f51, f51) < CB0[47].w) ? 1 : ((dot(f52, f52) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f50, f50) < CB0[46].w) ? 0 : ((dot(f51, f51) < CB0[47].w) ? 1 : ((dot(f52, f52) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f50, f50) < CB0[46].w) ? 0 : ((dot(f51, f51) < CB0[47].w) ? 1 : ((dot(f52, f52) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f54 = textureLod(ShadowAtlasTexture, f53.xy, 0.0);
    vec2 f55 = vec2(0.0);
    f55.x = CB0[51].z;
    vec2 f56 = f55;
    f56.y = CB0[51].w;
    float f57 = (2.0 * f53.z) - 1.0;
    float f58 = exp(CB0[51].z * f57);
    float f59 = -exp((-CB0[51].w) * f57);
    vec2 f60 = (f56 * CB0[52].y) * vec2(f58, f59);
    vec2 f61 = f60 * f60;
    float f62 = f54.x;
    float f63 = max(f54.y - (f62 * f62), f61.x);
    float f64 = f58 - f62;
    float f65 = f54.z;
    float f66 = max(f54.w - (f65 * f65), f61.y);
    float f67 = f59 - f65;
    vec3 f68 = f47 * f18;
    vec3 f69 = vec3(f48);
    vec3 f70 = mix(f47, f35, f69) * mix(vec3(1.0), f25, vec3(0.5));
    float f71 = (f24 * CB0[14].w) * (((f24 * CB0[52].x) > 0.0) ? mix(min((f58 <= f62) ? 1.0 : clamp(((f63 / (f63 + (f64 * f64))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f59 <= f65) ? 1.0 : clamp(((f66 / (f66 + (f67 * f67))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f49, clamp((length(f39 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f49);
    vec3 f72;
    vec3 f73;
    if (f71 > 0.0)
    {
        vec3 f74 = normalize(f27 + f23);
        float f75 = clamp(f71, 0.0, 1.0);
        float f76 = f28 * f28;
        float f77 = max(0.001000000047497451305389404296875, dot(f22, f74));
        float f78 = dot(f23, f74);
        float f79 = 1.0 - f78;
        float f80 = f79 * f79;
        float f81 = (f80 * f80) * f79;
        vec3 f82 = vec3(f81) + (vec3(0.039999999105930328369140625) * (1.0 - f81));
        float f83 = f76 * f76;
        float f84 = (((f77 * f83) - f77) * f77) + 1.0;
        f73 = f68 + (((vec3(1.0) - (f82 * f29)) * CB0[15].xyz) * f75);
        f72 = ((f82 * (((f83 + (f83 * f83)) / max(((f84 * f84) * ((f78 * 3.0) + 0.5)) * ((f77 * 0.75) + 0.25), 7.0000001869630068540573120117188e-05)) * f75)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f73 = f68;
        f72 = vec3(0.0);
    }
    float f85 = f38.x;
    float f86 = f38.y;
    vec3 f87 = ((vec3(0.039999999105930328369140625) * f85) + vec3(f86)) / vec3(f85 + f86);
    vec3 f88 = f22 * f22;
    bvec3 f89 = lessThan(f22, vec3(0.0));
    vec3 f90 = vec3(f89.x ? f88.x : vec3(0.0).x, f89.y ? f88.y : vec3(0.0).y, f89.z ? f88.z : vec3(0.0).z);
    vec3 f91 = f88 - f90;
    float f92 = f91.x;
    float f93 = f91.y;
    float f94 = f91.z;
    float f95 = f90.x;
    float f96 = f90.y;
    float f97 = f90.z;
    float f98 = 1.0 - f30;
    vec4 f99 = mix(vec4(mix(((f73 + (((vec3(1.0) - (f87 * f29)) * (((((((CB0[40].xyz * f92) + (CB0[42].xyz * f93)) + (CB0[44].xyz * f94)) + (CB0[41].xyz * f95)) + (CB0[43].xyz * f96)) + (CB0[45].xyz * f97)) + (((((((CB0[34].xyz * f92) + (CB0[36].xyz * f93)) + (CB0[38].xyz * f94)) + (CB0[35].xyz * f95)) + (CB0[37].xyz * f96)) + (CB0[39].xyz * f97)) * f48))) * f18)) + (CB0[32].xyz + (CB0[33].xyz * (f48 * (2.0 - CB0[14].w))))) * (f25 * f18), f70, vec3(VARYING7.w)) * f18, f18), vec4(f70, 1.0), vec4(((f98 * f98) * 0.800000011920928955078125) * clamp(f17, 0.0, 1.0))) + vec4(f72 + (((mix(f37, f35, f69) * f87) * f29) * ((CB0[14].w * CB0[14].w) * f18)), 0.0);
    float f100 = clamp(exp2((CB0[18].z * f26) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f101 = textureLod(PrefilteredEnvTexture, vec4(f31, 0.0).xyz, max(CB0[18].y, f100) * 5.0).xyz;
    bvec3 f102 = bvec3(!(CB0[18].w == 0.0));
    vec3 f103 = mix(vec3(f102.x ? CB0[19].xyz.x : f101.x, f102.y ? CB0[19].xyz.y : f101.y, f102.z ? CB0[19].xyz.z : f101.z), f99.xyz, vec3(f100));
    vec4 f104 = f99;
    f104.x = f103.x;
    vec4 f105 = f104;
    f105.y = f103.y;
    vec4 f106 = f105;
    f106.z = f103.z;
    vec4 f107 = f106;
    f107.w = 1.0 - ((1.0 - f99.w) * f100);
    vec3 f108 = sqrt(clamp(f107.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f109 = f107;
    f109.x = f108.x;
    vec4 f110 = f109;
    f110.y = f108.y;
    vec4 f111 = f110;
    f111.z = f108.z;
    _entryPointOutput = f111;
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
