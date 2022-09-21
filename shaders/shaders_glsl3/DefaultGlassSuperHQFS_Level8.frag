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
    vec3 f31 = reflect(-f27, f22);
    float f32 = f28 * 5.0;
    vec3 f33 = vec4(f31, f32).xyz;
    vec3 f34 = textureLod(PrefilteredEnvTexture, f33, f32).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f31.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f35 = textureLod(PrefilteredEnvIndoorTexture, f33, f32).xyz;
    vec3 f36;
    if (CB0[32].w == 0.0)
    {
        f36 = f35;
    }
    else
    {
        f36 = mix(f35, textureLod(PrefilteredEnvBlendTargetTexture, f33, f32).xyz, vec3(CB0[32].w));
    }
    vec4 f37 = texture(PrecomputedBRDFTexture, vec2(f28, f30));
    vec3 f38 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f39 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f40 = VARYING3.yzx - (VARYING3.yzx * f39);
    vec4 f41 = vec4(clamp(f39, 0.0, 1.0));
    vec4 f42 = mix(texture(LightMapTexture, f40), vec4(0.0), f41);
    vec4 f43 = mix(texture(LightGridSkylightTexture, f40), vec4(1.0), f41);
    vec3 f44 = f42.xyz * (f42.w * 120.0);
    float f45 = f43.x;
    float f46 = f43.y;
    vec3 f47 = f38 - CB0[46].xyz;
    vec3 f48 = f38 - CB0[47].xyz;
    vec3 f49 = f38 - CB0[48].xyz;
    vec4 f50 = vec4(f38, 1.0) * mat4(CB8[((dot(f47, f47) < CB0[46].w) ? 0 : ((dot(f48, f48) < CB0[47].w) ? 1 : ((dot(f49, f49) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f47, f47) < CB0[46].w) ? 0 : ((dot(f48, f48) < CB0[47].w) ? 1 : ((dot(f49, f49) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f47, f47) < CB0[46].w) ? 0 : ((dot(f48, f48) < CB0[47].w) ? 1 : ((dot(f49, f49) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f47, f47) < CB0[46].w) ? 0 : ((dot(f48, f48) < CB0[47].w) ? 1 : ((dot(f49, f49) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f51 = textureLod(ShadowAtlasTexture, f50.xy, 0.0);
    vec2 f52 = vec2(0.0);
    f52.x = CB0[51].z;
    vec2 f53 = f52;
    f53.y = CB0[51].w;
    float f54 = (2.0 * f50.z) - 1.0;
    float f55 = exp(CB0[51].z * f54);
    float f56 = -exp((-CB0[51].w) * f54);
    vec2 f57 = (f53 * CB0[52].y) * vec2(f55, f56);
    vec2 f58 = f57 * f57;
    float f59 = f51.x;
    float f60 = max(f51.y - (f59 * f59), f58.x);
    float f61 = f55 - f59;
    float f62 = f51.z;
    float f63 = max(f51.w - (f62 * f62), f58.y);
    float f64 = f56 - f62;
    vec3 f65 = vec3(f45);
    vec3 f66 = mix(f44, f34, f65) * mix(vec3(1.0), f25, vec3(0.5));
    float f67 = CB0[14].w * CB0[14].w;
    vec3 f68 = normalize(f27 - CB0[16].xyz);
    float f69 = clamp((f24 * CB0[14].w) * (((f24 * CB0[52].x) > 0.0) ? mix(min((f55 <= f59) ? 1.0 : clamp(((f60 / (f60 + (f61 * f61))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f56 <= f62) ? 1.0 : clamp(((f63 / (f63 + (f64 * f64))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f46, clamp((length(f38 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f46), 0.0, 1.0);
    float f70 = f28 * f28;
    float f71 = max(0.001000000047497451305389404296875, dot(f22, f68));
    float f72 = dot(f23, f68);
    float f73 = 1.0 - f72;
    float f74 = f73 * f73;
    float f75 = (f74 * f74) * f73;
    vec3 f76 = vec3(f75) + (vec3(0.039999999105930328369140625) * (1.0 - f75));
    float f77 = f70 * f70;
    float f78 = (((f71 * f77) - f71) * f71) + 1.0;
    float f79 = f37.x;
    float f80 = f37.y;
    vec3 f81 = ((vec3(0.039999999105930328369140625) * f79) + vec3(f80)) / vec3(f79 + f80);
    vec3 f82 = f22 * f22;
    bvec3 f83 = lessThan(f22, vec3(0.0));
    vec3 f84 = vec3(f83.x ? f82.x : vec3(0.0).x, f83.y ? f82.y : vec3(0.0).y, f83.z ? f82.z : vec3(0.0).z);
    vec3 f85 = f82 - f84;
    float f86 = f85.x;
    float f87 = f85.y;
    float f88 = f85.z;
    float f89 = f84.x;
    float f90 = f84.y;
    float f91 = f84.z;
    float f92 = 1.0 - f30;
    float f93 = 1.0 - VARYING2.w;
    float f94 = mix(0.660000026226043701171875, 1.0, f93 * f93);
    mat4 f95 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 f96 = vec4(CB0[11].xyz - VARYING4.xyz, 1.0) * f95;
    vec4 f97 = vec4(CB0[11].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * f94) / max(dot(VARYING4.xyz, f22), 0.00999999977648258209228515625)))) + (f22 * (3.0 * (1.0 - f94)))), 1.0) * f95;
    float f98 = f96.w;
    vec2 f99 = (f96.xy * 0.5) + vec2(0.5 * f98);
    vec4 f100 = vec4(0.0);
    f100.x = f99.x;
    vec4 f101 = f100;
    f101.y = f99.y;
    vec2 f102 = f101.xy / vec2(f98);
    float f103 = f97.w;
    vec2 f104 = (f97.xy * 0.5) + vec2(0.5 * f103);
    vec4 f105 = vec4(0.0);
    f105.x = f104.x;
    vec4 f106 = f105;
    f106.y = f104.y;
    vec2 f107 = f106.xy / vec2(f103);
    vec2 f108 = f107 - vec2(0.5);
    vec2 f109 = (f107 - f102) * clamp(vec2(1.0) - ((f108 * f108) * 4.0), vec2(0.0), vec2(1.0));
    vec2 f110 = normalize(f109) * CB0[28].x;
    vec4 f111 = texture(GBufferColorTexture, f102 + (f109 * clamp(min(texture(GBufferDepthTexture, f107 + f110).x * 500.0, texture(GBufferDepthTexture, f107 - f110).x * 500.0) - f98, 0.0, 1.0)));
    vec3 f112 = f111.xyz;
    vec3 f113 = (f112 * f112) * CB0[20].x;
    vec4 f114 = f111;
    f114.x = f113.x;
    vec4 f115 = f114;
    f115.y = f113.y;
    vec4 f116 = f115;
    f116.z = f113.z;
    vec3 f117 = f116.xyz * mix(vec3(1.0), VARYING2.xyz, vec3(f18));
    vec4 f118 = vec4(0.0);
    f118.x = f117.x;
    vec4 f119 = f118;
    f119.y = f117.y;
    vec4 f120 = f119;
    f120.z = f117.z;
    vec4 f121 = f120;
    f121.w = mix(1.0, f111.w, dot(f120.xyz, vec3(1.0)) / (dot(f116.xyz, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 f122 = mix(mix(f121, vec4(mix(((((f44 * f17) + (((vec3(1.0) - (f76 * f29)) * CB0[15].xyz) * f69)) + (((vec3(1.0) - (f81 * f29)) * (((((((CB0[40].xyz * f86) + (CB0[42].xyz * f87)) + (CB0[44].xyz * f88)) + (CB0[41].xyz * f89)) + (CB0[43].xyz * f90)) + (CB0[45].xyz * f91)) + (((((((CB0[34].xyz * f86) + (CB0[36].xyz * f87)) + (CB0[38].xyz * f88)) + (CB0[35].xyz * f89)) + (CB0[37].xyz * f90)) + (CB0[39].xyz * f91)) * f45))) * f17)) + (CB0[32].xyz + ((CB0[33].xyz * (2.0 - CB0[14].w)) * f45))) * (f25 * f17), f66, vec3(VARYING7.w)), 1.0), vec4(f17)), vec4(f66, 1.0), vec4(((f92 * f92) * 0.800000011920928955078125) * f18)) + vec4((((f76 * (((f77 + (f77 * f77)) / (((f78 * f78) * ((f72 * 3.0) + 0.5)) * ((f71 * 0.75) + 0.25))) * f69)) * CB0[15].xyz) * f67) + (((mix(f36, f34, f65) * f81) * f29) * (f67 * f17)), 0.0);
    float f123 = clamp(exp2((CB0[18].z * f26) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f124 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[18].y, f123) * 5.0).xyz;
    bvec3 f125 = bvec3(!(CB0[18].w == 0.0));
    vec3 f126 = mix(vec3(f125.x ? CB0[19].xyz.x : f124.x, f125.y ? CB0[19].xyz.y : f124.y, f125.z ? CB0[19].xyz.z : f124.z), f122.xyz, vec3(f123));
    vec4 f127 = f122;
    f127.x = f126.x;
    vec4 f128 = f127;
    f128.y = f126.y;
    vec4 f129 = f128;
    f129.z = f126.z;
    vec4 f130 = f129;
    f130.w = f123 * f122.w;
    vec3 f131 = sqrt(clamp(f130.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f132 = f130;
    f132.x = f131.x;
    vec4 f133 = f132;
    f133.y = f131.y;
    vec4 f134 = f133;
    f134.z = f131.z;
    _entryPointOutput = f134;
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
