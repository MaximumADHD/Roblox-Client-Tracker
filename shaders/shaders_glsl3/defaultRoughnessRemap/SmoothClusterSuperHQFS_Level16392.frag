#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
uniform vec4 CB0[53];
uniform vec4 CB8[24];
uniform vec4 CB5[74];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
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
in vec4 VARYING8;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = vec3(VARYING1.xy, VARYING2.x);
    vec4 f1 = texture(SpecularMapTexture, f0);
    vec3 f2 = vec3(VARYING1.zw, VARYING2.z);
    vec4 f3 = texture(SpecularMapTexture, f2);
    vec4 f4 = texture(SpecularMapTexture, VARYING3.xyz);
    vec3 f5;
    if (VARYING8.w < 1.0)
    {
        ivec3 f6 = ivec3(VARYING8.xyz + vec3(0.5));
        int f7 = f6.x;
        int f8 = f6.y;
        int f9 = f6.z;
        float f10 = dot(VARYING0.xyz, vec3(CB5[f7 * 1 + 0].z, CB5[f8 * 1 + 0].z, CB5[f9 * 1 + 0].z));
        float f11 = f1.w;
        float f12 = f3.w;
        float f13 = f4.w;
        vec3 f14 = vec3(f11, f12, f13);
        f14.x = clamp((f11 * CB5[f7 * 1 + 0].x) + CB5[f7 * 1 + 0].y, 0.0, 1.0);
        vec3 f15 = f14;
        f15.y = clamp((f12 * CB5[f8 * 1 + 0].x) + CB5[f8 * 1 + 0].y, 0.0, 1.0);
        vec3 f16 = f15;
        f16.z = clamp((f13 * CB5[f9 * 1 + 0].x) + CB5[f9 * 1 + 0].y, 0.0, 1.0);
        vec3 f17 = VARYING0.xyz * f16;
        float f18 = 1.0 / f10;
        float f19 = 0.5 * f10;
        float f20 = f17.x;
        float f21 = f17.y;
        float f22 = f17.z;
        float f23 = clamp(((f20 - max(f21, f22)) + f19) * f18, 0.0, 1.0);
        float f24 = clamp(((f21 - max(f20, f22)) + f19) * f18, 0.0, 1.0);
        float f25 = clamp(((f22 - max(f20, f21)) + f19) * f18, 0.0, 1.0);
        vec2 f26 = dFdx(VARYING1.xy);
        vec2 f27 = dFdy(VARYING1.xy);
        f5 = mix(vec3(f23, f24, f25) / vec3((f23 + f24) + f25), VARYING0.xyz, vec3(clamp((sqrt(max(dot(f26, f26), dot(f27, f27))) * 7.0) + clamp(VARYING8.w, 0.0, 1.0), 0.0, 1.0)));
    }
    else
    {
        f5 = VARYING0.xyz;
    }
    vec4 f28 = ((f1 * f5.x) + (f3 * f5.y)) + (f4 * f5.z);
    vec4 f29 = texture(AlbedoMapTexture, f0);
    vec4 f30 = texture(AlbedoMapTexture, f2);
    vec4 f31 = texture(AlbedoMapTexture, VARYING3.xyz);
    vec4 f32 = ((f29.yxzw * f5.x) + (f30.yxzw * f5.y)) + (f31.yxzw * f5.z);
    vec2 f33 = f32.yz - vec2(0.5);
    float f34 = f32.x;
    float f35 = f34 - f33.y;
    vec3 f36 = vec4(vec3(f35, f34, f35) + (vec3(f33.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 f37 = f36 * f36;
    vec3 f38 = CB0[7].xyz - VARYING5.xyz;
    float f39 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec4 f40 = texture(NormalMapTexture, f0);
    vec4 f41 = texture(NormalMapTexture, f2);
    vec4 f42 = texture(NormalMapTexture, VARYING3.xyz);
    float f43 = -VARYING6.x;
    vec2 f44 = (((f40 * f5.x) + (f41 * f5.y)) + (f42 * f5.z)).wy * 2.0;
    vec2 f45 = f44 - vec2(1.0);
    vec3 f46 = normalize(((vec3(f45, sqrt(clamp(1.0 + dot(vec2(1.0) - f44, f45), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f5, f5))) + vec3(0.0, 0.0, 1.0));
    vec3 f47 = vec3(dot(VARYING7, f5));
    vec3 f48 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f43), vec3(VARYING6.y, f43, 0.0), f47) * f46.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f47) * f46.y)) + (VARYING6 * f46.z)), 0.0).xyz;
    vec3 f49 = -CB0[11].xyz;
    float f50 = dot(f48, f49);
    vec3 f51 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f52 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f53 = VARYING4.yzx - (VARYING4.yzx * f52);
    vec4 f54 = texture(LightMapTexture, f53);
    vec4 f55 = texture(LightGridSkylightTexture, f53);
    vec4 f56 = vec4(clamp(f52, 0.0, 1.0));
    vec4 f57 = mix(f54, vec4(0.0), f56);
    vec4 f58 = mix(f55, vec4(1.0), f56);
    float f59 = f58.x;
    float f60 = f58.y;
    vec3 f61 = f51 - CB0[41].xyz;
    vec3 f62 = f51 - CB0[42].xyz;
    vec3 f63 = f51 - CB0[43].xyz;
    vec4 f64 = vec4(f51, 1.0) * mat4(CB8[((dot(f61, f61) < CB0[41].w) ? 0 : ((dot(f62, f62) < CB0[42].w) ? 1 : ((dot(f63, f63) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f61, f61) < CB0[41].w) ? 0 : ((dot(f62, f62) < CB0[42].w) ? 1 : ((dot(f63, f63) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f61, f61) < CB0[41].w) ? 0 : ((dot(f62, f62) < CB0[42].w) ? 1 : ((dot(f63, f63) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f61, f61) < CB0[41].w) ? 0 : ((dot(f62, f62) < CB0[42].w) ? 1 : ((dot(f63, f63) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f65 = textureLod(ShadowAtlasTexture, f64.xy, 0.0);
    vec2 f66 = vec2(0.0);
    f66.x = CB0[46].z;
    vec2 f67 = f66;
    f67.y = CB0[46].w;
    float f68 = (2.0 * f64.z) - 1.0;
    float f69 = exp(CB0[46].z * f68);
    float f70 = -exp((-CB0[46].w) * f68);
    vec2 f71 = (f67 * CB0[47].y) * vec2(f69, f70);
    vec2 f72 = f71 * f71;
    float f73 = f65.x;
    float f74 = max(f65.y - (f73 * f73), f72.x);
    float f75 = f69 - f73;
    float f76 = f65.z;
    float f77 = max(f65.w - (f76 * f76), f72.y);
    float f78 = f70 - f76;
    vec3 f79 = normalize(f38);
    float f80 = 0.08900000154972076416015625 + (f28.y * 0.9110000133514404296875);
    float f81 = f28.x;
    vec3 f82 = mix(vec3(0.039999999105930328369140625), f37, vec3(f81));
    float f83 = CB0[26].w * f39;
    vec3 f84 = reflect(-f79, f48);
    vec3 f85 = normalize(f49 + f79);
    float f86 = clamp((f50 * CB0[9].w) * (((f50 * CB0[47].x) > 0.0) ? mix(min((f69 <= f73) ? 1.0 : clamp(((f74 / (f74 + (f75 * f75))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f70 <= f76) ? 1.0 : clamp(((f77 / (f77 + (f78 * f78))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f60, clamp((length(f51 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f60), 0.0, 1.0);
    float f87 = f80 * f80;
    float f88 = max(0.001000000047497451305389404296875, dot(f48, f85));
    float f89 = dot(f49, f85);
    float f90 = 1.0 - f89;
    float f91 = f90 * f90;
    float f92 = (f91 * f91) * f90;
    vec3 f93 = vec3(f92) + (f82 * (1.0 - f92));
    float f94 = f87 * f87;
    float f95 = (((f88 * f94) - f88) * f88) + 1.0;
    float f96 = 1.0 - f81;
    float f97 = f83 * f96;
    vec3 f98 = vec3(f96);
    float f99 = f80 * 5.0;
    vec3 f100 = vec4(f84, f99).xyz;
    vec3 f101 = textureLod(PrefilteredEnvIndoorTexture, f100, f99).xyz;
    vec3 f102;
    if (CB0[27].w == 0.0)
    {
        f102 = f101;
    }
    else
    {
        f102 = mix(f101, textureLod(PrefilteredEnvBlendTargetTexture, f100, f99).xyz, vec3(CB0[27].w));
    }
    vec4 f103 = texture(PrecomputedBRDFTexture, vec2(f80, max(9.9999997473787516355514526367188e-05, dot(f48, f79))));
    float f104 = f103.x;
    float f105 = f103.y;
    vec3 f106 = ((f82 * f104) + vec3(f105)) / vec3(f104 + f105);
    vec3 f107 = f48 * f48;
    bvec3 f108 = lessThan(f48, vec3(0.0));
    vec3 f109 = vec3(f108.x ? f107.x : vec3(0.0).x, f108.y ? f107.y : vec3(0.0).y, f108.z ? f107.z : vec3(0.0).z);
    vec3 f110 = f107 - f109;
    float f111 = f110.x;
    float f112 = f110.y;
    float f113 = f110.z;
    float f114 = f109.x;
    float f115 = f109.y;
    float f116 = f109.z;
    vec3 f117 = ((((((((f98 - (f93 * f97)) * CB0[10].xyz) * f86) + ((f57.xyz * (f57.w * 120.0)) * 1.0)) + ((f98 - (f106 * f97)) * (((((((CB0[35].xyz * f111) + (CB0[37].xyz * f112)) + (CB0[39].xyz * f113)) + (CB0[36].xyz * f114)) + (CB0[38].xyz * f115)) + (CB0[40].xyz * f116)) + (((((((CB0[29].xyz * f111) + (CB0[31].xyz * f112)) + (CB0[33].xyz * f113)) + (CB0[30].xyz * f114)) + (CB0[32].xyz * f115)) + (CB0[34].xyz * f116)) * f59)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f59))) + vec3((f28.z * 2.0) * f39)) * f37) + ((((((f93 * (((f94 + (f94 * f94)) / (((f95 * f95) * ((f89 * 3.0) + 0.5)) * ((f88 * 0.75) + 0.25))) * f86)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * f39) * VARYING0.w) + ((mix(f102, textureLod(PrefilteredEnvTexture, f100, f99).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f84.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f59)) * f106) * f83));
    vec4 f118 = vec4(0.0);
    f118.x = f117.x;
    vec4 f119 = f118;
    f119.y = f117.y;
    vec4 f120 = f119;
    f120.z = f117.z;
    vec4 f121 = f120;
    f121.w = 1.0;
    float f122 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f123 = textureLod(PrefilteredEnvTexture, vec4(-f38, 0.0).xyz, max(CB0[13].y, f122) * 5.0).xyz;
    bvec3 f124 = bvec3(!(CB0[13].w == 0.0));
    vec3 f125 = mix(vec3(f124.x ? CB0[14].xyz.x : f123.x, f124.y ? CB0[14].xyz.y : f123.y, f124.z ? CB0[14].xyz.z : f123.z), f121.xyz, vec3(f122));
    vec4 f126 = f121;
    f126.x = f125.x;
    vec4 f127 = f126;
    f127.y = f125.y;
    vec4 f128 = f127;
    f128.z = f125.z;
    vec3 f129 = sqrt(clamp(f128.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f130 = f128;
    f130.x = f129.x;
    vec4 f131 = f130;
    f131.y = f129.y;
    vec4 f132 = f131;
    f132.z = f129.z;
    _entryPointOutput = f132;
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
//$$NormalMapTexture=s4
