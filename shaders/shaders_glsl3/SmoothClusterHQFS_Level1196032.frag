#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform vec4 CB4[63];
uniform sampler2D ShadowMapTexture;
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
in vec3 VARYING8;
in vec4 VARYING9;
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
    int f9 = int(VARYING9.x + 0.5);
    int f10 = int(VARYING9.y + 0.5);
    int f11 = int(VARYING9.z + 0.5);
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
    float f49 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec3 f50 = normalize(VARYING6);
    vec3 f51 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f52 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f53 = VARYING4.yzx - (VARYING4.yzx * f52);
    vec4 f54 = texture(LightMapTexture, f53);
    vec4 f55 = texture(LightGridSkylightTexture, f53);
    vec4 f56 = vec4(clamp(f52, 0.0, 1.0));
    vec4 f57 = mix(f54, vec4(0.0), f56);
    vec4 f58 = mix(f55, vec4(1.0), f56);
    float f59 = f58.x;
    vec4 f60 = texture(ShadowMapTexture, f51.xy);
    float f61 = f51.z;
    vec3 f62 = normalize(VARYING8);
    float f63 = f5.y;
    float f64 = f5.x;
    vec3 f65 = mix(vec3(0.039999999105930328369140625), f48, vec3(f64));
    float f66 = CB0[26].w * f49;
    vec3 f67 = reflect(-f62, f50);
    vec3 f68 = -CB0[11].xyz;
    float f69 = (dot(f50, f68) * CB0[9].w) * ((1.0 - ((step(f60.x, f61) * clamp(CB0[24].z + (CB0[24].w * abs(f61 - 0.5)), 0.0, 1.0)) * f60.y)) * f58.y);
    vec3 f70 = normalize(f68 + f62);
    float f71 = clamp(f69, 0.0, 1.0);
    float f72 = f63 * f63;
    float f73 = max(0.001000000047497451305389404296875, dot(f50, f70));
    float f74 = dot(f68, f70);
    float f75 = 1.0 - f74;
    float f76 = f75 * f75;
    float f77 = (f76 * f76) * f75;
    vec3 f78 = vec3(f77) + (f65 * (1.0 - f77));
    float f79 = f72 * f72;
    float f80 = (((f73 * f79) - f73) * f73) + 1.0;
    float f81 = 1.0 - f64;
    float f82 = f66 * f81;
    vec3 f83 = vec3(f81);
    float f84 = f63 * 5.0;
    vec3 f85 = vec4(f67, f84).xyz;
    vec3 f86 = textureLod(PrefilteredEnvIndoorTexture, f85, f84).xyz;
    vec3 f87;
    if (CB0[27].w == 0.0)
    {
        f87 = f86;
    }
    else
    {
        f87 = mix(f86, textureLod(PrefilteredEnvBlendTargetTexture, f85, f84).xyz, vec3(CB0[27].w));
    }
    vec4 f88 = texture(PrecomputedBRDFTexture, vec2(f63, max(9.9999997473787516355514526367188e-05, dot(f50, f62))));
    float f89 = f88.x;
    float f90 = f88.y;
    vec3 f91 = ((f65 * f89) + vec3(f90)) / vec3(f89 + f90);
    vec3 f92 = f50 * f50;
    bvec3 f93 = lessThan(f50, vec3(0.0));
    vec3 f94 = vec3(f93.x ? f92.x : vec3(0.0).x, f93.y ? f92.y : vec3(0.0).y, f93.z ? f92.z : vec3(0.0).z);
    vec3 f95 = f92 - f94;
    float f96 = f95.x;
    float f97 = f95.y;
    float f98 = f95.z;
    float f99 = f94.x;
    float f100 = f94.y;
    float f101 = f94.z;
    vec3 f102 = (((((((((f83 - (f78 * f82)) * CB0[10].xyz) * f71) + (CB0[12].xyz * (f81 * clamp(-f69, 0.0, 1.0)))) + ((f57.xyz * (f57.w * 120.0)) * 1.0)) + ((f83 - (f91 * f82)) * (((((((CB0[35].xyz * f96) + (CB0[37].xyz * f97)) + (CB0[39].xyz * f98)) + (CB0[36].xyz * f99)) + (CB0[38].xyz * f100)) + (CB0[40].xyz * f101)) + (((((((CB0[29].xyz * f96) + (CB0[31].xyz * f97)) + (CB0[33].xyz * f98)) + (CB0[30].xyz * f99)) + (CB0[32].xyz * f100)) + (CB0[34].xyz * f101)) * f59)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f59))) + vec3((f5.z * 2.0) * f49)) * f48) + ((((((f78 * (((f79 + (f79 * f79)) / (((f80 * f80) * ((f74 * 3.0) + 0.5)) * ((f73 * 0.75) + 0.25))) * f71)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * f49) * VARYING0.w) + ((mix(f87, textureLod(PrefilteredEnvTexture, f85, f84).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f67.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f59)) * f91) * f66));
    vec4 f103 = vec4(0.0);
    f103.x = f102.x;
    vec4 f104 = f103;
    f104.y = f102.y;
    vec4 f105 = f104;
    f105.z = f102.z;
    vec4 f106 = f105;
    f106.w = 1.0;
    float f107 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f108 = textureLod(PrefilteredEnvTexture, vec4(-VARYING8, 0.0).xyz, max(CB0[13].y, f107) * 5.0).xyz;
    bvec3 f109 = bvec3(!(CB0[13].w == 0.0));
    vec3 f110 = mix(vec3(f109.x ? CB0[14].xyz.x : f108.x, f109.y ? CB0[14].xyz.y : f108.y, f109.z ? CB0[14].xyz.z : f108.z), f106.xyz, vec3(f107));
    vec4 f111 = f106;
    f111.x = f110.x;
    vec4 f112 = f111;
    f112.y = f110.y;
    vec4 f113 = f112;
    f113.z = f110.z;
    vec3 f114 = sqrt(clamp(f113.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f115 = f113;
    f115.x = f114.x;
    vec4 f116 = f115;
    f116.y = f114.y;
    vec4 f117 = f116;
    f117.z = f114.z;
    _entryPointOutput = f117;
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
