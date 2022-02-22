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
    float f30 = -VARYING6.x;
    vec4 f31 = ((mix(texture(NormalMap1Texture, VARYING2), texture(NormalMap2Texture, VARYING2), f29) * VARYING0.x) + (mix(texture(NormalMap1Texture, VARYING3), texture(NormalMap2Texture, VARYING3), f29) * VARYING0.y)) + (mix(texture(NormalMap1Texture, VARYING4), texture(NormalMap2Texture, VARYING4), f29) * VARYING0.z);
    vec2 f32 = f31.wy * 2.0;
    vec2 f33 = f32 - vec2(1.0);
    float f34 = f31.x;
    vec3 f35 = vec3(dot(VARYING1, VARYING0.xyz));
    vec4 f36 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f30), vec3(VARYING6.y, f30, 0.0), f35) * f33.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f35) * f33.y)) + (VARYING6.xyz * sqrt(clamp(1.0 + dot(vec2(1.0) - f32, f33), 0.0, 1.0)))), f34);
    vec3 f37 = f36.xyz;
    vec3 f38 = mix(VARYING6.xyz, f37, vec3(0.25));
    vec3 f39 = normalize(VARYING7.xyz);
    vec3 f40 = f37 * f37;
    bvec3 f41 = lessThan(f37, vec3(0.0));
    vec3 f42 = vec3(f41.x ? f40.x : vec3(0.0).x, f41.y ? f40.y : vec3(0.0).y, f41.z ? f40.z : vec3(0.0).z);
    vec3 f43 = f40 - f42;
    float f44 = f43.x;
    float f45 = f43.y;
    float f46 = f43.z;
    float f47 = f42.x;
    float f48 = f42.y;
    float f49 = f42.z;
    vec2 f50 = VARYING8.xy / vec2(VARYING8.w);
    vec2 f51 = f50 + (f36.xz * 0.0500000007450580596923828125);
    vec4 f52 = texture(GBufferColorTexture, f50);
    f52.w = texture(GBufferDepthTexture, f50).x * 500.0;
    float f53 = texture(GBufferDepthTexture, f51).x * 500.0;
    vec4 f54 = texture(GBufferColorTexture, f51);
    f54.w = f53;
    vec4 f55 = mix(f52, f54, vec4(clamp(f53 - VARYING8.w, 0.0, 1.0)));
    vec3 f56 = f55.xyz;
    vec3 f57 = (f56 * f56) * CB0[15].x;
    vec4 f58 = f55;
    f58.x = f57.x;
    vec4 f59 = f58;
    f59.y = f57.y;
    vec4 f60 = f59;
    f60.z = f57.z;
    vec3 f61 = -f39;
    vec3 f62 = reflect(f61, f38);
    float f63 = VARYING8.w * 0.20000000298023223876953125;
    vec4 f64 = vec4(f62, 0.0);
    vec4 f65 = f64 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec2 f66 = (f65.xy * 0.5) + vec2(0.5 * f65.w);
    vec4 f67 = f65;
    f67.x = f66.x;
    vec4 f68 = f67;
    f68.y = f66.y;
    float f69 = VARYING8.w * (-0.20000000298023223876953125);
    float f70 = 1.0 + clamp(0.0, f69, f63);
    vec4 f71 = VARYING8 + (f68 * f70);
    float f72 = f71.w;
    float f73 = f70 + clamp((texture(GBufferDepthTexture, f71.xy / vec2(f72)).x * 500.0) - f72, f69, f63);
    vec4 f74 = VARYING8 + (f68 * f73);
    float f75 = f74.w;
    float f76 = f73 + clamp((texture(GBufferDepthTexture, f74.xy / vec2(f75)).x * 500.0) - f75, f69, f63);
    vec4 f77 = VARYING8 + (f68 * f76);
    float f78 = f77.w;
    float f79 = f76 + clamp((texture(GBufferDepthTexture, f77.xy / vec2(f78)).x * 500.0) - f78, f69, f63);
    vec4 f80 = VARYING8 + (f68 * f79);
    float f81 = f80.w;
    float f82 = f79 + clamp((texture(GBufferDepthTexture, f80.xy / vec2(f81)).x * 500.0) - f81, f69, f63);
    vec4 f83 = VARYING8 + (f68 * f82);
    float f84 = f83.w;
    float f85 = f82 + clamp((texture(GBufferDepthTexture, f83.xy / vec2(f84)).x * 500.0) - f84, f69, f63);
    vec4 f86 = VARYING8 + (f68 * f85);
    float f87 = f86.w;
    float f88 = f85 + clamp((texture(GBufferDepthTexture, f86.xy / vec2(f87)).x * 500.0) - f87, f69, f63);
    vec4 f89 = VARYING8 + (f68 * f88);
    float f90 = f89.w;
    vec4 f91 = VARYING8 + (f68 * (f88 + clamp((texture(GBufferDepthTexture, f89.xy / vec2(f90)).x * 500.0) - f90, f69, f63)));
    float f92 = f91.w;
    vec2 f93 = f91.xy / vec2(f92);
    vec3 f94 = texture(GBufferColorTexture, f93).xyz;
    float f95 = 0.08900000154972076416015625 + (f34 * 0.9110000133514404296875);
    vec3 f96 = normalize(f1 + f39);
    float f97 = f95 * f95;
    float f98 = max(0.001000000047497451305389404296875, dot(f37, f96));
    float f99 = dot(f1, f96);
    float f100 = 1.0 - f99;
    float f101 = f100 * f100;
    float f102 = (f101 * f101) * f100;
    float f103 = f97 * f97;
    float f104 = (((f98 * f103) - f98) * f98) + 1.0;
    vec3 f105 = mix(mix(f60.xyz, ((min(f7 + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f8)), vec3(CB0[16].w)) + (((((((CB0[35].xyz * f44) + (CB0[37].xyz * f45)) + (CB0[39].xyz * f46)) + (CB0[36].xyz * f47)) + (CB0[38].xyz * f48)) + (CB0[40].xyz * f49)) + (((((((CB0[29].xyz * f44) + (CB0[31].xyz * f45)) + (CB0[33].xyz * f46)) + (CB0[30].xyz * f47)) + (CB0[32].xyz * f48)) + (CB0[34].xyz * f49)) * f8))) + (CB0[10].xyz * f28)) * CB3[1].xyz, vec3(clamp(clamp(((f55.w - VARYING8.w) * CB3[2].x) + CB3[2].y, 0.0, 1.0) + clamp((VARYING8.w * 0.0040000001899898052215576171875) - 1.0, 0.0, 1.0), 0.0, 1.0))), mix((textureLod(PrefilteredEnvTexture, f64.xyz, 0.0).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f62.y * 1.58823525905609130859375, 0.0, 1.0)))) * f8, (f94 * f94) * CB0[15].x, vec3((((float(abs(f93.x - 0.5) < 0.550000011920928955078125) * float(abs(f93.y - 0.5) < 0.5)) * clamp(3.900000095367431640625 - (max(VARYING8.w, f92) * 0.008000000379979610443115234375), 0.0, 1.0)) * float(abs((texture(GBufferDepthTexture, f93).x * 500.0) - f92) < 10.0)) * float(f65.w > 0.0))) + (f7 * 0.100000001490116119384765625), vec3(((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f38, f39))), 0.0, 1.0) + 0.300000011920928955078125) * VARYING0.w) * CB3[2].z)) + (((((vec3(f102) + (vec3(0.0199999995529651641845703125) * (1.0 - f102))) * (((f103 + (f103 * f103)) / (((f104 * f104) * ((f99 * 3.0) + 0.5)) * ((f98 * 0.75) + 0.25))) * clamp((dot(f37, f1) * CB0[9].w) * f28, 0.0, 1.0))) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * clamp(1.0 - (VARYING7.w * CB0[23].y), 0.0, 1.0));
    vec4 f106 = vec4(0.0);
    f106.x = f105.x;
    vec4 f107 = f106;
    f107.y = f105.y;
    vec4 f108 = f107;
    f108.z = f105.z;
    vec4 f109 = f108;
    f109.w = 1.0;
    vec3 f110 = textureLod(PrefilteredEnvTexture, vec4(f61, 0.0).xyz, max(CB0[13].y, VARYING6.w) * 5.0).xyz;
    bvec3 f111 = bvec3(!(CB0[13].w == 0.0));
    vec3 f112 = mix(vec3(f111.x ? CB0[14].xyz.x : f110.x, f111.y ? CB0[14].xyz.y : f110.y, f111.z ? CB0[14].xyz.z : f110.z), f109.xyz, vec3(VARYING6.w));
    vec4 f113 = f109;
    f113.x = f112.x;
    vec4 f114 = f113;
    f114.y = f112.y;
    vec4 f115 = f114;
    f115.z = f112.z;
    vec3 f116 = sqrt(clamp(f115.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f117 = f115;
    f117.x = f116.x;
    vec4 f118 = f117;
    f118.y = f116.y;
    vec4 f119 = f118;
    f119.z = f116.z;
    _entryPointOutput = f119;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$GBufferDepthTexture=s5
//$$GBufferColorTexture=s4
