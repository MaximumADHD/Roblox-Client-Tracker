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
    vec3 f23 = f13 * f13;
    float f24 = length(VARYING4.xyz);
    vec3 f25 = VARYING4.xyz / vec3(f24);
    float f26 = 0.08900000154972076416015625 + (mix(f14, f15, vec4(clamp((f0 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0))).y * 0.9110000133514404296875);
    float f27 = CB0[31].w * f0;
    float f28 = max(9.9999997473787516355514526367188e-05, dot(f22, f25));
    vec3 f29 = -f25;
    vec3 f30 = reflect(f29, f22);
    float f31 = f26 * 5.0;
    vec3 f32 = vec4(f30, f31).xyz;
    vec3 f33 = textureLod(PrefilteredEnvTexture, f32, f31).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f30.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f34 = textureLod(PrefilteredEnvIndoorTexture, f32, f31).xyz;
    vec3 f35;
    if (CB0[32].w == 0.0)
    {
        f35 = f34;
    }
    else
    {
        f35 = mix(f34, textureLod(PrefilteredEnvBlendTargetTexture, f32, f31).xyz, vec3(CB0[32].w));
    }
    vec4 f36 = texture(PrecomputedBRDFTexture, vec2(f26, f28));
    vec3 f37 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f38 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f39 = VARYING3.yzx - (VARYING3.yzx * f38);
    vec4 f40 = vec4(clamp(f38, 0.0, 1.0));
    vec4 f41 = mix(texture(LightMapTexture, f39), vec4(0.0), f40);
    vec4 f42 = mix(texture(LightGridSkylightTexture, f39), vec4(1.0), f40);
    vec3 f43 = f41.xyz * (f41.w * 120.0);
    float f44 = f42.x;
    vec4 f45 = texture(ShadowMapTexture, f37.xy);
    float f46 = f37.z;
    vec3 f47 = vec3(f44);
    vec3 f48 = mix(f43, f33, f47) * mix(vec3(1.0), f23, vec3(0.5));
    vec3 f49 = -CB0[16].xyz;
    float f50 = dot(f22, f49) * ((1.0 - ((step(f45.x, f46) * clamp(CB0[29].z + (CB0[29].w * abs(f46 - 0.5)), 0.0, 1.0)) * f45.y)) * f42.y);
    vec3 f51 = normalize(f25 - CB0[16].xyz);
    float f52 = clamp(f50, 0.0, 1.0);
    float f53 = f26 * f26;
    float f54 = max(0.001000000047497451305389404296875, dot(f22, f51));
    float f55 = dot(f49, f51);
    float f56 = 1.0 - f55;
    float f57 = f56 * f56;
    float f58 = (f57 * f57) * f56;
    vec3 f59 = vec3(f58) + (vec3(0.039999999105930328369140625) * (1.0 - f58));
    float f60 = f53 * f53;
    float f61 = (((f54 * f60) - f54) * f54) + 1.0;
    float f62 = f36.x;
    float f63 = f36.y;
    vec3 f64 = ((vec3(0.039999999105930328369140625) * f62) + vec3(f63)) / vec3(f62 + f63);
    vec3 f65 = f22 * f22;
    bvec3 f66 = lessThan(f22, vec3(0.0));
    vec3 f67 = vec3(f66.x ? f65.x : vec3(0.0).x, f66.y ? f65.y : vec3(0.0).y, f66.z ? f65.z : vec3(0.0).z);
    vec3 f68 = f65 - f67;
    float f69 = f68.x;
    float f70 = f68.y;
    float f71 = f68.z;
    float f72 = f67.x;
    float f73 = f67.y;
    float f74 = f67.z;
    float f75 = 1.0 - f28;
    float f76 = 1.0 - VARYING2.w;
    float f77 = mix(0.660000026226043701171875, 1.0, f76 * f76);
    mat4 f78 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 f79 = vec4(CB0[11].xyz - VARYING4.xyz, 1.0) * f78;
    vec4 f80 = vec4(CB0[11].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * f77) / max(dot(VARYING4.xyz, f22), 0.00999999977648258209228515625)))) + (f22 * (3.0 * (1.0 - f77)))), 1.0) * f78;
    float f81 = f79.w;
    vec2 f82 = (f79.xy * 0.5) + vec2(0.5 * f81);
    vec4 f83 = vec4(0.0);
    f83.x = f82.x;
    vec4 f84 = f83;
    f84.y = f82.y;
    vec2 f85 = f84.xy / vec2(f81);
    float f86 = f80.w;
    vec2 f87 = (f80.xy * 0.5) + vec2(0.5 * f86);
    vec4 f88 = vec4(0.0);
    f88.x = f87.x;
    vec4 f89 = f88;
    f89.y = f87.y;
    vec2 f90 = f89.xy / vec2(f86);
    vec2 f91 = f90 - vec2(0.5);
    vec2 f92 = (f90 - f85) * clamp(vec2(1.0) - ((f91 * f91) * 4.0), vec2(0.0), vec2(1.0));
    vec2 f93 = normalize(f92) * CB0[28].x;
    vec4 f94 = texture(GBufferColorTexture, f85 + (f92 * clamp(min(texture(GBufferDepthTexture, f90 + f93).x * 500.0, texture(GBufferDepthTexture, f90 - f93).x * 500.0) - f81, 0.0, 1.0)));
    vec3 f95 = f94.xyz;
    vec3 f96 = (f95 * f95) * CB0[20].x;
    vec4 f97 = f94;
    f97.x = f96.x;
    vec4 f98 = f97;
    f98.y = f96.y;
    vec4 f99 = f98;
    f99.z = f96.z;
    vec3 f100 = f99.xyz * mix(vec3(1.0), VARYING2.xyz, vec3(f18));
    vec4 f101 = vec4(0.0);
    f101.x = f100.x;
    vec4 f102 = f101;
    f102.y = f100.y;
    vec4 f103 = f102;
    f103.z = f100.z;
    vec4 f104 = f103;
    f104.w = mix(1.0, f94.w, dot(f103.xyz, vec3(1.0)) / (dot(f99.xyz, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 f105 = mix(mix(f104, vec4(mix(((((f43 * f17) + ((((vec3(1.0) - (f59 * f27)) * CB0[15].xyz) * f52) + (CB0[17].xyz * clamp(-f50, 0.0, 1.0)))) + (((vec3(1.0) - (f64 * f27)) * (((((((CB0[40].xyz * f69) + (CB0[42].xyz * f70)) + (CB0[44].xyz * f71)) + (CB0[41].xyz * f72)) + (CB0[43].xyz * f73)) + (CB0[45].xyz * f74)) + (((((((CB0[34].xyz * f69) + (CB0[36].xyz * f70)) + (CB0[38].xyz * f71)) + (CB0[35].xyz * f72)) + (CB0[37].xyz * f73)) + (CB0[39].xyz * f74)) * f44))) * f17)) + (CB0[32].xyz + (CB0[33].xyz * f44))) * (f23 * f17), f48, vec3(VARYING7.w)), 1.0), vec4(f17)), vec4(f48, 1.0), vec4(((f75 * f75) * 0.800000011920928955078125) * f18)) + vec4((((f59 * (((f60 + (f60 * f60)) / max(((f61 * f61) * ((f55 * 3.0) + 0.5)) * ((f54 * 0.75) + 0.25), 3.0999999580672010779380798339844e-05)) * f52)) * CB0[15].xyz) * 1.0) + (((mix(f35, f33, f47) * f64) * f27) * f17), 0.0);
    float f106 = clamp(exp2((CB0[18].z * f24) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f107 = textureLod(PrefilteredEnvTexture, vec4(f29, 0.0).xyz, max(CB0[18].y, f106) * 5.0).xyz;
    bvec3 f108 = bvec3(!(CB0[18].w == 0.0));
    vec3 f109 = mix(vec3(f108.x ? CB0[19].xyz.x : f107.x, f108.y ? CB0[19].xyz.y : f107.y, f108.z ? CB0[19].xyz.z : f107.z), f105.xyz, vec3(f106));
    vec4 f110 = f105;
    f110.x = f109.x;
    vec4 f111 = f110;
    f111.y = f109.y;
    vec4 f112 = f111;
    f112.z = f109.z;
    vec4 f113 = f112;
    f113.w = f106 * f105.w;
    vec3 f114 = sqrt(clamp(f113.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f115 = f113;
    f115.x = f114.x;
    vec4 f116 = f115;
    f116.y = f114.y;
    vec4 f117 = f116;
    f117.z = f114.z;
    _entryPointOutput = f117;
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
