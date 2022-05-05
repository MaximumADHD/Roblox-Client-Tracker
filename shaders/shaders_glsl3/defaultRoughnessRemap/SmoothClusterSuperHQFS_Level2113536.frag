#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
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
    float f38 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec4 f39 = texture(NormalMapTexture, f0);
    vec4 f40 = texture(NormalMapTexture, f2);
    vec4 f41 = texture(NormalMapTexture, VARYING3.xyz);
    vec2 f42 = (((f39 * f5.x) + (f40 * f5.y)) + (f41 * f5.z)).wy * 2.0;
    vec2 f43 = f42 - vec2(1.0);
    vec3 f44 = normalize(((vec3(f43, sqrt(clamp(1.0 + dot(vec2(1.0) - f42, f43), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f5, f5))) + vec3(0.0, 0.0, 1.0));
    vec3 f45 = vec3(dot(VARYING7, f5));
    vec3 f46 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f45) * f44.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f45) * f44.y)) + (VARYING6 * f44.z)), 0.0).xyz;
    vec3 f47 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f48 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f49 = VARYING4.yzx - (VARYING4.yzx * f48);
    vec4 f50 = texture(LightMapTexture, f49);
    vec4 f51 = texture(LightGridSkylightTexture, f49);
    vec4 f52 = vec4(clamp(f48, 0.0, 1.0));
    vec4 f53 = mix(f50, vec4(0.0), f52);
    vec4 f54 = mix(f51, vec4(1.0), f52);
    float f55 = f54.x;
    vec4 f56 = texture(ShadowMapTexture, f47.xy);
    float f57 = f47.z;
    vec3 f58 = normalize(VARYING9);
    float f59 = 0.08900000154972076416015625 + (f28.y * 0.9110000133514404296875);
    float f60 = f28.x;
    vec3 f61 = mix(vec3(0.039999999105930328369140625), f37, vec3(f60));
    float f62 = CB0[26].w * f38;
    vec3 f63 = reflect(-f58, f46);
    vec3 f64 = -CB0[11].xyz;
    float f65 = (dot(f46, f64) * CB0[9].w) * ((1.0 - ((step(f56.x, f57) * clamp(CB0[24].z + (CB0[24].w * abs(f57 - 0.5)), 0.0, 1.0)) * f56.y)) * f54.y);
    vec3 f66 = normalize(f64 + f58);
    float f67 = clamp(f65, 0.0, 1.0);
    float f68 = f59 * f59;
    float f69 = max(0.001000000047497451305389404296875, dot(f46, f66));
    float f70 = dot(f64, f66);
    float f71 = 1.0 - f70;
    float f72 = f71 * f71;
    float f73 = (f72 * f72) * f71;
    vec3 f74 = vec3(f73) + (f61 * (1.0 - f73));
    float f75 = f68 * f68;
    float f76 = (((f69 * f75) - f69) * f69) + 1.0;
    float f77 = 1.0 - f60;
    float f78 = f62 * f77;
    vec3 f79 = vec3(f77);
    float f80 = f59 * 5.0;
    vec3 f81 = vec4(f63, f80).xyz;
    vec3 f82 = textureLod(PrefilteredEnvIndoorTexture, f81, f80).xyz;
    vec3 f83;
    if (CB0[27].w == 0.0)
    {
        f83 = f82;
    }
    else
    {
        f83 = mix(f82, textureLod(PrefilteredEnvBlendTargetTexture, f81, f80).xyz, vec3(CB0[27].w));
    }
    vec4 f84 = texture(PrecomputedBRDFTexture, vec2(f59, max(9.9999997473787516355514526367188e-05, dot(f46, f58))));
    float f85 = f84.x;
    float f86 = f84.y;
    vec3 f87 = ((f61 * f85) + vec3(f86)) / vec3(f85 + f86);
    vec3 f88 = f46 * f46;
    bvec3 f89 = lessThan(f46, vec3(0.0));
    vec3 f90 = vec3(f89.x ? f88.x : vec3(0.0).x, f89.y ? f88.y : vec3(0.0).y, f89.z ? f88.z : vec3(0.0).z);
    vec3 f91 = f88 - f90;
    float f92 = f91.x;
    float f93 = f91.y;
    float f94 = f91.z;
    float f95 = f90.x;
    float f96 = f90.y;
    float f97 = f90.z;
    vec3 f98 = (((((((((f79 - (f74 * f78)) * CB0[10].xyz) * f67) + (CB0[12].xyz * (f77 * clamp(-f65, 0.0, 1.0)))) + ((f53.xyz * (f53.w * 120.0)) * 1.0)) + ((f79 - (f87 * f78)) * (((((((CB0[35].xyz * f92) + (CB0[37].xyz * f93)) + (CB0[39].xyz * f94)) + (CB0[36].xyz * f95)) + (CB0[38].xyz * f96)) + (CB0[40].xyz * f97)) + (((((((CB0[29].xyz * f92) + (CB0[31].xyz * f93)) + (CB0[33].xyz * f94)) + (CB0[30].xyz * f95)) + (CB0[32].xyz * f96)) + (CB0[34].xyz * f97)) * f55)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f55))) + vec3((f28.z * 2.0) * f38)) * f37) + ((((((f74 * (((f75 + (f75 * f75)) / (((f76 * f76) * ((f70 * 3.0) + 0.5)) * ((f69 * 0.75) + 0.25))) * f67)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * f38) * VARYING0.w) + ((mix(f83, textureLod(PrefilteredEnvTexture, f81, f80).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f63.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f55)) * f87) * f62));
    vec4 f99 = vec4(0.0);
    f99.x = f98.x;
    vec4 f100 = f99;
    f100.y = f98.y;
    vec4 f101 = f100;
    f101.z = f98.z;
    vec4 f102 = f101;
    f102.w = 1.0;
    float f103 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f104 = textureLod(PrefilteredEnvTexture, vec4(-VARYING9, 0.0).xyz, max(CB0[13].y, f103) * 5.0).xyz;
    bvec3 f105 = bvec3(!(CB0[13].w == 0.0));
    vec3 f106 = mix(vec3(f105.x ? CB0[14].xyz.x : f104.x, f105.y ? CB0[14].xyz.y : f104.y, f105.z ? CB0[14].xyz.z : f104.z), f102.xyz, vec3(f103));
    vec4 f107 = f102;
    f107.x = f106.x;
    vec4 f108 = f107;
    f108.y = f106.y;
    vec4 f109 = f108;
    f109.z = f106.z;
    vec3 f110 = sqrt(clamp(f109.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f111 = f109;
    f111.x = f110.x;
    vec4 f112 = f111;
    f112.y = f110.y;
    vec4 f113 = f112;
    f113.z = f110.z;
    _entryPointOutput = f113;
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
