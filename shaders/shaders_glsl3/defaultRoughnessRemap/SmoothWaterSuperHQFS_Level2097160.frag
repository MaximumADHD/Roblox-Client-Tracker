#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
#include <Params.h>
uniform vec4 CB0[53];
uniform vec4 CB8[24];
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
    vec3 f0 = CB0[7].xyz - VARYING7.xyz;
    vec3 f1 = -CB0[11].xyz;
    float f2 = clamp(dot(step(CB0[19].xyz, abs(VARYING5 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f3 = VARYING5.yzx - (VARYING5.yzx * f2);
    vec4 f4 = vec4(clamp(f2, 0.0, 1.0));
    vec4 f5 = mix(texture(LightMapTexture, f3), vec4(0.0), f4);
    vec4 f6 = mix(texture(LightGridSkylightTexture, f3), vec4(1.0), f4);
    vec3 f7 = f5.xyz * (f5.w * 120.0);
    float f8 = f6.x;
    float f9 = f6.y;
    vec3 f10 = f0 - CB0[41].xyz;
    vec3 f11 = f0 - CB0[42].xyz;
    vec3 f12 = f0 - CB0[43].xyz;
    vec4 f13 = vec4(f0, 1.0) * mat4(CB8[((dot(f10, f10) < CB0[41].w) ? 0 : ((dot(f11, f11) < CB0[42].w) ? 1 : ((dot(f12, f12) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f10, f10) < CB0[41].w) ? 0 : ((dot(f11, f11) < CB0[42].w) ? 1 : ((dot(f12, f12) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f10, f10) < CB0[41].w) ? 0 : ((dot(f11, f11) < CB0[42].w) ? 1 : ((dot(f12, f12) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f10, f10) < CB0[41].w) ? 0 : ((dot(f11, f11) < CB0[42].w) ? 1 : ((dot(f12, f12) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f14 = textureLod(ShadowAtlasTexture, f13.xy, 0.0);
    vec2 f15 = vec2(0.0);
    f15.x = CB0[46].z;
    vec2 f16 = f15;
    f16.y = CB0[46].w;
    float f17 = (2.0 * f13.z) - 1.0;
    float f18 = exp(CB0[46].z * f17);
    float f19 = -exp((-CB0[46].w) * f17);
    vec2 f20 = (f16 * CB0[47].y) * vec2(f18, f19);
    vec2 f21 = f20 * f20;
    float f22 = f14.x;
    float f23 = max(f14.y - (f22 * f22), f21.x);
    float f24 = f18 - f22;
    float f25 = f14.z;
    float f26 = max(f14.w - (f25 * f25), f21.y);
    float f27 = f19 - f25;
    float f28 = ((dot(VARYING6.xyz, f1) * CB0[47].x) > 0.0) ? mix(min((f18 <= f22) ? 1.0 : clamp(((f23 / (f23 + (f24 * f24))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f19 <= f25) ? 1.0 : clamp(((f26 / (f26 + (f27 * f27))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f9, clamp((length(f0 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f9;
    vec4 f29 = vec4(CB3[0].w);
    vec4 f30 = ((mix(texture(NormalMap1Texture, VARYING2), texture(NormalMap2Texture, VARYING2), f29) * VARYING0.x) + (mix(texture(NormalMap1Texture, VARYING3), texture(NormalMap2Texture, VARYING3), f29) * VARYING0.y)) + (mix(texture(NormalMap1Texture, VARYING4), texture(NormalMap2Texture, VARYING4), f29) * VARYING0.z);
    vec2 f31 = f30.wy * 2.0;
    vec2 f32 = f31 - vec2(1.0);
    float f33 = f30.x;
    vec3 f34 = vec3(dot(VARYING1, VARYING0.xyz));
    vec4 f35 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f34) * f32.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f34) * f32.y)) + (VARYING6.xyz * sqrt(clamp(1.0 + dot(vec2(1.0) - f31, f32), 0.0, 1.0)))), f33);
    vec3 f36 = f35.xyz;
    vec3 f37 = mix(VARYING6.xyz, f36, vec3(0.25));
    vec3 f38 = normalize(VARYING7.xyz);
    vec3 f39 = f36 * f36;
    bvec3 f40 = lessThan(f36, vec3(0.0));
    vec3 f41 = vec3(f40.x ? f39.x : vec3(0.0).x, f40.y ? f39.y : vec3(0.0).y, f40.z ? f39.z : vec3(0.0).z);
    vec3 f42 = f39 - f41;
    float f43 = f42.x;
    float f44 = f42.y;
    float f45 = f42.z;
    float f46 = f41.x;
    float f47 = f41.y;
    float f48 = f41.z;
    vec2 f49 = VARYING8.xy / vec2(VARYING8.w);
    vec2 f50 = f49 + (f35.xz * 0.0500000007450580596923828125);
    vec4 f51 = texture(GBufferColorTexture, f49);
    f51.w = texture(GBufferDepthTexture, f49).x * 500.0;
    float f52 = texture(GBufferDepthTexture, f50).x * 500.0;
    vec4 f53 = texture(GBufferColorTexture, f50);
    f53.w = f52;
    vec4 f54 = mix(f51, f53, vec4(clamp(f52 - VARYING8.w, 0.0, 1.0)));
    vec3 f55 = f54.xyz;
    vec3 f56 = (f55 * f55) * CB0[15].x;
    vec4 f57 = f54;
    f57.x = f56.x;
    vec4 f58 = f57;
    f58.y = f56.y;
    vec4 f59 = f58;
    f59.z = f56.z;
    vec3 f60 = -f38;
    vec3 f61 = reflect(f60, f37);
    float f62 = VARYING8.w * 0.20000000298023223876953125;
    vec4 f63 = vec4(f61, 0.0);
    vec4 f64 = f63 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec2 f65 = (f64.xy * 0.5) + vec2(0.5 * f64.w);
    vec4 f66 = f64;
    f66.x = f65.x;
    vec4 f67 = f66;
    f67.y = f65.y;
    float f68 = VARYING8.w * (-0.20000000298023223876953125);
    float f69 = 1.0 + clamp(0.0, f68, f62);
    vec4 f70 = VARYING8 + (f67 * f69);
    float f71 = f70.w;
    float f72 = f69 + clamp((texture(GBufferDepthTexture, f70.xy / vec2(f71)).x * 500.0) - f71, f68, f62);
    vec4 f73 = VARYING8 + (f67 * f72);
    float f74 = f73.w;
    float f75 = f72 + clamp((texture(GBufferDepthTexture, f73.xy / vec2(f74)).x * 500.0) - f74, f68, f62);
    vec4 f76 = VARYING8 + (f67 * f75);
    float f77 = f76.w;
    float f78 = f75 + clamp((texture(GBufferDepthTexture, f76.xy / vec2(f77)).x * 500.0) - f77, f68, f62);
    vec4 f79 = VARYING8 + (f67 * f78);
    float f80 = f79.w;
    float f81 = f78 + clamp((texture(GBufferDepthTexture, f79.xy / vec2(f80)).x * 500.0) - f80, f68, f62);
    vec4 f82 = VARYING8 + (f67 * f81);
    float f83 = f82.w;
    float f84 = f81 + clamp((texture(GBufferDepthTexture, f82.xy / vec2(f83)).x * 500.0) - f83, f68, f62);
    vec4 f85 = VARYING8 + (f67 * f84);
    float f86 = f85.w;
    float f87 = f84 + clamp((texture(GBufferDepthTexture, f85.xy / vec2(f86)).x * 500.0) - f86, f68, f62);
    vec4 f88 = VARYING8 + (f67 * f87);
    float f89 = f88.w;
    vec4 f90 = VARYING8 + (f67 * (f87 + clamp((texture(GBufferDepthTexture, f88.xy / vec2(f89)).x * 500.0) - f89, f68, f62)));
    float f91 = f90.w;
    vec2 f92 = f90.xy / vec2(f91);
    vec3 f93 = texture(GBufferColorTexture, f92).xyz;
    float f94 = 0.08900000154972076416015625 + (f33 * 0.9110000133514404296875);
    vec3 f95 = normalize(f1 + f38);
    float f96 = f94 * f94;
    float f97 = max(0.001000000047497451305389404296875, dot(f36, f95));
    float f98 = dot(f1, f95);
    float f99 = 1.0 - f98;
    float f100 = f99 * f99;
    float f101 = (f100 * f100) * f99;
    float f102 = f96 * f96;
    float f103 = (((f97 * f102) - f97) * f97) + 1.0;
    vec3 f104 = mix(mix(f59.xyz, ((min(f7 + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f8)), vec3(CB0[16].w)) + (((((((CB0[35].xyz * f43) + (CB0[37].xyz * f44)) + (CB0[39].xyz * f45)) + (CB0[36].xyz * f46)) + (CB0[38].xyz * f47)) + (CB0[40].xyz * f48)) + (((((((CB0[29].xyz * f43) + (CB0[31].xyz * f44)) + (CB0[33].xyz * f45)) + (CB0[30].xyz * f46)) + (CB0[32].xyz * f47)) + (CB0[34].xyz * f48)) * f8))) + (CB0[10].xyz * f28)) * CB3[1].xyz, vec3(clamp(clamp(((f54.w - VARYING8.w) * CB3[2].x) + CB3[2].y, 0.0, 1.0) + clamp((VARYING8.w * 0.0040000001899898052215576171875) - 1.0, 0.0, 1.0), 0.0, 1.0))), mix((textureLod(PrefilteredEnvTexture, f63.xyz, 0.0).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f61.y * 1.58823525905609130859375, 0.0, 1.0)))) * f8, (f93 * f93) * CB0[15].x, vec3((((float(abs(f92.x - 0.5) < 0.550000011920928955078125) * float(abs(f92.y - 0.5) < 0.5)) * clamp(3.900000095367431640625 - (max(VARYING8.w, f91) * 0.008000000379979610443115234375), 0.0, 1.0)) * float(abs((texture(GBufferDepthTexture, f92).x * 500.0) - f91) < 10.0)) * float(f64.w > 0.0))) + (f7 * 0.100000001490116119384765625), vec3(((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f37, f38))), 0.0, 1.0) + 0.300000011920928955078125) * VARYING0.w) * CB3[2].z)) + (((((vec3(f101) + (vec3(0.0199999995529651641845703125) * (1.0 - f101))) * (((f102 + (f102 * f102)) / (((f103 * f103) * ((f98 * 3.0) + 0.5)) * ((f97 * 0.75) + 0.25))) * clamp((dot(f36, f1) * CB0[9].w) * f28, 0.0, 1.0))) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * clamp(1.0 - (VARYING7.w * CB0[23].y), 0.0, 1.0));
    vec4 f105 = vec4(0.0);
    f105.x = f104.x;
    vec4 f106 = f105;
    f106.y = f104.y;
    vec4 f107 = f106;
    f107.z = f104.z;
    vec4 f108 = f107;
    f108.w = 1.0;
    vec3 f109 = textureLod(PrefilteredEnvTexture, vec4(f60, 0.0).xyz, max(CB0[13].y, VARYING6.w) * 5.0).xyz;
    bvec3 f110 = bvec3(!(CB0[13].w == 0.0));
    vec3 f111 = mix(vec3(f110.x ? CB0[14].xyz.x : f109.x, f110.y ? CB0[14].xyz.y : f109.y, f110.z ? CB0[14].xyz.z : f109.z), f108.xyz, vec3(VARYING6.w));
    vec4 f112 = f108;
    f112.x = f111.x;
    vec4 f113 = f112;
    f113.y = f111.y;
    vec4 f114 = f113;
    f114.z = f111.z;
    vec3 f115 = sqrt(clamp(f114.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f116 = f114;
    f116.x = f115.x;
    vec4 f117 = f116;
    f117.y = f115.y;
    vec4 f118 = f117;
    f118.z = f115.z;
    _entryPointOutput = f118;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$GBufferDepthTexture=s5
//$$GBufferColorTexture=s4
