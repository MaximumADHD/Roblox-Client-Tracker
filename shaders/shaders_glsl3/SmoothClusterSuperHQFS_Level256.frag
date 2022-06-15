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
    vec3 f63 = f62 * f62;
    float f64 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec4 f65 = texture(NormalMapTexture, f0);
    vec4 f66 = texture(NormalMapTexture, f2);
    vec4 f67 = texture(NormalMapTexture, VARYING3.xyz);
    vec2 f68 = (((f65 * f5.x) + (f66 * f5.y)) + (f67 * f5.z)).wy * 2.0;
    vec2 f69 = f68 - vec2(1.0);
    vec3 f70 = normalize(((vec3(f69, sqrt(clamp(1.0 + dot(vec2(1.0) - f68, f69), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f5, f5))) + vec3(0.0, 0.0, 1.0));
    vec3 f71 = vec3(dot(VARYING7, f5));
    vec3 f72 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f71) * f70.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f71) * f70.y)) + (VARYING6 * f70.z)), 0.0).xyz;
    vec3 f73 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f74 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f75 = VARYING4.yzx - (VARYING4.yzx * f74);
    vec4 f76 = texture(LightMapTexture, f75);
    vec4 f77 = texture(LightGridSkylightTexture, f75);
    vec4 f78 = vec4(clamp(f74, 0.0, 1.0));
    vec4 f79 = mix(f76, vec4(0.0), f78);
    vec4 f80 = mix(f77, vec4(1.0), f78);
    float f81 = f80.x;
    vec4 f82 = texture(ShadowMapTexture, f73.xy);
    float f83 = f73.z;
    vec3 f84 = normalize(VARYING9);
    float f85 = f28.y;
    float f86 = f28.x;
    vec3 f87 = mix(vec3(0.039999999105930328369140625), f63, vec3(f86));
    float f88 = CB0[26].w * f64;
    vec3 f89 = reflect(-f84, f72);
    vec3 f90 = -CB0[11].xyz;
    float f91 = (dot(f72, f90) * CB0[9].w) * ((1.0 - ((step(f82.x, f83) * clamp(CB0[24].z + (CB0[24].w * abs(f83 - 0.5)), 0.0, 1.0)) * f82.y)) * f80.y);
    vec3 f92 = normalize(f90 + f84);
    float f93 = clamp(f91, 0.0, 1.0);
    float f94 = f85 * f85;
    float f95 = max(0.001000000047497451305389404296875, dot(f72, f92));
    float f96 = dot(f90, f92);
    float f97 = 1.0 - f96;
    float f98 = f97 * f97;
    float f99 = (f98 * f98) * f97;
    vec3 f100 = vec3(f99) + (f87 * (1.0 - f99));
    float f101 = f94 * f94;
    float f102 = (((f95 * f101) - f95) * f95) + 1.0;
    float f103 = 1.0 - f86;
    float f104 = f88 * f103;
    vec3 f105 = vec3(f103);
    float f106 = f85 * 5.0;
    vec3 f107 = vec4(f89, f106).xyz;
    vec3 f108 = textureLod(PrefilteredEnvIndoorTexture, f107, f106).xyz;
    vec3 f109;
    if (CB0[27].w == 0.0)
    {
        f109 = f108;
    }
    else
    {
        f109 = mix(f108, textureLod(PrefilteredEnvBlendTargetTexture, f107, f106).xyz, vec3(CB0[27].w));
    }
    vec4 f110 = texture(PrecomputedBRDFTexture, vec2(f85, max(9.9999997473787516355514526367188e-05, dot(f72, f84))));
    float f111 = f110.x;
    float f112 = f110.y;
    vec3 f113 = ((f87 * f111) + vec3(f112)) / vec3(f111 + f112);
    vec3 f114 = f72 * f72;
    bvec3 f115 = lessThan(f72, vec3(0.0));
    vec3 f116 = vec3(f115.x ? f114.x : vec3(0.0).x, f115.y ? f114.y : vec3(0.0).y, f115.z ? f114.z : vec3(0.0).z);
    vec3 f117 = f114 - f116;
    float f118 = f117.x;
    float f119 = f117.y;
    float f120 = f117.z;
    float f121 = f116.x;
    float f122 = f116.y;
    float f123 = f116.z;
    vec3 f124 = (((((((((f105 - (f100 * f104)) * CB0[10].xyz) * f93) + (CB0[12].xyz * (f103 * clamp(-f91, 0.0, 1.0)))) + ((f79.xyz * (f79.w * 120.0)) * 1.0)) + ((f105 - (f113 * f104)) * (((((((CB0[35].xyz * f118) + (CB0[37].xyz * f119)) + (CB0[39].xyz * f120)) + (CB0[36].xyz * f121)) + (CB0[38].xyz * f122)) + (CB0[40].xyz * f123)) + (((((((CB0[29].xyz * f118) + (CB0[31].xyz * f119)) + (CB0[33].xyz * f120)) + (CB0[30].xyz * f121)) + (CB0[32].xyz * f122)) + (CB0[34].xyz * f123)) * f81)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f81))) + vec3((f28.z * 2.0) * f64)) * f63) + ((((((f100 * (((f101 + (f101 * f101)) / (((f102 * f102) * ((f96 * 3.0) + 0.5)) * ((f95 * 0.75) + 0.25))) * f93)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * f64) * VARYING0.w) + ((mix(f109, textureLod(PrefilteredEnvTexture, f107, f106).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f89.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f81)) * f113) * f88));
    vec4 f125 = vec4(0.0);
    f125.x = f124.x;
    vec4 f126 = f125;
    f126.y = f124.y;
    vec4 f127 = f126;
    f127.z = f124.z;
    vec4 f128 = f127;
    f128.w = 1.0;
    float f129 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f130 = textureLod(PrefilteredEnvTexture, vec4(-VARYING9, 0.0).xyz, max(CB0[13].y, f129) * 5.0).xyz;
    bvec3 f131 = bvec3(!(CB0[13].w == 0.0));
    vec3 f132 = mix(vec3(f131.x ? CB0[14].xyz.x : f130.x, f131.y ? CB0[14].xyz.y : f130.y, f131.z ? CB0[14].xyz.z : f130.z), f128.xyz, vec3(f129));
    vec4 f133 = f128;
    f133.x = f132.x;
    vec4 f134 = f133;
    f134.y = f132.y;
    vec4 f135 = f134;
    f135.z = f132.z;
    vec3 f136 = sqrt(clamp(f135.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f137 = f135;
    f137.x = f136.x;
    vec4 f138 = f137;
    f138.y = f136.y;
    vec4 f139 = f138;
    f139.z = f136.z;
    _entryPointOutput = f139;
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
