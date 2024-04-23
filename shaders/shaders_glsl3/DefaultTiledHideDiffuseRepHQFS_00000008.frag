#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowTransformGPU.h>
#include <MaterialParams.h>
uniform vec4 CB0[57];
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
    vec4 f2 = mix(texture(DiffuseMapTexture, f1 * CB2[1].y), texture(DiffuseMapTexture, f1), vec4(clamp((f0.x * CB2[3].x) - (CB2[2].x * CB2[3].x), 0.0, 1.0)));
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
    vec2 f11 = f10.xy * f0.y;
    float f12 = f11.x;
    vec4 f13 = texture(SpecularMapTexture, f1);
    vec4 f14 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f2.w, CB2[3].w))) * f2.xyz) * (1.0 + (f12 * 0.20000000298023223876953125)), VARYING2.w);
    float f15 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f16 = VARYING6.xyz * f15;
    vec3 f17 = VARYING5.xyz * f15;
    vec3 f18 = normalize(((f16 * f12) + (cross(f17, f16) * f11.y)) + (f17 * f6));
    vec3 f19 = -CB0[16].xyz;
    float f20 = dot(f18, f19);
    vec3 f21 = f14.xyz;
    vec3 f22 = f21 * f21;
    vec4 f23 = f14;
    f23.x = f22.x;
    vec4 f24 = f23;
    f24.y = f22.y;
    vec4 f25 = f24;
    f25.z = f22.z;
    float f26 = length(VARYING4.xyz);
    vec3 f27 = VARYING4.xyz / vec3(f26);
    float f28 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f29 = 0.08900000154972076416015625 + (f13.y * 0.9110000133514404296875);
    vec3 f30 = -f27;
    vec3 f31 = reflect(f30, f18);
    float f32 = f13.x * f28;
    vec3 f33 = mix(vec3(0.039999999105930328369140625), f25.xyz, vec3(f32));
    vec3 f34 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f35 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f36 = VARYING3.yzx - (VARYING3.yzx * f35);
    vec4 f37 = texture(LightMapTexture, f36);
    vec4 f38 = texture(LightGridSkylightTexture, f36);
    vec4 f39 = vec4(clamp(f35, 0.0, 1.0));
    vec4 f40 = mix(f37, vec4(0.0), f39);
    vec4 f41 = mix(f38, vec4(1.0), f39);
    vec3 f42 = f40.xyz * (f40.w * 120.0);
    float f43 = f41.x;
    float f44 = f41.y;
    vec3 f45 = f34 - CB0[46].xyz;
    vec3 f46 = f34 - CB0[47].xyz;
    vec3 f47 = f34 - CB0[48].xyz;
    vec4 f48 = vec4(f34, 1.0) * mat4(CB8[((dot(f45, f45) < CB0[46].w) ? 0 : ((dot(f46, f46) < CB0[47].w) ? 1 : ((dot(f47, f47) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f45, f45) < CB0[46].w) ? 0 : ((dot(f46, f46) < CB0[47].w) ? 1 : ((dot(f47, f47) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f45, f45) < CB0[46].w) ? 0 : ((dot(f46, f46) < CB0[47].w) ? 1 : ((dot(f47, f47) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f45, f45) < CB0[46].w) ? 0 : ((dot(f46, f46) < CB0[47].w) ? 1 : ((dot(f47, f47) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f49 = textureLod(ShadowAtlasTexture, f48.xy, 0.0);
    vec2 f50 = vec2(0.0);
    f50.x = CB0[51].z;
    vec2 f51 = f50;
    f51.y = CB0[51].w;
    float f52 = (2.0 * f48.z) - 1.0;
    float f53 = exp(CB0[51].z * f52);
    float f54 = -exp((-CB0[51].w) * f52);
    vec2 f55 = (f51 * CB0[52].y) * vec2(f53, f54);
    vec2 f56 = f55 * f55;
    float f57 = f49.x;
    float f58 = max(f49.y - (f57 * f57), f56.x);
    float f59 = f53 - f57;
    float f60 = f49.z;
    float f61 = max(f49.w - (f60 * f60), f56.y);
    float f62 = f54 - f60;
    float f63 = (f20 * CB0[14].w) * (((f20 * CB0[52].x) > 0.0) ? mix(min((f53 <= f57) ? 1.0 : clamp(((f58 / (f58 + (f59 * f59))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f54 <= f60) ? 1.0 : clamp(((f61 / (f61 + (f62 * f62))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f44, clamp((length(f34 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f44);
    vec3 f64;
    vec3 f65;
    if (f63 > 0.0)
    {
        vec3 f66 = normalize(f27 + f19);
        float f67 = clamp(f63, 0.0, 1.0);
        float f68 = f29 * f29;
        float f69 = max(0.001000000047497451305389404296875, dot(f18, f66));
        float f70 = dot(f19, f66);
        float f71 = 1.0 - f70;
        float f72 = f71 * f71;
        float f73 = (f72 * f72) * f71;
        vec3 f74 = vec3(f73) + (f33 * (1.0 - f73));
        float f75 = f68 * f68;
        float f76 = (((f69 * f75) - f69) * f69) + 1.0;
        float f77 = 1.0 - f32;
        f65 = f42 + (((vec3(f77) - (f74 * (f28 * f77))) * CB0[15].xyz) * f67);
        f64 = ((f74 * (((f75 + (f75 * f75)) / (((f76 * f76) * ((f70 * 3.0) + 0.5)) * ((f69 * 0.75) + 0.25))) * f67)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f65 = f42;
        f64 = vec3(0.0);
    }
    float f78 = f29 * 5.0;
    vec3 f79 = vec4(f31, f78).xyz;
    vec3 f80 = textureLod(PrefilteredEnvIndoorTexture, f79, f78).xyz;
    vec3 f81;
    if (CB0[32].w == 0.0)
    {
        f81 = f80;
    }
    else
    {
        f81 = mix(f80, textureLod(PrefilteredEnvBlendTargetTexture, f79, f78).xyz, vec3(CB0[32].w));
    }
    vec4 f82 = texture(PrecomputedBRDFTexture, vec2(f29, max(9.9999997473787516355514526367188e-05, dot(f18, f27))));
    float f83 = f82.x;
    float f84 = f82.y;
    vec3 f85 = ((f33 * f83) + vec3(f84)) / vec3(f83 + f84);
    float f86 = 1.0 - f32;
    vec3 f87 = f18 * f18;
    bvec3 f88 = lessThan(f18, vec3(0.0));
    vec3 f89 = vec3(f88.x ? f87.x : vec3(0.0).x, f88.y ? f87.y : vec3(0.0).y, f88.z ? f87.z : vec3(0.0).z);
    vec3 f90 = f87 - f89;
    float f91 = f90.x;
    float f92 = f90.y;
    float f93 = f90.z;
    float f94 = f89.x;
    float f95 = f89.y;
    float f96 = f89.z;
    vec3 f97 = (((f65 + (((vec3(f86) - (f85 * (f28 * f86))) * (((((((CB0[40].xyz * f91) + (CB0[42].xyz * f92)) + (CB0[44].xyz * f93)) + (CB0[41].xyz * f94)) + (CB0[43].xyz * f95)) + (CB0[45].xyz * f96)) + (((((((CB0[34].xyz * f91) + (CB0[36].xyz * f92)) + (CB0[38].xyz * f93)) + (CB0[35].xyz * f94)) + (CB0[37].xyz * f95)) + (CB0[39].xyz * f96)) * f43))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f43 * (2.0 - CB0[14].w)))) * 1.0)) * f25.xyz) + (f64 + ((mix(f81, textureLod(PrefilteredEnvTexture, f79, f78).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f31.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f43)) * f85) * f28));
    vec4 f98 = vec4(0.0);
    f98.x = f97.x;
    vec4 f99 = f98;
    f99.y = f97.y;
    vec4 f100 = f99;
    f100.z = f97.z;
    vec4 f101 = f100;
    f101.w = VARYING2.w;
    float f102 = clamp(exp2((CB0[18].z * f26) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f103 = textureLod(PrefilteredEnvTexture, vec4(f30, 0.0).xyz, max(CB0[18].y, f102) * 5.0).xyz;
    bvec3 f104 = bvec3(!(CB0[18].w == 0.0));
    vec3 f105 = mix(vec3(f104.x ? CB0[19].xyz.x : f103.x, f104.y ? CB0[19].xyz.y : f103.y, f104.z ? CB0[19].xyz.z : f103.z), f101.xyz, vec3(f102));
    vec4 f106 = f101;
    f106.x = f105.x;
    vec4 f107 = f106;
    f107.y = f105.y;
    vec4 f108 = f107;
    f108.z = f105.z;
    vec3 f109 = sqrt(clamp(f108.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f110 = f108;
    f110.x = f109.x;
    vec4 f111 = f110;
    f111.y = f109.y;
    vec4 f112 = f111;
    f112.z = f109.z;
    vec4 f113 = f112;
    f113.w = VARYING2.w;
    _entryPointOutput = f113;
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
