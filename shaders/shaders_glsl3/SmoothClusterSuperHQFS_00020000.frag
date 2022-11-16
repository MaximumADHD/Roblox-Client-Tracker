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
        vec3 f11 = vec3(0.0);
        f11.x = clamp((f1.w * CB5[f7 * 1 + 0].x) + CB5[f7 * 1 + 0].y, 0.0, 1.0);
        vec3 f12 = f11;
        f12.y = clamp((f3.w * CB5[f8 * 1 + 0].x) + CB5[f8 * 1 + 0].y, 0.0, 1.0);
        vec3 f13 = f12;
        f13.z = clamp((f4.w * CB5[f9 * 1 + 0].x) + CB5[f9 * 1 + 0].y, 0.0, 1.0);
        vec3 f14 = VARYING0.xyz * f13;
        float f15 = 1.0 / f10;
        float f16 = 0.5 * f10;
        float f17 = f14.x;
        float f18 = f14.y;
        float f19 = f14.z;
        float f20 = clamp(((f17 - max(f18, f19)) + f16) * f15, 0.0, 1.0);
        float f21 = clamp(((f18 - max(f17, f19)) + f16) * f15, 0.0, 1.0);
        float f22 = clamp(((f19 - max(f17, f18)) + f16) * f15, 0.0, 1.0);
        vec2 f23 = dFdx(VARYING1.xy);
        vec2 f24 = dFdy(VARYING1.xy);
        f5 = mix(vec3(f20, f21, f22) / vec3((f20 + f21) + f22), VARYING0.xyz, vec3(clamp((sqrt(max(dot(f23, f23), dot(f24, f24))) * 7.0) + clamp(VARYING8.w, 0.0, 1.0), 0.0, 1.0)));
    }
    else
    {
        f5 = VARYING0.xyz;
    }
    vec4 f25 = ((f1 * f5.x) + (f3 * f5.y)) + (f4 * f5.z);
    vec4 f26 = texture(AlbedoMapTexture, f0);
    vec4 f27 = texture(AlbedoMapTexture, f2);
    vec4 f28 = texture(AlbedoMapTexture, VARYING3.xyz);
    int f29 = int(VARYING10.x + 0.5);
    int f30 = int(VARYING10.y + 0.5);
    int f31 = int(VARYING10.z + 0.5);
    vec3 f32;
    if (!(CB4[f29 * 1 + 0].w == 0.0))
    {
        f32 = (mix(vec3(1.0), CB4[f29 * 1 + 0].xyz, vec3(f26.w)) * f26.xyz) * f5.x;
    }
    else
    {
        vec2 f33 = f26.xz - vec2(0.5);
        float f34 = f33.x;
        float f35 = f33.y;
        float f36 = CB4[f29 * 1 + 0].x * f26.y;
        float f37 = (CB4[f29 * 1 + 0].y * f34) - (CB4[f29 * 1 + 0].z * f35);
        float f38 = (CB4[f29 * 1 + 0].z * f34) + (CB4[f29 * 1 + 0].y * f35);
        float f39 = f36 - f38;
        f32 = (vec3(f39, f36, f39) + (vec3(f37, f38, f37) * vec3(1.0, 1.0, -1.0))) * f5.x;
    }
    vec3 f40;
    if (!(CB4[f30 * 1 + 0].w == 0.0))
    {
        f40 = f32 + ((mix(vec3(1.0), CB4[f30 * 1 + 0].xyz, vec3(f27.w)) * f27.xyz) * f5.y);
    }
    else
    {
        vec2 f41 = f27.xz - vec2(0.5);
        float f42 = f41.x;
        float f43 = f41.y;
        float f44 = CB4[f30 * 1 + 0].x * f27.y;
        float f45 = (CB4[f30 * 1 + 0].y * f42) - (CB4[f30 * 1 + 0].z * f43);
        float f46 = (CB4[f30 * 1 + 0].z * f42) + (CB4[f30 * 1 + 0].y * f43);
        float f47 = f44 - f46;
        f40 = f32 + ((vec3(f47, f44, f47) + (vec3(f45, f46, f45) * vec3(1.0, 1.0, -1.0))) * f5.y);
    }
    vec3 f48;
    if (!(CB4[f31 * 1 + 0].w == 0.0))
    {
        f48 = f40 + ((mix(vec3(1.0), CB4[f31 * 1 + 0].xyz, vec3(f28.w)) * f28.xyz) * f5.z);
    }
    else
    {
        vec2 f49 = f28.xz - vec2(0.5);
        float f50 = f49.x;
        float f51 = f49.y;
        float f52 = CB4[f31 * 1 + 0].x * f28.y;
        float f53 = (CB4[f31 * 1 + 0].y * f50) - (CB4[f31 * 1 + 0].z * f51);
        float f54 = (CB4[f31 * 1 + 0].z * f50) + (CB4[f31 * 1 + 0].y * f51);
        float f55 = f52 - f54;
        f48 = f40 + ((vec3(f55, f52, f55) + (vec3(f53, f54, f53) * vec3(1.0, 1.0, -1.0))) * f5.z);
    }
    vec3 f56 = f48 * f48;
    float f57 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec4 f58 = texture(NormalMapTexture, f0);
    vec4 f59 = texture(NormalMapTexture, f2);
    vec4 f60 = texture(NormalMapTexture, VARYING3.xyz);
    vec2 f61 = (((f58 * f5.x) + (f59 * f5.y)) + (f60 * f5.z)).wy * 2.0;
    vec2 f62 = f61 - vec2(1.0);
    vec3 f63 = normalize(((vec3(f62, sqrt(clamp(1.0 + dot(vec2(1.0) - f61, f62), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f5, f5))) + vec3(0.0, 0.0, 1.0));
    vec3 f64 = vec3(dot(VARYING7, f5));
    vec3 f65 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f64) * f63.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f64) * f63.y)) + (VARYING6 * f63.z)), 0.0).xyz;
    vec3 f66 = normalize(VARYING9);
    float f67 = 0.08900000154972076416015625 + (f25.y * 0.9110000133514404296875);
    float f68 = f25.x;
    vec3 f69 = mix(vec3(0.039999999105930328369140625), f56, vec3(f68));
    float f70 = CB0[31].w * f57;
    vec3 f71 = reflect(-f66, f65);
    vec3 f72 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f73 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f74 = VARYING4.yzx - (VARYING4.yzx * f73);
    vec4 f75 = texture(LightMapTexture, f74);
    vec4 f76 = texture(LightGridSkylightTexture, f74);
    vec4 f77 = vec4(clamp(f73, 0.0, 1.0));
    vec4 f78 = mix(f75, vec4(0.0), f77);
    vec4 f79 = mix(f76, vec4(1.0), f77);
    float f80 = f79.x;
    vec4 f81 = texture(ShadowMapTexture, f72.xy);
    float f82 = f72.z;
    vec3 f83 = -CB0[16].xyz;
    float f84 = dot(f65, f83) * ((1.0 - ((step(f81.x, f82) * clamp(CB0[29].z + (CB0[29].w * abs(f82 - 0.5)), 0.0, 1.0)) * f81.y)) * f79.y);
    vec3 f85 = normalize(f66 + f83);
    float f86 = clamp(f84, 0.0, 1.0);
    float f87 = f67 * f67;
    float f88 = max(0.001000000047497451305389404296875, dot(f65, f85));
    float f89 = dot(f83, f85);
    float f90 = 1.0 - f89;
    float f91 = f90 * f90;
    float f92 = (f91 * f91) * f90;
    vec3 f93 = vec3(f92) + (f69 * (1.0 - f92));
    float f94 = f87 * f87;
    float f95 = (((f88 * f94) - f88) * f88) + 1.0;
    float f96 = 1.0 - f68;
    float f97 = f70 * f96;
    vec3 f98 = vec3(f96);
    float f99 = f67 * 5.0;
    vec3 f100 = vec4(f71, f99).xyz;
    vec3 f101 = textureLod(PrefilteredEnvIndoorTexture, f100, f99).xyz;
    vec3 f102;
    if (CB0[32].w == 0.0)
    {
        f102 = f101;
    }
    else
    {
        f102 = mix(f101, textureLod(PrefilteredEnvBlendTargetTexture, f100, f99).xyz, vec3(CB0[32].w));
    }
    vec4 f103 = texture(PrecomputedBRDFTexture, vec2(f67, max(9.9999997473787516355514526367188e-05, dot(f65, f66))));
    float f104 = f103.x;
    float f105 = f103.y;
    vec3 f106 = ((f69 * f104) + vec3(f105)) / vec3(f104 + f105);
    vec3 f107 = f65 * f65;
    bvec3 f108 = lessThan(f65, vec3(0.0));
    vec3 f109 = vec3(f108.x ? f107.x : vec3(0.0).x, f108.y ? f107.y : vec3(0.0).y, f108.z ? f107.z : vec3(0.0).z);
    vec3 f110 = f107 - f109;
    float f111 = f110.x;
    float f112 = f110.y;
    float f113 = f110.z;
    float f114 = f109.x;
    float f115 = f109.y;
    float f116 = f109.z;
    vec3 f117 = ((((((f78.xyz * (f78.w * 120.0)) + ((((f98 - (f93 * f97)) * CB0[15].xyz) * f86) + (CB0[17].xyz * (f96 * clamp(-f84, 0.0, 1.0))))) + (((f98 - (f106 * f97)) * (((((((CB0[40].xyz * f111) + (CB0[42].xyz * f112)) + (CB0[44].xyz * f113)) + (CB0[41].xyz * f114)) + (CB0[43].xyz * f115)) + (CB0[45].xyz * f116)) + (((((((CB0[34].xyz * f111) + (CB0[36].xyz * f112)) + (CB0[38].xyz * f113)) + (CB0[35].xyz * f114)) + (CB0[37].xyz * f115)) + (CB0[39].xyz * f116)) * f80))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * f80)) * 1.0)) + vec3((f25.z * 2.0) * f57)) * f56) + (((((f93 * (((f94 + (f94 * f94)) / max(((f95 * f95) * ((f89 * 3.0) + 0.5)) * ((f88 * 0.75) + 0.25), 7.0000001869630068540573120117188e-05)) * f86)) * CB0[15].xyz) * 1.0) * (f57 * VARYING0.w)) + ((mix(f102, textureLod(PrefilteredEnvTexture, f100, f99).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f71.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f80)) * f106) * f70));
    vec4 f118 = vec4(0.0);
    f118.x = f117.x;
    vec4 f119 = f118;
    f119.y = f117.y;
    vec4 f120 = f119;
    f120.z = f117.z;
    vec4 f121 = f120;
    f121.w = 1.0;
    float f122 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f123 = textureLod(PrefilteredEnvTexture, vec4(-VARYING9, 0.0).xyz, max(CB0[18].y, f122) * 5.0).xyz;
    bvec3 f124 = bvec3(!(CB0[18].w == 0.0));
    vec3 f125 = mix(vec3(f124.x ? CB0[19].xyz.x : f123.x, f124.y ? CB0[19].xyz.y : f123.y, f124.z ? CB0[19].xyz.z : f123.z), f121.xyz, vec3(f122));
    vec4 f126 = f121;
    f126.x = f125.x;
    vec4 f127 = f126;
    f127.y = f125.y;
    vec4 f128 = f127;
    f128.z = f125.z;
    vec3 f129 = sqrt(clamp(f128.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f130 = f128;
    f130.x = f129.x;
    vec4 f131 = f130;
    f131.y = f129.y;
    vec4 f132 = f131;
    f132.z = f129.z;
    _entryPointOutput = f132;
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
