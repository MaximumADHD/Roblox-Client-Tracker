#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
#include <MaterialParams.h>
uniform vec4 CB0[53];
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
    float f0 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
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
    float f13 = f2.w;
    vec3 f14 = (mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f13 + CB2[2].w, 0.0, 1.0))) * f2.xyz) * (1.0 + (f12 * CB2[0].z));
    vec4 f15 = texture(SpecularMapTexture, f1 * CB2[1].w);
    vec4 f16 = texture(SpecularMapTexture, f1);
    float f17 = VARYING2.w * 2.0;
    float f18 = clamp((f17 - 1.0) + f13, 0.0, 1.0);
    float f19 = clamp(f17, 0.0, 1.0);
    float f20 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f21 = VARYING6.xyz * f20;
    vec3 f22 = VARYING5.xyz * f20;
    vec3 f23 = normalize(((f21 * f12) + (cross(f22, f21) * f11.y)) + (f22 * (f6 * 10.0)));
    vec3 f24 = -CB0[11].xyz;
    float f25 = dot(f23, f24);
    vec3 f26 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f27 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f28 = VARYING3.yzx - (VARYING3.yzx * f27);
    vec4 f29 = texture(LightMapTexture, f28);
    vec4 f30 = texture(LightGridSkylightTexture, f28);
    vec4 f31 = vec4(clamp(f27, 0.0, 1.0));
    vec4 f32 = mix(f29, vec4(0.0), f31);
    vec4 f33 = mix(f30, vec4(1.0), f31);
    vec3 f34 = f32.xyz * (f32.w * 120.0);
    float f35 = f33.x;
    float f36 = f33.y;
    vec3 f37 = f26 - CB0[41].xyz;
    vec3 f38 = f26 - CB0[42].xyz;
    vec3 f39 = f26 - CB0[43].xyz;
    vec4 f40 = vec4(f26, 1.0) * mat4(CB8[((dot(f37, f37) < CB0[41].w) ? 0 : ((dot(f38, f38) < CB0[42].w) ? 1 : ((dot(f39, f39) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f37, f37) < CB0[41].w) ? 0 : ((dot(f38, f38) < CB0[42].w) ? 1 : ((dot(f39, f39) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f37, f37) < CB0[41].w) ? 0 : ((dot(f38, f38) < CB0[42].w) ? 1 : ((dot(f39, f39) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f37, f37) < CB0[41].w) ? 0 : ((dot(f38, f38) < CB0[42].w) ? 1 : ((dot(f39, f39) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f41 = textureLod(ShadowAtlasTexture, f40.xy, 0.0);
    vec2 f42 = vec2(0.0);
    f42.x = CB0[46].z;
    vec2 f43 = f42;
    f43.y = CB0[46].w;
    float f44 = (2.0 * f40.z) - 1.0;
    float f45 = exp(CB0[46].z * f44);
    float f46 = -exp((-CB0[46].w) * f44);
    vec2 f47 = (f43 * CB0[47].y) * vec2(f45, f46);
    vec2 f48 = f47 * f47;
    float f49 = f41.x;
    float f50 = max(f41.y - (f49 * f49), f48.x);
    float f51 = f45 - f49;
    float f52 = f41.z;
    float f53 = max(f41.w - (f52 * f52), f48.y);
    float f54 = f46 - f52;
    vec3 f55 = f14 * f14;
    float f56 = length(VARYING4.xyz);
    vec3 f57 = VARYING4.xyz / vec3(f56);
    float f58 = 0.08900000154972076416015625 + (mix(f15, f16, vec4(clamp((f0 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0))).y * 0.9110000133514404296875);
    float f59 = CB0[26].w * f0;
    float f60 = max(9.9999997473787516355514526367188e-05, dot(f23, f57));
    vec3 f61 = reflect(-f57, f23);
    float f62 = f58 * 5.0;
    vec3 f63 = vec4(f61, f62).xyz;
    vec3 f64 = textureLod(PrefilteredEnvTexture, f63, f62).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f61.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f65 = textureLod(PrefilteredEnvIndoorTexture, f63, f62).xyz;
    vec3 f66;
    if (CB0[27].w == 0.0)
    {
        f66 = f65;
    }
    else
    {
        f66 = mix(f65, textureLod(PrefilteredEnvBlendTargetTexture, f63, f62).xyz, vec3(CB0[27].w));
    }
    vec4 f67 = texture(PrecomputedBRDFTexture, vec2(f58, f60));
    float f68 = CB0[9].w * CB0[9].w;
    vec3 f69 = normalize(f24 + f57);
    float f70 = clamp((f25 * CB0[9].w) * (((f25 * CB0[47].x) > 0.0) ? mix(min((f45 <= f49) ? 1.0 : clamp(((f50 / (f50 + (f51 * f51))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f46 <= f52) ? 1.0 : clamp(((f53 / (f53 + (f54 * f54))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f36, clamp((length(f26 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f36), 0.0, 1.0);
    float f71 = f58 * f58;
    float f72 = max(0.001000000047497451305389404296875, dot(f23, f69));
    float f73 = dot(f24, f69);
    float f74 = 1.0 - f73;
    float f75 = f74 * f74;
    float f76 = (f75 * f75) * f74;
    vec3 f77 = vec3(f76) + (vec3(0.039999999105930328369140625) * (1.0 - f76));
    float f78 = f71 * f71;
    float f79 = (((f72 * f78) - f72) * f72) + 1.0;
    vec3 f80 = vec3(f35);
    vec3 f81 = mix(f34, f64, f80) * mix(vec3(1.0), f55, vec3(0.5));
    float f82 = f67.x;
    float f83 = f67.y;
    vec3 f84 = ((vec3(0.039999999105930328369140625) * f82) + vec3(f83)) / vec3(f82 + f83);
    vec3 f85 = f23 * f23;
    bvec3 f86 = lessThan(f23, vec3(0.0));
    vec3 f87 = vec3(f86.x ? f85.x : vec3(0.0).x, f86.y ? f85.y : vec3(0.0).y, f86.z ? f85.z : vec3(0.0).z);
    vec3 f88 = f85 - f87;
    float f89 = f88.x;
    float f90 = f88.y;
    float f91 = f88.z;
    float f92 = f87.x;
    float f93 = f87.y;
    float f94 = f87.z;
    float f95 = 1.0 - f60;
    float f96 = 1.0 - VARYING2.w;
    float f97 = mix(0.660000026226043701171875, 1.0, f96 * f96);
    mat4 f98 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 f99 = vec4(CB0[7].xyz - VARYING4.xyz, 1.0) * f98;
    vec4 f100 = vec4(CB0[7].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * f97) / max(dot(VARYING4.xyz, f23), 0.00999999977648258209228515625)))) + (f23 * (3.0 * (1.0 - f97)))), 1.0) * f98;
    float f101 = f99.w;
    vec2 f102 = (f99.xy * 0.5) + vec2(0.5 * f101);
    vec4 f103 = vec4(0.0);
    f103.x = f102.x;
    vec4 f104 = f103;
    f104.y = f102.y;
    vec2 f105 = f104.xy / vec2(f101);
    float f106 = f100.w;
    vec2 f107 = (f100.xy * 0.5) + vec2(0.5 * f106);
    vec4 f108 = vec4(0.0);
    f108.x = f107.x;
    vec4 f109 = f108;
    f109.y = f107.y;
    vec2 f110 = f109.xy / vec2(f106);
    vec2 f111 = f110 - vec2(0.5);
    vec2 f112 = (f110 - f105) * clamp(vec2(1.0) - ((f111 * f111) * 4.0), vec2(0.0), vec2(1.0));
    vec2 f113 = normalize(f112) * CB0[23].x;
    vec4 f114 = texture(GBufferColorTexture, f105 + (f112 * clamp(min(texture(GBufferDepthTexture, f110 + f113).x * 500.0, texture(GBufferDepthTexture, f110 - f113).x * 500.0) - f101, 0.0, 1.0)));
    vec3 f115 = f114.xyz;
    vec3 f116 = (f115 * f115) * CB0[15].x;
    vec4 f117 = f114;
    f117.x = f116.x;
    vec4 f118 = f117;
    f118.y = f116.y;
    vec4 f119 = f118;
    f119.z = f116.z;
    vec3 f120 = f119.xyz * mix(vec3(1.0), VARYING2.xyz, vec3(f19));
    vec4 f121 = vec4(0.0);
    f121.x = f120.x;
    vec4 f122 = f121;
    f122.y = f120.y;
    vec4 f123 = f122;
    f123.z = f120.z;
    vec4 f124 = f123;
    f124.w = mix(1.0, f114.w, dot(f123.xyz, vec3(1.0)) / (dot(f119.xyz, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 f125 = mix(mix(f124, vec4(mix(((((((vec3(1.0) - (f77 * f59)) * CB0[10].xyz) * f70) + (f34 * f18)) + (((vec3(1.0) - (f84 * f59)) * (((((((CB0[35].xyz * f89) + (CB0[37].xyz * f90)) + (CB0[39].xyz * f91)) + (CB0[36].xyz * f92)) + (CB0[38].xyz * f93)) + (CB0[40].xyz * f94)) + (((((((CB0[29].xyz * f89) + (CB0[31].xyz * f90)) + (CB0[33].xyz * f91)) + (CB0[30].xyz * f92)) + (CB0[32].xyz * f93)) + (CB0[34].xyz * f94)) * f35))) * f18)) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f35))) * (f55 * f18), f81, vec3(VARYING7.w)), 1.0), vec4(f18)), vec4(f81, 1.0), vec4(((f95 * f95) * 0.800000011920928955078125) * f19)) + vec4((((f77 * (((f78 + (f78 * f78)) / (((f79 * f79) * ((f73 * 3.0) + 0.5)) * ((f72 * 0.75) + 0.25))) * f70)) * CB0[10].xyz) * f68) + ((((mix(f66, f64, f80) * f84) * f59) * f68) * f18), 0.0);
    float f126 = clamp(exp2((CB0[13].z * f56) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f127 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f126) * 5.0).xyz;
    bvec3 f128 = bvec3(!(CB0[13].w == 0.0));
    vec3 f129 = mix(vec3(f128.x ? CB0[14].xyz.x : f127.x, f128.y ? CB0[14].xyz.y : f127.y, f128.z ? CB0[14].xyz.z : f127.z), f125.xyz, vec3(f126));
    vec4 f130 = f125;
    f130.x = f129.x;
    vec4 f131 = f130;
    f131.y = f129.y;
    vec4 f132 = f131;
    f132.z = f129.z;
    vec4 f133 = f132;
    f133.w = f126 * f125.w;
    vec3 f134 = sqrt(clamp(f133.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f135 = f133;
    f135.x = f134.x;
    vec4 f136 = f135;
    f136.y = f134.y;
    vec4 f137 = f136;
    f137.z = f134.z;
    _entryPointOutput = f137;
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
