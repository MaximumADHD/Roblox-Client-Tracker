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
    vec2 f32 = f26.xz - vec2(0.5);
    float f33 = f32.x;
    vec4 f34 = f26.yxzw;
    f34.y = f33;
    float f35 = f32.y;
    vec4 f36 = f34;
    f36.z = f35;
    vec2 f37 = f27.xz - vec2(0.5);
    float f38 = f37.x;
    vec4 f39 = f27.yxzw;
    f39.y = f38;
    float f40 = f37.y;
    vec4 f41 = f39;
    f41.z = f40;
    vec2 f42 = f28.xz - vec2(0.5);
    float f43 = f42.x;
    vec4 f44 = f28.yxzw;
    f44.y = f43;
    float f45 = f42.y;
    vec4 f46 = f44;
    f46.z = f45;
    vec4 f47 = f36;
    f47.x = CB4[f29 * 1 + 0].x * f26.y;
    vec4 f48 = f47;
    f48.y = (CB4[f29 * 1 + 0].y * f33) - (CB4[f29 * 1 + 0].z * f35);
    vec4 f49 = f48;
    f49.z = (CB4[f29 * 1 + 0].z * f33) + (CB4[f29 * 1 + 0].y * f35);
    vec4 f50 = f41;
    f50.x = CB4[f30 * 1 + 0].x * f27.y;
    vec4 f51 = f50;
    f51.y = (CB4[f30 * 1 + 0].y * f38) - (CB4[f30 * 1 + 0].z * f40);
    vec4 f52 = f51;
    f52.z = (CB4[f30 * 1 + 0].z * f38) + (CB4[f30 * 1 + 0].y * f40);
    vec4 f53 = f46;
    f53.x = CB4[f31 * 1 + 0].x * f28.y;
    vec4 f54 = f53;
    f54.y = (CB4[f31 * 1 + 0].y * f43) - (CB4[f31 * 1 + 0].z * f45);
    vec4 f55 = f54;
    f55.z = (CB4[f31 * 1 + 0].z * f43) + (CB4[f31 * 1 + 0].y * f45);
    vec4 f56 = ((f49 * f5.x) + (f52 * f5.y)) + (f55 * f5.z);
    float f57 = f56.x;
    float f58 = f57 - f56.z;
    vec3 f59 = vec4(vec3(f58, f57, f58) + (vec3(f56.yzy) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
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
    float f70 = 0.08900000154972076416015625 + (f25.y * 0.9110000133514404296875);
    float f71 = CB0[31].w * f60;
    vec3 f72 = reflect(-f69, f68);
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
    vec3 f84 = -CB0[16].xyz;
    float f85 = dot(f68, f84) * ((1.0 - ((step(f82.x, f83) * clamp(CB0[29].z + (CB0[29].w * abs(f83 - 0.5)), 0.0, 1.0)) * f82.y)) * f80.y);
    vec3 f86 = normalize(f69 - CB0[16].xyz);
    float f87 = clamp(f85, 0.0, 1.0);
    float f88 = f70 * f70;
    float f89 = max(0.001000000047497451305389404296875, dot(f68, f86));
    float f90 = dot(f84, f86);
    float f91 = 1.0 - f90;
    float f92 = f91 * f91;
    float f93 = (f92 * f92) * f91;
    vec3 f94 = vec3(f93) + (vec3(0.039999999105930328369140625) * (1.0 - f93));
    float f95 = f88 * f88;
    float f96 = (((f89 * f95) - f89) * f89) + 1.0;
    float f97 = f70 * 5.0;
    vec3 f98 = vec4(f72, f97).xyz;
    vec3 f99 = textureLod(PrefilteredEnvIndoorTexture, f98, f97).xyz;
    vec3 f100;
    if (CB0[32].w == 0.0)
    {
        f100 = f99;
    }
    else
    {
        f100 = mix(f99, textureLod(PrefilteredEnvBlendTargetTexture, f98, f97).xyz, vec3(CB0[32].w));
    }
    vec4 f101 = texture(PrecomputedBRDFTexture, vec2(f70, max(9.9999997473787516355514526367188e-05, dot(f68, f69))));
    float f102 = f101.x;
    float f103 = f101.y;
    vec3 f104 = ((vec3(0.039999999105930328369140625) * f102) + vec3(f103)) / vec3(f102 + f103);
    vec3 f105 = f68 * f68;
    bvec3 f106 = lessThan(f68, vec3(0.0));
    vec3 f107 = vec3(f106.x ? f105.x : vec3(0.0).x, f106.y ? f105.y : vec3(0.0).y, f106.z ? f105.z : vec3(0.0).z);
    vec3 f108 = f105 - f107;
    float f109 = f108.x;
    float f110 = f108.y;
    float f111 = f108.z;
    float f112 = f107.x;
    float f113 = f107.y;
    float f114 = f107.z;
    vec3 f115 = ((((((f79.xyz * (f79.w * 120.0)) + ((((vec3(1.0) - (f94 * f71)) * CB0[15].xyz) * f87) + (CB0[17].xyz * clamp(-f85, 0.0, 1.0)))) + (((vec3(1.0) - (f104 * f71)) * (((((((CB0[40].xyz * f109) + (CB0[42].xyz * f110)) + (CB0[44].xyz * f111)) + (CB0[41].xyz * f112)) + (CB0[43].xyz * f113)) + (CB0[45].xyz * f114)) + (((((((CB0[34].xyz * f109) + (CB0[36].xyz * f110)) + (CB0[38].xyz * f111)) + (CB0[35].xyz * f112)) + (CB0[37].xyz * f113)) + (CB0[39].xyz * f114)) * f81))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * f81)) * 1.0)) + vec3((f25.z * 2.0) * f60)) * (f59 * f59)) + (((((f94 * (((f95 + (f95 * f95)) / max(((f96 * f96) * ((f90 * 3.0) + 0.5)) * ((f89 * 0.75) + 0.25), 3.0999999580672010779380798339844e-05)) * f87)) * CB0[15].xyz) * 1.0) * (f60 * VARYING0.w)) + ((mix(f100, textureLod(PrefilteredEnvTexture, f98, f97).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f72.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f81)) * f104) * f71));
    vec4 f116 = vec4(0.0);
    f116.x = f115.x;
    vec4 f117 = f116;
    f117.y = f115.y;
    vec4 f118 = f117;
    f118.z = f115.z;
    vec4 f119 = f118;
    f119.w = 1.0;
    float f120 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f121 = textureLod(PrefilteredEnvTexture, vec4(-VARYING9, 0.0).xyz, max(CB0[18].y, f120) * 5.0).xyz;
    bvec3 f122 = bvec3(!(CB0[18].w == 0.0));
    vec3 f123 = mix(vec3(f122.x ? CB0[19].xyz.x : f121.x, f122.y ? CB0[19].xyz.y : f121.y, f122.z ? CB0[19].xyz.z : f121.z), f119.xyz, vec3(f120));
    vec4 f124 = f119;
    f124.x = f123.x;
    vec4 f125 = f124;
    f125.y = f123.y;
    vec4 f126 = f125;
    f126.z = f123.z;
    vec3 f127 = sqrt(clamp(f126.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f128 = f126;
    f128.x = f127.x;
    vec4 f129 = f128;
    f129.y = f127.y;
    vec4 f130 = f129;
    f130.z = f127.z;
    _entryPointOutput = f130;
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
