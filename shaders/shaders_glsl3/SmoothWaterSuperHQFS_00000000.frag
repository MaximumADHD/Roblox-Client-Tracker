#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <Params.h>
uniform vec4 CB0[57];
uniform vec4 CB3[3];
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
    float f0 = clamp(dot(step(CB0[24].xyz, abs(VARYING5 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f1 = VARYING5.yzx - (VARYING5.yzx * f0);
    vec4 f2 = vec4(clamp(f0, 0.0, 1.0));
    vec4 f3 = mix(texture(LightMapTexture, f1), vec4(0.0), f2);
    vec4 f4 = mix(texture(LightGridSkylightTexture, f1), vec4(1.0), f2);
    float f5 = f4.x;
    float f6 = f4.y;
    vec4 f7 = vec4(CB3[0].w);
    vec4 f8 = ((mix(texture(NormalMap1Texture, VARYING2), texture(NormalMap2Texture, VARYING2), f7) * VARYING0.x) + (mix(texture(NormalMap1Texture, VARYING3), texture(NormalMap2Texture, VARYING3), f7) * VARYING0.y)) + (mix(texture(NormalMap1Texture, VARYING4), texture(NormalMap2Texture, VARYING4), f7) * VARYING0.z);
    vec2 f9 = f8.wy * 2.0;
    vec2 f10 = f9 - vec2(1.0);
    float f11 = f8.x;
    vec3 f12 = vec3(dot(VARYING1, VARYING0.xyz));
    vec4 f13 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f12) * f10.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f12) * f10.y)) + (VARYING6.xyz * sqrt(clamp(1.0 + dot(vec2(1.0) - f9, f10), 0.0, 1.0)))), f11);
    vec3 f14 = f13.xyz;
    vec3 f15 = mix(VARYING6.xyz, f14, vec3(0.25));
    vec3 f16 = VARYING7.xyz / vec3(sqrt(dot(VARYING7.xyz, VARYING7.xyz)));
    vec3 f17 = -f16;
    vec3 f18 = reflect(f17, f15);
    vec3 f19 = f14 * f14;
    bvec3 f20 = lessThan(f14, vec3(0.0));
    vec3 f21 = vec3(f20.x ? f19.x : vec3(0.0).x, f20.y ? f19.y : vec3(0.0).y, f20.z ? f19.z : vec3(0.0).z);
    vec3 f22 = f19 - f21;
    float f23 = f22.x;
    float f24 = f22.y;
    float f25 = f22.z;
    float f26 = f21.x;
    float f27 = f21.y;
    float f28 = f21.z;
    vec2 f29 = VARYING8.xy / vec2(VARYING8.w);
    vec2 f30 = f29 + (f13.xz * 0.0500000007450580596923828125);
    float f31 = texture(GBufferDepthTexture, f30).x * 500.0;
    float f32 = clamp(f31 - VARYING8.w, 0.0, 1.0);
    vec3 f33 = mix(texture(GBufferColorTexture, f29).xyz, texture(GBufferColorTexture, f30).xyz, vec3(f32));
    float f34 = VARYING8.w * 0.20000000298023223876953125;
    vec4 f35 = vec4(f18, 0.0);
    vec4 f36 = f35 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec2 f37 = (f36.xy * 0.5) + vec2(0.5 * f36.w);
    vec4 f38 = f36;
    f38.x = f37.x;
    vec4 f39 = f38;
    f39.y = f37.y;
    float f40 = VARYING8.w * (-0.20000000298023223876953125);
    float f41 = 1.0 + clamp(0.0, f40, f34);
    vec4 f42 = VARYING8 + (f39 * f41);
    float f43 = f42.w;
    float f44 = f41 + clamp((texture(GBufferDepthTexture, f42.xy / vec2(f43)).x * 500.0) - f43, f40, f34);
    vec4 f45 = VARYING8 + (f39 * f44);
    float f46 = f45.w;
    float f47 = f44 + clamp((texture(GBufferDepthTexture, f45.xy / vec2(f46)).x * 500.0) - f46, f40, f34);
    vec4 f48 = VARYING8 + (f39 * f47);
    float f49 = f48.w;
    float f50 = f47 + clamp((texture(GBufferDepthTexture, f48.xy / vec2(f49)).x * 500.0) - f49, f40, f34);
    vec4 f51 = VARYING8 + (f39 * f50);
    float f52 = f51.w;
    float f53 = f50 + clamp((texture(GBufferDepthTexture, f51.xy / vec2(f52)).x * 500.0) - f52, f40, f34);
    vec4 f54 = VARYING8 + (f39 * f53);
    float f55 = f54.w;
    float f56 = f53 + clamp((texture(GBufferDepthTexture, f54.xy / vec2(f55)).x * 500.0) - f55, f40, f34);
    vec4 f57 = VARYING8 + (f39 * f56);
    float f58 = f57.w;
    float f59 = f56 + clamp((texture(GBufferDepthTexture, f57.xy / vec2(f58)).x * 500.0) - f58, f40, f34);
    vec4 f60 = VARYING8 + (f39 * f59);
    float f61 = f60.w;
    vec4 f62 = VARYING8 + (f39 * (f59 + clamp((texture(GBufferDepthTexture, f60.xy / vec2(f61)).x * 500.0) - f61, f40, f34)));
    float f63 = f62.w;
    vec2 f64 = f62.xy / vec2(f63);
    vec3 f65 = texture(GBufferColorTexture, f64).xyz;
    float f66 = 0.08900000154972076416015625 + (f11 * 0.9110000133514404296875);
    vec3 f67 = -CB0[16].xyz;
    vec3 f68 = normalize(f16 + f67);
    float f69 = f66 * f66;
    float f70 = max(0.001000000047497451305389404296875, dot(f14, f68));
    float f71 = dot(f67, f68);
    float f72 = 1.0 - f71;
    float f73 = f72 * f72;
    float f74 = (f73 * f73) * f72;
    float f75 = f69 * f69;
    float f76 = (((f70 * f75) - f70) * f70) + 1.0;
    vec3 f77 = mix(mix((f33 * f33) * CB0[20].x, ((min((f3.xyz * (f3.w * 120.0)) + (CB0[32].xyz + (CB0[33].xyz * f5)), vec3(CB0[21].w)) + (((((((CB0[40].xyz * f23) + (CB0[42].xyz * f24)) + (CB0[44].xyz * f25)) + (CB0[41].xyz * f26)) + (CB0[43].xyz * f27)) + (CB0[45].xyz * f28)) + (((((((CB0[34].xyz * f23) + (CB0[36].xyz * f24)) + (CB0[38].xyz * f25)) + (CB0[35].xyz * f26)) + (CB0[37].xyz * f27)) + (CB0[39].xyz * f28)) * f5))) + (CB0[15].xyz * f6)) * CB3[1].xyz, vec3(clamp(clamp(((mix(texture(GBufferDepthTexture, f29).x * 500.0, f31, f32) - VARYING8.w) * CB3[2].x) + CB3[2].y, 0.0, 1.0) + clamp((VARYING8.w * 0.0040000001899898052215576171875) - 1.0, 0.0, 1.0), 0.0, 1.0))), mix((textureLod(PrefilteredEnvTexture, f35.xyz, 0.0).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f18.y * 1.58823525905609130859375, 0.0, 1.0)))) * f5, (f65 * f65) * CB0[20].x, vec3((((float(abs(f64.x - 0.5) < 0.550000011920928955078125) * float(abs(f64.y - 0.5) < 0.5)) * clamp(3.900000095367431640625 - (max(VARYING8.w, f63) * 0.008000000379979610443115234375), 0.0, 1.0)) * float(abs((texture(GBufferDepthTexture, f64).x * 500.0) - f63) < 10.0)) * float(f36.w > 0.0))), vec3((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f15, f16))), 0.0, 1.0) + 0.300000011920928955078125) * (VARYING0.w * CB3[2].z))) + (((((vec3(f74) + (vec3(0.0199999995529651641845703125) * (1.0 - f74))) * (((f75 + (f75 * f75)) / (((f76 * f76) * ((f71 * 3.0) + 0.5)) * ((f70 * 0.75) + 0.25))) * clamp(dot(f14, f67) * f6, 0.0, 1.0))) * CB0[15].xyz) * 1.0) * clamp(1.0 - (VARYING7.w * CB0[28].y), 0.0, 1.0));
    vec4 f78 = vec4(0.0);
    f78.x = f77.x;
    vec4 f79 = f78;
    f79.y = f77.y;
    vec4 f80 = f79;
    f80.z = f77.z;
    vec4 f81 = f80;
    f81.w = 1.0;
    vec3 f82 = textureLod(PrefilteredEnvTexture, vec4(f17, 0.0).xyz, max(CB0[18].y, VARYING6.w) * 5.0).xyz;
    bvec3 f83 = bvec3(!(CB0[18].w == 0.0));
    vec3 f84 = mix(vec3(f83.x ? CB0[19].xyz.x : f82.x, f83.y ? CB0[19].xyz.y : f82.y, f83.z ? CB0[19].xyz.z : f82.z), f81.xyz, vec3(VARYING6.w));
    vec4 f85 = f81;
    f85.x = f84.x;
    vec4 f86 = f85;
    f86.y = f84.y;
    vec4 f87 = f86;
    f87.z = f84.z;
    vec3 f88 = sqrt(clamp(f87.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f89 = f87;
    f89.x = f88.x;
    vec4 f90 = f89;
    f90.y = f88.y;
    vec4 f91 = f90;
    f91.z = f88.z;
    _entryPointOutput = f91;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$GBufferDepthTexture=s5
//$$GBufferColorTexture=s4
