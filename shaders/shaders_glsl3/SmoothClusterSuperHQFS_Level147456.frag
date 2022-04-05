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
    float f42 = -VARYING6.x;
    vec2 f43 = (((f39 * f5.x) + (f40 * f5.y)) + (f41 * f5.z)).wy * 2.0;
    vec2 f44 = f43 - vec2(1.0);
    vec3 f45 = normalize(((vec3(f44, sqrt(clamp(1.0 + dot(vec2(1.0) - f43, f44), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f5, f5))) + vec3(0.0, 0.0, 1.0));
    vec3 f46 = vec3(dot(VARYING7, f5));
    vec3 f47 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f42), vec3(VARYING6.y, f42, 0.0), f46) * f45.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f46) * f45.y)) + (VARYING6 * f45.z)), 0.0).xyz;
    vec3 f48 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f49 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f50 = VARYING4.yzx - (VARYING4.yzx * f49);
    vec4 f51 = texture(LightMapTexture, f50);
    vec4 f52 = texture(LightGridSkylightTexture, f50);
    vec4 f53 = vec4(clamp(f49, 0.0, 1.0));
    vec4 f54 = mix(f51, vec4(0.0), f53);
    vec4 f55 = mix(f52, vec4(1.0), f53);
    float f56 = f55.x;
    vec4 f57 = texture(ShadowMapTexture, f48.xy);
    float f58 = f48.z;
    vec3 f59 = normalize(VARYING9);
    float f60 = f28.y;
    float f61 = f28.x;
    vec3 f62 = mix(vec3(0.039999999105930328369140625), f37, vec3(f61));
    float f63 = CB0[26].w * f38;
    vec3 f64 = reflect(-f59, f47);
    vec3 f65 = -CB0[11].xyz;
    float f66 = (dot(f47, f65) * CB0[9].w) * ((1.0 - ((step(f57.x, f58) * clamp(CB0[24].z + (CB0[24].w * abs(f58 - 0.5)), 0.0, 1.0)) * f57.y)) * f55.y);
    vec3 f67 = normalize(f65 + f59);
    float f68 = clamp(f66, 0.0, 1.0);
    float f69 = f60 * f60;
    float f70 = max(0.001000000047497451305389404296875, dot(f47, f67));
    float f71 = dot(f65, f67);
    float f72 = 1.0 - f71;
    float f73 = f72 * f72;
    float f74 = (f73 * f73) * f72;
    vec3 f75 = vec3(f74) + (f62 * (1.0 - f74));
    float f76 = f69 * f69;
    float f77 = (((f70 * f76) - f70) * f70) + 1.0;
    float f78 = 1.0 - f61;
    float f79 = f63 * f78;
    vec3 f80 = vec3(f78);
    float f81 = f60 * 5.0;
    vec3 f82 = vec4(f64, f81).xyz;
    vec3 f83 = textureLod(PrefilteredEnvIndoorTexture, f82, f81).xyz;
    vec3 f84;
    if (CB0[27].w == 0.0)
    {
        f84 = f83;
    }
    else
    {
        f84 = mix(f83, textureLod(PrefilteredEnvBlendTargetTexture, f82, f81).xyz, vec3(CB0[27].w));
    }
    vec4 f85 = texture(PrecomputedBRDFTexture, vec2(f60, max(9.9999997473787516355514526367188e-05, dot(f47, f59))));
    float f86 = f85.x;
    float f87 = f85.y;
    vec3 f88 = ((f62 * f86) + vec3(f87)) / vec3(f86 + f87);
    vec3 f89 = f47 * f47;
    bvec3 f90 = lessThan(f47, vec3(0.0));
    vec3 f91 = vec3(f90.x ? f89.x : vec3(0.0).x, f90.y ? f89.y : vec3(0.0).y, f90.z ? f89.z : vec3(0.0).z);
    vec3 f92 = f89 - f91;
    float f93 = f92.x;
    float f94 = f92.y;
    float f95 = f92.z;
    float f96 = f91.x;
    float f97 = f91.y;
    float f98 = f91.z;
    vec3 f99 = (((((((((f80 - (f75 * f79)) * CB0[10].xyz) * f68) + (CB0[12].xyz * (f78 * clamp(-f66, 0.0, 1.0)))) + ((f54.xyz * (f54.w * 120.0)) * 1.0)) + ((f80 - (f88 * f79)) * (((((((CB0[35].xyz * f93) + (CB0[37].xyz * f94)) + (CB0[39].xyz * f95)) + (CB0[36].xyz * f96)) + (CB0[38].xyz * f97)) + (CB0[40].xyz * f98)) + (((((((CB0[29].xyz * f93) + (CB0[31].xyz * f94)) + (CB0[33].xyz * f95)) + (CB0[30].xyz * f96)) + (CB0[32].xyz * f97)) + (CB0[34].xyz * f98)) * f56)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f56))) + vec3((f28.z * 2.0) * f38)) * f37) + ((((((f75 * (((f76 + (f76 * f76)) / (((f77 * f77) * ((f71 * 3.0) + 0.5)) * ((f70 * 0.75) + 0.25))) * f68)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * f38) * VARYING0.w) + ((mix(f84, textureLod(PrefilteredEnvTexture, f82, f81).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f64.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f56)) * f88) * f63));
    vec4 f100 = vec4(0.0);
    f100.x = f99.x;
    vec4 f101 = f100;
    f101.y = f99.y;
    vec4 f102 = f101;
    f102.z = f99.z;
    vec4 f103 = f102;
    f103.w = 1.0;
    float f104 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f105 = textureLod(PrefilteredEnvTexture, vec4(-VARYING9, 0.0).xyz, max(CB0[13].y, f104) * 5.0).xyz;
    bvec3 f106 = bvec3(!(CB0[13].w == 0.0));
    vec3 f107 = mix(vec3(f106.x ? CB0[14].xyz.x : f105.x, f106.y ? CB0[14].xyz.y : f105.y, f106.z ? CB0[14].xyz.z : f105.z), f103.xyz, vec3(f104));
    vec4 f108 = f103;
    f108.x = f107.x;
    vec4 f109 = f108;
    f109.y = f107.y;
    vec4 f110 = f109;
    f110.z = f107.z;
    vec3 f111 = sqrt(clamp(f110.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f112 = f110;
    f112.x = f111.x;
    vec4 f113 = f112;
    f113.y = f111.y;
    vec4 f114 = f113;
    f114.z = f111.z;
    _entryPointOutput = f114;
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
