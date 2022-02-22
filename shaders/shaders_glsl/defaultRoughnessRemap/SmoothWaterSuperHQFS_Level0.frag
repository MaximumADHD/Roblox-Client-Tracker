#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <Params.h>
uniform vec4 CB0[53];
uniform vec4 CB3[3];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D NormalMap1Texture;
uniform sampler2D NormalMap2Texture;
uniform sampler2D GBufferDepthTexture;
uniform sampler2D GBufferColorTexture;
uniform samplerCube EnvMapTexture;

varying vec4 VARYING0;
varying vec3 VARYING1;
varying vec2 VARYING2;
varying vec2 VARYING3;
varying vec2 VARYING4;
varying vec3 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;
varying vec4 VARYING8;

void main()
{
    float f0 = clamp(dot(step(CB0[19].xyz, abs(VARYING5 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f1 = VARYING5.yzx - (VARYING5.yzx * f0);
    vec4 f2 = vec4(clamp(f0, 0.0, 1.0));
    vec4 f3 = mix(texture3D(LightMapTexture, f1), vec4(0.0), f2);
    vec4 f4 = mix(texture3D(LightGridSkylightTexture, f1), vec4(1.0), f2);
    vec3 f5 = f3.xyz * (f3.w * 120.0);
    float f6 = f4.x;
    float f7 = f4.y;
    vec4 f8 = vec4(CB3[0].w);
    float f9 = -VARYING6.x;
    vec4 f10 = ((mix(texture2D(NormalMap1Texture, VARYING2), texture2D(NormalMap2Texture, VARYING2), f8) * VARYING0.x) + (mix(texture2D(NormalMap1Texture, VARYING3), texture2D(NormalMap2Texture, VARYING3), f8) * VARYING0.y)) + (mix(texture2D(NormalMap1Texture, VARYING4), texture2D(NormalMap2Texture, VARYING4), f8) * VARYING0.z);
    vec2 f11 = f10.wy * 2.0;
    vec2 f12 = f11 - vec2(1.0);
    float f13 = f10.x;
    vec3 f14 = vec3(dot(VARYING1, VARYING0.xyz));
    vec4 f15 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f9), vec3(VARYING6.y, f9, 0.0), f14) * f12.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f14) * f12.y)) + (VARYING6.xyz * sqrt(clamp(1.0 + dot(vec2(1.0) - f11, f12), 0.0, 1.0)))), f13);
    vec3 f16 = f15.xyz;
    vec3 f17 = mix(VARYING6.xyz, f16, vec3(0.25));
    vec3 f18 = normalize(VARYING7.xyz);
    vec3 f19 = f16 * f16;
    bvec3 f20 = lessThan(f16, vec3(0.0));
    vec3 f21 = vec3(f20.x ? f19.x : vec3(0.0).x, f20.y ? f19.y : vec3(0.0).y, f20.z ? f19.z : vec3(0.0).z);
    vec3 f22 = f19 - f21;
    float f23 = f22.x;
    float f24 = f22.y;
    float f25 = f22.z;
    float f26 = f21.x;
    float f27 = f21.y;
    float f28 = f21.z;
    vec2 f29 = VARYING8.xy / vec2(VARYING8.w);
    vec2 f30 = f29 + (f15.xz * 0.0500000007450580596923828125);
    vec4 f31 = texture2D(GBufferColorTexture, f29);
    f31.w = texture2D(GBufferDepthTexture, f29).x * 500.0;
    float f32 = texture2D(GBufferDepthTexture, f30).x * 500.0;
    vec4 f33 = texture2D(GBufferColorTexture, f30);
    f33.w = f32;
    vec4 f34 = mix(f31, f33, vec4(clamp(f32 - VARYING8.w, 0.0, 1.0)));
    vec3 f35 = f34.xyz;
    vec3 f36 = (f35 * f35) * CB0[15].x;
    vec4 f37 = f34;
    f37.x = f36.x;
    vec4 f38 = f37;
    f38.y = f36.y;
    vec4 f39 = f38;
    f39.z = f36.z;
    vec3 f40 = reflect(-f18, f17);
    float f41 = VARYING8.w * 0.20000000298023223876953125;
    vec4 f42 = vec4(f40, 0.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec2 f43 = (f42.xy * 0.5) + vec2(0.5 * f42.w);
    vec4 f44 = f42;
    f44.x = f43.x;
    vec4 f45 = f44;
    f45.y = f43.y;
    float f46 = VARYING8.w * (-0.20000000298023223876953125);
    float f47 = 1.0 + clamp(0.0, f46, f41);
    vec4 f48 = VARYING8 + (f45 * f47);
    float f49 = f48.w;
    float f50 = f47 + clamp((texture2D(GBufferDepthTexture, f48.xy / vec2(f49)).x * 500.0) - f49, f46, f41);
    vec4 f51 = VARYING8 + (f45 * f50);
    float f52 = f51.w;
    float f53 = f50 + clamp((texture2D(GBufferDepthTexture, f51.xy / vec2(f52)).x * 500.0) - f52, f46, f41);
    vec4 f54 = VARYING8 + (f45 * f53);
    float f55 = f54.w;
    float f56 = f53 + clamp((texture2D(GBufferDepthTexture, f54.xy / vec2(f55)).x * 500.0) - f55, f46, f41);
    vec4 f57 = VARYING8 + (f45 * f56);
    float f58 = f57.w;
    float f59 = f56 + clamp((texture2D(GBufferDepthTexture, f57.xy / vec2(f58)).x * 500.0) - f58, f46, f41);
    vec4 f60 = VARYING8 + (f45 * f59);
    float f61 = f60.w;
    float f62 = f59 + clamp((texture2D(GBufferDepthTexture, f60.xy / vec2(f61)).x * 500.0) - f61, f46, f41);
    vec4 f63 = VARYING8 + (f45 * f62);
    float f64 = f63.w;
    float f65 = f62 + clamp((texture2D(GBufferDepthTexture, f63.xy / vec2(f64)).x * 500.0) - f64, f46, f41);
    vec4 f66 = VARYING8 + (f45 * f65);
    float f67 = f66.w;
    vec4 f68 = VARYING8 + (f45 * (f65 + clamp((texture2D(GBufferDepthTexture, f66.xy / vec2(f67)).x * 500.0) - f67, f46, f41)));
    float f69 = f68.w;
    vec2 f70 = f68.xy / vec2(f69);
    vec3 f71 = textureCube(EnvMapTexture, f40).xyz;
    vec3 f72 = texture2D(GBufferColorTexture, f70).xyz;
    float f73 = 0.08900000154972076416015625 + (f13 * 0.9110000133514404296875);
    vec3 f74 = -CB0[11].xyz;
    vec3 f75 = normalize(f74 + f18);
    float f76 = f73 * f73;
    float f77 = max(0.001000000047497451305389404296875, dot(f16, f75));
    float f78 = dot(f74, f75);
    float f79 = 1.0 - f78;
    float f80 = f79 * f79;
    float f81 = (f80 * f80) * f79;
    float f82 = f76 * f76;
    float f83 = (((f77 * f82) - f77) * f77) + 1.0;
    vec3 f84 = mix(mix(f39.xyz, ((min(f5 + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f6)), vec3(CB0[16].w)) + (((((((CB0[35].xyz * f23) + (CB0[37].xyz * f24)) + (CB0[39].xyz * f25)) + (CB0[36].xyz * f26)) + (CB0[38].xyz * f27)) + (CB0[40].xyz * f28)) + (((((((CB0[29].xyz * f23) + (CB0[31].xyz * f24)) + (CB0[33].xyz * f25)) + (CB0[30].xyz * f26)) + (CB0[32].xyz * f27)) + (CB0[34].xyz * f28)) * f6))) + (CB0[10].xyz * f7)) * CB3[1].xyz, vec3(clamp(clamp(((f34.w - VARYING8.w) * CB3[2].x) + CB3[2].y, 0.0, 1.0) + clamp((VARYING8.w * 0.0040000001899898052215576171875) - 1.0, 0.0, 1.0), 0.0, 1.0))), mix(((f71 * f71) * CB0[15].x) * f6, (f72 * f72) * CB0[15].x, vec3((((float(abs(f70.x - 0.5) < 0.550000011920928955078125) * float(abs(f70.y - 0.5) < 0.5)) * clamp(3.900000095367431640625 - (max(VARYING8.w, f69) * 0.008000000379979610443115234375), 0.0, 1.0)) * float(abs((texture2D(GBufferDepthTexture, f70).x * 500.0) - f69) < 10.0)) * float(f42.w > 0.0))) + (f5 * 0.100000001490116119384765625), vec3(((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f17, f18))), 0.0, 1.0) + 0.300000011920928955078125) * VARYING0.w) * CB3[2].z)) + (((((vec3(f81) + (vec3(0.0199999995529651641845703125) * (1.0 - f81))) * (((f82 + (f82 * f82)) / (((f83 * f83) * ((f78 * 3.0) + 0.5)) * ((f77 * 0.75) + 0.25))) * clamp((dot(f16, f74) * CB0[9].w) * f7, 0.0, 1.0))) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * clamp(1.0 - (VARYING7.w * CB0[23].y), 0.0, 1.0));
    vec4 f85 = vec4(0.0);
    f85.x = f84.x;
    vec4 f86 = f85;
    f86.y = f84.y;
    vec4 f87 = f86;
    f87.z = f84.z;
    vec4 f88 = f87;
    f88.w = 1.0;
    vec3 f89 = mix(CB0[14].xyz, f88.xyz, vec3(VARYING6.w));
    vec4 f90 = f88;
    f90.x = f89.x;
    vec4 f91 = f90;
    f91.y = f89.y;
    vec4 f92 = f91;
    f92.z = f89.z;
    vec3 f93 = sqrt(clamp(f92.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f94 = f92;
    f94.x = f93.x;
    vec4 f95 = f94;
    f95.y = f93.y;
    vec4 f96 = f95;
    f96.z = f93.z;
    gl_FragData[0] = f96;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$GBufferDepthTexture=s5
//$$GBufferColorTexture=s4
//$$EnvMapTexture=s3
