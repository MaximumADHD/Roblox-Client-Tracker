#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform vec4 CB4[63];
uniform vec4 CB5[63];
uniform sampler2D ShadowMapTexture;
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
in vec3 VARYING9;
in vec3 VARYING10;
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
    int f32 = int(VARYING10.x + 0.5);
    int f33 = int(VARYING10.y + 0.5);
    int f34 = int(VARYING10.z + 0.5);
    vec3 f35;
    if (!(CB4[f32 * 1 + 0].w == 0.0))
    {
        f35 = (mix(vec3(1.0), CB4[f32 * 1 + 0].xyz, vec3(f29.w)) * f29.xyz) * f5.x;
    }
    else
    {
        vec2 f36 = f29.xz - vec2(0.5);
        float f37 = f36.x;
        float f38 = f36.y;
        float f39 = CB4[f32 * 1 + 0].x * f29.y;
        float f40 = (CB4[f32 * 1 + 0].y * f37) - (CB4[f32 * 1 + 0].z * f38);
        float f41 = (CB4[f32 * 1 + 0].z * f37) + (CB4[f32 * 1 + 0].y * f38);
        float f42 = f39 - f41;
        f35 = (vec3(f42, f39, f42) + (vec3(f40, f41, f40) * vec3(1.0, 1.0, -1.0))) * f5.x;
    }
    vec3 f43;
    if (!(CB4[f33 * 1 + 0].w == 0.0))
    {
        f43 = f35 + ((mix(vec3(1.0), CB4[f33 * 1 + 0].xyz, vec3(f30.w)) * f30.xyz) * f5.y);
    }
    else
    {
        vec2 f44 = f30.xz - vec2(0.5);
        float f45 = f44.x;
        float f46 = f44.y;
        float f47 = CB4[f33 * 1 + 0].x * f30.y;
        float f48 = (CB4[f33 * 1 + 0].y * f45) - (CB4[f33 * 1 + 0].z * f46);
        float f49 = (CB4[f33 * 1 + 0].z * f45) + (CB4[f33 * 1 + 0].y * f46);
        float f50 = f47 - f49;
        f43 = f35 + ((vec3(f50, f47, f50) + (vec3(f48, f49, f48) * vec3(1.0, 1.0, -1.0))) * f5.y);
    }
    vec3 f51;
    if (!(CB4[f34 * 1 + 0].w == 0.0))
    {
        f51 = f43 + ((mix(vec3(1.0), CB4[f34 * 1 + 0].xyz, vec3(f31.w)) * f31.xyz) * f5.z);
    }
    else
    {
        vec2 f52 = f31.xz - vec2(0.5);
        float f53 = f52.x;
        float f54 = f52.y;
        float f55 = CB4[f34 * 1 + 0].x * f31.y;
        float f56 = (CB4[f34 * 1 + 0].y * f53) - (CB4[f34 * 1 + 0].z * f54);
        float f57 = (CB4[f34 * 1 + 0].z * f53) + (CB4[f34 * 1 + 0].y * f54);
        float f58 = f55 - f57;
        f51 = f43 + ((vec3(f58, f55, f58) + (vec3(f56, f57, f56) * vec3(1.0, 1.0, -1.0))) * f5.z);
    }
    vec3 f59 = f51 * f51;
    float f60 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec4 f61 = texture(NormalMapTexture, f0);
    vec4 f62 = texture(NormalMapTexture, f2);
    vec4 f63 = texture(NormalMapTexture, VARYING3.xyz);
    vec2 f64 = (((f61 * f5.x) + (f62 * f5.y)) + (f63 * f5.z)).wy * 2.0;
    vec2 f65 = f64 - vec2(1.0);
    vec3 f66 = normalize(((vec3(f65, sqrt(clamp(1.0 + dot(vec2(1.0) - f64, f65), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f5, f5))) + vec3(0.0, 0.0, 1.0));
    vec3 f67 = vec3(dot(VARYING7, f5));
    vec3 f68 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f67) * f66.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f67) * f66.y)) + (VARYING6 * f66.z)), 0.0).xyz;
    vec3 f69 = normalize(VARYING9);
    float f70 = 0.08900000154972076416015625 + (f28.y * 0.9110000133514404296875);
    float f71 = f28.x;
    vec3 f72 = mix(vec3(0.039999999105930328369140625), f59, vec3(f71));
    float f73 = CB0[31].w * f60;
    vec3 f74 = reflect(-f69, f68);
    vec3 f75 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f76 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f77 = VARYING4.yzx - (VARYING4.yzx * f76);
    vec4 f78 = texture(LightMapTexture, f77);
    vec4 f79 = texture(LightGridSkylightTexture, f77);
    vec4 f80 = vec4(clamp(f76, 0.0, 1.0));
    vec4 f81 = mix(f78, vec4(0.0), f80);
    vec4 f82 = mix(f79, vec4(1.0), f80);
    float f83 = f82.x;
    vec4 f84 = texture(ShadowMapTexture, f75.xy);
    float f85 = f75.z;
    vec3 f86 = -CB0[16].xyz;
    float f87 = (dot(f68, f86) * CB0[14].w) * ((1.0 - ((step(f84.x, f85) * clamp(CB0[29].z + (CB0[29].w * abs(f85 - 0.5)), 0.0, 1.0)) * f84.y)) * f82.y);
    vec3 f88 = normalize(f69 - CB0[16].xyz);
    float f89 = clamp(f87, 0.0, 1.0);
    float f90 = f70 * f70;
    float f91 = max(0.001000000047497451305389404296875, dot(f68, f88));
    float f92 = dot(f86, f88);
    float f93 = 1.0 - f92;
    float f94 = f93 * f93;
    float f95 = (f94 * f94) * f93;
    vec3 f96 = vec3(f95) + (f72 * (1.0 - f95));
    float f97 = f90 * f90;
    float f98 = (((f91 * f97) - f91) * f91) + 1.0;
    float f99 = 1.0 - f71;
    float f100 = f73 * f99;
    vec3 f101 = vec3(f99);
    float f102 = f70 * 5.0;
    vec3 f103 = vec4(f74, f102).xyz;
    vec3 f104 = textureLod(PrefilteredEnvIndoorTexture, f103, f102).xyz;
    vec3 f105;
    if (CB0[32].w == 0.0)
    {
        f105 = f104;
    }
    else
    {
        f105 = mix(f104, textureLod(PrefilteredEnvBlendTargetTexture, f103, f102).xyz, vec3(CB0[32].w));
    }
    vec4 f106 = texture(PrecomputedBRDFTexture, vec2(f70, max(9.9999997473787516355514526367188e-05, dot(f68, f69))));
    float f107 = f106.x;
    float f108 = f106.y;
    vec3 f109 = ((f72 * f107) + vec3(f108)) / vec3(f107 + f108);
    vec3 f110 = f68 * f68;
    bvec3 f111 = lessThan(f68, vec3(0.0));
    vec3 f112 = vec3(f111.x ? f110.x : vec3(0.0).x, f111.y ? f110.y : vec3(0.0).y, f111.z ? f110.z : vec3(0.0).z);
    vec3 f113 = f110 - f112;
    float f114 = f113.x;
    float f115 = f113.y;
    float f116 = f113.z;
    float f117 = f112.x;
    float f118 = f112.y;
    float f119 = f112.z;
    vec3 f120 = (((((((f81.xyz * (f81.w * 120.0)) * 1.0) + ((((f101 - (f96 * f100)) * CB0[15].xyz) * f89) + (CB0[17].xyz * (f99 * clamp(-f87, 0.0, 1.0))))) + ((f101 - (f109 * f100)) * (((((((CB0[40].xyz * f114) + (CB0[42].xyz * f115)) + (CB0[44].xyz * f116)) + (CB0[41].xyz * f117)) + (CB0[43].xyz * f118)) + (CB0[45].xyz * f119)) + (((((((CB0[34].xyz * f114) + (CB0[36].xyz * f115)) + (CB0[38].xyz * f116)) + (CB0[35].xyz * f117)) + (CB0[37].xyz * f118)) + (CB0[39].xyz * f119)) * f83)))) + (CB0[32].xyz + ((CB0[33].xyz * (2.0 - CB0[14].w)) * f83))) + vec3((f28.z * 2.0) * f60)) * f59) + (((((f96 * (((f97 + (f97 * f97)) / (((f98 * f98) * ((f92 * 3.0) + 0.5)) * ((f91 * 0.75) + 0.25))) * f89)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w)) * (f60 * VARYING0.w)) + ((mix(f105, textureLod(PrefilteredEnvTexture, f103, f102).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f74.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f83)) * f109) * f73));
    vec4 f121 = vec4(0.0);
    f121.x = f120.x;
    vec4 f122 = f121;
    f122.y = f120.y;
    vec4 f123 = f122;
    f123.z = f120.z;
    vec4 f124 = f123;
    f124.w = 1.0;
    float f125 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f126 = textureLod(PrefilteredEnvTexture, vec4(-VARYING9, 0.0).xyz, max(CB0[18].y, f125) * 5.0).xyz;
    bvec3 f127 = bvec3(!(CB0[18].w == 0.0));
    vec3 f128 = mix(vec3(f127.x ? CB0[19].xyz.x : f126.x, f127.y ? CB0[19].xyz.y : f126.y, f127.z ? CB0[19].xyz.z : f126.z), f124.xyz, vec3(f125));
    vec4 f129 = f124;
    f129.x = f128.x;
    vec4 f130 = f129;
    f130.y = f128.y;
    vec4 f131 = f130;
    f131.z = f128.z;
    vec3 f132 = sqrt(clamp(f131.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f133 = f131;
    f133.x = f132.x;
    vec4 f134 = f133;
    f134.y = f132.y;
    vec4 f135 = f134;
    f135.z = f132.z;
    _entryPointOutput = f135;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
