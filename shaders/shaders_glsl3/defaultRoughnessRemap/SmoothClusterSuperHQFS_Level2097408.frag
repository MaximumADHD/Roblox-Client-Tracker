#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform vec4 CB4[36];
uniform vec4 CB5[74];
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
    vec2 f35 = f29.xz - vec2(0.5);
    float f36 = f35.x;
    vec4 f37 = f29.yxzw;
    f37.y = f36;
    float f38 = f35.y;
    vec4 f39 = f37;
    f39.z = f38;
    vec2 f40 = f30.xz - vec2(0.5);
    float f41 = f40.x;
    vec4 f42 = f30.yxzw;
    f42.y = f41;
    float f43 = f40.y;
    vec4 f44 = f42;
    f44.z = f43;
    vec2 f45 = f31.xz - vec2(0.5);
    float f46 = f45.x;
    vec4 f47 = f31.yxzw;
    f47.y = f46;
    float f48 = f45.y;
    vec4 f49 = f47;
    f49.z = f48;
    vec4 f50 = f39;
    f50.x = CB4[f32 * 1 + 0].x * f29.y;
    vec4 f51 = f50;
    f51.y = (CB4[f32 * 1 + 0].y * f36) - (CB4[f32 * 1 + 0].z * f38);
    vec4 f52 = f51;
    f52.z = (CB4[f32 * 1 + 0].z * f36) + (CB4[f32 * 1 + 0].y * f38);
    vec4 f53 = f44;
    f53.x = CB4[f33 * 1 + 0].x * f30.y;
    vec4 f54 = f53;
    f54.y = (CB4[f33 * 1 + 0].y * f41) - (CB4[f33 * 1 + 0].z * f43);
    vec4 f55 = f54;
    f55.z = (CB4[f33 * 1 + 0].z * f41) + (CB4[f33 * 1 + 0].y * f43);
    vec4 f56 = f49;
    f56.x = CB4[f34 * 1 + 0].x * f31.y;
    vec4 f57 = f56;
    f57.y = (CB4[f34 * 1 + 0].y * f46) - (CB4[f34 * 1 + 0].z * f48);
    vec4 f58 = f57;
    f58.z = (CB4[f34 * 1 + 0].z * f46) + (CB4[f34 * 1 + 0].y * f48);
    vec4 f59 = ((f52 * f5.x) + (f55 * f5.y)) + (f58 * f5.z);
    float f60 = f59.x;
    float f61 = f60 - f59.z;
    vec3 f62 = vec4(vec3(f61, f60, f61) + (vec3(f59.yzy) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f63 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec4 f64 = texture(NormalMapTexture, f0);
    vec4 f65 = texture(NormalMapTexture, f2);
    vec4 f66 = texture(NormalMapTexture, VARYING3.xyz);
    vec2 f67 = (((f64 * f5.x) + (f65 * f5.y)) + (f66 * f5.z)).wy * 2.0;
    vec2 f68 = f67 - vec2(1.0);
    vec3 f69 = normalize(((vec3(f68, sqrt(clamp(1.0 + dot(vec2(1.0) - f67, f68), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f5, f5))) + vec3(0.0, 0.0, 1.0));
    vec3 f70 = vec3(dot(VARYING7, f5));
    vec3 f71 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f70) * f69.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f70) * f69.y)) + (VARYING6 * f69.z)), 0.0).xyz;
    vec3 f72 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f73 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f74 = VARYING4.yzx - (VARYING4.yzx * f73);
    vec4 f75 = texture(LightMapTexture, f74);
    vec4 f76 = texture(LightGridSkylightTexture, f74);
    vec4 f77 = vec4(clamp(f73, 0.0, 1.0));
    vec4 f78 = mix(f75, vec4(0.0), f77);
    vec4 f79 = mix(f76, vec4(1.0), f77);
    float f80 = f79.x;
    vec4 f81 = texture(ShadowMapTexture, f72.xy);
    float f82 = f72.z;
    vec3 f83 = normalize(VARYING9);
    float f84 = 0.08900000154972076416015625 + (f28.y * 0.9110000133514404296875);
    float f85 = CB0[26].w * f63;
    vec3 f86 = reflect(-f83, f71);
    vec3 f87 = -CB0[11].xyz;
    float f88 = (dot(f71, f87) * CB0[9].w) * ((1.0 - ((step(f81.x, f82) * clamp(CB0[24].z + (CB0[24].w * abs(f82 - 0.5)), 0.0, 1.0)) * f81.y)) * f79.y);
    vec3 f89 = normalize(f87 + f83);
    float f90 = clamp(f88, 0.0, 1.0);
    float f91 = f84 * f84;
    float f92 = max(0.001000000047497451305389404296875, dot(f71, f89));
    float f93 = dot(f87, f89);
    float f94 = 1.0 - f93;
    float f95 = f94 * f94;
    float f96 = (f95 * f95) * f94;
    vec3 f97 = vec3(f96) + (vec3(0.039999999105930328369140625) * (1.0 - f96));
    float f98 = f91 * f91;
    float f99 = (((f92 * f98) - f92) * f92) + 1.0;
    float f100 = f84 * 5.0;
    vec3 f101 = vec4(f86, f100).xyz;
    vec3 f102 = textureLod(PrefilteredEnvIndoorTexture, f101, f100).xyz;
    vec3 f103;
    if (CB0[27].w == 0.0)
    {
        f103 = f102;
    }
    else
    {
        f103 = mix(f102, textureLod(PrefilteredEnvBlendTargetTexture, f101, f100).xyz, vec3(CB0[27].w));
    }
    vec4 f104 = texture(PrecomputedBRDFTexture, vec2(f84, max(9.9999997473787516355514526367188e-05, dot(f71, f83))));
    float f105 = f104.x;
    float f106 = f104.y;
    vec3 f107 = ((vec3(0.039999999105930328369140625) * f105) + vec3(f106)) / vec3(f105 + f106);
    vec3 f108 = f71 * f71;
    bvec3 f109 = lessThan(f71, vec3(0.0));
    vec3 f110 = vec3(f109.x ? f108.x : vec3(0.0).x, f109.y ? f108.y : vec3(0.0).y, f109.z ? f108.z : vec3(0.0).z);
    vec3 f111 = f108 - f110;
    float f112 = f111.x;
    float f113 = f111.y;
    float f114 = f111.z;
    float f115 = f110.x;
    float f116 = f110.y;
    float f117 = f110.z;
    vec3 f118 = (((((((((vec3(1.0) - (f97 * f85)) * CB0[10].xyz) * f90) + (CB0[12].xyz * clamp(-f88, 0.0, 1.0))) + ((f78.xyz * (f78.w * 120.0)) * 1.0)) + ((vec3(1.0) - (f107 * f85)) * (((((((CB0[35].xyz * f112) + (CB0[37].xyz * f113)) + (CB0[39].xyz * f114)) + (CB0[36].xyz * f115)) + (CB0[38].xyz * f116)) + (CB0[40].xyz * f117)) + (((((((CB0[29].xyz * f112) + (CB0[31].xyz * f113)) + (CB0[33].xyz * f114)) + (CB0[30].xyz * f115)) + (CB0[32].xyz * f116)) + (CB0[34].xyz * f117)) * f80)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f80))) + vec3((f28.z * 2.0) * f63)) * (f62 * f62)) + ((((((f97 * (((f98 + (f98 * f98)) / (((f99 * f99) * ((f93 * 3.0) + 0.5)) * ((f92 * 0.75) + 0.25))) * f90)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * f63) * VARYING0.w) + ((mix(f103, textureLod(PrefilteredEnvTexture, f101, f100).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f86.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f80)) * f107) * f85));
    vec4 f119 = vec4(0.0);
    f119.x = f118.x;
    vec4 f120 = f119;
    f120.y = f118.y;
    vec4 f121 = f120;
    f121.z = f118.z;
    vec4 f122 = f121;
    f122.w = 1.0;
    float f123 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f124 = textureLod(PrefilteredEnvTexture, vec4(-VARYING9, 0.0).xyz, max(CB0[13].y, f123) * 5.0).xyz;
    bvec3 f125 = bvec3(!(CB0[13].w == 0.0));
    vec3 f126 = mix(vec3(f125.x ? CB0[14].xyz.x : f124.x, f125.y ? CB0[14].xyz.y : f124.y, f125.z ? CB0[14].xyz.z : f124.z), f122.xyz, vec3(f123));
    vec4 f127 = f122;
    f127.x = f126.x;
    vec4 f128 = f127;
    f128.y = f126.y;
    vec4 f129 = f128;
    f129.z = f126.z;
    vec3 f130 = sqrt(clamp(f129.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f131 = f129;
    f131.x = f130.x;
    vec4 f132 = f131;
    f132.y = f130.y;
    vec4 f133 = f132;
    f133.z = f130.z;
    _entryPointOutput = f133;
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
