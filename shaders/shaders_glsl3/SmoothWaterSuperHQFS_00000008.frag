#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
#include <Params.h>
uniform vec4 CB0[58];
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
    vec3 f0 = CB0[11].xyz - VARYING7.xyz;
    vec3 f1 = -CB0[16].xyz;
    float f2 = clamp(dot(step(CB0[24].xyz, abs(VARYING5 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f3 = VARYING5.yzx - (VARYING5.yzx * f2);
    vec4 f4 = vec4(clamp(f2, 0.0, 1.0));
    vec4 f5 = mix(texture(LightMapTexture, f3), vec4(0.0), f4);
    vec4 f6 = mix(texture(LightGridSkylightTexture, f3), vec4(1.0), f4);
    vec3 f7 = f5.xyz * (f5.w * 120.0);
    float f8 = f6.x;
    float f9 = f6.y;
    vec3 f10 = f0 - CB0[46].xyz;
    vec3 f11 = f0 - CB0[47].xyz;
    vec3 f12 = f0 - CB0[48].xyz;
    vec4 f13 = vec4(f0, 1.0) * mat4(CB8[((dot(f10, f10) < CB0[46].w) ? 0 : ((dot(f11, f11) < CB0[47].w) ? 1 : ((dot(f12, f12) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f10, f10) < CB0[46].w) ? 0 : ((dot(f11, f11) < CB0[47].w) ? 1 : ((dot(f12, f12) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f10, f10) < CB0[46].w) ? 0 : ((dot(f11, f11) < CB0[47].w) ? 1 : ((dot(f12, f12) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f10, f10) < CB0[46].w) ? 0 : ((dot(f11, f11) < CB0[47].w) ? 1 : ((dot(f12, f12) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f14 = textureLod(ShadowAtlasTexture, f13.xy, 0.0);
    vec2 f15 = vec2(0.0);
    f15.x = CB0[51].z;
    vec2 f16 = f15;
    f16.y = CB0[51].w;
    float f17 = (2.0 * f13.z) - 1.0;
    float f18 = exp(CB0[51].z * f17);
    float f19 = -exp((-CB0[51].w) * f17);
    vec2 f20 = (f16 * CB0[52].y) * vec2(f18, f19);
    vec2 f21 = f20 * f20;
    float f22 = f14.x;
    float f23 = max(f14.y - (f22 * f22), f21.x);
    float f24 = f18 - f22;
    float f25 = f14.z;
    float f26 = max(f14.w - (f25 * f25), f21.y);
    float f27 = f19 - f25;
    float f28 = ((dot(VARYING6.xyz, f1) * CB0[52].x) > 0.0) ? mix(min((f18 <= f22) ? 1.0 : clamp(((f23 / (f23 + (f24 * f24))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f19 <= f25) ? 1.0 : clamp(((f26 / (f26 + (f27 * f27))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f9, clamp((length(f0 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f9;
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
    float f51 = texture(GBufferDepthTexture, f50).x * 500.0;
    float f52 = clamp(f51 - VARYING8.w, 0.0, 1.0);
    vec3 f53 = mix(texture(GBufferColorTexture, f49).xyz, texture(GBufferColorTexture, f50).xyz, vec3(f52));
    vec3 f54 = -f38;
    vec3 f55 = reflect(f54, f37);
    float f56 = VARYING8.w * 0.20000000298023223876953125;
    vec4 f57 = vec4(f55, 0.0);
    vec4 f58 = f57 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec2 f59 = (f58.xy * 0.5) + vec2(0.5 * f58.w);
    vec4 f60 = f58;
    f60.x = f59.x;
    vec4 f61 = f60;
    f61.y = f59.y;
    float f62 = VARYING8.w * (-0.20000000298023223876953125);
    float f63 = 1.0 + clamp(0.0, f62, f56);
    vec4 f64 = VARYING8 + (f61 * f63);
    float f65 = f64.w;
    float f66 = f63 + clamp((texture(GBufferDepthTexture, f64.xy / vec2(f65)).x * 500.0) - f65, f62, f56);
    vec4 f67 = VARYING8 + (f61 * f66);
    float f68 = f67.w;
    float f69 = f66 + clamp((texture(GBufferDepthTexture, f67.xy / vec2(f68)).x * 500.0) - f68, f62, f56);
    vec4 f70 = VARYING8 + (f61 * f69);
    float f71 = f70.w;
    float f72 = f69 + clamp((texture(GBufferDepthTexture, f70.xy / vec2(f71)).x * 500.0) - f71, f62, f56);
    vec4 f73 = VARYING8 + (f61 * f72);
    float f74 = f73.w;
    float f75 = f72 + clamp((texture(GBufferDepthTexture, f73.xy / vec2(f74)).x * 500.0) - f74, f62, f56);
    vec4 f76 = VARYING8 + (f61 * f75);
    float f77 = f76.w;
    float f78 = f75 + clamp((texture(GBufferDepthTexture, f76.xy / vec2(f77)).x * 500.0) - f77, f62, f56);
    vec4 f79 = VARYING8 + (f61 * f78);
    float f80 = f79.w;
    float f81 = f78 + clamp((texture(GBufferDepthTexture, f79.xy / vec2(f80)).x * 500.0) - f80, f62, f56);
    vec4 f82 = VARYING8 + (f61 * f81);
    float f83 = f82.w;
    vec4 f84 = VARYING8 + (f61 * (f81 + clamp((texture(GBufferDepthTexture, f82.xy / vec2(f83)).x * 500.0) - f83, f62, f56)));
    float f85 = f84.w;
    vec2 f86 = f84.xy / vec2(f85);
    vec3 f87 = texture(GBufferColorTexture, f86).xyz;
    float f88 = 0.08900000154972076416015625 + (f33 * 0.9110000133514404296875);
    vec3 f89 = normalize(f38 - CB0[16].xyz);
    float f90 = f88 * f88;
    float f91 = max(0.001000000047497451305389404296875, dot(f36, f89));
    float f92 = dot(f1, f89);
    float f93 = 1.0 - f92;
    float f94 = f93 * f93;
    float f95 = (f94 * f94) * f93;
    float f96 = f90 * f90;
    float f97 = (((f91 * f96) - f91) * f91) + 1.0;
    vec3 f98 = mix(mix((f53 * f53) * CB0[20].x, ((min(f7 + (CB0[32].xyz + (CB0[33].xyz * (f8 * (2.0 - CB0[14].w)))), vec3(CB0[21].w)) + (((((((CB0[40].xyz * f43) + (CB0[42].xyz * f44)) + (CB0[44].xyz * f45)) + (CB0[41].xyz * f46)) + (CB0[43].xyz * f47)) + (CB0[45].xyz * f48)) + (((((((CB0[34].xyz * f43) + (CB0[36].xyz * f44)) + (CB0[38].xyz * f45)) + (CB0[35].xyz * f46)) + (CB0[37].xyz * f47)) + (CB0[39].xyz * f48)) * f8))) + (CB0[15].xyz * f28)) * CB3[1].xyz, vec3(clamp(clamp(((mix(texture(GBufferDepthTexture, f49).x * 500.0, f51, f52) - VARYING8.w) * CB3[2].x) + CB3[2].y, 0.0, 1.0) + clamp((VARYING8.w * 0.0040000001899898052215576171875) - 1.0, 0.0, 1.0), 0.0, 1.0))), mix((textureLod(PrefilteredEnvTexture, f57.xyz, 0.0).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f55.y * 1.58823525905609130859375, 0.0, 1.0)))) * f8, (f87 * f87) * CB0[20].x, vec3((((float(abs(f86.x - 0.5) < 0.550000011920928955078125) * float(abs(f86.y - 0.5) < 0.5)) * clamp(3.900000095367431640625 - (max(VARYING8.w, f85) * 0.008000000379979610443115234375), 0.0, 1.0)) * float(abs((texture(GBufferDepthTexture, f86).x * 500.0) - f85) < 10.0)) * float(f58.w > 0.0))) + (f7 * 0.100000001490116119384765625), vec3((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f37, f38))), 0.0, 1.0) + 0.300000011920928955078125) * (VARYING0.w * CB3[2].z))) + (((((vec3(f95) + (vec3(0.0199999995529651641845703125) * (1.0 - f95))) * (((f96 + (f96 * f96)) / max(((f97 * f97) * ((f92 * 3.0) + 0.5)) * ((f91 * 0.75) + 0.25), 3.0999999580672010779380798339844e-05)) * clamp((dot(f36, f1) * CB0[14].w) * f28, 0.0, 1.0))) * CB0[15].xyz) * (CB0[14].w * CB0[14].w)) * clamp(1.0 - (VARYING7.w * CB0[28].y), 0.0, 1.0));
    vec4 f99 = vec4(0.0);
    f99.x = f98.x;
    vec4 f100 = f99;
    f100.y = f98.y;
    vec4 f101 = f100;
    f101.z = f98.z;
    vec4 f102 = f101;
    f102.w = 1.0;
    vec3 f103 = textureLod(PrefilteredEnvTexture, vec4(f54, 0.0).xyz, max(CB0[18].y, VARYING6.w) * 5.0).xyz;
    bvec3 f104 = bvec3(!(CB0[18].w == 0.0));
    vec3 f105 = mix(vec3(f104.x ? CB0[19].xyz.x : f103.x, f104.y ? CB0[19].xyz.y : f103.y, f104.z ? CB0[19].xyz.z : f103.z), f102.xyz, vec3(VARYING6.w));
    vec4 f106 = f102;
    f106.x = f105.x;
    vec4 f107 = f106;
    f107.y = f105.y;
    vec4 f108 = f107;
    f108.z = f105.z;
    vec3 f109 = sqrt(clamp(f108.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f110 = f108;
    f110.x = f109.x;
    vec4 f111 = f110;
    f111.y = f109.y;
    vec4 f112 = f111;
    f112.z = f109.z;
    _entryPointOutput = f112;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$GBufferDepthTexture=s5
//$$GBufferColorTexture=s4
