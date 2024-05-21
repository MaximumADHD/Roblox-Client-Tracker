#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SCLayerData.h>
#include <LightShadowTransformGPU.h>
uniform vec4 CB0[57];
uniform vec4 CB5[189];
uniform vec4 CB4[24];
uniform sampler2D ShadowAtlasTexture;
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
in vec4 VARYING8;
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
    if (VARYING8.w < 1.0)
    {
        ivec3 f7 = ivec3(VARYING8.xyz + vec3(0.5));
        int f8 = f7.x;
        int f9 = f7.y;
        int f10 = f7.z;
        float f11 = dot(VARYING0.xyz, vec3(CB5[f8 * 3 + 1].z, CB5[f9 * 3 + 1].z, CB5[f10 * 3 + 1].z));
        vec3 f12 = vec3(0.0);
        f12.x = clamp((f1.w * CB5[f8 * 3 + 1].x) + CB5[f8 * 3 + 1].y, 0.0, 1.0);
        vec3 f13 = f12;
        f13.y = clamp((f3.w * CB5[f9 * 3 + 1].x) + CB5[f9 * 3 + 1].y, 0.0, 1.0);
        vec3 f14 = f13;
        f14.z = clamp((f5.w * CB5[f10 * 3 + 1].x) + CB5[f10 * 3 + 1].y, 0.0, 1.0);
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
        f6 = mix(vec3(f21, f22, f23) / vec3((f21 + f22) + f23), VARYING0.xyz, vec3(clamp((sqrt(max(dot(f24, f24), dot(f25, f25))) * 7.0) + clamp(VARYING8.w, 0.0, 1.0), 0.0, 1.0)));
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
    vec3 f38 = (((mix(vec3(1.0), CB5[int(VARYING8.x + 0.5) * 3 + 2].xyz, vec3(f35.w)) * f35.xyz) * f6.x) + ((mix(vec3(1.0), CB5[int(VARYING8.y + 0.5) * 3 + 2].xyz, vec3(f36.w)) * f36.xyz) * f6.y)) + ((mix(vec3(1.0), CB5[int(VARYING8.z + 0.5) * 3 + 2].xyz, vec3(f37.w)) * f37.xyz) * f6.z);
    vec3 f39 = f38 * f38;
    vec3 f40 = CB0[11].xyz - VARYING5.xyz;
    float f41 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec3 f42 = -CB0[16].xyz;
    float f43 = dot(f34, f42);
    vec3 f44 = normalize(f40);
    float f45 = 0.08900000154972076416015625 + (f26.y * 0.9110000133514404296875);
    float f46 = f26.x;
    vec3 f47 = mix(vec3(0.039999999105930328369140625), f39, vec3(f46));
    float f48 = CB0[31].w * f41;
    vec3 f49 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f50 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f51 = VARYING4.yzx - (VARYING4.yzx * f50);
    vec4 f52 = texture(LightMapTexture, f51);
    vec4 f53 = texture(LightGridSkylightTexture, f51);
    vec4 f54 = vec4(clamp(f50, 0.0, 1.0));
    vec4 f55 = mix(f52, vec4(0.0), f54);
    vec4 f56 = mix(f53, vec4(1.0), f54);
    float f57 = f56.x;
    float f58 = f56.y;
    vec3 f59 = f49 - CB0[46].xyz;
    vec3 f60 = f49 - CB0[47].xyz;
    vec3 f61 = f49 - CB0[48].xyz;
    vec4 f62 = vec4(f49, 1.0) * mat4(CB4[((dot(f59, f59) < CB0[46].w) ? 0 : ((dot(f60, f60) < CB0[47].w) ? 1 : ((dot(f61, f61) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB4[((dot(f59, f59) < CB0[46].w) ? 0 : ((dot(f60, f60) < CB0[47].w) ? 1 : ((dot(f61, f61) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB4[((dot(f59, f59) < CB0[46].w) ? 0 : ((dot(f60, f60) < CB0[47].w) ? 1 : ((dot(f61, f61) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB4[((dot(f59, f59) < CB0[46].w) ? 0 : ((dot(f60, f60) < CB0[47].w) ? 1 : ((dot(f61, f61) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f63 = textureLod(ShadowAtlasTexture, f62.xy, 0.0);
    vec2 f64 = vec2(0.0);
    f64.x = CB0[51].z;
    vec2 f65 = f64;
    f65.y = CB0[51].w;
    float f66 = (2.0 * f62.z) - 1.0;
    float f67 = exp(CB0[51].z * f66);
    float f68 = -exp((-CB0[51].w) * f66);
    vec2 f69 = (f65 * CB0[52].y) * vec2(f67, f68);
    vec2 f70 = f69 * f69;
    float f71 = f63.x;
    float f72 = max(f63.y - (f71 * f71), f70.x);
    float f73 = f67 - f71;
    float f74 = f63.z;
    float f75 = max(f63.w - (f74 * f74), f70.y);
    float f76 = f68 - f74;
    vec3 f77 = reflect(-f44, f34);
    float f78 = f45 * 5.0;
    vec3 f79 = vec4(f77, f78).xyz;
    vec3 f80 = textureLod(PrefilteredEnvIndoorTexture, f79, f78).xyz;
    vec3 f81;
    if (CB0[32].w == 0.0)
    {
        f81 = f80;
    }
    else
    {
        f81 = mix(f80, textureLod(PrefilteredEnvBlendTargetTexture, f79, f78).xyz, vec3(CB0[32].w));
    }
    vec4 f82 = texture(PrecomputedBRDFTexture, vec2(f45, max(9.9999997473787516355514526367188e-05, dot(f34, f44))));
    float f83 = f82.x;
    float f84 = f82.y;
    vec3 f85 = ((f47 * f83) + vec3(f84)) / vec3(f83 + f84);
    float f86 = 1.0 - f46;
    float f87 = f48 * f86;
    vec3 f88 = vec3(f86);
    vec3 f89 = f34 * f34;
    bvec3 f90 = lessThan(f34, vec3(0.0));
    vec3 f91 = vec3(f90.x ? f89.x : vec3(0.0).x, f90.y ? f89.y : vec3(0.0).y, f90.z ? f89.z : vec3(0.0).z);
    vec3 f92 = f89 - f91;
    float f93 = f92.x;
    float f94 = f92.y;
    float f95 = f92.z;
    float f96 = f91.x;
    float f97 = f91.y;
    float f98 = f91.z;
    vec3 f99 = (mix(f81, textureLod(PrefilteredEnvTexture, f79, f78).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f77.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f57)) * f85) * f48;
    vec3 f100 = (vec3((f26.z * 2.0) * f41) + (((f88 - (f85 * f87)) * ((((((((CB0[40].xyz * f93) + (CB0[42].xyz * f94)) + (CB0[44].xyz * f95)) + (CB0[41].xyz * f96)) + (CB0[43].xyz * f97)) + (CB0[45].xyz * f98)) * CB0[30].w) + ((((((((CB0[34].xyz * f93) + (CB0[36].xyz * f94)) + (CB0[38].xyz * f95)) + (CB0[35].xyz * f96)) + (CB0[37].xyz * f97)) + (CB0[39].xyz * f98)) * CB0[30].w) * f57))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f57 * (2.0 - CB0[14].w)))) * 1.0);
    float f101 = (f43 * CB0[14].w) * (((f43 * CB0[52].x) > 0.0) ? mix(min((f67 <= f71) ? 1.0 : clamp(((f72 / (f72 + (f73 * f73))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f68 <= f74) ? 1.0 : clamp(((f75 / (f75 + (f76 * f76))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f58, clamp((length(f49 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f58);
    vec3 f102;
    vec3 f103;
    if (f101 > 0.0)
    {
        vec3 f104 = normalize(f44 + f42);
        float f105 = clamp(f101, 0.0, 1.0);
        float f106 = f45 * f45;
        float f107 = max(0.001000000047497451305389404296875, dot(f34, f104));
        float f108 = dot(f42, f104);
        float f109 = 1.0 - f108;
        float f110 = f109 * f109;
        float f111 = (f110 * f110) * f109;
        vec3 f112 = vec3(f111) + (f47 * (1.0 - f111));
        float f113 = f106 * f106;
        float f114 = (((f107 * f113) - f107) * f107) + 1.0;
        f103 = f100 + (((f88 - (f112 * f87)) * CB0[15].xyz) * f105);
        f102 = f99 + (((f112 * (((f113 + (f113 * f113)) / (((f114 * f114) * ((f108 * 3.0) + 0.5)) * ((f107 * 0.75) + 0.25))) * f105)) * CB0[15].xyz) * ((CB0[14].w * CB0[14].w) * (f41 * VARYING0.w)));
    }
    else
    {
        f103 = f100;
        f102 = f99;
    }
    vec3 f115 = ((f103 + (f55.xyz * (f55.w * 120.0))) * f39) + f102;
    vec4 f116 = vec4(0.0);
    f116.x = f115.x;
    vec4 f117 = f116;
    f117.y = f115.y;
    vec4 f118 = f117;
    f118.z = f115.z;
    vec4 f119 = f118;
    f119.w = 1.0;
    float f120 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f121 = textureLod(PrefilteredEnvTexture, vec4(-f40, 0.0).xyz, max(CB0[18].y, f120) * 5.0).xyz;
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

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$SpecularMapTexture=s3
//$$NormalMapTexture=s4
//$$AlbedoMapTexture=s0
