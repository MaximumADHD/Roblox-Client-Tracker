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
    vec4 f17 = mix(f15, f16, vec4(clamp((f0 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0)));
    float f18 = f17.y;
    float f19 = VARYING2.w * 2.0;
    float f20 = clamp((f19 - 1.0) + f13, 0.0, 1.0);
    float f21 = clamp(f19, 0.0, 1.0);
    float f22 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f23 = VARYING6.xyz * f22;
    vec3 f24 = VARYING5.xyz * f22;
    vec3 f25 = normalize(((f23 * f12) + (cross(f24, f23) * f11.y)) + (f24 * (f6 * 10.0)));
    vec3 f26 = -CB0[11].xyz;
    float f27 = dot(f25, f26);
    vec3 f28 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f29 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f30 = VARYING3.yzx - (VARYING3.yzx * f29);
    vec4 f31 = texture(LightMapTexture, f30);
    vec4 f32 = texture(LightGridSkylightTexture, f30);
    vec4 f33 = vec4(clamp(f29, 0.0, 1.0));
    vec4 f34 = mix(f31, vec4(0.0), f33);
    vec4 f35 = mix(f32, vec4(1.0), f33);
    vec3 f36 = f34.xyz * (f34.w * 120.0);
    float f37 = f35.x;
    float f38 = f35.y;
    vec3 f39 = f28 - CB0[41].xyz;
    vec3 f40 = f28 - CB0[42].xyz;
    vec3 f41 = f28 - CB0[43].xyz;
    vec4 f42 = vec4(f28, 1.0) * mat4(CB8[((dot(f39, f39) < CB0[41].w) ? 0 : ((dot(f40, f40) < CB0[42].w) ? 1 : ((dot(f41, f41) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f39, f39) < CB0[41].w) ? 0 : ((dot(f40, f40) < CB0[42].w) ? 1 : ((dot(f41, f41) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f39, f39) < CB0[41].w) ? 0 : ((dot(f40, f40) < CB0[42].w) ? 1 : ((dot(f41, f41) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f39, f39) < CB0[41].w) ? 0 : ((dot(f40, f40) < CB0[42].w) ? 1 : ((dot(f41, f41) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f43 = textureLod(ShadowAtlasTexture, f42.xy, 0.0);
    vec2 f44 = vec2(0.0);
    f44.x = CB0[46].z;
    vec2 f45 = f44;
    f45.y = CB0[46].w;
    float f46 = (2.0 * f42.z) - 1.0;
    float f47 = exp(CB0[46].z * f46);
    float f48 = -exp((-CB0[46].w) * f46);
    vec2 f49 = (f45 * CB0[47].y) * vec2(f47, f48);
    vec2 f50 = f49 * f49;
    float f51 = f43.x;
    float f52 = max(f43.y - (f51 * f51), f50.x);
    float f53 = f47 - f51;
    float f54 = f43.z;
    float f55 = max(f43.w - (f54 * f54), f50.y);
    float f56 = f48 - f54;
    vec3 f57 = f14 * f14;
    float f58 = length(VARYING4.xyz);
    vec3 f59 = VARYING4.xyz / vec3(f58);
    float f60 = CB0[26].w * f0;
    float f61 = max(9.9999997473787516355514526367188e-05, dot(f25, f59));
    vec3 f62 = reflect(-f59, f25);
    float f63 = f18 * 5.0;
    vec3 f64 = vec4(f62, f63).xyz;
    vec3 f65 = textureLod(PrefilteredEnvTexture, f64, f63).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f62.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f66 = textureLod(PrefilteredEnvIndoorTexture, f64, f63).xyz;
    vec3 f67;
    if (CB0[27].w == 0.0)
    {
        f67 = f66;
    }
    else
    {
        f67 = mix(f66, textureLod(PrefilteredEnvBlendTargetTexture, f64, f63).xyz, vec3(CB0[27].w));
    }
    vec4 f68 = texture(PrecomputedBRDFTexture, vec2(f18, f61));
    float f69 = CB0[9].w * CB0[9].w;
    vec3 f70 = normalize(f26 + f59);
    float f71 = clamp((f27 * CB0[9].w) * (((f27 * CB0[47].x) > 0.0) ? mix(min((f47 <= f51) ? 1.0 : clamp(((f52 / (f52 + (f53 * f53))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f48 <= f54) ? 1.0 : clamp(((f55 / (f55 + (f56 * f56))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f38, clamp((length(f28 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f38), 0.0, 1.0);
    float f72 = f18 * f18;
    float f73 = max(0.001000000047497451305389404296875, dot(f25, f70));
    float f74 = dot(f26, f70);
    float f75 = 1.0 - f74;
    float f76 = f75 * f75;
    float f77 = (f76 * f76) * f75;
    vec3 f78 = vec3(f77) + (vec3(0.039999999105930328369140625) * (1.0 - f77));
    float f79 = f72 * f72;
    float f80 = (((f73 * f79) - f73) * f73) + 1.0;
    vec3 f81 = vec3(f37);
    vec3 f82 = mix(f36, f65, f81) * mix(vec3(1.0), f57, vec3(0.5));
    float f83 = f68.x;
    float f84 = f68.y;
    vec3 f85 = ((vec3(0.039999999105930328369140625) * f83) + vec3(f84)) / vec3(f83 + f84);
    vec3 f86 = f25 * f25;
    bvec3 f87 = lessThan(f25, vec3(0.0));
    vec3 f88 = vec3(f87.x ? f86.x : vec3(0.0).x, f87.y ? f86.y : vec3(0.0).y, f87.z ? f86.z : vec3(0.0).z);
    vec3 f89 = f86 - f88;
    float f90 = f89.x;
    float f91 = f89.y;
    float f92 = f89.z;
    float f93 = f88.x;
    float f94 = f88.y;
    float f95 = f88.z;
    float f96 = 1.0 - f61;
    float f97 = 1.0 - VARYING2.w;
    float f98 = mix(0.660000026226043701171875, 1.0, f97 * f97);
    mat4 f99 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 f100 = vec4(CB0[7].xyz - VARYING4.xyz, 1.0) * f99;
    vec4 f101 = vec4(CB0[7].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * f98) / max(dot(VARYING4.xyz, f25), 0.00999999977648258209228515625)))) + (f25 * (3.0 * (1.0 - f98)))), 1.0) * f99;
    float f102 = f100.w;
    vec2 f103 = (f100.xy * 0.5) + vec2(0.5 * f102);
    vec4 f104 = vec4(0.0);
    f104.x = f103.x;
    vec4 f105 = f104;
    f105.y = f103.y;
    vec2 f106 = f105.xy / vec2(f102);
    float f107 = f101.w;
    vec2 f108 = (f101.xy * 0.5) + vec2(0.5 * f107);
    vec4 f109 = vec4(0.0);
    f109.x = f108.x;
    vec4 f110 = f109;
    f110.y = f108.y;
    vec2 f111 = f110.xy / vec2(f107);
    vec2 f112 = f111 - vec2(0.5);
    vec2 f113 = (f111 - f106) * clamp(vec2(1.0) - ((f112 * f112) * 4.0), vec2(0.0), vec2(1.0));
    vec2 f114 = normalize(f113) * CB0[23].x;
    vec4 f115 = texture(GBufferColorTexture, f106 + (f113 * clamp(min(texture(GBufferDepthTexture, f111 + f114).x * 500.0, texture(GBufferDepthTexture, f111 - f114).x * 500.0) - f102, 0.0, 1.0)));
    vec3 f116 = f115.xyz;
    vec3 f117 = (f116 * f116) * CB0[15].x;
    vec4 f118 = f115;
    f118.x = f117.x;
    vec4 f119 = f118;
    f119.y = f117.y;
    vec4 f120 = f119;
    f120.z = f117.z;
    vec3 f121 = f120.xyz * mix(vec3(1.0), VARYING2.xyz, vec3(f21));
    vec4 f122 = vec4(0.0);
    f122.x = f121.x;
    vec4 f123 = f122;
    f123.y = f121.y;
    vec4 f124 = f123;
    f124.z = f121.z;
    vec4 f125 = f124;
    f125.w = mix(1.0, f115.w, dot(f124.xyz, vec3(1.0)) / (dot(f120.xyz, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 f126 = mix(mix(f125, vec4(mix(((((((vec3(1.0) - (f78 * f60)) * CB0[10].xyz) * f71) + (f36 * f20)) + (((vec3(1.0) - (f85 * f60)) * (((((((CB0[35].xyz * f90) + (CB0[37].xyz * f91)) + (CB0[39].xyz * f92)) + (CB0[36].xyz * f93)) + (CB0[38].xyz * f94)) + (CB0[40].xyz * f95)) + (((((((CB0[29].xyz * f90) + (CB0[31].xyz * f91)) + (CB0[33].xyz * f92)) + (CB0[30].xyz * f93)) + (CB0[32].xyz * f94)) + (CB0[34].xyz * f95)) * f37))) * f20)) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f37))) * (f57 * f20), f82, vec3(VARYING7.w)), 1.0), vec4(f20)), vec4(f82, 1.0), vec4(((f96 * f96) * 0.800000011920928955078125) * f21)) + vec4((((f78 * (((f79 + (f79 * f79)) / (((f80 * f80) * ((f74 * 3.0) + 0.5)) * ((f73 * 0.75) + 0.25))) * f71)) * CB0[10].xyz) * f69) + ((((mix(f67, f65, f81) * f85) * f60) * f69) * f20), 0.0);
    float f127 = clamp(exp2((CB0[13].z * f58) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f128 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f127) * 5.0).xyz;
    bvec3 f129 = bvec3(!(CB0[13].w == 0.0));
    vec3 f130 = mix(vec3(f129.x ? CB0[14].xyz.x : f128.x, f129.y ? CB0[14].xyz.y : f128.y, f129.z ? CB0[14].xyz.z : f128.z), f126.xyz, vec3(f127));
    vec4 f131 = f126;
    f131.x = f130.x;
    vec4 f132 = f131;
    f132.y = f130.y;
    vec4 f133 = f132;
    f133.z = f130.z;
    vec4 f134 = f133;
    f134.w = f127 * f126.w;
    vec3 f135 = sqrt(clamp(f134.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f136 = f134;
    f136.x = f135.x;
    vec4 f137 = f136;
    f137.y = f135.y;
    vec4 f138 = f137;
    f138.z = f135.z;
    _entryPointOutput = f138;
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
