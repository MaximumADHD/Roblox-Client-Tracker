#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[58];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
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
    vec2 f0 = clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0));
    vec2 f1 = VARYING0 * CB2[0].x;
    float f2 = f0.y;
    vec4 f3 = texture(DiffuseMapTexture, f1);
    vec4 f4 = texture(NormalMapTexture, f1);
    vec2 f5 = f4.wy * 2.0;
    vec2 f6 = f5 - vec2(1.0);
    float f7 = sqrt(clamp(1.0 + dot(vec2(1.0) - f5, f6), 0.0, 1.0));
    vec3 f8 = vec3(f6, f7);
    vec2 f9 = f8.xy + (vec3((texture(NormalDetailMapTexture, f1 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f10 = f8;
    f10.x = f9.x;
    vec3 f11 = f10;
    f11.y = f9.y;
    vec2 f12 = f11.xy * f2;
    float f13 = f12.x;
    vec3 f14 = (VARYING2.xyz * f3.xyz) * (1.0 + (f13 * 0.20000000298023223876953125));
    vec4 f15 = texture(SpecularMapTexture, f1 * CB2[1].w);
    vec4 f16 = texture(SpecularMapTexture, f1);
    float f17 = VARYING2.w * 2.0;
    float f18 = clamp((f17 - 1.0) + f3.w, 0.0, 1.0);
    float f19 = clamp(f17, 0.0, 1.0);
    float f20 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f21 = VARYING6.xyz * f20;
    vec3 f22 = VARYING5.xyz * f20;
    vec3 f23 = normalize(((f21 * f13) + (cross(f22, f21) * f12.y)) + (f22 * (f7 * 10.0)));
    vec3 f24 = f14 * f14;
    float f25 = length(VARYING4.xyz);
    vec3 f26 = VARYING4.xyz / vec3(f25);
    float f27 = 0.08900000154972076416015625 + (mix(f15, f16, vec4(clamp((f2 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0))).y * 0.9110000133514404296875);
    float f28 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f29 = max(9.9999997473787516355514526367188e-05, dot(f23, f26));
    vec3 f30 = -f26;
    vec3 f31 = reflect(f30, f23);
    float f32 = f27 * 5.0;
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
    vec4 f37 = texture(PrecomputedBRDFTexture, vec2(f27, f29));
    vec3 f38 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f39 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f40 = VARYING3.yzx - (VARYING3.yzx * f39);
    vec4 f41 = vec4(clamp(f39, 0.0, 1.0));
    vec4 f42 = mix(texture(LightMapTexture, f40), vec4(0.0), f41);
    vec4 f43 = mix(texture(LightGridSkylightTexture, f40), vec4(1.0), f41);
    vec3 f44 = f42.xyz * (f42.w * 120.0);
    float f45 = f43.x;
    vec4 f46 = texture(ShadowMapTexture, f38.xy);
    float f47 = f38.z;
    vec3 f48 = vec3(f45);
    vec3 f49 = mix(f44, f34, f48) * mix(vec3(1.0), f24, vec3(0.5));
    vec3 f50 = -CB0[16].xyz;
    float f51 = dot(f23, f50) * ((1.0 - ((step(f46.x, f47) * clamp(CB0[29].z + (CB0[29].w * abs(f47 - 0.5)), 0.0, 1.0)) * f46.y)) * f43.y);
    vec3 f52 = normalize(f26 + f50);
    float f53 = clamp(f51, 0.0, 1.0);
    float f54 = f27 * f27;
    float f55 = max(0.001000000047497451305389404296875, dot(f23, f52));
    float f56 = dot(f50, f52);
    float f57 = 1.0 - f56;
    float f58 = f57 * f57;
    float f59 = (f58 * f58) * f57;
    vec3 f60 = vec3(f59) + (vec3(0.039999999105930328369140625) * (1.0 - f59));
    float f61 = f54 * f54;
    float f62 = (((f55 * f61) - f55) * f55) + 1.0;
    float f63 = f37.x;
    float f64 = f37.y;
    vec3 f65 = ((vec3(0.039999999105930328369140625) * f63) + vec3(f64)) / vec3(f63 + f64);
    vec3 f66 = f23 * f23;
    bvec3 f67 = lessThan(f23, vec3(0.0));
    vec3 f68 = vec3(f67.x ? f66.x : vec3(0.0).x, f67.y ? f66.y : vec3(0.0).y, f67.z ? f66.z : vec3(0.0).z);
    vec3 f69 = f66 - f68;
    float f70 = f69.x;
    float f71 = f69.y;
    float f72 = f69.z;
    float f73 = f68.x;
    float f74 = f68.y;
    float f75 = f68.z;
    float f76 = 1.0 - f29;
    float f77 = 1.0 - VARYING2.w;
    float f78 = mix(0.660000026226043701171875, 1.0, f77 * f77);
    mat4 f79 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 f80 = vec4(CB0[11].xyz - VARYING4.xyz, 1.0) * f79;
    vec4 f81 = vec4(CB0[11].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * f78) / max(dot(VARYING4.xyz, f23), 0.00999999977648258209228515625)))) + (f23 * (3.0 * (1.0 - f78)))), 1.0) * f79;
    float f82 = f80.w;
    vec2 f83 = (f80.xy * 0.5) + vec2(0.5 * f82);
    vec4 f84 = vec4(0.0);
    f84.x = f83.x;
    vec4 f85 = f84;
    f85.y = f83.y;
    vec2 f86 = f85.xy / vec2(f82);
    float f87 = f81.w;
    vec2 f88 = (f81.xy * 0.5) + vec2(0.5 * f87);
    vec4 f89 = vec4(0.0);
    f89.x = f88.x;
    vec4 f90 = f89;
    f90.y = f88.y;
    vec2 f91 = f90.xy / vec2(f87);
    vec2 f92 = f91 - vec2(0.5);
    vec2 f93 = (f91 - f86) * clamp(vec2(1.0) - ((f92 * f92) * 4.0), vec2(0.0), vec2(1.0));
    vec2 f94 = normalize(f93) * CB0[28].x;
    vec4 f95 = texture(GBufferColorTexture, f86 + (f93 * clamp(min(texture(GBufferDepthTexture, f91 + f94).x * 500.0, texture(GBufferDepthTexture, f91 - f94).x * 500.0) - f82, 0.0, 1.0)));
    vec3 f96 = f95.xyz;
    vec3 f97 = (f96 * f96) * CB0[20].x;
    vec4 f98 = f95;
    f98.x = f97.x;
    vec4 f99 = f98;
    f99.y = f97.y;
    vec4 f100 = f99;
    f100.z = f97.z;
    vec3 f101 = f100.xyz * mix(vec3(1.0), VARYING2.xyz, vec3(f19));
    vec4 f102 = vec4(0.0);
    f102.x = f101.x;
    vec4 f103 = f102;
    f103.y = f101.y;
    vec4 f104 = f103;
    f104.z = f101.z;
    vec4 f105 = f104;
    f105.w = mix(1.0, f95.w, dot(f104.xyz, vec3(1.0)) / (dot(f100.xyz, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 f106 = mix(mix(f105, vec4(mix(((((f44 * f18) + ((((vec3(1.0) - (f60 * f28)) * CB0[15].xyz) * f53) + (CB0[17].xyz * clamp(-f51, 0.0, 1.0)))) + (((vec3(1.0) - (f65 * f28)) * ((((((((CB0[40].xyz * f70) + (CB0[42].xyz * f71)) + (CB0[44].xyz * f72)) + (CB0[41].xyz * f73)) + (CB0[43].xyz * f74)) + (CB0[45].xyz * f75)) * CB0[30].w) + ((((((((CB0[34].xyz * f70) + (CB0[36].xyz * f71)) + (CB0[38].xyz * f72)) + (CB0[35].xyz * f73)) + (CB0[37].xyz * f74)) + (CB0[39].xyz * f75)) * CB0[30].w) * f45))) * f18)) + (CB0[32].xyz + (CB0[33].xyz * f45))) * (f24 * f18), f49, vec3(VARYING7.w)), 1.0), vec4(f18)), vec4(f49, 1.0), vec4(((f76 * f76) * 0.800000011920928955078125) * f19)) + vec4((((f60 * (((f61 + (f61 * f61)) / (((f62 * f62) * ((f56 * 3.0) + 0.5)) * ((f55 * 0.75) + 0.25))) * f53)) * CB0[15].xyz) * 1.0) + (((mix(f36, f34, f48) * f65) * f28) * f18), 0.0);
    float f107 = clamp(exp2((CB0[18].z * f25) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f108 = textureLod(PrefilteredEnvTexture, vec4(f30, 0.0).xyz, max(CB0[18].y, f107) * 5.0).xyz;
    bvec3 f109 = bvec3(!(CB0[18].w == 0.0));
    vec3 f110 = mix(vec3(f109.x ? CB0[19].xyz.x : f108.x, f109.y ? CB0[19].xyz.y : f108.y, f109.z ? CB0[19].xyz.z : f108.z), f106.xyz, vec3(f107));
    vec4 f111 = f106;
    f111.x = f110.x;
    vec4 f112 = f111;
    f112.y = f110.y;
    vec4 f113 = f112;
    f113.z = f110.z;
    vec4 f114 = f113;
    f114.w = f107 * f106.w;
    vec3 f115 = sqrt(clamp(f114.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f116 = f114;
    f116.x = f115.x;
    vec4 f117 = f116;
    f117.y = f115.y;
    vec4 f118 = f117;
    f118.z = f115.z;
    _entryPointOutput = f118;
}

//$$ShadowMapTexture=s1
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
