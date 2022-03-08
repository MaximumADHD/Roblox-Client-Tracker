#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[53];
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
    vec4 f16 = mix(f14, f15, vec4(clamp((f0 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0)));
    float f17 = f16.y;
    float f18 = VARYING2.w * 2.0;
    float f19 = clamp((f18 - 1.0) + f2.w, 0.0, 1.0);
    float f20 = clamp(f18, 0.0, 1.0);
    float f21 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f22 = VARYING6.xyz * f21;
    vec3 f23 = VARYING5.xyz * f21;
    vec3 f24 = normalize(((f22 * f12) + (cross(f23, f22) * f11.y)) + (f23 * (f6 * 10.0)));
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
    vec4 f35 = texture(ShadowMapTexture, f25.xy);
    float f36 = f25.z;
    vec3 f37 = f13 * f13;
    float f38 = length(VARYING4.xyz);
    vec3 f39 = VARYING4.xyz / vec3(f38);
    float f40 = CB0[26].w * f0;
    float f41 = max(9.9999997473787516355514526367188e-05, dot(f24, f39));
    vec3 f42 = reflect(-f39, f24);
    float f43 = f17 * 5.0;
    vec3 f44 = vec4(f42, f43).xyz;
    vec3 f45 = textureLod(PrefilteredEnvTexture, f44, f43).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f42.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f46 = textureLod(PrefilteredEnvIndoorTexture, f44, f43).xyz;
    vec3 f47;
    if (CB0[27].w == 0.0)
    {
        f47 = f46;
    }
    else
    {
        f47 = mix(f46, textureLod(PrefilteredEnvBlendTargetTexture, f44, f43).xyz, vec3(CB0[27].w));
    }
    vec4 f48 = texture(PrecomputedBRDFTexture, vec2(f17, f41));
    float f49 = CB0[9].w * CB0[9].w;
    vec3 f50 = -CB0[11].xyz;
    float f51 = (dot(f24, f50) * CB0[9].w) * ((1.0 - ((step(f35.x, f36) * clamp(CB0[24].z + (CB0[24].w * abs(f36 - 0.5)), 0.0, 1.0)) * f35.y)) * f32.y);
    vec3 f52 = normalize(f50 + f39);
    float f53 = clamp(f51, 0.0, 1.0);
    float f54 = f17 * f17;
    float f55 = max(0.001000000047497451305389404296875, dot(f24, f52));
    float f56 = dot(f50, f52);
    float f57 = 1.0 - f56;
    float f58 = f57 * f57;
    float f59 = (f58 * f58) * f57;
    vec3 f60 = vec3(f59) + (vec3(0.039999999105930328369140625) * (1.0 - f59));
    float f61 = f54 * f54;
    float f62 = (((f55 * f61) - f55) * f55) + 1.0;
    vec3 f63 = vec3(f34);
    vec3 f64 = mix(f33, f45, f63) * mix(vec3(1.0), f37, vec3(0.5));
    float f65 = f48.x;
    float f66 = f48.y;
    vec3 f67 = ((vec3(0.039999999105930328369140625) * f65) + vec3(f66)) / vec3(f65 + f66);
    vec3 f68 = f24 * f24;
    bvec3 f69 = lessThan(f24, vec3(0.0));
    vec3 f70 = vec3(f69.x ? f68.x : vec3(0.0).x, f69.y ? f68.y : vec3(0.0).y, f69.z ? f68.z : vec3(0.0).z);
    vec3 f71 = f68 - f70;
    float f72 = f71.x;
    float f73 = f71.y;
    float f74 = f71.z;
    float f75 = f70.x;
    float f76 = f70.y;
    float f77 = f70.z;
    float f78 = 1.0 - f41;
    float f79 = 1.0 - VARYING2.w;
    float f80 = mix(0.660000026226043701171875, 1.0, f79 * f79);
    mat4 f81 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 f82 = vec4(CB0[7].xyz - VARYING4.xyz, 1.0) * f81;
    vec4 f83 = vec4(CB0[7].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * f80) / max(dot(VARYING4.xyz, f24), 0.00999999977648258209228515625)))) + (f24 * (3.0 * (1.0 - f80)))), 1.0) * f81;
    float f84 = f82.w;
    vec2 f85 = (f82.xy * 0.5) + vec2(0.5 * f84);
    vec4 f86 = vec4(0.0);
    f86.x = f85.x;
    vec4 f87 = f86;
    f87.y = f85.y;
    vec2 f88 = f87.xy / vec2(f84);
    float f89 = f83.w;
    vec2 f90 = (f83.xy * 0.5) + vec2(0.5 * f89);
    vec4 f91 = vec4(0.0);
    f91.x = f90.x;
    vec4 f92 = f91;
    f92.y = f90.y;
    vec2 f93 = f92.xy / vec2(f89);
    vec2 f94 = f93 - vec2(0.5);
    vec2 f95 = (f93 - f88) * clamp(vec2(1.0) - ((f94 * f94) * 4.0), vec2(0.0), vec2(1.0));
    vec2 f96 = normalize(f95) * CB0[23].x;
    vec4 f97 = texture(GBufferColorTexture, f88 + (f95 * clamp(min(texture(GBufferDepthTexture, f93 + f96).x * 500.0, texture(GBufferDepthTexture, f93 - f96).x * 500.0) - f84, 0.0, 1.0)));
    vec3 f98 = f97.xyz;
    vec3 f99 = (f98 * f98) * CB0[15].x;
    vec4 f100 = f97;
    f100.x = f99.x;
    vec4 f101 = f100;
    f101.y = f99.y;
    vec4 f102 = f101;
    f102.z = f99.z;
    vec3 f103 = f102.xyz * mix(vec3(1.0), VARYING2.xyz, vec3(f20));
    vec4 f104 = vec4(0.0);
    f104.x = f103.x;
    vec4 f105 = f104;
    f105.y = f103.y;
    vec4 f106 = f105;
    f106.z = f103.z;
    vec4 f107 = f106;
    f107.w = mix(1.0, f97.w, dot(f106.xyz, vec3(1.0)) / (dot(f102.xyz, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 f108 = mix(mix(f107, vec4(mix((((((((vec3(1.0) - (f60 * f40)) * CB0[10].xyz) * f53) + (CB0[12].xyz * clamp(-f51, 0.0, 1.0))) + (f33 * f19)) + (((vec3(1.0) - (f67 * f40)) * (((((((CB0[35].xyz * f72) + (CB0[37].xyz * f73)) + (CB0[39].xyz * f74)) + (CB0[36].xyz * f75)) + (CB0[38].xyz * f76)) + (CB0[40].xyz * f77)) + (((((((CB0[29].xyz * f72) + (CB0[31].xyz * f73)) + (CB0[33].xyz * f74)) + (CB0[30].xyz * f75)) + (CB0[32].xyz * f76)) + (CB0[34].xyz * f77)) * f34))) * f19)) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f34))) * (f37 * f19), f64, vec3(VARYING7.w)), 1.0), vec4(f19)), vec4(f64, 1.0), vec4(((f78 * f78) * 0.800000011920928955078125) * f20)) + vec4((((f60 * (((f61 + (f61 * f61)) / (((f62 * f62) * ((f56 * 3.0) + 0.5)) * ((f55 * 0.75) + 0.25))) * f53)) * CB0[10].xyz) * f49) + ((((mix(f47, f45, f63) * f67) * f40) * f49) * f19), 0.0);
    float f109 = clamp(exp2((CB0[13].z * f38) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f110 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f109) * 5.0).xyz;
    bvec3 f111 = bvec3(!(CB0[13].w == 0.0));
    vec3 f112 = mix(vec3(f111.x ? CB0[14].xyz.x : f110.x, f111.y ? CB0[14].xyz.y : f110.y, f111.z ? CB0[14].xyz.z : f110.z), f108.xyz, vec3(f109));
    vec4 f113 = f108;
    f113.x = f112.x;
    vec4 f114 = f113;
    f114.y = f112.y;
    vec4 f115 = f114;
    f115.z = f112.z;
    vec4 f116 = f115;
    f116.w = f109 * f108.w;
    vec3 f117 = sqrt(clamp(f116.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f118 = f116;
    f118.x = f117.x;
    vec4 f119 = f118;
    f119.y = f117.y;
    vec4 f120 = f119;
    f120.z = f117.z;
    _entryPointOutput = f120;
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
