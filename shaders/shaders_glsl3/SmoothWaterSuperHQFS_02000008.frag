#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowTransformGPU.h>
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
    vec4 f14 = vec4(f0, 1.0) * mat4(CB8[((dot(f11, f11) < CB0[46].w) ? 0 : ((dot(f12, f12) < CB0[47].w) ? 1 : ((dot(f13, f13) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f11, f11) < CB0[46].w) ? 0 : ((dot(f12, f12) < CB0[47].w) ? 1 : ((dot(f13, f13) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f11, f11) < CB0[46].w) ? 0 : ((dot(f12, f12) < CB0[47].w) ? 1 : ((dot(f13, f13) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f11, f11) < CB0[46].w) ? 0 : ((dot(f12, f12) < CB0[47].w) ? 1 : ((dot(f13, f13) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f15 = textureLod(ShadowAtlasTexture, f14.xy, 0.0);
    vec2 f16 = vec2(0.0);
    f16.x = CB0[52].z;
    vec2 f17 = f16;
    f17.y = CB0[52].w;
    float f18 = (2.0 * f14.z) - 1.0;
    float f19 = exp(CB0[52].z * f18);
    float f20 = -exp((-CB0[52].w) * f18);
    vec2 f21 = (f17 * CB0[53].y) * vec2(f19, f20);
    vec2 f22 = f21 * f21;
    float f23 = f15.x;
    float f24 = max(f15.y - (f23 * f23), f22.x);
    float f25 = f19 - f23;
    float f26 = f15.z;
    float f27 = max(f15.w - (f26 * f26), f22.y);
    float f28 = f20 - f26;
    float f29 = ((dot(VARYING6.xyz, f1) * CB0[53].x) > 0.0) ? mix(min((f19 <= f23) ? 1.0 : clamp(((f24 / (f24 + (f25 * f25))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f20 <= f26) ? 1.0 : clamp(((f27 / (f27 + (f28 * f28))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f10, clamp((length(f0 - CB0[11].xyz) * CB0[52].y) - (CB0[52].x * CB0[52].y), 0.0, 1.0)) : f10;
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
    vec2 f59 = CB0[50].xy * 0.5;
    vec2 f60 = f59 / CB0[50].zw;
    vec2 f61 = f58 + f60;
    vec2 f62 = (f58 + (f42.xz * 0.0500000007450580596923828125)) + f60;
    vec2 f63 = (vec2(clamp(f61.x, 0.0, 1.0), clamp(f61.y, 0.0, 1.0)) * CB0[50].zw) - f59;
    vec2 f64 = (vec2(clamp(f62.x, 0.0, 1.0), clamp(f62.y, 0.0, 1.0)) * CB0[50].zw) - f59;
    vec4 f65 = texture(GBufferColorTexture, f63);
    vec4 f66 = texture(GBufferColorTexture, f64);
    vec4 f67 = texture(GBufferDepthTexture, f63);
    vec4 f68 = texture(GBufferDepthTexture, f64);
    float f69 = f68.x * 500.0;
    float f70 = clamp(f69 - VARYING8.w, 0.0, 1.0);
    vec3 f71 = mix(f65.xyz, f66.xyz, vec3(f70));
    float f72 = VARYING8.w * 0.20000000298023223876953125;
    vec4 f73 = vec4(f47, 0.0);
    vec4 f74 = f73 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec2 f75 = (f74.xy * 0.5) + vec2(0.5 * f74.w);
    vec4 f76 = f74;
    f76.x = f75.x;
    vec4 f77 = f76;
    f77.y = f75.y;
    float f78 = VARYING8.w * (-0.20000000298023223876953125);
    float f79 = 1.0 + clamp(0.0, f78, f72);
    vec4 f80 = VARYING8 + (f77 * f79);
    float f81 = f80.w;
    vec2 f82 = (f80.xy / vec2(f81)) + f60;
    vec4 f83 = texture(GBufferDepthTexture, (vec2(clamp(f82.x, 0.0, 1.0), clamp(f82.y, 0.0, 1.0)) * CB0[50].zw) - f59);
    float f84 = f79 + clamp((f83.x * 500.0) - f81, f78, f72);
    vec4 f85 = VARYING8 + (f77 * f84);
    float f86 = f85.w;
    vec2 f87 = (f85.xy / vec2(f86)) + f60;
    vec4 f88 = texture(GBufferDepthTexture, (vec2(clamp(f87.x, 0.0, 1.0), clamp(f87.y, 0.0, 1.0)) * CB0[50].zw) - f59);
    float f89 = f84 + clamp((f88.x * 500.0) - f86, f78, f72);
    vec4 f90 = VARYING8 + (f77 * f89);
    float f91 = f90.w;
    vec2 f92 = (f90.xy / vec2(f91)) + f60;
    vec4 f93 = texture(GBufferDepthTexture, (vec2(clamp(f92.x, 0.0, 1.0), clamp(f92.y, 0.0, 1.0)) * CB0[50].zw) - f59);
    float f94 = f89 + clamp((f93.x * 500.0) - f91, f78, f72);
    vec4 f95 = VARYING8 + (f77 * f94);
    float f96 = f95.w;
    vec2 f97 = (f95.xy / vec2(f96)) + f60;
    vec4 f98 = texture(GBufferDepthTexture, (vec2(clamp(f97.x, 0.0, 1.0), clamp(f97.y, 0.0, 1.0)) * CB0[50].zw) - f59);
    float f99 = f94 + clamp((f98.x * 500.0) - f96, f78, f72);
    vec4 f100 = VARYING8 + (f77 * f99);
    float f101 = f100.w;
    vec2 f102 = (f100.xy / vec2(f101)) + f60;
    vec4 f103 = texture(GBufferDepthTexture, (vec2(clamp(f102.x, 0.0, 1.0), clamp(f102.y, 0.0, 1.0)) * CB0[50].zw) - f59);
    float f104 = f99 + clamp((f103.x * 500.0) - f101, f78, f72);
    vec4 f105 = VARYING8 + (f77 * f104);
    float f106 = f105.w;
    vec2 f107 = (f105.xy / vec2(f106)) + f60;
    vec4 f108 = texture(GBufferDepthTexture, (vec2(clamp(f107.x, 0.0, 1.0), clamp(f107.y, 0.0, 1.0)) * CB0[50].zw) - f59);
    float f109 = f104 + clamp((f108.x * 500.0) - f106, f78, f72);
    vec4 f110 = VARYING8 + (f77 * f109);
    float f111 = f110.w;
    vec2 f112 = (f110.xy / vec2(f111)) + f60;
    vec4 f113 = texture(GBufferDepthTexture, (vec2(clamp(f112.x, 0.0, 1.0), clamp(f112.y, 0.0, 1.0)) * CB0[50].zw) - f59);
    vec4 f114 = VARYING8 + (f77 * (f109 + clamp((f113.x * 500.0) - f111, f78, f72)));
    float f115 = f114.w;
    vec2 f116 = (f114.xy / vec2(f115)) + f60;
    vec2 f117 = (vec2(clamp(f116.x, 0.0, 1.0), clamp(f116.y, 0.0, 1.0)) * CB0[50].zw) - f59;
    vec4 f118 = texture(GBufferDepthTexture, f117);
    vec4 f119 = texture(GBufferColorTexture, f117);
    vec3 f120 = f119.xyz;
    float f121 = 0.08900000154972076416015625 + (f40 * 0.9110000133514404296875);
    float f122 = (dot(f43, f1) * CB0[14].w) * f29;
    vec3 f123;
    if (f122 > 0.0)
    {
        vec3 f124 = normalize(f45 + f1);
        float f125 = f121 * f121;
        float f126 = max(0.001000000047497451305389404296875, dot(f43, f124));
        float f127 = dot(f1, f124);
        float f128 = 1.0 - f127;
        float f129 = f128 * f128;
        float f130 = (f129 * f129) * f128;
        float f131 = f125 * f125;
        float f132 = (((f126 * f131) - f126) * f126) + 1.0;
        f123 = (((vec3(f130) + (vec3(0.0199999995529651641845703125) * (1.0 - f130))) * (((f131 + (f131 * f131)) / (((f132 * f132) * ((f127 * 3.0) + 0.5)) * ((f126 * 0.75) + 0.25))) * clamp(f122, 0.0, 1.0))) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f123 = vec3(0.0);
    }
    vec3 f133 = mix(mix((f71 * f71) * CB0[20].x, ((min((f7.xyz * (f7.w * 120.0)) + (CB0[32].xyz + (CB0[33].xyz * (f9 * (2.0 - CB0[14].w)))), vec3(CB0[21].w)) + (((((((CB0[40].xyz * f52) + (CB0[42].xyz * f53)) + (CB0[44].xyz * f54)) + (CB0[41].xyz * f55)) + (CB0[43].xyz * f56)) + (CB0[45].xyz * f57)) + (((((((CB0[34].xyz * f52) + (CB0[36].xyz * f53)) + (CB0[38].xyz * f54)) + (CB0[35].xyz * f55)) + (CB0[37].xyz * f56)) + (CB0[39].xyz * f57)) * f9))) + (CB0[15].xyz * f29)) * CB3[1].xyz, vec3(clamp(clamp(((mix(f67.x * 500.0, f69, f70) - VARYING8.w) * CB3[2].x) + CB3[2].y, 0.0, 1.0) + clamp((VARYING8.w * 0.0040000001899898052215576171875) - 1.0, 0.0, 1.0), 0.0, 1.0))), mix((textureLod(PrefilteredEnvTexture, f73.xyz, 0.0).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f47.y * 1.58823525905609130859375, 0.0, 1.0)))) * f9, (f120 * f120) * CB0[20].x, vec3((((float(abs(f117.x - 0.5) < 0.550000011920928955078125) * float(abs(f117.y - 0.5) < 0.5)) * clamp(3.900000095367431640625 - (max(VARYING8.w, f115) * 0.008000000379979610443115234375), 0.0, 1.0)) * float(abs((f118.x * 500.0) - f115) < 10.0)) * float(f74.w > 0.0))), vec3((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f44, f45))), 0.0, 1.0) + 0.300000011920928955078125) * (VARYING0.w * CB3[2].z))) + (f123 * clamp(1.0 - (VARYING7.w * CB0[28].y), 0.0, 1.0));
    vec4 f134 = vec4(0.0);
    f134.x = f133.x;
    vec4 f135 = f134;
    f135.y = f133.y;
    vec4 f136 = f135;
    f136.z = f133.z;
    vec4 f137 = f136;
    f137.w = 1.0;
    vec3 f138 = textureLod(PrefilteredEnvTexture, vec4(f46, 0.0).xyz, max(CB0[18].y, VARYING6.w) * 5.0).xyz;
    bvec3 f139 = bvec3(!(CB0[18].w == 0.0));
    vec3 f140 = mix(vec3(f139.x ? CB0[19].xyz.x : f138.x, f139.y ? CB0[19].xyz.y : f138.y, f139.z ? CB0[19].xyz.z : f138.z), f137.xyz, vec3(VARYING6.w));
    vec4 f141 = f137;
    f141.x = f140.x;
    vec4 f142 = f141;
    f142.y = f140.y;
    vec4 f143 = f142;
    f143.z = f140.z;
    vec3 f144 = sqrt(clamp(f143.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f145 = f143;
    f145.x = f144.x;
    vec4 f146 = f145;
    f146.y = f144.y;
    vec4 f147 = f146;
    f147.z = f144.z;
    _entryPointOutput = f147;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$GBufferDepthTexture=s5
//$$GBufferColorTexture=s4
