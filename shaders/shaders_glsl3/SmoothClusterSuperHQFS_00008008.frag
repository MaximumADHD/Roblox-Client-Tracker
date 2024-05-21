#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowTransformGPU.h>
uniform vec4 CB0[57];
uniform vec4 CB5[63];
uniform vec4 CB8[24];
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
    vec4 f38 = ((f35.yxzw * f6.x) + (f36.yxzw * f6.y)) + (f37.yxzw * f6.z);
    vec2 f39 = f38.yz - vec2(0.5);
    float f40 = f38.x;
    float f41 = f40 - f39.y;
    vec3 f42 = vec4(vec3(f41, f40, f41) + (vec3(f39.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 f43 = CB0[11].xyz - VARYING5.xyz;
    float f44 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec3 f45 = -CB0[16].xyz;
    float f46 = dot(f34, f45);
    vec3 f47 = normalize(f43);
    float f48 = 0.08900000154972076416015625 + (f26.y * 0.9110000133514404296875);
    float f49 = CB0[31].w * f44;
    vec3 f50 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f51 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f52 = VARYING4.yzx - (VARYING4.yzx * f51);
    vec4 f53 = texture(LightMapTexture, f52);
    vec4 f54 = texture(LightGridSkylightTexture, f52);
    vec4 f55 = vec4(clamp(f51, 0.0, 1.0));
    vec4 f56 = mix(f53, vec4(0.0), f55);
    vec4 f57 = mix(f54, vec4(1.0), f55);
    float f58 = f57.x;
    float f59 = f57.y;
    vec3 f60 = f50 - CB0[46].xyz;
    vec3 f61 = f50 - CB0[47].xyz;
    vec3 f62 = f50 - CB0[48].xyz;
    vec4 f63 = vec4(f50, 1.0) * mat4(CB8[((dot(f60, f60) < CB0[46].w) ? 0 : ((dot(f61, f61) < CB0[47].w) ? 1 : ((dot(f62, f62) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f60, f60) < CB0[46].w) ? 0 : ((dot(f61, f61) < CB0[47].w) ? 1 : ((dot(f62, f62) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f60, f60) < CB0[46].w) ? 0 : ((dot(f61, f61) < CB0[47].w) ? 1 : ((dot(f62, f62) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f60, f60) < CB0[46].w) ? 0 : ((dot(f61, f61) < CB0[47].w) ? 1 : ((dot(f62, f62) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f64 = textureLod(ShadowAtlasTexture, f63.xy, 0.0);
    vec2 f65 = vec2(0.0);
    f65.x = CB0[51].z;
    vec2 f66 = f65;
    f66.y = CB0[51].w;
    float f67 = (2.0 * f63.z) - 1.0;
    float f68 = exp(CB0[51].z * f67);
    float f69 = -exp((-CB0[51].w) * f67);
    vec2 f70 = (f66 * CB0[52].y) * vec2(f68, f69);
    vec2 f71 = f70 * f70;
    float f72 = f64.x;
    float f73 = max(f64.y - (f72 * f72), f71.x);
    float f74 = f68 - f72;
    float f75 = f64.z;
    float f76 = max(f64.w - (f75 * f75), f71.y);
    float f77 = f69 - f75;
    vec3 f78 = reflect(-f47, f34);
    float f79 = f48 * 5.0;
    vec3 f80 = vec4(f78, f79).xyz;
    vec3 f81 = textureLod(PrefilteredEnvIndoorTexture, f80, f79).xyz;
    vec3 f82;
    if (CB0[32].w == 0.0)
    {
        f82 = f81;
    }
    else
    {
        f82 = mix(f81, textureLod(PrefilteredEnvBlendTargetTexture, f80, f79).xyz, vec3(CB0[32].w));
    }
    vec4 f83 = texture(PrecomputedBRDFTexture, vec2(f48, max(9.9999997473787516355514526367188e-05, dot(f34, f47))));
    float f84 = f83.x;
    float f85 = f83.y;
    vec3 f86 = ((vec3(0.039999999105930328369140625) * f84) + vec3(f85)) / vec3(f84 + f85);
    vec3 f87 = f34 * f34;
    bvec3 f88 = lessThan(f34, vec3(0.0));
    vec3 f89 = vec3(f88.x ? f87.x : vec3(0.0).x, f88.y ? f87.y : vec3(0.0).y, f88.z ? f87.z : vec3(0.0).z);
    vec3 f90 = f87 - f89;
    float f91 = f90.x;
    float f92 = f90.y;
    float f93 = f90.z;
    float f94 = f89.x;
    float f95 = f89.y;
    float f96 = f89.z;
    vec3 f97 = (mix(f82, textureLod(PrefilteredEnvTexture, f80, f79).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f78.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f58)) * f86) * f49;
    vec3 f98 = (vec3((f26.z * 2.0) * f44) + (((vec3(1.0) - (f86 * f49)) * (((((((CB0[40].xyz * f91) + (CB0[42].xyz * f92)) + (CB0[44].xyz * f93)) + (CB0[41].xyz * f94)) + (CB0[43].xyz * f95)) + (CB0[45].xyz * f96)) + (((((((CB0[34].xyz * f91) + (CB0[36].xyz * f92)) + (CB0[38].xyz * f93)) + (CB0[35].xyz * f94)) + (CB0[37].xyz * f95)) + (CB0[39].xyz * f96)) * f58))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f58 * (2.0 - CB0[14].w)))) * 1.0);
    float f99 = (f46 * CB0[14].w) * (((f46 * CB0[52].x) > 0.0) ? mix(min((f68 <= f72) ? 1.0 : clamp(((f73 / (f73 + (f74 * f74))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f69 <= f75) ? 1.0 : clamp(((f76 / (f76 + (f77 * f77))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f59, clamp((length(f50 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f59);
    vec3 f100;
    vec3 f101;
    if (f99 > 0.0)
    {
        vec3 f102 = normalize(f47 + f45);
        float f103 = clamp(f99, 0.0, 1.0);
        float f104 = f48 * f48;
        float f105 = max(0.001000000047497451305389404296875, dot(f34, f102));
        float f106 = dot(f45, f102);
        float f107 = 1.0 - f106;
        float f108 = f107 * f107;
        float f109 = (f108 * f108) * f107;
        vec3 f110 = vec3(f109) + (vec3(0.039999999105930328369140625) * (1.0 - f109));
        float f111 = f104 * f104;
        float f112 = (((f105 * f111) - f105) * f105) + 1.0;
        f101 = f98 + (((vec3(1.0) - (f110 * f49)) * CB0[15].xyz) * f103);
        f100 = f97 + (((f110 * (((f111 + (f111 * f111)) / (((f112 * f112) * ((f106 * 3.0) + 0.5)) * ((f105 * 0.75) + 0.25))) * f103)) * CB0[15].xyz) * ((CB0[14].w * CB0[14].w) * (f44 * VARYING0.w)));
    }
    else
    {
        f101 = f98;
        f100 = f97;
    }
    vec3 f113 = ((f101 + (f56.xyz * (f56.w * 120.0))) * (f42 * f42)) + f100;
    vec4 f114 = vec4(0.0);
    f114.x = f113.x;
    vec4 f115 = f114;
    f115.y = f113.y;
    vec4 f116 = f115;
    f116.z = f113.z;
    vec4 f117 = f116;
    f117.w = 1.0;
    float f118 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f119 = textureLod(PrefilteredEnvTexture, vec4(-f43, 0.0).xyz, max(CB0[18].y, f118) * 5.0).xyz;
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
