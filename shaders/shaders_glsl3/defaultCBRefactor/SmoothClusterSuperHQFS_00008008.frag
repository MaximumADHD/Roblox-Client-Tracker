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
    vec3 f50 = reflect(-f47, f34);
    vec3 f51 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f52 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f53 = VARYING4.yzx - (VARYING4.yzx * f52);
    vec4 f54 = texture(LightMapTexture, f53);
    vec4 f55 = texture(LightGridSkylightTexture, f53);
    vec4 f56 = vec4(clamp(f52, 0.0, 1.0));
    vec4 f57 = mix(f54, vec4(0.0), f56);
    vec4 f58 = mix(f55, vec4(1.0), f56);
    vec3 f59 = f57.xyz * (f57.w * 120.0);
    float f60 = f58.x;
    float f61 = f58.y;
    vec3 f62 = f51 - CB0[46].xyz;
    vec3 f63 = f51 - CB0[47].xyz;
    vec3 f64 = f51 - CB0[48].xyz;
    vec4 f65 = vec4(f51, 1.0) * mat4(CB4[((dot(f62, f62) < CB0[46].w) ? 0 : ((dot(f63, f63) < CB0[47].w) ? 1 : ((dot(f64, f64) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB4[((dot(f62, f62) < CB0[46].w) ? 0 : ((dot(f63, f63) < CB0[47].w) ? 1 : ((dot(f64, f64) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB4[((dot(f62, f62) < CB0[46].w) ? 0 : ((dot(f63, f63) < CB0[47].w) ? 1 : ((dot(f64, f64) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB4[((dot(f62, f62) < CB0[46].w) ? 0 : ((dot(f63, f63) < CB0[47].w) ? 1 : ((dot(f64, f64) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f66 = textureLod(ShadowAtlasTexture, f65.xy, 0.0);
    vec2 f67 = vec2(0.0);
    f67.x = CB0[51].z;
    vec2 f68 = f67;
    f68.y = CB0[51].w;
    float f69 = (2.0 * f65.z) - 1.0;
    float f70 = exp(CB0[51].z * f69);
    float f71 = -exp((-CB0[51].w) * f69);
    vec2 f72 = (f68 * CB0[52].y) * vec2(f70, f71);
    vec2 f73 = f72 * f72;
    float f74 = f66.x;
    float f75 = max(f66.y - (f74 * f74), f73.x);
    float f76 = f70 - f74;
    float f77 = f66.z;
    float f78 = max(f66.w - (f77 * f77), f73.y);
    float f79 = f71 - f77;
    float f80 = (f46 * CB0[14].w) * (((f46 * CB0[52].x) > 0.0) ? mix(min((f70 <= f74) ? 1.0 : clamp(((f75 / (f75 + (f76 * f76))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f71 <= f77) ? 1.0 : clamp(((f78 / (f78 + (f79 * f79))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f61, clamp((length(f51 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f61);
    vec3 f81;
    vec3 f82;
    if (f80 > 0.0)
    {
        vec3 f83 = normalize(f47 + f45);
        float f84 = clamp(f80, 0.0, 1.0);
        float f85 = f48 * f48;
        float f86 = max(0.001000000047497451305389404296875, dot(f34, f83));
        float f87 = dot(f45, f83);
        float f88 = 1.0 - f87;
        float f89 = f88 * f88;
        float f90 = (f89 * f89) * f88;
        vec3 f91 = vec3(f90) + (vec3(0.039999999105930328369140625) * (1.0 - f90));
        float f92 = f85 * f85;
        float f93 = (((f86 * f92) - f86) * f86) + 1.0;
        f82 = f59 + (((vec3(1.0) - (f91 * f49)) * CB0[15].xyz) * f84);
        f81 = ((f91 * (((f92 + (f92 * f92)) / (((f93 * f93) * ((f87 * 3.0) + 0.5)) * ((f86 * 0.75) + 0.25))) * f84)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f82 = f59;
        f81 = vec3(0.0);
    }
    float f94 = f48 * 5.0;
    vec3 f95 = vec4(f50, f94).xyz;
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
    vec4 f98 = texture(PrecomputedBRDFTexture, vec2(f48, max(9.9999997473787516355514526367188e-05, dot(f34, f47))));
    float f99 = f98.x;
    float f100 = f98.y;
    vec3 f101 = ((vec3(0.039999999105930328369140625) * f99) + vec3(f100)) / vec3(f99 + f100);
    vec3 f102 = f34 * f34;
    bvec3 f103 = lessThan(f34, vec3(0.0));
    vec3 f104 = vec3(f103.x ? f102.x : vec3(0.0).x, f103.y ? f102.y : vec3(0.0).y, f103.z ? f102.z : vec3(0.0).z);
    vec3 f105 = f102 - f104;
    float f106 = f105.x;
    float f107 = f105.y;
    float f108 = f105.z;
    float f109 = f104.x;
    float f110 = f104.y;
    float f111 = f104.z;
    vec3 f112 = ((((f82 + (((vec3(1.0) - (f101 * f49)) * (((((((CB0[40].xyz * f106) + (CB0[42].xyz * f107)) + (CB0[44].xyz * f108)) + (CB0[41].xyz * f109)) + (CB0[43].xyz * f110)) + (CB0[45].xyz * f111)) + (((((((CB0[34].xyz * f106) + (CB0[36].xyz * f107)) + (CB0[38].xyz * f108)) + (CB0[35].xyz * f109)) + (CB0[37].xyz * f110)) + (CB0[39].xyz * f111)) * f60))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f60 * (2.0 - CB0[14].w)))) * 1.0)) + vec3((f26.z * 2.0) * f44)) * (f42 * f42)) + ((f81 * (f44 * VARYING0.w)) + ((mix(f97, textureLod(PrefilteredEnvTexture, f95, f94).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f50.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f60)) * f101) * f49));
    vec4 f113 = vec4(0.0);
    f113.x = f112.x;
    vec4 f114 = f113;
    f114.y = f112.y;
    vec4 f115 = f114;
    f115.z = f112.z;
    vec4 f116 = f115;
    f116.w = 1.0;
    float f117 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f118 = textureLod(PrefilteredEnvTexture, vec4(-f43, 0.0).xyz, max(CB0[18].y, f117) * 5.0).xyz;
    bvec3 f119 = bvec3(!(CB0[18].w == 0.0));
    vec3 f120 = mix(vec3(f119.x ? CB0[19].xyz.x : f118.x, f119.y ? CB0[19].xyz.y : f118.y, f119.z ? CB0[19].xyz.z : f118.z), f116.xyz, vec3(f117));
    vec4 f121 = f116;
    f121.x = f120.x;
    vec4 f122 = f121;
    f122.y = f120.y;
    vec4 f123 = f122;
    f123.z = f120.z;
    vec3 f124 = sqrt(clamp(f123.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f125 = f123;
    f125.x = f124.x;
    vec4 f126 = f125;
    f126.y = f124.y;
    vec4 f127 = f126;
    f127.z = f124.z;
    _entryPointOutput = f127;
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
