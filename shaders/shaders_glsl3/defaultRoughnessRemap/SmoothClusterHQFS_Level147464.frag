#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
uniform vec4 CB0[53];
uniform vec4 CB8[24];
uniform vec4 CB4[63];
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
    int f9 = int(VARYING8.x + 0.5);
    int f10 = int(VARYING8.y + 0.5);
    int f11 = int(VARYING8.z + 0.5);
    vec3 f12;
    if (!(CB4[f9 * 1 + 0].w == 0.0))
    {
        f12 = (mix(vec3(1.0), CB4[f9 * 1 + 0].xyz, vec3(f6.w)) * f6.xyz) * VARYING0.x;
    }
    else
    {
        vec2 f13 = f6.xz - vec2(0.5);
        float f14 = f13.x;
        vec4 f15 = f6.yxzw;
        f15.y = f14;
        float f16 = f13.y;
        vec4 f17 = f15;
        f17.z = f16;
        vec3 f18 = vec3(0.0);
        f18.x = CB4[f9 * 1 + 0].x * f6.y;
        vec3 f19 = f18;
        f19.y = (CB4[f9 * 1 + 0].y * f14) - (CB4[f9 * 1 + 0].z * f16);
        vec3 f20 = f19;
        f20.z = (CB4[f9 * 1 + 0].z * f14) + (CB4[f9 * 1 + 0].y * f16);
        vec3 f21 = mix(f20, f17.xyz, vec3(CB4[f9 * 1 + 0].w));
        float f22 = f21.x;
        float f23 = f22 - f21.z;
        f12 = (vec3(f23, f22, f23) + (vec3(f21.yzy) * vec3(1.0, 1.0, -1.0))) * VARYING0.x;
    }
    vec3 f24;
    if (!(CB4[f10 * 1 + 0].w == 0.0))
    {
        f24 = f12 + ((mix(vec3(1.0), CB4[f10 * 1 + 0].xyz, vec3(f7.w)) * f7.xyz) * VARYING0.y);
    }
    else
    {
        vec2 f25 = f7.xz - vec2(0.5);
        float f26 = f25.x;
        vec4 f27 = f7.yxzw;
        f27.y = f26;
        float f28 = f25.y;
        vec4 f29 = f27;
        f29.z = f28;
        vec3 f30 = vec3(0.0);
        f30.x = CB4[f10 * 1 + 0].x * f7.y;
        vec3 f31 = f30;
        f31.y = (CB4[f10 * 1 + 0].y * f26) - (CB4[f10 * 1 + 0].z * f28);
        vec3 f32 = f31;
        f32.z = (CB4[f10 * 1 + 0].z * f26) + (CB4[f10 * 1 + 0].y * f28);
        vec3 f33 = mix(f32, f29.xyz, vec3(CB4[f10 * 1 + 0].w));
        float f34 = f33.x;
        float f35 = f34 - f33.z;
        f24 = f12 + ((vec3(f35, f34, f35) + (vec3(f33.yzy) * vec3(1.0, 1.0, -1.0))) * VARYING0.y);
    }
    vec3 f36;
    if (!(CB4[f11 * 1 + 0].w == 0.0))
    {
        f36 = f24 + ((mix(vec3(1.0), CB4[f11 * 1 + 0].xyz, vec3(f8.w)) * f8.xyz) * VARYING0.z);
    }
    else
    {
        vec2 f37 = f8.xz - vec2(0.5);
        float f38 = f37.x;
        vec4 f39 = f8.yxzw;
        f39.y = f38;
        float f40 = f37.y;
        vec4 f41 = f39;
        f41.z = f40;
        vec3 f42 = vec3(0.0);
        f42.x = CB4[f11 * 1 + 0].x * f8.y;
        vec3 f43 = f42;
        f43.y = (CB4[f11 * 1 + 0].y * f38) - (CB4[f11 * 1 + 0].z * f40);
        vec3 f44 = f43;
        f44.z = (CB4[f11 * 1 + 0].z * f38) + (CB4[f11 * 1 + 0].y * f40);
        vec3 f45 = mix(f44, f41.xyz, vec3(CB4[f11 * 1 + 0].w));
        float f46 = f45.x;
        float f47 = f46 - f45.z;
        f36 = f24 + ((vec3(f47, f46, f47) + (vec3(f45.yzy) * vec3(1.0, 1.0, -1.0))) * VARYING0.z);
    }
    vec3 f48 = f36 * f36;
    vec3 f49 = CB0[7].xyz - VARYING5.xyz;
    float f50 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec3 f51 = normalize(VARYING6);
    vec3 f52 = -CB0[11].xyz;
    float f53 = dot(f51, f52);
    vec3 f54 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f55 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f56 = VARYING4.yzx - (VARYING4.yzx * f55);
    vec4 f57 = texture(LightMapTexture, f56);
    vec4 f58 = texture(LightGridSkylightTexture, f56);
    vec4 f59 = vec4(clamp(f55, 0.0, 1.0));
    vec4 f60 = mix(f57, vec4(0.0), f59);
    vec4 f61 = mix(f58, vec4(1.0), f59);
    float f62 = f61.x;
    float f63 = f61.y;
    vec3 f64 = f54 - CB0[41].xyz;
    vec3 f65 = f54 - CB0[42].xyz;
    vec3 f66 = f54 - CB0[43].xyz;
    vec4 f67 = vec4(f54, 1.0) * mat4(CB8[((dot(f64, f64) < CB0[41].w) ? 0 : ((dot(f65, f65) < CB0[42].w) ? 1 : ((dot(f66, f66) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f64, f64) < CB0[41].w) ? 0 : ((dot(f65, f65) < CB0[42].w) ? 1 : ((dot(f66, f66) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f64, f64) < CB0[41].w) ? 0 : ((dot(f65, f65) < CB0[42].w) ? 1 : ((dot(f66, f66) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f64, f64) < CB0[41].w) ? 0 : ((dot(f65, f65) < CB0[42].w) ? 1 : ((dot(f66, f66) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f68 = textureLod(ShadowAtlasTexture, f67.xy, 0.0);
    vec2 f69 = vec2(0.0);
    f69.x = CB0[46].z;
    vec2 f70 = f69;
    f70.y = CB0[46].w;
    float f71 = (2.0 * f67.z) - 1.0;
    float f72 = exp(CB0[46].z * f71);
    float f73 = -exp((-CB0[46].w) * f71);
    vec2 f74 = (f70 * CB0[47].y) * vec2(f72, f73);
    vec2 f75 = f74 * f74;
    float f76 = f68.x;
    float f77 = max(f68.y - (f76 * f76), f75.x);
    float f78 = f72 - f76;
    float f79 = f68.z;
    float f80 = max(f68.w - (f79 * f79), f75.y);
    float f81 = f73 - f79;
    vec3 f82 = normalize(f49);
    float f83 = 0.08900000154972076416015625 + (f5.y * 0.9110000133514404296875);
    float f84 = f5.x;
    vec3 f85 = mix(vec3(0.039999999105930328369140625), f48, vec3(f84));
    float f86 = CB0[26].w * f50;
    vec3 f87 = reflect(-f82, f51);
    vec3 f88 = normalize(f82 - CB0[11].xyz);
    float f89 = clamp((f53 * CB0[9].w) * (((f53 * CB0[47].x) > 0.0) ? mix(min((f72 <= f76) ? 1.0 : clamp(((f77 / (f77 + (f78 * f78))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f73 <= f79) ? 1.0 : clamp(((f80 / (f80 + (f81 * f81))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f63, clamp((length(f54 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f63), 0.0, 1.0);
    float f90 = f83 * f83;
    float f91 = max(0.001000000047497451305389404296875, dot(f51, f88));
    float f92 = dot(f52, f88);
    float f93 = 1.0 - f92;
    float f94 = f93 * f93;
    float f95 = (f94 * f94) * f93;
    vec3 f96 = vec3(f95) + (f85 * (1.0 - f95));
    float f97 = f90 * f90;
    float f98 = (((f91 * f97) - f91) * f91) + 1.0;
    float f99 = 1.0 - f84;
    float f100 = f86 * f99;
    vec3 f101 = vec3(f99);
    float f102 = f83 * 5.0;
    vec3 f103 = vec4(f87, f102).xyz;
    vec3 f104 = textureLod(PrefilteredEnvIndoorTexture, f103, f102).xyz;
    vec3 f105;
    if (CB0[27].w == 0.0)
    {
        f105 = f104;
    }
    else
    {
        f105 = mix(f104, textureLod(PrefilteredEnvBlendTargetTexture, f103, f102).xyz, vec3(CB0[27].w));
    }
    vec4 f106 = texture(PrecomputedBRDFTexture, vec2(f83, max(9.9999997473787516355514526367188e-05, dot(f51, f82))));
    float f107 = f106.x;
    float f108 = f106.y;
    vec3 f109 = ((f85 * f107) + vec3(f108)) / vec3(f107 + f108);
    vec3 f110 = f51 * f51;
    bvec3 f111 = lessThan(f51, vec3(0.0));
    vec3 f112 = vec3(f111.x ? f110.x : vec3(0.0).x, f111.y ? f110.y : vec3(0.0).y, f111.z ? f110.z : vec3(0.0).z);
    vec3 f113 = f110 - f112;
    float f114 = f113.x;
    float f115 = f113.y;
    float f116 = f113.z;
    float f117 = f112.x;
    float f118 = f112.y;
    float f119 = f112.z;
    vec3 f120 = ((((((((f101 - (f96 * f100)) * CB0[10].xyz) * f89) + ((f60.xyz * (f60.w * 120.0)) * 1.0)) + ((f101 - (f109 * f100)) * (((((((CB0[35].xyz * f114) + (CB0[37].xyz * f115)) + (CB0[39].xyz * f116)) + (CB0[36].xyz * f117)) + (CB0[38].xyz * f118)) + (CB0[40].xyz * f119)) + (((((((CB0[29].xyz * f114) + (CB0[31].xyz * f115)) + (CB0[33].xyz * f116)) + (CB0[30].xyz * f117)) + (CB0[32].xyz * f118)) + (CB0[34].xyz * f119)) * f62)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f62))) + vec3((f5.z * 2.0) * f50)) * f48) + ((((((f96 * (((f97 + (f97 * f97)) / (((f98 * f98) * ((f92 * 3.0) + 0.5)) * ((f91 * 0.75) + 0.25))) * f89)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * f50) * VARYING0.w) + ((mix(f105, textureLod(PrefilteredEnvTexture, f103, f102).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f87.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f62)) * f109) * f86));
    vec4 f121 = vec4(0.0);
    f121.x = f120.x;
    vec4 f122 = f121;
    f122.y = f120.y;
    vec4 f123 = f122;
    f123.z = f120.z;
    vec4 f124 = f123;
    f124.w = 1.0;
    float f125 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f126 = textureLod(PrefilteredEnvTexture, vec4(-f49, 0.0).xyz, max(CB0[13].y, f125) * 5.0).xyz;
    bvec3 f127 = bvec3(!(CB0[13].w == 0.0));
    vec3 f128 = mix(vec3(f127.x ? CB0[14].xyz.x : f126.x, f127.y ? CB0[14].xyz.y : f126.y, f127.z ? CB0[14].xyz.z : f126.z), f124.xyz, vec3(f125));
    vec4 f129 = f124;
    f129.x = f128.x;
    vec4 f130 = f129;
    f130.y = f128.y;
    vec4 f131 = f130;
    f131.z = f128.z;
    vec3 f132 = sqrt(clamp(f131.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f133 = f131;
    f133.x = f132.x;
    vec4 f134 = f133;
    f134.y = f132.y;
    vec4 f135 = f134;
    f135.z = f132.z;
    _entryPointOutput = f135;
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
