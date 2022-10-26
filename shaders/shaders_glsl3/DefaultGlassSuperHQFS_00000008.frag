#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
#include <MaterialParams.h>
uniform vec4 CB0[58];
uniform vec4 CB8[24];
uniform vec4 CB2[4];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D SpecularMapTexture;
uniform sampler2D GBufferDepthTexture;
uniform sampler2D GBufferColorTexture;

in vec2 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    float f0 = clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    vec2 f1 = VARYING0 * CB2[0].x;
    vec4 f2 = texture(DiffuseMapTexture, f1);
    vec4 f3 = texture(NormalMapTexture, f1);
    vec2 f4 = f3.wy * 2.0;
    vec2 f5 = f4 - vec2(1.0);
    float f6 = sqrt(clamp(1.0 + dot(vec2(1.0) - f4, f5), 0.0, 1.0));
    vec3 f7 = vec3(f5, f6);
    vec2 f8 = f7.xy + (vec3((texture(NormalDetailMapTexture, f1 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f9 = f7;
    f9.x = f8.x;
    vec3 f10 = f9;
    f10.y = f8.y;
    vec2 f11 = f10.xy * f0;
    float f12 = f11.x;
    vec3 f13 = (VARYING2.xyz * f2.xyz) * (1.0 + (f12 * 0.20000000298023223876953125));
    vec4 f14 = texture(SpecularMapTexture, f1 * CB2[1].w);
    vec4 f15 = texture(SpecularMapTexture, f1);
    float f16 = VARYING2.w * 2.0;
    float f17 = clamp((f16 - 1.0) + f2.w, 0.0, 1.0);
    float f18 = clamp(f16, 0.0, 1.0);
    float f19 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f20 = VARYING6.xyz * f19;
    vec3 f21 = VARYING5.xyz * f19;
    vec3 f22 = normalize(((f20 * f12) + (cross(f21, f20) * f11.y)) + (f21 * (f6 * 10.0)));
    vec3 f23 = -CB0[16].xyz;
    float f24 = dot(f22, f23);
    vec3 f25 = f13 * f13;
    float f26 = length(VARYING4.xyz);
    vec3 f27 = VARYING4.xyz / vec3(f26);
    float f28 = 0.08900000154972076416015625 + (mix(f14, f15, vec4(clamp((f0 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0))).y * 0.9110000133514404296875);
    float f29 = CB0[31].w * f0;
    float f30 = max(9.9999997473787516355514526367188e-05, dot(f22, f27));
    vec3 f31 = -f27;
    vec3 f32 = reflect(f31, f22);
    float f33 = f28 * 5.0;
    vec3 f34 = vec4(f32, f33).xyz;
    vec3 f35 = textureLod(PrefilteredEnvTexture, f34, f33).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f32.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f36 = textureLod(PrefilteredEnvIndoorTexture, f34, f33).xyz;
    vec3 f37;
    if (CB0[32].w == 0.0)
    {
        f37 = f36;
    }
    else
    {
        f37 = mix(f36, textureLod(PrefilteredEnvBlendTargetTexture, f34, f33).xyz, vec3(CB0[32].w));
    }
    vec4 f38 = texture(PrecomputedBRDFTexture, vec2(f28, f30));
    vec3 f39 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f40 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f41 = VARYING3.yzx - (VARYING3.yzx * f40);
    vec4 f42 = vec4(clamp(f40, 0.0, 1.0));
    vec4 f43 = mix(texture(LightMapTexture, f41), vec4(0.0), f42);
    vec4 f44 = mix(texture(LightGridSkylightTexture, f41), vec4(1.0), f42);
    vec3 f45 = f43.xyz * (f43.w * 120.0);
    float f46 = f44.x;
    float f47 = f44.y;
    vec3 f48 = f39 - CB0[46].xyz;
    vec3 f49 = f39 - CB0[47].xyz;
    vec3 f50 = f39 - CB0[48].xyz;
    vec4 f51 = vec4(f39, 1.0) * mat4(CB8[((dot(f48, f48) < CB0[46].w) ? 0 : ((dot(f49, f49) < CB0[47].w) ? 1 : ((dot(f50, f50) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f48, f48) < CB0[46].w) ? 0 : ((dot(f49, f49) < CB0[47].w) ? 1 : ((dot(f50, f50) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f48, f48) < CB0[46].w) ? 0 : ((dot(f49, f49) < CB0[47].w) ? 1 : ((dot(f50, f50) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f48, f48) < CB0[46].w) ? 0 : ((dot(f49, f49) < CB0[47].w) ? 1 : ((dot(f50, f50) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f52 = textureLod(ShadowAtlasTexture, f51.xy, 0.0);
    vec2 f53 = vec2(0.0);
    f53.x = CB0[51].z;
    vec2 f54 = f53;
    f54.y = CB0[51].w;
    float f55 = (2.0 * f51.z) - 1.0;
    float f56 = exp(CB0[51].z * f55);
    float f57 = -exp((-CB0[51].w) * f55);
    vec2 f58 = (f54 * CB0[52].y) * vec2(f56, f57);
    vec2 f59 = f58 * f58;
    float f60 = f52.x;
    float f61 = max(f52.y - (f60 * f60), f59.x);
    float f62 = f56 - f60;
    float f63 = f52.z;
    float f64 = max(f52.w - (f63 * f63), f59.y);
    float f65 = f57 - f63;
    vec3 f66 = vec3(f46);
    vec3 f67 = mix(f45, f35, f66) * mix(vec3(1.0), f25, vec3(0.5));
    float f68 = CB0[14].w * CB0[14].w;
    vec3 f69 = normalize(f27 - CB0[16].xyz);
    float f70 = clamp((f24 * CB0[14].w) * (((f24 * CB0[52].x) > 0.0) ? mix(min((f56 <= f60) ? 1.0 : clamp(((f61 / (f61 + (f62 * f62))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f57 <= f63) ? 1.0 : clamp(((f64 / (f64 + (f65 * f65))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f47, clamp((length(f39 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f47), 0.0, 1.0);
    float f71 = f28 * f28;
    float f72 = max(0.001000000047497451305389404296875, dot(f22, f69));
    float f73 = dot(f23, f69);
    float f74 = 1.0 - f73;
    float f75 = f74 * f74;
    float f76 = (f75 * f75) * f74;
    vec3 f77 = vec3(f76) + (vec3(0.039999999105930328369140625) * (1.0 - f76));
    float f78 = f71 * f71;
    float f79 = (((f72 * f78) - f72) * f72) + 1.0;
    float f80 = f38.x;
    float f81 = f38.y;
    vec3 f82 = ((vec3(0.039999999105930328369140625) * f80) + vec3(f81)) / vec3(f80 + f81);
    vec3 f83 = f22 * f22;
    bvec3 f84 = lessThan(f22, vec3(0.0));
    vec3 f85 = vec3(f84.x ? f83.x : vec3(0.0).x, f84.y ? f83.y : vec3(0.0).y, f84.z ? f83.z : vec3(0.0).z);
    vec3 f86 = f83 - f85;
    float f87 = f86.x;
    float f88 = f86.y;
    float f89 = f86.z;
    float f90 = f85.x;
    float f91 = f85.y;
    float f92 = f85.z;
    float f93 = 1.0 - f30;
    float f94 = 1.0 - VARYING2.w;
    float f95 = mix(0.660000026226043701171875, 1.0, f94 * f94);
    mat4 f96 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 f97 = vec4(CB0[11].xyz - VARYING4.xyz, 1.0) * f96;
    vec4 f98 = vec4(CB0[11].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * f95) / max(dot(VARYING4.xyz, f22), 0.00999999977648258209228515625)))) + (f22 * (3.0 * (1.0 - f95)))), 1.0) * f96;
    float f99 = f97.w;
    vec2 f100 = (f97.xy * 0.5) + vec2(0.5 * f99);
    vec4 f101 = vec4(0.0);
    f101.x = f100.x;
    vec4 f102 = f101;
    f102.y = f100.y;
    vec2 f103 = f102.xy / vec2(f99);
    float f104 = f98.w;
    vec2 f105 = (f98.xy * 0.5) + vec2(0.5 * f104);
    vec4 f106 = vec4(0.0);
    f106.x = f105.x;
    vec4 f107 = f106;
    f107.y = f105.y;
    vec2 f108 = f107.xy / vec2(f104);
    vec2 f109 = f108 - vec2(0.5);
    vec2 f110 = (f108 - f103) * clamp(vec2(1.0) - ((f109 * f109) * 4.0), vec2(0.0), vec2(1.0));
    vec2 f111 = normalize(f110) * CB0[28].x;
    vec4 f112 = texture(GBufferColorTexture, f103 + (f110 * clamp(min(texture(GBufferDepthTexture, f108 + f111).x * 500.0, texture(GBufferDepthTexture, f108 - f111).x * 500.0) - f99, 0.0, 1.0)));
    vec3 f113 = f112.xyz;
    vec3 f114 = (f113 * f113) * CB0[20].x;
    vec4 f115 = f112;
    f115.x = f114.x;
    vec4 f116 = f115;
    f116.y = f114.y;
    vec4 f117 = f116;
    f117.z = f114.z;
    vec3 f118 = f117.xyz * mix(vec3(1.0), VARYING2.xyz, vec3(f18));
    vec4 f119 = vec4(0.0);
    f119.x = f118.x;
    vec4 f120 = f119;
    f120.y = f118.y;
    vec4 f121 = f120;
    f121.z = f118.z;
    vec4 f122 = f121;
    f122.w = mix(1.0, f112.w, dot(f121.xyz, vec3(1.0)) / (dot(f117.xyz, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 f123 = mix(mix(f122, vec4(mix(((((f45 * f17) + (((vec3(1.0) - (f77 * f29)) * CB0[15].xyz) * f70)) + (((vec3(1.0) - (f82 * f29)) * (((((((CB0[40].xyz * f87) + (CB0[42].xyz * f88)) + (CB0[44].xyz * f89)) + (CB0[41].xyz * f90)) + (CB0[43].xyz * f91)) + (CB0[45].xyz * f92)) + (((((((CB0[34].xyz * f87) + (CB0[36].xyz * f88)) + (CB0[38].xyz * f89)) + (CB0[35].xyz * f90)) + (CB0[37].xyz * f91)) + (CB0[39].xyz * f92)) * f46))) * f17)) + (CB0[32].xyz + (CB0[33].xyz * (f46 * (2.0 - CB0[14].w))))) * (f25 * f17), f67, vec3(VARYING7.w)), 1.0), vec4(f17)), vec4(f67, 1.0), vec4(((f93 * f93) * 0.800000011920928955078125) * f18)) + vec4((((f77 * (((f78 + (f78 * f78)) / max(((f79 * f79) * ((f73 * 3.0) + 0.5)) * ((f72 * 0.75) + 0.25), 3.0999999580672010779380798339844e-05)) * f70)) * CB0[15].xyz) * f68) + (((mix(f37, f35, f66) * f82) * f29) * (f68 * f17)), 0.0);
    float f124 = clamp(exp2((CB0[18].z * f26) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f125 = textureLod(PrefilteredEnvTexture, vec4(f31, 0.0).xyz, max(CB0[18].y, f124) * 5.0).xyz;
    bvec3 f126 = bvec3(!(CB0[18].w == 0.0));
    vec3 f127 = mix(vec3(f126.x ? CB0[19].xyz.x : f125.x, f126.y ? CB0[19].xyz.y : f125.y, f126.z ? CB0[19].xyz.z : f125.z), f123.xyz, vec3(f124));
    vec4 f128 = f123;
    f128.x = f127.x;
    vec4 f129 = f128;
    f129.y = f127.y;
    vec4 f130 = f129;
    f130.z = f127.z;
    vec4 f131 = f130;
    f131.w = f124 * f123.w;
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
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$SpecularMapTexture=s5
//$$GBufferDepthTexture=s10
//$$GBufferColorTexture=s9
