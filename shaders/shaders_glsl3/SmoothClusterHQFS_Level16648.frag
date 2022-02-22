#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
uniform vec4 CB0[53];
uniform vec4 CB8[24];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2DArray SpecularMapTexture;
uniform sampler2DArray AlbedoMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec3 VARYING4;
in vec4 VARYING5;
in vec3 VARYING6;
in vec4 VARYING8;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = vec3(VARYING1.xy, VARYING2.x);
    vec4 f1 = texture(SpecularMapTexture, f0);
    vec3 f2 = vec3(VARYING1.zw, VARYING2.z);
    vec4 f3 = texture(SpecularMapTexture, f2);
    vec4 f4 = texture(SpecularMapTexture, VARYING3.xyz);
    vec4 f5 = ((f1 * VARYING0.x) + (f3 * VARYING0.y)) + (f4 * VARYING0.z);
    vec4 f6 = texture(AlbedoMapTexture, f0);
    vec4 f7 = texture(AlbedoMapTexture, f2);
    vec4 f8 = texture(AlbedoMapTexture, VARYING3.xyz);
    vec4 f9 = ((f6.yxzw * VARYING0.x) + (f7.yxzw * VARYING0.y)) + (f8.yxzw * VARYING0.z);
    vec2 f10 = f9.yz - vec2(0.5);
    float f11 = f10.x;
    vec4 f12 = f9;
    f12.y = f11;
    float f13 = f10.y;
    vec4 f14 = f12;
    f14.z = f13;
    vec4 f15;
    if (VARYING8.w < 1.0)
    {
        vec3 f16 = vec3(0.0);
        f16.x = VARYING8.x * f9.x;
        vec3 f17 = f16;
        f17.y = (VARYING8.y * f11) - (VARYING8.z * f13);
        vec3 f18 = f17;
        f18.z = (VARYING8.z * f11) + (VARYING8.y * f13);
        vec3 f19 = mix(f18, f14.xyz, vec3(VARYING8.w));
        vec4 f20 = f14;
        f20.x = f19.x;
        vec4 f21 = f20;
        f21.y = f19.y;
        vec4 f22 = f21;
        f22.z = f19.z;
        f15 = f22;
    }
    else
    {
        f15 = f14;
    }
    float f23 = f15.x - f15.z;
    vec3 f24 = vec4(vec3(f23, f15.x, f23) + (vec3(f15.yzy) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 f25 = mix(f24, f24 * VARYING8.xyz, vec3(VARYING8.w));
    vec4 f26 = vec4(0.0);
    f26.x = f25.x;
    vec4 f27 = f26;
    f27.y = f25.y;
    vec4 f28 = f27;
    f28.z = f25.z;
    vec3 f29 = f28.xyz * f28.xyz;
    vec3 f30 = CB0[7].xyz - VARYING5.xyz;
    float f31 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec3 f32 = normalize(VARYING6);
    vec3 f33 = -CB0[11].xyz;
    float f34 = dot(f32, f33);
    vec3 f35 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f36 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f37 = VARYING4.yzx - (VARYING4.yzx * f36);
    vec4 f38 = texture(LightMapTexture, f37);
    vec4 f39 = texture(LightGridSkylightTexture, f37);
    vec4 f40 = vec4(clamp(f36, 0.0, 1.0));
    vec4 f41 = mix(f38, vec4(0.0), f40);
    vec4 f42 = mix(f39, vec4(1.0), f40);
    float f43 = f42.x;
    float f44 = f42.y;
    vec3 f45 = f35 - CB0[41].xyz;
    vec3 f46 = f35 - CB0[42].xyz;
    vec3 f47 = f35 - CB0[43].xyz;
    vec4 f48 = vec4(f35, 1.0) * mat4(CB8[((dot(f45, f45) < CB0[41].w) ? 0 : ((dot(f46, f46) < CB0[42].w) ? 1 : ((dot(f47, f47) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f45, f45) < CB0[41].w) ? 0 : ((dot(f46, f46) < CB0[42].w) ? 1 : ((dot(f47, f47) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f45, f45) < CB0[41].w) ? 0 : ((dot(f46, f46) < CB0[42].w) ? 1 : ((dot(f47, f47) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f45, f45) < CB0[41].w) ? 0 : ((dot(f46, f46) < CB0[42].w) ? 1 : ((dot(f47, f47) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f49 = textureLod(ShadowAtlasTexture, f48.xy, 0.0);
    vec2 f50 = vec2(0.0);
    f50.x = CB0[46].z;
    vec2 f51 = f50;
    f51.y = CB0[46].w;
    float f52 = (2.0 * f48.z) - 1.0;
    float f53 = exp(CB0[46].z * f52);
    float f54 = -exp((-CB0[46].w) * f52);
    vec2 f55 = (f51 * CB0[47].y) * vec2(f53, f54);
    vec2 f56 = f55 * f55;
    float f57 = f49.x;
    float f58 = max(f49.y - (f57 * f57), f56.x);
    float f59 = f53 - f57;
    float f60 = f49.z;
    float f61 = max(f49.w - (f60 * f60), f56.y);
    float f62 = f54 - f60;
    vec3 f63 = normalize(f30);
    float f64 = f5.y;
    float f65 = f5.x;
    vec3 f66 = mix(vec3(0.039999999105930328369140625), f29, vec3(f65));
    float f67 = CB0[26].w * f31;
    vec3 f68 = reflect(-f63, f32);
    vec3 f69 = normalize(f33 + f63);
    float f70 = clamp((f34 * CB0[9].w) * (((f34 * CB0[47].x) > 0.0) ? mix(min((f53 <= f57) ? 1.0 : clamp(((f58 / (f58 + (f59 * f59))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f54 <= f60) ? 1.0 : clamp(((f61 / (f61 + (f62 * f62))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f44, clamp((length(f35 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f44), 0.0, 1.0);
    float f71 = f64 * f64;
    float f72 = max(0.001000000047497451305389404296875, dot(f32, f69));
    float f73 = dot(f33, f69);
    float f74 = 1.0 - f73;
    float f75 = f74 * f74;
    float f76 = (f75 * f75) * f74;
    vec3 f77 = vec3(f76) + (f66 * (1.0 - f76));
    float f78 = f71 * f71;
    float f79 = (((f72 * f78) - f72) * f72) + 1.0;
    float f80 = 1.0 - f65;
    float f81 = f67 * f80;
    vec3 f82 = vec3(f80);
    float f83 = f64 * 5.0;
    vec3 f84 = vec4(f68, f83).xyz;
    vec3 f85 = textureLod(PrefilteredEnvIndoorTexture, f84, f83).xyz;
    vec3 f86;
    if (CB0[27].w == 0.0)
    {
        f86 = f85;
    }
    else
    {
        f86 = mix(f85, textureLod(PrefilteredEnvBlendTargetTexture, f84, f83).xyz, vec3(CB0[27].w));
    }
    vec4 f87 = texture(PrecomputedBRDFTexture, vec2(f64, max(9.9999997473787516355514526367188e-05, dot(f32, f63))));
    float f88 = f87.x;
    float f89 = f87.y;
    vec3 f90 = ((f66 * f88) + vec3(f89)) / vec3(f88 + f89);
    vec3 f91 = f32 * f32;
    bvec3 f92 = lessThan(f32, vec3(0.0));
    vec3 f93 = vec3(f92.x ? f91.x : vec3(0.0).x, f92.y ? f91.y : vec3(0.0).y, f92.z ? f91.z : vec3(0.0).z);
    vec3 f94 = f91 - f93;
    float f95 = f94.x;
    float f96 = f94.y;
    float f97 = f94.z;
    float f98 = f93.x;
    float f99 = f93.y;
    float f100 = f93.z;
    vec3 f101 = ((((((((f82 - (f77 * f81)) * CB0[10].xyz) * f70) + ((f41.xyz * (f41.w * 120.0)) * 1.0)) + ((f82 - (f90 * f81)) * (((((((CB0[35].xyz * f95) + (CB0[37].xyz * f96)) + (CB0[39].xyz * f97)) + (CB0[36].xyz * f98)) + (CB0[38].xyz * f99)) + (CB0[40].xyz * f100)) + (((((((CB0[29].xyz * f95) + (CB0[31].xyz * f96)) + (CB0[33].xyz * f97)) + (CB0[30].xyz * f98)) + (CB0[32].xyz * f99)) + (CB0[34].xyz * f100)) * f43)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f43))) + vec3((f5.z * 2.0) * f31)) * f29) + ((((((f77 * (((f78 + (f78 * f78)) / (((f79 * f79) * ((f73 * 3.0) + 0.5)) * ((f72 * 0.75) + 0.25))) * f70)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * f31) * VARYING0.w) + ((mix(f86, textureLod(PrefilteredEnvTexture, f84, f83).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f68.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f43)) * f90) * f67));
    vec4 f102 = vec4(0.0);
    f102.x = f101.x;
    vec4 f103 = f102;
    f103.y = f101.y;
    vec4 f104 = f103;
    f104.z = f101.z;
    vec4 f105 = f104;
    f105.w = 1.0;
    float f106 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f107 = textureLod(PrefilteredEnvTexture, vec4(-f30, 0.0).xyz, max(CB0[13].y, f106) * 5.0).xyz;
    bvec3 f108 = bvec3(!(CB0[13].w == 0.0));
    vec3 f109 = mix(vec3(f108.x ? CB0[14].xyz.x : f107.x, f108.y ? CB0[14].xyz.y : f107.y, f108.z ? CB0[14].xyz.z : f107.z), f105.xyz, vec3(f106));
    vec4 f110 = f105;
    f110.x = f109.x;
    vec4 f111 = f110;
    f111.y = f109.y;
    vec4 f112 = f111;
    f112.z = f109.z;
    vec3 f113 = sqrt(clamp(f112.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f114 = f112;
    f114.x = f113.x;
    vec4 f115 = f114;
    f115.y = f113.y;
    vec4 f116 = f115;
    f116.z = f113.z;
    _entryPointOutput = f116;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
