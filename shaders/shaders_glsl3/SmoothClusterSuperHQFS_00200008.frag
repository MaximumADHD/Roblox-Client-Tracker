#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
uniform vec4 CB0[58];
uniform vec4 CB8[24];
uniform vec4 CB5[63];
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
    vec3 f37 = CB0[11].xyz - VARYING5.xyz;
    float f38 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec4 f39 = texture(NormalMapTexture, f0);
    vec4 f40 = texture(NormalMapTexture, f2);
    vec4 f41 = texture(NormalMapTexture, VARYING3.xyz);
    vec2 f42 = (((f39 * f5.x) + (f40 * f5.y)) + (f41 * f5.z)).wy * 2.0;
    vec2 f43 = f42 - vec2(1.0);
    vec3 f44 = normalize(((vec3(f43, sqrt(clamp(1.0 + dot(vec2(1.0) - f42, f43), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f5, f5))) + vec3(0.0, 0.0, 1.0));
    vec3 f45 = vec3(dot(VARYING7, f5));
    vec3 f46 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f45) * f44.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f45) * f44.y)) + (VARYING6 * f44.z)), 0.0).xyz;
    vec3 f47 = -CB0[16].xyz;
    float f48 = dot(f46, f47);
    vec3 f49 = normalize(f37);
    float f50 = 0.08900000154972076416015625 + (f28.y * 0.9110000133514404296875);
    float f51 = CB0[31].w * f38;
    vec3 f52 = reflect(-f49, f46);
    vec3 f53 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f54 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f55 = VARYING4.yzx - (VARYING4.yzx * f54);
    vec4 f56 = texture(LightMapTexture, f55);
    vec4 f57 = texture(LightGridSkylightTexture, f55);
    vec4 f58 = vec4(clamp(f54, 0.0, 1.0));
    vec4 f59 = mix(f56, vec4(0.0), f58);
    vec4 f60 = mix(f57, vec4(1.0), f58);
    float f61 = f60.x;
    float f62 = f60.y;
    vec3 f63 = f53 - CB0[46].xyz;
    vec3 f64 = f53 - CB0[47].xyz;
    vec3 f65 = f53 - CB0[48].xyz;
    vec4 f66 = vec4(f53, 1.0) * mat4(CB8[((dot(f63, f63) < CB0[46].w) ? 0 : ((dot(f64, f64) < CB0[47].w) ? 1 : ((dot(f65, f65) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f63, f63) < CB0[46].w) ? 0 : ((dot(f64, f64) < CB0[47].w) ? 1 : ((dot(f65, f65) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f63, f63) < CB0[46].w) ? 0 : ((dot(f64, f64) < CB0[47].w) ? 1 : ((dot(f65, f65) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f63, f63) < CB0[46].w) ? 0 : ((dot(f64, f64) < CB0[47].w) ? 1 : ((dot(f65, f65) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f67 = textureLod(ShadowAtlasTexture, f66.xy, 0.0);
    vec2 f68 = vec2(0.0);
    f68.x = CB0[51].z;
    vec2 f69 = f68;
    f69.y = CB0[51].w;
    float f70 = (2.0 * f66.z) - 1.0;
    float f71 = exp(CB0[51].z * f70);
    float f72 = -exp((-CB0[51].w) * f70);
    vec2 f73 = (f69 * CB0[52].y) * vec2(f71, f72);
    vec2 f74 = f73 * f73;
    float f75 = f67.x;
    float f76 = max(f67.y - (f75 * f75), f74.x);
    float f77 = f71 - f75;
    float f78 = f67.z;
    float f79 = max(f67.w - (f78 * f78), f74.y);
    float f80 = f72 - f78;
    vec3 f81 = normalize(f49 - CB0[16].xyz);
    float f82 = clamp((f48 * CB0[14].w) * (((f48 * CB0[52].x) > 0.0) ? mix(min((f71 <= f75) ? 1.0 : clamp(((f76 / (f76 + (f77 * f77))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f72 <= f78) ? 1.0 : clamp(((f79 / (f79 + (f80 * f80))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f62, clamp((length(f53 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f62), 0.0, 1.0);
    float f83 = f50 * f50;
    float f84 = max(0.001000000047497451305389404296875, dot(f46, f81));
    float f85 = dot(f47, f81);
    float f86 = 1.0 - f85;
    float f87 = f86 * f86;
    float f88 = (f87 * f87) * f86;
    vec3 f89 = vec3(f88) + (vec3(0.039999999105930328369140625) * (1.0 - f88));
    float f90 = f83 * f83;
    float f91 = (((f84 * f90) - f84) * f84) + 1.0;
    float f92 = f50 * 5.0;
    vec3 f93 = vec4(f52, f92).xyz;
    vec3 f94 = textureLod(PrefilteredEnvIndoorTexture, f93, f92).xyz;
    vec3 f95;
    if (CB0[32].w == 0.0)
    {
        f95 = f94;
    }
    else
    {
        f95 = mix(f94, textureLod(PrefilteredEnvBlendTargetTexture, f93, f92).xyz, vec3(CB0[32].w));
    }
    vec4 f96 = texture(PrecomputedBRDFTexture, vec2(f50, max(9.9999997473787516355514526367188e-05, dot(f46, f49))));
    float f97 = f96.x;
    float f98 = f96.y;
    vec3 f99 = ((vec3(0.039999999105930328369140625) * f97) + vec3(f98)) / vec3(f97 + f98);
    vec3 f100 = f46 * f46;
    bvec3 f101 = lessThan(f46, vec3(0.0));
    vec3 f102 = vec3(f101.x ? f100.x : vec3(0.0).x, f101.y ? f100.y : vec3(0.0).y, f101.z ? f100.z : vec3(0.0).z);
    vec3 f103 = f100 - f102;
    float f104 = f103.x;
    float f105 = f103.y;
    float f106 = f103.z;
    float f107 = f102.x;
    float f108 = f102.y;
    float f109 = f102.z;
    vec3 f110 = (((((((f59.xyz * (f59.w * 120.0)) * 1.0) + (((vec3(1.0) - (f89 * f51)) * CB0[15].xyz) * f82)) + ((vec3(1.0) - (f99 * f51)) * (((((((CB0[40].xyz * f104) + (CB0[42].xyz * f105)) + (CB0[44].xyz * f106)) + (CB0[41].xyz * f107)) + (CB0[43].xyz * f108)) + (CB0[45].xyz * f109)) + (((((((CB0[34].xyz * f104) + (CB0[36].xyz * f105)) + (CB0[38].xyz * f106)) + (CB0[35].xyz * f107)) + (CB0[37].xyz * f108)) + (CB0[39].xyz * f109)) * f61)))) + ((CB0[32].xyz + (CB0[33].xyz * (f61 * (2.0 - CB0[14].w)))) * 1.0)) + vec3((f28.z * 2.0) * f38)) * (f36 * f36)) + (((((f89 * (min((f90 + (f90 * f90)) / (((f91 * f91) * ((f85 * 3.0) + 0.5)) * ((f84 * 0.75) + 0.25)), 65504.0) * f82)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w)) * (f38 * VARYING0.w)) + ((mix(f95, textureLod(PrefilteredEnvTexture, f93, f92).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f52.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f61)) * f99) * f51));
    vec4 f111 = vec4(0.0);
    f111.x = f110.x;
    vec4 f112 = f111;
    f112.y = f110.y;
    vec4 f113 = f112;
    f113.z = f110.z;
    vec4 f114 = f113;
    f114.w = 1.0;
    float f115 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f116 = textureLod(PrefilteredEnvTexture, vec4(-f37, 0.0).xyz, max(CB0[18].y, f115) * 5.0).xyz;
    bvec3 f117 = bvec3(!(CB0[18].w == 0.0));
    vec3 f118 = mix(vec3(f117.x ? CB0[19].xyz.x : f116.x, f117.y ? CB0[19].xyz.y : f116.y, f117.z ? CB0[19].xyz.z : f116.z), f114.xyz, vec3(f115));
    vec4 f119 = f114;
    f119.x = f118.x;
    vec4 f120 = f119;
    f120.y = f118.y;
    vec4 f121 = f120;
    f121.z = f118.z;
    vec3 f122 = sqrt(clamp(f121.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f123 = f121;
    f123.x = f122.x;
    vec4 f124 = f123;
    f124.y = f122.y;
    vec4 f125 = f124;
    f125.z = f122.z;
    _entryPointOutput = f125;
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
