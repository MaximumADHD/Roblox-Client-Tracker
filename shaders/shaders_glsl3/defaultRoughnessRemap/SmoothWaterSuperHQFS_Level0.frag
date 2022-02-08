#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <Params.h>
uniform vec4 CB0[53];
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
    float f0 = clamp(dot(step(CB0[19].xyz, abs(VARYING5 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f1 = VARYING5.yzx - (VARYING5.yzx * f0);
    vec4 f2 = vec4(clamp(f0, 0.0, 1.0));
    vec4 f3 = mix(texture(LightMapTexture, f1), vec4(0.0), f2);
    vec4 f4 = mix(texture(LightGridSkylightTexture, f1), vec4(1.0), f2);
    vec3 f5 = (f3.xyz * (f3.w * 120.0)).xyz;
    float f6 = f4.x;
    float f7 = f4.y;
    vec4 f8 = vec4(CB3[0].w);
    float f9 = -VARYING6.x;
    vec4 f10 = ((mix(texture(NormalMap1Texture, VARYING2), texture(NormalMap2Texture, VARYING2), f8) * VARYING0.x) + (mix(texture(NormalMap1Texture, VARYING3), texture(NormalMap2Texture, VARYING3), f8) * VARYING0.y)) + (mix(texture(NormalMap1Texture, VARYING4), texture(NormalMap2Texture, VARYING4), f8) * VARYING0.z);
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
    vec4 f31 = texture(GBufferColorTexture, f29);
    f31.w = texture(GBufferDepthTexture, f29).x * 500.0;
    float f32 = texture(GBufferDepthTexture, f30).x * 500.0;
    vec4 f33 = texture(GBufferColorTexture, f30);
    f33.w = f32;
    vec4 f34 = mix(f31, f33, vec4(clamp(f32 - VARYING8.w, 0.0, 1.0)));
    vec3 f35 = f34.xyz;
    vec3 f36 = -f18;
    vec3 f37 = reflect(f36, f17);
    float f38 = VARYING8.w * 0.20000000298023223876953125;
    vec4 f39 = vec4(f37, 0.0);
    vec4 f40 = f39 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec2 f41 = (f40.xy * 0.5) + vec2(0.5 * f40.w);
    vec4 f42 = vec4(f41.x, f41.y, f40.z, f40.w);
    float f43 = VARYING8.w * (-0.20000000298023223876953125);
    float f44 = 1.0 + clamp(0.0, f43, f38);
    vec4 f45 = VARYING8 + (f42 * f44);
    float f46 = f45.w;
    float f47 = f44 + clamp((texture(GBufferDepthTexture, f45.xy / vec2(f46)).x * 500.0) - f46, f43, f38);
    vec4 f48 = VARYING8 + (f42 * f47);
    float f49 = f48.w;
    float f50 = f47 + clamp((texture(GBufferDepthTexture, f48.xy / vec2(f49)).x * 500.0) - f49, f43, f38);
    vec4 f51 = VARYING8 + (f42 * f50);
    float f52 = f51.w;
    float f53 = f50 + clamp((texture(GBufferDepthTexture, f51.xy / vec2(f52)).x * 500.0) - f52, f43, f38);
    vec4 f54 = VARYING8 + (f42 * f53);
    float f55 = f54.w;
    float f56 = f53 + clamp((texture(GBufferDepthTexture, f54.xy / vec2(f55)).x * 500.0) - f55, f43, f38);
    vec4 f57 = VARYING8 + (f42 * f56);
    float f58 = f57.w;
    float f59 = f56 + clamp((texture(GBufferDepthTexture, f57.xy / vec2(f58)).x * 500.0) - f58, f43, f38);
    vec4 f60 = VARYING8 + (f42 * f59);
    float f61 = f60.w;
    float f62 = f59 + clamp((texture(GBufferDepthTexture, f60.xy / vec2(f61)).x * 500.0) - f61, f43, f38);
    vec4 f63 = VARYING8 + (f42 * f62);
    float f64 = f63.w;
    vec4 f65 = VARYING8 + (f42 * (f62 + clamp((texture(GBufferDepthTexture, f63.xy / vec2(f64)).x * 500.0) - f64, f43, f38)));
    float f66 = f65.w;
    vec2 f67 = f65.xy / vec2(f66);
    vec3 f68 = texture(GBufferColorTexture, f67).xyz;
    float f69 = 0.08900000154972076416015625 + (f13 * 0.9110000133514404296875);
    vec3 f70 = -CB0[11].xyz;
    vec3 f71 = normalize(f70 + f18);
    float f72 = f69 * f69;
    float f73 = max(0.001000000047497451305389404296875, dot(f16, f71));
    float f74 = dot(f70, f71);
    float f75 = 1.0 - f74;
    float f76 = f75 * f75;
    float f77 = (f76 * f76) * f75;
    float f78 = f72 * f72;
    float f79 = (((f73 * f78) - f73) * f73) + 1.0;
    vec3 f80 = mix(mix(((f35 * f35) * CB0[15].x).xyz, ((min(f5 + (CB0[27].xyz + (CB0[28].xyz * f6)), vec3(CB0[16].w)) + (((((((CB0[35].xyz * f23) + (CB0[37].xyz * f24)) + (CB0[39].xyz * f25)) + (CB0[36].xyz * f26)) + (CB0[38].xyz * f27)) + (CB0[40].xyz * f28)) + (((((((CB0[29].xyz * f23) + (CB0[31].xyz * f24)) + (CB0[33].xyz * f25)) + (CB0[30].xyz * f26)) + (CB0[32].xyz * f27)) + (CB0[34].xyz * f28)) * f6))) + (CB0[10].xyz * f7)) * CB3[1].xyz, vec3(clamp(clamp(((f34.w - VARYING8.w) * CB3[2].x) + CB3[2].y, 0.0, 1.0) + clamp((VARYING8.w * 0.0040000001899898052215576171875) - 1.0, 0.0, 1.0), 0.0, 1.0))), mix((textureLod(PrefilteredEnvTexture, f39.xyz, 0.0).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f37.y * 1.58823525905609130859375, 0.0, 1.0)))) * f6, (f68 * f68) * CB0[15].x, vec3((((float(abs(f67.x - 0.5) < 0.550000011920928955078125) * float(abs(f67.y - 0.5) < 0.5)) * clamp(3.900000095367431640625 - (max(VARYING8.w, f66) * 0.008000000379979610443115234375), 0.0, 1.0)) * float(abs((texture(GBufferDepthTexture, f67).x * 500.0) - f66) < 10.0)) * float(f40.w > 0.0))) + (f5 * 0.100000001490116119384765625), vec3(((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f17, f18))), 0.0, 1.0) + 0.300000011920928955078125) * VARYING0.w) * CB3[2].z)) + ((((vec3(f77) + (vec3(0.0199999995529651641845703125) * (1.0 - f77))) * (((f78 + (f78 * f78)) / (((f79 * f79) * ((f74 * 3.0) + 0.5)) * ((f73 * 0.75) + 0.25))) * clamp(dot(f16, f70) * f7, 0.0, 1.0))) * CB0[10].xyz) * clamp(1.0 - (VARYING7.w * CB0[23].y), 0.0, 1.0));
    vec4 f81 = vec4(f80.x, f80.y, f80.z, vec4(0.0).w);
    f81.w = 1.0;
    vec3 f82 = textureLod(PrefilteredEnvTexture, vec4(f36, 0.0).xyz, max(CB0[13].y, VARYING6.w) * 5.0).xyz;
    bvec3 f83 = bvec3(!(CB0[13].w == 0.0));
    vec3 f84 = sqrt(clamp(mix(vec3(f83.x ? CB0[14].xyz.x : f82.x, f83.y ? CB0[14].xyz.y : f82.y, f83.z ? CB0[14].xyz.z : f82.z), f81.xyz, vec3(VARYING6.w)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f84.x, f84.y, f84.z, f81.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$GBufferDepthTexture=s5
//$$GBufferColorTexture=s4
