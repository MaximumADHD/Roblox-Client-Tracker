#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
uniform vec4 CB0[53];
uniform vec4 CB8[24];
uniform vec4 CB4[63];
uniform vec4 CB5[63];
uniform sampler2D ShadowAtlasTexture;
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
in vec4 VARYING9;
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
    vec3 f32 = (((mix(vec3(1.0), CB4[int(VARYING9.x + 0.5) * 1 + 0].xyz, vec3(f29.w)) * f29.xyz) * f5.x) + ((mix(vec3(1.0), CB4[int(VARYING9.y + 0.5) * 1 + 0].xyz, vec3(f30.w)) * f30.xyz) * f5.y)) + ((mix(vec3(1.0), CB4[int(VARYING9.z + 0.5) * 1 + 0].xyz, vec3(f31.w)) * f31.xyz) * f5.z);
    vec3 f33 = f32 * f32;
    vec3 f34 = CB0[7].xyz - VARYING5.xyz;
    float f35 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec4 f36 = texture(NormalMapTexture, f0);
    vec4 f37 = texture(NormalMapTexture, f2);
    vec4 f38 = texture(NormalMapTexture, VARYING3.xyz);
    float f39 = -VARYING6.x;
    vec2 f40 = (((f36 * f5.x) + (f37 * f5.y)) + (f38 * f5.z)).wy * 2.0;
    vec2 f41 = f40 - vec2(1.0);
    vec3 f42 = normalize(((vec3(f41, sqrt(clamp(1.0 + dot(vec2(1.0) - f40, f41), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f5, f5))) + vec3(0.0, 0.0, 1.0));
    vec3 f43 = vec3(dot(VARYING7, f5));
    vec3 f44 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f39), vec3(VARYING6.y, f39, 0.0), f43) * f42.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f43) * f42.y)) + (VARYING6 * f42.z)), 0.0).xyz;
    vec3 f45 = -CB0[11].xyz;
    float f46 = dot(f44, f45);
    vec3 f47 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f48 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f49 = VARYING4.yzx - (VARYING4.yzx * f48);
    vec4 f50 = texture(LightMapTexture, f49);
    vec4 f51 = texture(LightGridSkylightTexture, f49);
    vec4 f52 = vec4(clamp(f48, 0.0, 1.0));
    vec4 f53 = mix(f50, vec4(0.0), f52);
    vec4 f54 = mix(f51, vec4(1.0), f52);
    float f55 = f54.x;
    float f56 = f54.y;
    vec3 f57 = f47 - CB0[41].xyz;
    vec3 f58 = f47 - CB0[42].xyz;
    vec3 f59 = f47 - CB0[43].xyz;
    vec4 f60 = vec4(f47, 1.0) * mat4(CB8[((dot(f57, f57) < CB0[41].w) ? 0 : ((dot(f58, f58) < CB0[42].w) ? 1 : ((dot(f59, f59) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f57, f57) < CB0[41].w) ? 0 : ((dot(f58, f58) < CB0[42].w) ? 1 : ((dot(f59, f59) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f57, f57) < CB0[41].w) ? 0 : ((dot(f58, f58) < CB0[42].w) ? 1 : ((dot(f59, f59) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f57, f57) < CB0[41].w) ? 0 : ((dot(f58, f58) < CB0[42].w) ? 1 : ((dot(f59, f59) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f61 = textureLod(ShadowAtlasTexture, f60.xy, 0.0);
    vec2 f62 = vec2(0.0);
    f62.x = CB0[46].z;
    vec2 f63 = f62;
    f63.y = CB0[46].w;
    float f64 = (2.0 * f60.z) - 1.0;
    float f65 = exp(CB0[46].z * f64);
    float f66 = -exp((-CB0[46].w) * f64);
    vec2 f67 = (f63 * CB0[47].y) * vec2(f65, f66);
    vec2 f68 = f67 * f67;
    float f69 = f61.x;
    float f70 = max(f61.y - (f69 * f69), f68.x);
    float f71 = f65 - f69;
    float f72 = f61.z;
    float f73 = max(f61.w - (f72 * f72), f68.y);
    float f74 = f66 - f72;
    vec3 f75 = normalize(f34);
    float f76 = 0.08900000154972076416015625 + (f28.y * 0.9110000133514404296875);
    float f77 = f28.x;
    vec3 f78 = mix(vec3(0.039999999105930328369140625), f33, vec3(f77));
    float f79 = CB0[26].w * f35;
    vec3 f80 = reflect(-f75, f44);
    vec3 f81 = normalize(f45 + f75);
    float f82 = clamp((f46 * CB0[9].w) * (((f46 * CB0[47].x) > 0.0) ? mix(min((f65 <= f69) ? 1.0 : clamp(((f70 / (f70 + (f71 * f71))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f66 <= f72) ? 1.0 : clamp(((f73 / (f73 + (f74 * f74))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f56, clamp((length(f47 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f56), 0.0, 1.0);
    float f83 = f76 * f76;
    float f84 = max(0.001000000047497451305389404296875, dot(f44, f81));
    float f85 = dot(f45, f81);
    float f86 = 1.0 - f85;
    float f87 = f86 * f86;
    float f88 = (f87 * f87) * f86;
    vec3 f89 = vec3(f88) + (f78 * (1.0 - f88));
    float f90 = f83 * f83;
    float f91 = (((f84 * f90) - f84) * f84) + 1.0;
    float f92 = 1.0 - f77;
    float f93 = f79 * f92;
    vec3 f94 = vec3(f92);
    float f95 = f76 * 5.0;
    vec3 f96 = vec4(f80, f95).xyz;
    vec3 f97 = textureLod(PrefilteredEnvIndoorTexture, f96, f95).xyz;
    vec3 f98;
    if (CB0[27].w == 0.0)
    {
        f98 = f97;
    }
    else
    {
        f98 = mix(f97, textureLod(PrefilteredEnvBlendTargetTexture, f96, f95).xyz, vec3(CB0[27].w));
    }
    vec4 f99 = texture(PrecomputedBRDFTexture, vec2(f76, max(9.9999997473787516355514526367188e-05, dot(f44, f75))));
    float f100 = f99.x;
    float f101 = f99.y;
    vec3 f102 = ((f78 * f100) + vec3(f101)) / vec3(f100 + f101);
    vec3 f103 = f44 * f44;
    bvec3 f104 = lessThan(f44, vec3(0.0));
    vec3 f105 = vec3(f104.x ? f103.x : vec3(0.0).x, f104.y ? f103.y : vec3(0.0).y, f104.z ? f103.z : vec3(0.0).z);
    vec3 f106 = f103 - f105;
    float f107 = f106.x;
    float f108 = f106.y;
    float f109 = f106.z;
    float f110 = f105.x;
    float f111 = f105.y;
    float f112 = f105.z;
    vec3 f113 = ((((((((f94 - (f89 * f93)) * CB0[10].xyz) * f82) + ((f53.xyz * (f53.w * 120.0)) * 1.0)) + ((f94 - (f102 * f93)) * (((((((CB0[35].xyz * f107) + (CB0[37].xyz * f108)) + (CB0[39].xyz * f109)) + (CB0[36].xyz * f110)) + (CB0[38].xyz * f111)) + (CB0[40].xyz * f112)) + (((((((CB0[29].xyz * f107) + (CB0[31].xyz * f108)) + (CB0[33].xyz * f109)) + (CB0[30].xyz * f110)) + (CB0[32].xyz * f111)) + (CB0[34].xyz * f112)) * f55)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f55))) + vec3((f28.z * 2.0) * f35)) * f33) + ((((((f89 * (((f90 + (f90 * f90)) / (((f91 * f91) * ((f85 * 3.0) + 0.5)) * ((f84 * 0.75) + 0.25))) * f82)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * f35) * VARYING0.w) + ((mix(f98, textureLod(PrefilteredEnvTexture, f96, f95).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f80.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f55)) * f102) * f79));
    vec4 f114 = vec4(0.0);
    f114.x = f113.x;
    vec4 f115 = f114;
    f115.y = f113.y;
    vec4 f116 = f115;
    f116.z = f113.z;
    vec4 f117 = f116;
    f117.w = 1.0;
    float f118 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f119 = textureLod(PrefilteredEnvTexture, vec4(-f34, 0.0).xyz, max(CB0[13].y, f118) * 5.0).xyz;
    bvec3 f120 = bvec3(!(CB0[13].w == 0.0));
    vec3 f121 = mix(vec3(f120.x ? CB0[14].xyz.x : f119.x, f120.y ? CB0[14].xyz.y : f119.y, f120.z ? CB0[14].xyz.z : f119.z), f117.xyz, vec3(f118));
    vec4 f122 = f117;
    f122.x = f121.x;
    vec4 f123 = f122;
    f123.y = f121.y;
    vec4 f124 = f123;
    f124.z = f121.z;
    vec3 f125 = sqrt(clamp(f124.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f126 = f124;
    f126.x = f125.x;
    vec4 f127 = f126;
    f127.y = f125.y;
    vec4 f128 = f127;
    f128.z = f125.z;
    _entryPointOutput = f128;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
