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
uniform sampler2DArray NormalMapTexture;
uniform sampler2DArray AlbedoMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec3 VARYING4;
in vec4 VARYING5;
in vec3 VARYING6;
in vec3 VARYING7;
in vec3 VARYING8;
in vec4 VARYING9;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = vec3(VARYING1.xy, VARYING2.x);
    vec4 f1 = texture(SpecularMapTexture, f0);
    vec3 f2 = vec3(VARYING1.zw, VARYING2.z);
    vec4 f3 = texture(SpecularMapTexture, f2);
    vec3 f4 = vec3(VARYING3.xyz);
    vec4 f5 = texture(SpecularMapTexture, f4);
    vec3 f6;
    if (VARYING9.w < 1.0)
    {
        ivec3 f7 = ivec3(VARYING9.xyz + vec3(0.5));
        int f8 = f7.x;
        int f9 = f7.y;
        int f10 = f7.z;
        float f11 = dot(VARYING0.xyz, vec3(CB5[f8 * 1 + 0].z, CB5[f9 * 1 + 0].z, CB5[f10 * 1 + 0].z));
        vec3 f12 = vec3(0.0);
        f12.x = clamp((f1.w * CB5[f8 * 1 + 0].x) + CB5[f8 * 1 + 0].y, 0.0, 1.0);
        vec3 f13 = f12;
        f13.y = clamp((f3.w * CB5[f9 * 1 + 0].x) + CB5[f9 * 1 + 0].y, 0.0, 1.0);
        vec3 f14 = f13;
        f14.z = clamp((f5.w * CB5[f10 * 1 + 0].x) + CB5[f10 * 1 + 0].y, 0.0, 1.0);
        vec3 f15 = VARYING0.xyz * f14;
        float f16 = 1.0 / f11;
        float f17 = 0.5 * f11;
        float f18 = f15.x;
        float f19 = f15.y;
        float f20 = f15.z;
        float f21 = clamp(((f18 - max(f19, f20)) + f17) * f16, 0.0, 1.0);
        float f22 = clamp(((f19 - max(f18, f20)) + f17) * f16, 0.0, 1.0);
        float f23 = clamp(((f20 - max(f18, f19)) + f17) * f16, 0.0, 1.0);
        vec2 f24 = dFdx(VARYING1.xy);
        vec2 f25 = dFdy(VARYING1.xy);
        f6 = mix(vec3(f21, f22, f23) / vec3((f21 + f22) + f23), VARYING0.xyz, vec3(clamp((sqrt(max(dot(f24, f24), dot(f25, f25))) * 7.0) + clamp(VARYING9.w, 0.0, 1.0), 0.0, 1.0)));
    }
    else
    {
        f6 = VARYING0.xyz;
    }
    vec4 f26 = ((f1 * f6.x) + (f3 * f6.y)) + (f5 * f6.z);
    vec4 f27 = texture(NormalMapTexture, f0);
    vec4 f28 = texture(NormalMapTexture, f2);
    vec4 f29 = texture(NormalMapTexture, f4);
    vec2 f30 = (((f27 * f6.x) + (f28 * f6.y)) + (f29 * f6.z)).wy * 2.0;
    vec2 f31 = f30 - vec2(1.0);
    vec3 f32 = normalize(((vec3(f31, sqrt(clamp(1.0 + dot(vec2(1.0) - f30, f31), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f6, f6))) + vec3(0.0, 0.0, 1.0));
    vec3 f33 = vec3(dot(VARYING7, f6));
    vec3 f34 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f33) * f32.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f33) * f32.y)) + (VARYING6 * f32.z)), 0.0).xyz;
    vec4 f35 = texture(AlbedoMapTexture, f0);
    vec4 f36 = texture(AlbedoMapTexture, f2);
    vec4 f37 = texture(AlbedoMapTexture, f4);
    int f38 = int(VARYING9.x + 0.5);
    int f39 = int(VARYING9.y + 0.5);
    int f40 = int(VARYING9.z + 0.5);
    vec2 f41 = f35.xz - vec2(0.5);
    float f42 = f41.x;
    vec4 f43 = f35.yxzw;
    f43.y = f42;
    float f44 = f41.y;
    vec4 f45 = f43;
    f45.z = f44;
    vec2 f46 = f36.xz - vec2(0.5);
    float f47 = f46.x;
    vec4 f48 = f36.yxzw;
    f48.y = f47;
    float f49 = f46.y;
    vec4 f50 = f48;
    f50.z = f49;
    vec2 f51 = f37.xz - vec2(0.5);
    float f52 = f51.x;
    vec4 f53 = f37.yxzw;
    f53.y = f52;
    float f54 = f51.y;
    vec4 f55 = f53;
    f55.z = f54;
    vec4 f56 = f45;
    f56.x = CB4[f38 * 1 + 0].x * f35.y;
    vec4 f57 = f56;
    f57.y = (CB4[f38 * 1 + 0].y * f42) - (CB4[f38 * 1 + 0].z * f44);
    vec4 f58 = f57;
    f58.z = (CB4[f38 * 1 + 0].z * f42) + (CB4[f38 * 1 + 0].y * f44);
    vec4 f59 = f50;
    f59.x = CB4[f39 * 1 + 0].x * f36.y;
    vec4 f60 = f59;
    f60.y = (CB4[f39 * 1 + 0].y * f47) - (CB4[f39 * 1 + 0].z * f49);
    vec4 f61 = f60;
    f61.z = (CB4[f39 * 1 + 0].z * f47) + (CB4[f39 * 1 + 0].y * f49);
    vec4 f62 = f55;
    f62.x = CB4[f40 * 1 + 0].x * f37.y;
    vec4 f63 = f62;
    f63.y = (CB4[f40 * 1 + 0].y * f52) - (CB4[f40 * 1 + 0].z * f54);
    vec4 f64 = f63;
    f64.z = (CB4[f40 * 1 + 0].z * f52) + (CB4[f40 * 1 + 0].y * f54);
    vec4 f65 = ((f58 * f6.x) + (f61 * f6.y)) + (f64 * f6.z);
    float f66 = f65.x;
    float f67 = f66 - f65.z;
    vec3 f68 = vec4(vec3(f67, f66, f67) + (vec3(f65.yzy) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f69 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec3 f70 = normalize(VARYING8);
    float f71 = 0.08900000154972076416015625 + (f26.y * 0.9110000133514404296875);
    float f72 = CB0[31].w * f69;
    vec3 f73 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f74 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f75 = VARYING4.yzx - (VARYING4.yzx * f74);
    vec4 f76 = texture(LightMapTexture, f75);
    vec4 f77 = texture(LightGridSkylightTexture, f75);
    vec4 f78 = vec4(clamp(f74, 0.0, 1.0));
    vec4 f79 = mix(f76, vec4(0.0), f78);
    vec4 f80 = mix(f77, vec4(1.0), f78);
    float f81 = f80.x;
    vec4 f82 = texture(ShadowMapTexture, f73.xy);
    float f83 = f73.z;
    vec3 f84 = reflect(-f70, f34);
    float f85 = f71 * 5.0;
    vec3 f86 = vec4(f84, f85).xyz;
    vec3 f87 = textureLod(PrefilteredEnvIndoorTexture, f86, f85).xyz;
    vec3 f88;
    if (CB0[32].w == 0.0)
    {
        f88 = f87;
    }
    else
    {
        f88 = mix(f87, textureLod(PrefilteredEnvBlendTargetTexture, f86, f85).xyz, vec3(CB0[32].w));
    }
    vec4 f89 = texture(PrecomputedBRDFTexture, vec2(f71, max(9.9999997473787516355514526367188e-05, dot(f34, f70))));
    float f90 = f89.x;
    float f91 = f89.y;
    vec3 f92 = ((vec3(0.039999999105930328369140625) * f90) + vec3(f91)) / vec3(f90 + f91);
    vec3 f93 = f34 * f34;
    bvec3 f94 = lessThan(f34, vec3(0.0));
    vec3 f95 = vec3(f94.x ? f93.x : vec3(0.0).x, f94.y ? f93.y : vec3(0.0).y, f94.z ? f93.z : vec3(0.0).z);
    vec3 f96 = f93 - f95;
    float f97 = f96.x;
    float f98 = f96.y;
    float f99 = f96.z;
    float f100 = f95.x;
    float f101 = f95.y;
    float f102 = f95.z;
    vec3 f103 = -CB0[16].xyz;
    float f104 = dot(f34, f103) * ((1.0 - ((step(f82.x, f83) * clamp(CB0[29].z + (CB0[29].w * abs(f83 - 0.5)), 0.0, 1.0)) * f82.y)) * f80.y);
    vec3 f105 = normalize(f70 + f103);
    float f106 = clamp(f104, 0.0, 1.0);
    float f107 = f71 * f71;
    float f108 = max(0.001000000047497451305389404296875, dot(f34, f105));
    float f109 = dot(f103, f105);
    float f110 = 1.0 - f109;
    float f111 = f110 * f110;
    float f112 = (f111 * f111) * f110;
    vec3 f113 = vec3(f112) + (vec3(0.039999999105930328369140625) * (1.0 - f112));
    float f114 = f107 * f107;
    float f115 = (((f108 * f114) - f108) * f108) + 1.0;
    vec3 f116 = (((((vec3((f26.z * 2.0) * f69) + (((vec3(1.0) - (f92 * f72)) * (((((((CB0[40].xyz * f97) + (CB0[42].xyz * f98)) + (CB0[44].xyz * f99)) + (CB0[41].xyz * f100)) + (CB0[43].xyz * f101)) + (CB0[45].xyz * f102)) + (((((((CB0[34].xyz * f97) + (CB0[36].xyz * f98)) + (CB0[38].xyz * f99)) + (CB0[35].xyz * f100)) + (CB0[37].xyz * f101)) + (CB0[39].xyz * f102)) * f81))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * f81)) * 1.0)) + ((((vec3(1.0) - (f113 * f72)) * CB0[15].xyz) * f106) + (CB0[17].xyz * clamp(-f104, 0.0, 1.0)))) + (f79.xyz * (f79.w * 120.0))) * (f68 * f68)) + (((mix(f88, textureLod(PrefilteredEnvTexture, f86, f85).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f84.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f81)) * f92) * f72) + (((f113 * (((f114 + (f114 * f114)) / (((f115 * f115) * ((f109 * 3.0) + 0.5)) * ((f108 * 0.75) + 0.25))) * f106)) * CB0[15].xyz) * (f69 * VARYING0.w)));
    vec4 f117 = vec4(0.0);
    f117.x = f116.x;
    vec4 f118 = f117;
    f118.y = f116.y;
    vec4 f119 = f118;
    f119.z = f116.z;
    vec4 f120 = f119;
    f120.w = 1.0;
    float f121 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f122 = textureLod(PrefilteredEnvTexture, vec4(-VARYING8, 0.0).xyz, max(CB0[18].y, f121) * 5.0).xyz;
    bvec3 f123 = bvec3(!(CB0[18].w == 0.0));
    vec3 f124 = mix(vec3(f123.x ? CB0[19].xyz.x : f122.x, f123.y ? CB0[19].xyz.y : f122.y, f123.z ? CB0[19].xyz.z : f122.z), f120.xyz, vec3(f121));
    vec4 f125 = f120;
    f125.x = f124.x;
    vec4 f126 = f125;
    f126.y = f124.y;
    vec4 f127 = f126;
    f127.z = f124.z;
    vec3 f128 = sqrt(clamp(f127.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f129 = f127;
    f129.x = f128.x;
    vec4 f130 = f129;
    f130.y = f128.y;
    vec4 f131 = f130;
    f131.z = f128.z;
    _entryPointOutput = f131;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$SpecularMapTexture=s3
//$$NormalMapTexture=s4
//$$AlbedoMapTexture=s0
