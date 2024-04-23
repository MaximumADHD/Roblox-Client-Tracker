#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowTransformGPU.h>
#include <Params.h>
uniform vec4 CB0[57];
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
    vec3 f9 = f7.xyz * (f7.w * 120.0);
    float f10 = f8.x;
    float f11 = f8.y;
    vec3 f12 = f0 - CB0[46].xyz;
    vec3 f13 = f0 - CB0[47].xyz;
    vec3 f14 = f0 - CB0[48].xyz;
    vec4 f15 = vec4(f0, 1.0) * mat4(CB8[((dot(f12, f12) < CB0[46].w) ? 0 : ((dot(f13, f13) < CB0[47].w) ? 1 : ((dot(f14, f14) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f12, f12) < CB0[46].w) ? 0 : ((dot(f13, f13) < CB0[47].w) ? 1 : ((dot(f14, f14) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f12, f12) < CB0[46].w) ? 0 : ((dot(f13, f13) < CB0[47].w) ? 1 : ((dot(f14, f14) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f12, f12) < CB0[46].w) ? 0 : ((dot(f13, f13) < CB0[47].w) ? 1 : ((dot(f14, f14) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f16 = textureLod(ShadowAtlasTexture, f15.xy, 0.0);
    vec2 f17 = vec2(0.0);
    f17.x = CB0[51].z;
    vec2 f18 = f17;
    f18.y = CB0[51].w;
    float f19 = (2.0 * f15.z) - 1.0;
    float f20 = exp(CB0[51].z * f19);
    float f21 = -exp((-CB0[51].w) * f19);
    vec2 f22 = (f18 * CB0[52].y) * vec2(f20, f21);
    vec2 f23 = f22 * f22;
    float f24 = f16.x;
    float f25 = max(f16.y - (f24 * f24), f23.x);
    float f26 = f20 - f24;
    float f27 = f16.z;
    float f28 = max(f16.w - (f27 * f27), f23.y);
    float f29 = f21 - f27;
    float f30 = ((dot(VARYING6.xyz, f1) * CB0[52].x) > 0.0) ? mix(min((f20 <= f24) ? 1.0 : clamp(((f25 / (f25 + (f26 * f26))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f21 <= f27) ? 1.0 : clamp(((f28 / (f28 + (f29 * f29))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f11, clamp((length(f0 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f11;
    vec4 f31 = texture(NormalMap1Texture, VARYING2);
    vec4 f32 = texture(NormalMap2Texture, VARYING2);
    vec4 f33 = vec4(CB3[0].w);
    vec4 f34 = texture(NormalMap1Texture, VARYING3);
    vec4 f35 = texture(NormalMap2Texture, VARYING3);
    vec4 f36 = texture(NormalMap1Texture, VARYING4);
    vec4 f37 = texture(NormalMap2Texture, VARYING4);
    vec4 f38 = ((mix(f31, f32, f33) * VARYING0.x) + (mix(f34, f35, f33) * VARYING0.y)) + (mix(f36, f37, f33) * VARYING0.z);
    vec2 f39 = f38.wy * 2.0;
    vec2 f40 = f39 - vec2(1.0);
    float f41 = f38.x;
    vec3 f42 = vec3(dot(VARYING1, VARYING0.xyz));
    vec4 f43 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f42) * f40.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f42) * f40.y)) + (VARYING6.xyz * sqrt(clamp(1.0 + dot(vec2(1.0) - f39, f40), 0.0, 1.0)))), f41);
    vec3 f44 = f43.xyz;
    vec3 f45 = mix(VARYING6.xyz, f44, vec3(0.25));
    vec3 f46 = VARYING7.xyz / vec3(sqrt(dot(VARYING7.xyz, VARYING7.xyz)));
    vec3 f47 = -f46;
    vec3 f48 = reflect(f47, f45);
    vec3 f49 = f44 * f44;
    bvec3 f50 = lessThan(f44, vec3(0.0));
    vec3 f51 = vec3(f50.x ? f49.x : vec3(0.0).x, f50.y ? f49.y : vec3(0.0).y, f50.z ? f49.z : vec3(0.0).z);
    vec3 f52 = f49 - f51;
    float f53 = f52.x;
    float f54 = f52.y;
    float f55 = f52.z;
    float f56 = f51.x;
    float f57 = f51.y;
    float f58 = f51.z;
    vec2 f59 = VARYING8.xy / vec2(VARYING8.w);
    vec2 f60 = f59 + (f43.xz * 0.0500000007450580596923828125);
    vec4 f61 = texture(GBufferColorTexture, f59);
    vec4 f62 = texture(GBufferDepthTexture, f59);
    vec4 f63 = texture(GBufferColorTexture, f60);
    vec4 f64 = texture(GBufferDepthTexture, f60);
    float f65 = f64.x * 500.0;
    float f66 = clamp(f65 - VARYING8.w, 0.0, 1.0);
    vec3 f67 = mix(f61.xyz, f63.xyz, vec3(f66));
    float f68 = VARYING8.w * 0.20000000298023223876953125;
    vec4 f69 = vec4(f48, 0.0);
    vec4 f70 = f69 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec2 f71 = (f70.xy * 0.5) + vec2(0.5 * f70.w);
    vec4 f72 = f70;
    f72.x = f71.x;
    vec4 f73 = f72;
    f73.y = f71.y;
    float f74 = VARYING8.w * (-0.20000000298023223876953125);
    float f75 = 1.0 + clamp(0.0, f74, f68);
    vec4 f76 = VARYING8 + (f73 * f75);
    float f77 = f76.w;
    vec4 f78 = texture(GBufferDepthTexture, f76.xy / vec2(f77));
    float f79 = f75 + clamp((f78.x * 500.0) - f77, f74, f68);
    vec4 f80 = VARYING8 + (f73 * f79);
    float f81 = f80.w;
    vec4 f82 = texture(GBufferDepthTexture, f80.xy / vec2(f81));
    float f83 = f79 + clamp((f82.x * 500.0) - f81, f74, f68);
    vec4 f84 = VARYING8 + (f73 * f83);
    float f85 = f84.w;
    vec4 f86 = texture(GBufferDepthTexture, f84.xy / vec2(f85));
    float f87 = f83 + clamp((f86.x * 500.0) - f85, f74, f68);
    vec4 f88 = VARYING8 + (f73 * f87);
    float f89 = f88.w;
    vec4 f90 = texture(GBufferDepthTexture, f88.xy / vec2(f89));
    float f91 = f87 + clamp((f90.x * 500.0) - f89, f74, f68);
    vec4 f92 = VARYING8 + (f73 * f91);
    float f93 = f92.w;
    vec4 f94 = texture(GBufferDepthTexture, f92.xy / vec2(f93));
    float f95 = f91 + clamp((f94.x * 500.0) - f93, f74, f68);
    vec4 f96 = VARYING8 + (f73 * f95);
    float f97 = f96.w;
    vec4 f98 = texture(GBufferDepthTexture, f96.xy / vec2(f97));
    float f99 = f95 + clamp((f98.x * 500.0) - f97, f74, f68);
    vec4 f100 = VARYING8 + (f73 * f99);
    float f101 = f100.w;
    vec4 f102 = texture(GBufferDepthTexture, f100.xy / vec2(f101));
    vec4 f103 = VARYING8 + (f73 * (f99 + clamp((f102.x * 500.0) - f101, f74, f68)));
    float f104 = f103.w;
    vec2 f105 = f103.xy / vec2(f104);
    vec4 f106 = texture(GBufferDepthTexture, f105);
    vec4 f107 = texture(GBufferColorTexture, f105);
    vec3 f108 = f107.xyz;
    float f109 = 0.08900000154972076416015625 + (f41 * 0.9110000133514404296875);
    float f110 = (dot(f44, f1) * CB0[14].w) * f30;
    vec3 f111;
    if (f110 > 0.0)
    {
        vec3 f112 = normalize(f46 + f1);
        float f113 = f109 * f109;
        float f114 = max(0.001000000047497451305389404296875, dot(f44, f112));
        float f115 = dot(f1, f112);
        float f116 = 1.0 - f115;
        float f117 = f116 * f116;
        float f118 = (f117 * f117) * f116;
        float f119 = f113 * f113;
        float f120 = (((f114 * f119) - f114) * f114) + 1.0;
        f111 = (((vec3(f118) + (vec3(0.0199999995529651641845703125) * (1.0 - f118))) * (((f119 + (f119 * f119)) / (((f120 * f120) * ((f115 * 3.0) + 0.5)) * ((f114 * 0.75) + 0.25))) * clamp(f110, 0.0, 1.0))) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f111 = vec3(0.0);
    }
    vec3 f121 = mix(mix((f67 * f67) * CB0[20].x, ((min(f9 + (CB0[32].xyz + (CB0[33].xyz * (f10 * (2.0 - CB0[14].w)))), vec3(CB0[21].w)) + (((((((CB0[40].xyz * f53) + (CB0[42].xyz * f54)) + (CB0[44].xyz * f55)) + (CB0[41].xyz * f56)) + (CB0[43].xyz * f57)) + (CB0[45].xyz * f58)) + (((((((CB0[34].xyz * f53) + (CB0[36].xyz * f54)) + (CB0[38].xyz * f55)) + (CB0[35].xyz * f56)) + (CB0[37].xyz * f57)) + (CB0[39].xyz * f58)) * f10))) + (CB0[15].xyz * f30)) * CB3[1].xyz, vec3(clamp(clamp(((mix(f62.x * 500.0, f65, f66) - VARYING8.w) * CB3[2].x) + CB3[2].y, 0.0, 1.0) + clamp((VARYING8.w * 0.0040000001899898052215576171875) - 1.0, 0.0, 1.0), 0.0, 1.0))), mix((textureLod(PrefilteredEnvTexture, f69.xyz, 0.0).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f48.y * 1.58823525905609130859375, 0.0, 1.0)))) * f10, (f108 * f108) * CB0[20].x, vec3((((float(abs(f105.x - 0.5) < 0.550000011920928955078125) * float(abs(f105.y - 0.5) < 0.5)) * clamp(3.900000095367431640625 - (max(VARYING8.w, f104) * 0.008000000379979610443115234375), 0.0, 1.0)) * float(abs((f106.x * 500.0) - f104) < 10.0)) * float(f70.w > 0.0))) + (f9 * 0.100000001490116119384765625), vec3((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f45, f46))), 0.0, 1.0) + 0.300000011920928955078125) * (VARYING0.w * CB3[2].z))) + (f111 * clamp(1.0 - (VARYING7.w * CB0[28].y), 0.0, 1.0));
    vec4 f122 = vec4(0.0);
    f122.x = f121.x;
    vec4 f123 = f122;
    f123.y = f121.y;
    vec4 f124 = f123;
    f124.z = f121.z;
    vec4 f125 = f124;
    f125.w = 1.0;
    vec3 f126 = textureLod(PrefilteredEnvTexture, vec4(f47, 0.0).xyz, max(CB0[18].y, VARYING6.w) * 5.0).xyz;
    bvec3 f127 = bvec3(!(CB0[18].w == 0.0));
    vec3 f128 = mix(vec3(f127.x ? CB0[19].xyz.x : f126.x, f127.y ? CB0[19].xyz.y : f126.y, f127.z ? CB0[19].xyz.z : f126.z), f125.xyz, vec3(VARYING6.w));
    vec4 f129 = f125;
    f129.x = f128.x;
    vec4 f130 = f129;
    f130.y = f128.y;
    vec4 f131 = f130;
    f131.z = f128.z;
    vec3 f132 = sqrt(clamp(f131.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f133 = f131;
    f133.x = f132.x;
    vec4 f134 = f133;
    f134.y = f132.y;
    vec4 f135 = f134;
    f135.z = f132.z;
    _entryPointOutput = f135;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$GBufferDepthTexture=s5
//$$GBufferColorTexture=s4
