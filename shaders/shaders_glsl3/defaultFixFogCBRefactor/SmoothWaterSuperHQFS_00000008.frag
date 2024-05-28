#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowTransformGPU.h>
#include <WaterParams.h>
uniform vec4 CB0[57];
uniform vec4 CB4[24];
uniform vec4 CB3[3];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D NormalMap1Texture;
uniform sampler2D NormalMap2Texture;
uniform sampler2D GBufferDepthTexture;
uniform sampler2D GBufferColorTexture;

in vec4 VARYING0;
in vec3 VARYING1;
in vec2 VARYING2;
in vec2 VARYING3;
in vec2 VARYING4;
in vec3 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
in vec4 VARYING8;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = CB0[11].xyz - VARYING7.xyz;
    vec3 f1 = -CB0[16].xyz;
    float f2 = clamp(dot(step(CB0[24].xyz, abs(VARYING5 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f3 = VARYING5.yzx - (VARYING5.yzx * f2);
    vec4 f4 = texture(LightMapTexture, f3);
    vec4 f5 = texture(LightGridSkylightTexture, f3);
    vec4 f6 = vec4(clamp(f2, 0.0, 1.0));
    vec4 f7 = mix(f4, vec4(0.0), f6);
    vec4 f8 = mix(f5, vec4(1.0), f6);
    float f9 = f8.x;
    float f10 = f8.y;
    vec3 f11 = f0 - CB0[46].xyz;
    vec3 f12 = f0 - CB0[47].xyz;
    vec3 f13 = f0 - CB0[48].xyz;
    vec4 f14 = vec4(f0, 1.0) * mat4(CB4[((dot(f11, f11) < CB0[46].w) ? 0 : ((dot(f12, f12) < CB0[47].w) ? 1 : ((dot(f13, f13) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB4[((dot(f11, f11) < CB0[46].w) ? 0 : ((dot(f12, f12) < CB0[47].w) ? 1 : ((dot(f13, f13) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB4[((dot(f11, f11) < CB0[46].w) ? 0 : ((dot(f12, f12) < CB0[47].w) ? 1 : ((dot(f13, f13) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB4[((dot(f11, f11) < CB0[46].w) ? 0 : ((dot(f12, f12) < CB0[47].w) ? 1 : ((dot(f13, f13) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f15 = textureLod(ShadowAtlasTexture, f14.xy, 0.0);
    vec2 f16 = vec2(0.0);
    f16.x = CB0[51].z;
    vec2 f17 = f16;
    f17.y = CB0[51].w;
    float f18 = (2.0 * f14.z) - 1.0;
    float f19 = exp(CB0[51].z * f18);
    float f20 = -exp((-CB0[51].w) * f18);
    vec2 f21 = (f17 * CB0[52].y) * vec2(f19, f20);
    vec2 f22 = f21 * f21;
    float f23 = f15.x;
    float f24 = max(f15.y - (f23 * f23), f22.x);
    float f25 = f19 - f23;
    float f26 = f15.z;
    float f27 = max(f15.w - (f26 * f26), f22.y);
    float f28 = f20 - f26;
    float f29 = ((dot(VARYING6.xyz, f1) * CB0[52].x) > 0.0) ? mix(min((f19 <= f23) ? 1.0 : clamp(((f24 / (f24 + (f25 * f25))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f20 <= f26) ? 1.0 : clamp(((f27 / (f27 + (f28 * f28))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f10, clamp((length(f0 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f10;
    vec4 f30 = texture(NormalMap1Texture, VARYING2);
    vec4 f31 = texture(NormalMap2Texture, VARYING2);
    vec4 f32 = vec4(CB3[0].w);
    vec4 f33 = texture(NormalMap1Texture, VARYING3);
    vec4 f34 = texture(NormalMap2Texture, VARYING3);
    vec4 f35 = texture(NormalMap1Texture, VARYING4);
    vec4 f36 = texture(NormalMap2Texture, VARYING4);
    vec4 f37 = ((mix(f30, f31, f32) * VARYING0.x) + (mix(f33, f34, f32) * VARYING0.y)) + (mix(f35, f36, f32) * VARYING0.z);
    vec2 f38 = f37.wy * 2.0;
    vec2 f39 = f38 - vec2(1.0);
    float f40 = f37.x;
    vec3 f41 = vec3(dot(VARYING1, VARYING0.xyz));
    vec4 f42 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f41) * f39.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f41) * f39.y)) + (VARYING6.xyz * sqrt(clamp(1.0 + dot(vec2(1.0) - f38, f39), 0.0, 1.0)))), f40);
    vec3 f43 = f42.xyz;
    vec3 f44 = mix(VARYING6.xyz, f43, vec3(0.25));
    vec3 f45 = VARYING7.xyz / vec3(sqrt(dot(VARYING7.xyz, VARYING7.xyz)));
    vec3 f46 = -f45;
    vec3 f47 = reflect(f46, f44);
    vec3 f48 = f43 * f43;
    bvec3 f49 = lessThan(f43, vec3(0.0));
    vec3 f50 = vec3(f49.x ? f48.x : vec3(0.0).x, f49.y ? f48.y : vec3(0.0).y, f49.z ? f48.z : vec3(0.0).z);
    vec3 f51 = f48 - f50;
    float f52 = f51.x;
    float f53 = f51.y;
    float f54 = f51.z;
    float f55 = f50.x;
    float f56 = f50.y;
    float f57 = f50.z;
    vec2 f58 = VARYING8.xy / vec2(VARYING8.w);
    vec2 f59 = f58 + (f42.xz * 0.0500000007450580596923828125);
    vec4 f60 = texture(GBufferColorTexture, f58);
    vec4 f61 = texture(GBufferDepthTexture, f58);
    vec4 f62 = texture(GBufferColorTexture, f59);
    vec4 f63 = texture(GBufferDepthTexture, f59);
    float f64 = f63.x * 500.0;
    float f65 = clamp(f64 - VARYING8.w, 0.0, 1.0);
    vec3 f66 = mix(f60.xyz, f62.xyz, vec3(f65));
    float f67 = VARYING8.w * 0.20000000298023223876953125;
    vec4 f68 = vec4(f47, 0.0);
    vec4 f69 = f68 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec2 f70 = (f69.xy * 0.5) + vec2(0.5 * f69.w);
    vec4 f71 = f69;
    f71.x = f70.x;
    vec4 f72 = f71;
    f72.y = f70.y;
    float f73 = VARYING8.w * (-0.20000000298023223876953125);
    float f74 = 1.0 + clamp(0.0, f73, f67);
    vec4 f75 = VARYING8 + (f72 * f74);
    float f76 = f75.w;
    vec4 f77 = texture(GBufferDepthTexture, f75.xy / vec2(f76));
    float f78 = f74 + clamp((f77.x * 500.0) - f76, f73, f67);
    vec4 f79 = VARYING8 + (f72 * f78);
    float f80 = f79.w;
    vec4 f81 = texture(GBufferDepthTexture, f79.xy / vec2(f80));
    float f82 = f78 + clamp((f81.x * 500.0) - f80, f73, f67);
    vec4 f83 = VARYING8 + (f72 * f82);
    float f84 = f83.w;
    vec4 f85 = texture(GBufferDepthTexture, f83.xy / vec2(f84));
    float f86 = f82 + clamp((f85.x * 500.0) - f84, f73, f67);
    vec4 f87 = VARYING8 + (f72 * f86);
    float f88 = f87.w;
    vec4 f89 = texture(GBufferDepthTexture, f87.xy / vec2(f88));
    float f90 = f86 + clamp((f89.x * 500.0) - f88, f73, f67);
    vec4 f91 = VARYING8 + (f72 * f90);
    float f92 = f91.w;
    vec4 f93 = texture(GBufferDepthTexture, f91.xy / vec2(f92));
    float f94 = f90 + clamp((f93.x * 500.0) - f92, f73, f67);
    vec4 f95 = VARYING8 + (f72 * f94);
    float f96 = f95.w;
    vec4 f97 = texture(GBufferDepthTexture, f95.xy / vec2(f96));
    float f98 = f94 + clamp((f97.x * 500.0) - f96, f73, f67);
    vec4 f99 = VARYING8 + (f72 * f98);
    float f100 = f99.w;
    vec4 f101 = texture(GBufferDepthTexture, f99.xy / vec2(f100));
    vec4 f102 = VARYING8 + (f72 * (f98 + clamp((f101.x * 500.0) - f100, f73, f67)));
    float f103 = f102.w;
    vec2 f104 = f102.xy / vec2(f103);
    vec4 f105 = texture(GBufferDepthTexture, f104);
    vec4 f106 = texture(GBufferColorTexture, f104);
    vec3 f107 = f106.xyz;
    float f108 = 0.08900000154972076416015625 + (f40 * 0.9110000133514404296875);
    float f109 = (dot(f43, f1) * CB0[14].w) * f29;
    vec3 f110;
    if (f109 > 0.0)
    {
        vec3 f111 = normalize(f45 + f1);
        float f112 = f108 * f108;
        float f113 = max(0.001000000047497451305389404296875, dot(f43, f111));
        float f114 = dot(f1, f111);
        float f115 = 1.0 - f114;
        float f116 = f115 * f115;
        float f117 = (f116 * f116) * f115;
        float f118 = f112 * f112;
        float f119 = (((f113 * f118) - f113) * f113) + 1.0;
        f110 = (((vec3(f117) + (vec3(0.0199999995529651641845703125) * (1.0 - f117))) * (((f118 + (f118 * f118)) / (((f119 * f119) * ((f114 * 3.0) + 0.5)) * ((f113 * 0.75) + 0.25))) * clamp(f109, 0.0, 1.0))) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f110 = vec3(0.0);
    }
    vec3 f120 = mix(mix((f66 * f66) * CB0[20].x, ((min((f7.xyz * (f7.w * 120.0)) + (CB0[32].xyz + (CB0[33].xyz * (f9 * (2.0 - CB0[14].w)))), vec3(CB0[21].w)) + ((((((((CB0[40].xyz * f52) + (CB0[42].xyz * f53)) + (CB0[44].xyz * f54)) + (CB0[41].xyz * f55)) + (CB0[43].xyz * f56)) + (CB0[45].xyz * f57)) * CB0[30].w) + ((((((((CB0[34].xyz * f52) + (CB0[36].xyz * f53)) + (CB0[38].xyz * f54)) + (CB0[35].xyz * f55)) + (CB0[37].xyz * f56)) + (CB0[39].xyz * f57)) * CB0[30].w) * f9))) + (CB0[15].xyz * f29)) * CB3[1].xyz, vec3(clamp(clamp(((mix(f61.x * 500.0, f64, f65) - VARYING8.w) * CB3[2].x) + CB3[2].y, 0.0, 1.0) + clamp((VARYING8.w * 0.0040000001899898052215576171875) - 1.0, 0.0, 1.0), 0.0, 1.0))), mix((textureLod(PrefilteredEnvTexture, f68.xyz, 0.0).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f47.y * 1.58823525905609130859375, 0.0, 1.0)))) * f9, (f107 * f107) * CB0[20].x, vec3((((float(abs(f104.x - 0.5) < 0.550000011920928955078125) * float(abs(f104.y - 0.5) < 0.5)) * clamp(3.900000095367431640625 - (max(VARYING8.w, f103) * 0.008000000379979610443115234375), 0.0, 1.0)) * float(abs((f105.x * 500.0) - f103) < 10.0)) * float(f69.w > 0.0))), vec3((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f44, f45))), 0.0, 1.0) + 0.300000011920928955078125) * (VARYING0.w * CB3[2].z))) + (f110 * clamp(1.0 - (VARYING7.w * CB0[28].y), 0.0, 1.0));
    vec4 f121 = vec4(0.0);
    f121.x = f120.x;
    vec4 f122 = f121;
    f122.y = f120.y;
    vec4 f123 = f122;
    f123.z = f120.z;
    vec4 f124 = f123;
    f124.w = 1.0;
    vec3 f125 = textureLod(PrefilteredEnvTexture, vec4(f46, 0.0).xyz, max(CB0[18].y, VARYING6.w) * 5.0).xyz;
    bvec3 f126 = bvec3(!(CB0[18].w == 0.0));
    vec3 f127 = mix(vec3(f126.x ? CB0[19].xyz.x : f125.x, f126.y ? CB0[19].xyz.y : f125.y, f126.z ? CB0[19].xyz.z : f125.z), f124.xyz, vec3(VARYING6.w));
    vec4 f128 = f124;
    f128.x = f127.x;
    vec4 f129 = f128;
    f129.y = f127.y;
    vec4 f130 = f129;
    f130.z = f127.z;
    vec3 f131 = sqrt(clamp(f130.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f132 = f130;
    f132.x = f131.x;
    vec4 f133 = f132;
    f133.y = f131.y;
    vec4 f134 = f133;
    f134.z = f131.z;
    _entryPointOutput = f134;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$GBufferDepthTexture=s5
//$$GBufferColorTexture=s4
