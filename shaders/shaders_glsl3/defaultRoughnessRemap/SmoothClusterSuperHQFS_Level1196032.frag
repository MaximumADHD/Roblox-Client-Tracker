#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
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
in vec4 VARYING10;
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
    float f60 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec4 f61 = texture(NormalMapTexture, f0);
    vec4 f62 = texture(NormalMapTexture, f2);
    vec4 f63 = texture(NormalMapTexture, VARYING3.xyz);
    float f64 = -VARYING6.x;
    vec2 f65 = (((f61 * f5.x) + (f62 * f5.y)) + (f63 * f5.z)).wy * 2.0;
    vec2 f66 = f65 - vec2(1.0);
    vec3 f67 = normalize(((vec3(f66, sqrt(clamp(1.0 + dot(vec2(1.0) - f65, f66), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f5, f5))) + vec3(0.0, 0.0, 1.0));
    vec3 f68 = vec3(dot(VARYING7, f5));
    vec3 f69 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f64), vec3(VARYING6.y, f64, 0.0), f68) * f67.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f68) * f67.y)) + (VARYING6 * f67.z)), 0.0).xyz;
    vec3 f70 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f71 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f72 = VARYING4.yzx - (VARYING4.yzx * f71);
    vec4 f73 = texture(LightMapTexture, f72);
    vec4 f74 = texture(LightGridSkylightTexture, f72);
    vec4 f75 = vec4(clamp(f71, 0.0, 1.0));
    vec4 f76 = mix(f73, vec4(0.0), f75);
    vec4 f77 = mix(f74, vec4(1.0), f75);
    float f78 = f77.x;
    vec4 f79 = texture(ShadowMapTexture, f70.xy);
    float f80 = f70.z;
    vec3 f81 = normalize(VARYING9);
    float f82 = 0.08900000154972076416015625 + (f28.y * 0.9110000133514404296875);
    float f83 = f28.x;
    vec3 f84 = mix(vec3(0.039999999105930328369140625), f59, vec3(f83));
    float f85 = CB0[26].w * f60;
    vec3 f86 = reflect(-f81, f69);
    vec3 f87 = -CB0[11].xyz;
    float f88 = (dot(f69, f87) * CB0[9].w) * ((1.0 - ((step(f79.x, f80) * clamp(CB0[24].z + (CB0[24].w * abs(f80 - 0.5)), 0.0, 1.0)) * f79.y)) * f77.y);
    vec3 f89 = normalize(f87 + f81);
    float f90 = clamp(f88, 0.0, 1.0);
    float f91 = f82 * f82;
    float f92 = max(0.001000000047497451305389404296875, dot(f69, f89));
    float f93 = dot(f87, f89);
    float f94 = 1.0 - f93;
    float f95 = f94 * f94;
    float f96 = (f95 * f95) * f94;
    vec3 f97 = vec3(f96) + (f84 * (1.0 - f96));
    float f98 = f91 * f91;
    float f99 = (((f92 * f98) - f92) * f92) + 1.0;
    float f100 = 1.0 - f83;
    float f101 = f85 * f100;
    vec3 f102 = vec3(f100);
    float f103 = f82 * 5.0;
    vec3 f104 = vec4(f86, f103).xyz;
    vec3 f105 = textureLod(PrefilteredEnvIndoorTexture, f104, f103).xyz;
    vec3 f106;
    if (CB0[27].w == 0.0)
    {
        f106 = f105;
    }
    else
    {
        f106 = mix(f105, textureLod(PrefilteredEnvBlendTargetTexture, f104, f103).xyz, vec3(CB0[27].w));
    }
    vec4 f107 = texture(PrecomputedBRDFTexture, vec2(f82, max(9.9999997473787516355514526367188e-05, dot(f69, f81))));
    float f108 = f107.x;
    float f109 = f107.y;
    vec3 f110 = ((f84 * f108) + vec3(f109)) / vec3(f108 + f109);
    vec3 f111 = f69 * f69;
    bvec3 f112 = lessThan(f69, vec3(0.0));
    vec3 f113 = vec3(f112.x ? f111.x : vec3(0.0).x, f112.y ? f111.y : vec3(0.0).y, f112.z ? f111.z : vec3(0.0).z);
    vec3 f114 = f111 - f113;
    float f115 = f114.x;
    float f116 = f114.y;
    float f117 = f114.z;
    float f118 = f113.x;
    float f119 = f113.y;
    float f120 = f113.z;
    vec3 f121 = (((((((((f102 - (f97 * f101)) * CB0[10].xyz) * f90) + (CB0[12].xyz * (f100 * clamp(-f88, 0.0, 1.0)))) + ((f76.xyz * (f76.w * 120.0)) * 1.0)) + ((f102 - (f110 * f101)) * (((((((CB0[35].xyz * f115) + (CB0[37].xyz * f116)) + (CB0[39].xyz * f117)) + (CB0[36].xyz * f118)) + (CB0[38].xyz * f119)) + (CB0[40].xyz * f120)) + (((((((CB0[29].xyz * f115) + (CB0[31].xyz * f116)) + (CB0[33].xyz * f117)) + (CB0[30].xyz * f118)) + (CB0[32].xyz * f119)) + (CB0[34].xyz * f120)) * f78)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f78))) + vec3((f28.z * 2.0) * f60)) * f59) + ((((((f97 * (((f98 + (f98 * f98)) / (((f99 * f99) * ((f93 * 3.0) + 0.5)) * ((f92 * 0.75) + 0.25))) * f90)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * f60) * VARYING0.w) + ((mix(f106, textureLod(PrefilteredEnvTexture, f104, f103).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f86.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f78)) * f110) * f85));
    vec4 f122 = vec4(0.0);
    f122.x = f121.x;
    vec4 f123 = f122;
    f123.y = f121.y;
    vec4 f124 = f123;
    f124.z = f121.z;
    vec4 f125 = f124;
    f125.w = 1.0;
    float f126 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f127 = textureLod(PrefilteredEnvTexture, vec4(-VARYING9, 0.0).xyz, max(CB0[13].y, f126) * 5.0).xyz;
    bvec3 f128 = bvec3(!(CB0[13].w == 0.0));
    vec3 f129 = mix(vec3(f128.x ? CB0[14].xyz.x : f127.x, f128.y ? CB0[14].xyz.y : f127.y, f128.z ? CB0[14].xyz.z : f127.z), f125.xyz, vec3(f126));
    vec4 f130 = f125;
    f130.x = f129.x;
    vec4 f131 = f130;
    f131.y = f129.y;
    vec4 f132 = f131;
    f132.z = f129.z;
    vec3 f133 = sqrt(clamp(f132.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f134 = f132;
    f134.x = f133.x;
    vec4 f135 = f134;
    f135.y = f133.y;
    vec4 f136 = f135;
    f136.z = f133.z;
    _entryPointOutput = f136;
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
