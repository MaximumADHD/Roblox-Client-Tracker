#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
uniform vec4 CB0[57];
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
    vec3 f38 = (((mix(vec3(1.0), CB4[int(VARYING8.x + 0.5) * 1 + 0].xyz, vec3(f35.w)) * f35.xyz) * f6.x) + ((mix(vec3(1.0), CB4[int(VARYING8.y + 0.5) * 1 + 0].xyz, vec3(f36.w)) * f36.xyz) * f6.y)) + ((mix(vec3(1.0), CB4[int(VARYING8.z + 0.5) * 1 + 0].xyz, vec3(f37.w)) * f37.xyz) * f6.z);
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
    vec3 f49 = reflect(-f44, f34);
    vec3 f50 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f51 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f52 = VARYING4.yzx - (VARYING4.yzx * f51);
    vec4 f53 = texture(LightMapTexture, f52);
    vec4 f54 = texture(LightGridSkylightTexture, f52);
    vec4 f55 = vec4(clamp(f51, 0.0, 1.0));
    vec4 f56 = mix(f53, vec4(0.0), f55);
    vec4 f57 = mix(f54, vec4(1.0), f55);
    vec3 f58 = f56.xyz * (f56.w * 120.0);
    float f59 = f57.x;
    float f60 = f57.y;
    vec3 f61 = f50 - CB0[46].xyz;
    vec3 f62 = f50 - CB0[47].xyz;
    vec3 f63 = f50 - CB0[48].xyz;
    vec4 f64 = vec4(f50, 1.0) * mat4(CB8[((dot(f61, f61) < CB0[46].w) ? 0 : ((dot(f62, f62) < CB0[47].w) ? 1 : ((dot(f63, f63) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f61, f61) < CB0[46].w) ? 0 : ((dot(f62, f62) < CB0[47].w) ? 1 : ((dot(f63, f63) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f61, f61) < CB0[46].w) ? 0 : ((dot(f62, f62) < CB0[47].w) ? 1 : ((dot(f63, f63) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f61, f61) < CB0[46].w) ? 0 : ((dot(f62, f62) < CB0[47].w) ? 1 : ((dot(f63, f63) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f65 = textureLod(ShadowAtlasTexture, f64.xy, 0.0);
    vec2 f66 = vec2(0.0);
    f66.x = CB0[51].z;
    vec2 f67 = f66;
    f67.y = CB0[51].w;
    float f68 = (2.0 * f64.z) - 1.0;
    float f69 = exp(CB0[51].z * f68);
    float f70 = -exp((-CB0[51].w) * f68);
    vec2 f71 = (f67 * CB0[52].y) * vec2(f69, f70);
    vec2 f72 = f71 * f71;
    float f73 = f65.x;
    float f74 = max(f65.y - (f73 * f73), f72.x);
    float f75 = f69 - f73;
    float f76 = f65.z;
    float f77 = max(f65.w - (f76 * f76), f72.y);
    float f78 = f70 - f76;
    float f79 = (f43 * CB0[14].w) * (((f43 * CB0[52].x) > 0.0) ? mix(min((f69 <= f73) ? 1.0 : clamp(((f74 / (f74 + (f75 * f75))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f70 <= f76) ? 1.0 : clamp(((f77 / (f77 + (f78 * f78))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f60, clamp((length(f50 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f60);
    vec3 f80;
    vec3 f81;
    if (f79 > 0.0)
    {
        vec3 f82 = normalize(f44 + f42);
        float f83 = clamp(f79, 0.0, 1.0);
        float f84 = f45 * f45;
        float f85 = max(0.001000000047497451305389404296875, dot(f34, f82));
        float f86 = dot(f42, f82);
        float f87 = 1.0 - f86;
        float f88 = f87 * f87;
        float f89 = (f88 * f88) * f87;
        vec3 f90 = vec3(f89) + (f47 * (1.0 - f89));
        float f91 = f84 * f84;
        float f92 = (((f85 * f91) - f85) * f85) + 1.0;
        float f93 = 1.0 - f46;
        f81 = f58 + (((vec3(f93) - (f90 * (f48 * f93))) * CB0[15].xyz) * f83);
        f80 = ((f90 * (((f91 + (f91 * f91)) / max(((f92 * f92) * ((f86 * 3.0) + 0.5)) * ((f85 * 0.75) + 0.25), 7.0000001869630068540573120117188e-05)) * f83)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f81 = f58;
        f80 = vec3(0.0);
    }
    float f94 = f45 * 5.0;
    vec3 f95 = vec4(f49, f94).xyz;
    vec3 f96 = textureLod(PrefilteredEnvIndoorTexture, f95, f94).xyz;
    vec3 f97;
    if (CB0[32].w == 0.0)
    {
        f97 = f96;
    }
    else
    {
        f97 = mix(f96, textureLod(PrefilteredEnvBlendTargetTexture, f95, f94).xyz, vec3(CB0[32].w));
    }
    vec4 f98 = texture(PrecomputedBRDFTexture, vec2(f45, max(9.9999997473787516355514526367188e-05, dot(f34, f44))));
    float f99 = f98.x;
    float f100 = f98.y;
    vec3 f101 = ((f47 * f99) + vec3(f100)) / vec3(f99 + f100);
    float f102 = 1.0 - f46;
    vec3 f103 = f34 * f34;
    bvec3 f104 = lessThan(f34, vec3(0.0));
    vec3 f105 = vec3(f104.x ? f103.x : vec3(0.0).x, f104.y ? f103.y : vec3(0.0).y, f104.z ? f103.z : vec3(0.0).z);
    vec3 f106 = f103 - f105;
    float f107 = f106.x;
    float f108 = f106.y;
    float f109 = f106.z;
    float f110 = f105.x;
    float f111 = f105.y;
    float f112 = f105.z;
    vec3 f113 = ((((f81 + (((vec3(f102) - (f101 * (f48 * f102))) * (((((((CB0[40].xyz * f107) + (CB0[42].xyz * f108)) + (CB0[44].xyz * f109)) + (CB0[41].xyz * f110)) + (CB0[43].xyz * f111)) + (CB0[45].xyz * f112)) + (((((((CB0[34].xyz * f107) + (CB0[36].xyz * f108)) + (CB0[38].xyz * f109)) + (CB0[35].xyz * f110)) + (CB0[37].xyz * f111)) + (CB0[39].xyz * f112)) * f59))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f59 * (2.0 - CB0[14].w)))) * 1.0)) + vec3((f26.z * 2.0) * f41)) * f39) + ((f80 * (f41 * VARYING0.w)) + ((mix(f97, textureLod(PrefilteredEnvTexture, f95, f94).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f49.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f59)) * f101) * f48));
    vec4 f114 = vec4(0.0);
    f114.x = f113.x;
    vec4 f115 = f114;
    f115.y = f113.y;
    vec4 f116 = f115;
    f116.z = f113.z;
    vec4 f117 = f116;
    f117.w = 1.0;
    float f118 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f119 = textureLod(PrefilteredEnvTexture, vec4(-f40, 0.0).xyz, max(CB0[18].y, f118) * 5.0).xyz;
    bvec3 f120 = bvec3(!(CB0[18].w == 0.0));
    vec3 f121 = mix(vec3(f120.x ? CB0[19].xyz.x : f119.x, f120.y ? CB0[19].xyz.y : f119.y, f120.z ? CB0[19].xyz.z : f119.z), f117.xyz, vec3(f118));
    vec4 f122 = f117;
    f122.x = f121.x;
    vec4 f123 = f122;
    f123.y = f121.y;
    vec4 f124 = f123;
    f124.z = f121.z;
    vec3 f125 = sqrt(clamp(f124.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
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
//$$NormalMapTexture=s4
//$$AlbedoMapTexture=s0
