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

centroid in vec2 VARYING0;
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
    vec3 f13 = (VARYING2.xyz * f2.xyz) * (1.0 + (f12 * CB2[0].z));
    vec4 f14 = texture(SpecularMapTexture, f1 * CB2[1].w);
    vec4 f15 = texture(SpecularMapTexture, f1);
    float f16 = VARYING2.w * 2.0;
    float f17 = clamp((f16 - 1.0) + f2.w, 0.0, 1.0);
    float f18 = clamp(f16, 0.0, 1.0);
    float f19 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f20 = VARYING6.xyz * f19;
    vec3 f21 = VARYING5.xyz * f19;
    vec3 f22 = normalize(((f20 * f12) + (cross(f21, f20) * f11.y)) + (f21 * (f6 * 10.0)));
    vec3 f23 = -CB0[11].xyz;
    float f24 = dot(f22, f23);
    vec3 f25 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f26 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f27 = VARYING3.yzx - (VARYING3.yzx * f26);
    vec4 f28 = texture(LightMapTexture, f27);
    vec4 f29 = texture(LightGridSkylightTexture, f27);
    vec4 f30 = vec4(clamp(f26, 0.0, 1.0));
    vec4 f31 = mix(f28, vec4(0.0), f30);
    vec4 f32 = mix(f29, vec4(1.0), f30);
    vec3 f33 = f31.xyz * (f31.w * 120.0);
    float f34 = f32.x;
    float f35 = f32.y;
    vec3 f36 = f25 - CB0[41].xyz;
    vec3 f37 = f25 - CB0[42].xyz;
    vec3 f38 = f25 - CB0[43].xyz;
    vec4 f39 = vec4(f25, 1.0) * mat4(CB8[((dot(f36, f36) < CB0[41].w) ? 0 : ((dot(f37, f37) < CB0[42].w) ? 1 : ((dot(f38, f38) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f36, f36) < CB0[41].w) ? 0 : ((dot(f37, f37) < CB0[42].w) ? 1 : ((dot(f38, f38) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f36, f36) < CB0[41].w) ? 0 : ((dot(f37, f37) < CB0[42].w) ? 1 : ((dot(f38, f38) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f36, f36) < CB0[41].w) ? 0 : ((dot(f37, f37) < CB0[42].w) ? 1 : ((dot(f38, f38) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f40 = textureLod(ShadowAtlasTexture, f39.xy, 0.0);
    vec2 f41 = vec2(0.0);
    f41.x = CB0[46].z;
    vec2 f42 = f41;
    f42.y = CB0[46].w;
    float f43 = (2.0 * f39.z) - 1.0;
    float f44 = exp(CB0[46].z * f43);
    float f45 = -exp((-CB0[46].w) * f43);
    vec2 f46 = (f42 * CB0[47].y) * vec2(f44, f45);
    vec2 f47 = f46 * f46;
    float f48 = f40.x;
    float f49 = max(f40.y - (f48 * f48), f47.x);
    float f50 = f44 - f48;
    float f51 = f40.z;
    float f52 = max(f40.w - (f51 * f51), f47.y);
    float f53 = f45 - f51;
    vec3 f54 = f13 * f13;
    float f55 = length(VARYING4.xyz);
    vec3 f56 = VARYING4.xyz / vec3(f55);
    float f57 = 0.08900000154972076416015625 + (mix(f14, f15, vec4(clamp((f0 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0))).y * 0.9110000133514404296875);
    float f58 = CB0[26].w * f0;
    float f59 = max(9.9999997473787516355514526367188e-05, dot(f22, f56));
    vec3 f60 = reflect(-f56, f22);
    float f61 = f57 * 5.0;
    vec3 f62 = vec4(f60, f61).xyz;
    vec3 f63 = textureLod(PrefilteredEnvTexture, f62, f61).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f60.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f64 = textureLod(PrefilteredEnvIndoorTexture, f62, f61).xyz;
    vec3 f65;
    if (CB0[27].w == 0.0)
    {
        f65 = f64;
    }
    else
    {
        f65 = mix(f64, textureLod(PrefilteredEnvBlendTargetTexture, f62, f61).xyz, vec3(CB0[27].w));
    }
    vec4 f66 = texture(PrecomputedBRDFTexture, vec2(f57, f59));
    float f67 = CB0[9].w * CB0[9].w;
    vec3 f68 = normalize(f23 + f56);
    float f69 = clamp((f24 * CB0[9].w) * (((f24 * CB0[47].x) > 0.0) ? mix(min((f44 <= f48) ? 1.0 : clamp(((f49 / (f49 + (f50 * f50))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f45 <= f51) ? 1.0 : clamp(((f52 / (f52 + (f53 * f53))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f35, clamp((length(f25 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f35), 0.0, 1.0);
    float f70 = f57 * f57;
    float f71 = max(0.001000000047497451305389404296875, dot(f22, f68));
    float f72 = dot(f23, f68);
    float f73 = 1.0 - f72;
    float f74 = f73 * f73;
    float f75 = (f74 * f74) * f73;
    vec3 f76 = vec3(f75) + (vec3(0.039999999105930328369140625) * (1.0 - f75));
    float f77 = f70 * f70;
    float f78 = (((f71 * f77) - f71) * f71) + 1.0;
    vec3 f79 = vec3(f34);
    vec3 f80 = mix(f33, f63, f79) * mix(vec3(1.0), f54, vec3(0.5));
    float f81 = f66.x;
    float f82 = f66.y;
    vec3 f83 = ((vec3(0.039999999105930328369140625) * f81) + vec3(f82)) / vec3(f81 + f82);
    vec3 f84 = f22 * f22;
    bvec3 f85 = lessThan(f22, vec3(0.0));
    vec3 f86 = vec3(f85.x ? f84.x : vec3(0.0).x, f85.y ? f84.y : vec3(0.0).y, f85.z ? f84.z : vec3(0.0).z);
    vec3 f87 = f84 - f86;
    float f88 = f87.x;
    float f89 = f87.y;
    float f90 = f87.z;
    float f91 = f86.x;
    float f92 = f86.y;
    float f93 = f86.z;
    float f94 = 1.0 - f59;
    float f95 = 1.0 - VARYING2.w;
    float f96 = mix(0.660000026226043701171875, 1.0, f95 * f95);
    mat4 f97 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 f98 = vec4(CB0[7].xyz - VARYING4.xyz, 1.0) * f97;
    vec4 f99 = vec4(CB0[7].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * f96) / max(dot(VARYING4.xyz, f22), 0.00999999977648258209228515625)))) + (f22 * (3.0 * (1.0 - f96)))), 1.0) * f97;
    float f100 = f98.w;
    vec2 f101 = (f98.xy * 0.5) + vec2(0.5 * f100);
    vec4 f102 = vec4(0.0);
    f102.x = f101.x;
    vec4 f103 = f102;
    f103.y = f101.y;
    vec2 f104 = f103.xy / vec2(f100);
    float f105 = f99.w;
    vec2 f106 = (f99.xy * 0.5) + vec2(0.5 * f105);
    vec4 f107 = vec4(0.0);
    f107.x = f106.x;
    vec4 f108 = f107;
    f108.y = f106.y;
    vec2 f109 = f108.xy / vec2(f105);
    vec2 f110 = f109 - vec2(0.5);
    vec2 f111 = (f109 - f104) * clamp(vec2(1.0) - ((f110 * f110) * 4.0), vec2(0.0), vec2(1.0));
    vec2 f112 = normalize(f111) * CB0[23].x;
    vec4 f113 = texture(GBufferColorTexture, f104 + (f111 * clamp(min(texture(GBufferDepthTexture, f109 + f112).x * 500.0, texture(GBufferDepthTexture, f109 - f112).x * 500.0) - f100, 0.0, 1.0)));
    vec3 f114 = f113.xyz;
    vec3 f115 = (f114 * f114) * CB0[15].x;
    vec4 f116 = f113;
    f116.x = f115.x;
    vec4 f117 = f116;
    f117.y = f115.y;
    vec4 f118 = f117;
    f118.z = f115.z;
    vec3 f119 = f118.xyz * mix(vec3(1.0), VARYING2.xyz, vec3(f18));
    vec4 f120 = vec4(0.0);
    f120.x = f119.x;
    vec4 f121 = f120;
    f121.y = f119.y;
    vec4 f122 = f121;
    f122.z = f119.z;
    vec4 f123 = f122;
    f123.w = mix(1.0, f113.w, dot(f122.xyz, vec3(1.0)) / (dot(f118.xyz, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 f124 = mix(mix(f123, vec4(mix(((((((vec3(1.0) - (f76 * f58)) * CB0[10].xyz) * f69) + (f33 * f17)) + (((vec3(1.0) - (f83 * f58)) * (((((((CB0[35].xyz * f88) + (CB0[37].xyz * f89)) + (CB0[39].xyz * f90)) + (CB0[36].xyz * f91)) + (CB0[38].xyz * f92)) + (CB0[40].xyz * f93)) + (((((((CB0[29].xyz * f88) + (CB0[31].xyz * f89)) + (CB0[33].xyz * f90)) + (CB0[30].xyz * f91)) + (CB0[32].xyz * f92)) + (CB0[34].xyz * f93)) * f34))) * f17)) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f34))) * (f54 * f17), f80, vec3(VARYING7.w)), 1.0), vec4(f17)), vec4(f80, 1.0), vec4(((f94 * f94) * 0.800000011920928955078125) * f18)) + vec4((((f76 * (((f77 + (f77 * f77)) / (((f78 * f78) * ((f72 * 3.0) + 0.5)) * ((f71 * 0.75) + 0.25))) * f69)) * CB0[10].xyz) * f67) + ((((mix(f65, f63, f79) * f83) * f58) * f67) * f17), 0.0);
    float f125 = clamp(exp2((CB0[13].z * f55) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f126 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f125) * 5.0).xyz;
    bvec3 f127 = bvec3(!(CB0[13].w == 0.0));
    vec3 f128 = mix(vec3(f127.x ? CB0[14].xyz.x : f126.x, f127.y ? CB0[14].xyz.y : f126.y, f127.z ? CB0[14].xyz.z : f126.z), f124.xyz, vec3(f125));
    vec4 f129 = f124;
    f129.x = f128.x;
    vec4 f130 = f129;
    f130.y = f128.y;
    vec4 f131 = f130;
    f131.z = f128.z;
    vec4 f132 = f131;
    f132.w = f125 * f124.w;
    vec3 f133 = sqrt(clamp(f132.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f134 = f132;
    f134.x = f133.x;
    vec4 f135 = f134;
    f135.y = f133.y;
    vec4 f136 = f135;
    f136.z = f133.z;
    _entryPointOutput = f136;
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
