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
    vec4 f36 = texture(ShadowMapTexture, f26.xy);
    float f37 = f26.z;
    vec3 f38 = f14 * f14;
    float f39 = length(VARYING4.xyz);
    vec3 f40 = VARYING4.xyz / vec3(f39);
    float f41 = CB0[26].w * f0;
    float f42 = max(9.9999997473787516355514526367188e-05, dot(f25, f40));
    vec3 f43 = reflect(-f40, f25);
    float f44 = f18 * 5.0;
    vec3 f45 = vec4(f43, f44).xyz;
    vec3 f46 = textureLod(PrefilteredEnvTexture, f45, f44).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f43.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f47 = textureLod(PrefilteredEnvIndoorTexture, f45, f44).xyz;
    vec3 f48;
    if (CB0[27].w == 0.0)
    {
        f48 = f47;
    }
    else
    {
        f48 = mix(f47, textureLod(PrefilteredEnvBlendTargetTexture, f45, f44).xyz, vec3(CB0[27].w));
    }
    vec4 f49 = texture(PrecomputedBRDFTexture, vec2(f18, f42));
    float f50 = CB0[9].w * CB0[9].w;
    vec3 f51 = -CB0[11].xyz;
    float f52 = (dot(f25, f51) * CB0[9].w) * ((1.0 - ((step(f36.x, f37) * clamp(CB0[24].z + (CB0[24].w * abs(f37 - 0.5)), 0.0, 1.0)) * f36.y)) * f33.y);
    vec3 f53 = normalize(f51 + f40);
    float f54 = clamp(f52, 0.0, 1.0);
    float f55 = f18 * f18;
    float f56 = max(0.001000000047497451305389404296875, dot(f25, f53));
    float f57 = dot(f51, f53);
    float f58 = 1.0 - f57;
    float f59 = f58 * f58;
    float f60 = (f59 * f59) * f58;
    vec3 f61 = vec3(f60) + (vec3(0.039999999105930328369140625) * (1.0 - f60));
    float f62 = f55 * f55;
    float f63 = (((f56 * f62) - f56) * f56) + 1.0;
    vec3 f64 = vec3(f35);
    vec3 f65 = mix(f34, f46, f64) * mix(vec3(1.0), f38, vec3(0.5));
    float f66 = f49.x;
    float f67 = f49.y;
    vec3 f68 = ((vec3(0.039999999105930328369140625) * f66) + vec3(f67)) / vec3(f66 + f67);
    vec3 f69 = f25 * f25;
    bvec3 f70 = lessThan(f25, vec3(0.0));
    vec3 f71 = vec3(f70.x ? f69.x : vec3(0.0).x, f70.y ? f69.y : vec3(0.0).y, f70.z ? f69.z : vec3(0.0).z);
    vec3 f72 = f69 - f71;
    float f73 = f72.x;
    float f74 = f72.y;
    float f75 = f72.z;
    float f76 = f71.x;
    float f77 = f71.y;
    float f78 = f71.z;
    float f79 = 1.0 - f42;
    float f80 = 1.0 - VARYING2.w;
    float f81 = mix(0.660000026226043701171875, 1.0, f80 * f80);
    mat4 f82 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 f83 = vec4(CB0[7].xyz - VARYING4.xyz, 1.0) * f82;
    vec4 f84 = vec4(CB0[7].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * f81) / max(dot(VARYING4.xyz, f25), 0.00999999977648258209228515625)))) + (f25 * (3.0 * (1.0 - f81)))), 1.0) * f82;
    float f85 = f83.w;
    vec2 f86 = (f83.xy * 0.5) + vec2(0.5 * f85);
    vec4 f87 = vec4(0.0);
    f87.x = f86.x;
    vec4 f88 = f87;
    f88.y = f86.y;
    vec2 f89 = f88.xy / vec2(f85);
    float f90 = f84.w;
    vec2 f91 = (f84.xy * 0.5) + vec2(0.5 * f90);
    vec4 f92 = vec4(0.0);
    f92.x = f91.x;
    vec4 f93 = f92;
    f93.y = f91.y;
    vec2 f94 = f93.xy / vec2(f90);
    vec2 f95 = f94 - vec2(0.5);
    vec2 f96 = (f94 - f89) * clamp(vec2(1.0) - ((f95 * f95) * 4.0), vec2(0.0), vec2(1.0));
    vec2 f97 = normalize(f96) * CB0[23].x;
    vec4 f98 = texture(GBufferColorTexture, f89 + (f96 * clamp(min(texture(GBufferDepthTexture, f94 + f97).x * 500.0, texture(GBufferDepthTexture, f94 - f97).x * 500.0) - f85, 0.0, 1.0)));
    vec3 f99 = f98.xyz;
    vec3 f100 = (f99 * f99) * CB0[15].x;
    vec4 f101 = f98;
    f101.x = f100.x;
    vec4 f102 = f101;
    f102.y = f100.y;
    vec4 f103 = f102;
    f103.z = f100.z;
    vec3 f104 = f103.xyz * mix(vec3(1.0), VARYING2.xyz, vec3(f21));
    vec4 f105 = vec4(0.0);
    f105.x = f104.x;
    vec4 f106 = f105;
    f106.y = f104.y;
    vec4 f107 = f106;
    f107.z = f104.z;
    vec4 f108 = f107;
    f108.w = mix(1.0, f98.w, dot(f107.xyz, vec3(1.0)) / (dot(f103.xyz, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 f109 = mix(mix(f108, vec4(mix((((((((vec3(1.0) - (f61 * f41)) * CB0[10].xyz) * f54) + (CB0[12].xyz * clamp(-f52, 0.0, 1.0))) + (f34 * f20)) + (((vec3(1.0) - (f68 * f41)) * (((((((CB0[35].xyz * f73) + (CB0[37].xyz * f74)) + (CB0[39].xyz * f75)) + (CB0[36].xyz * f76)) + (CB0[38].xyz * f77)) + (CB0[40].xyz * f78)) + (((((((CB0[29].xyz * f73) + (CB0[31].xyz * f74)) + (CB0[33].xyz * f75)) + (CB0[30].xyz * f76)) + (CB0[32].xyz * f77)) + (CB0[34].xyz * f78)) * f35))) * f20)) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f35))) * (f38 * f20), f65, vec3(VARYING7.w)), 1.0), vec4(f20)), vec4(f65, 1.0), vec4(((f79 * f79) * 0.800000011920928955078125) * f21)) + vec4((((f61 * (((f62 + (f62 * f62)) / (((f63 * f63) * ((f57 * 3.0) + 0.5)) * ((f56 * 0.75) + 0.25))) * f54)) * CB0[10].xyz) * f50) + ((((mix(f48, f46, f64) * f68) * f41) * f50) * f20), 0.0);
    float f110 = clamp(exp2((CB0[13].z * f39) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f111 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f110) * 5.0).xyz;
    bvec3 f112 = bvec3(!(CB0[13].w == 0.0));
    vec3 f113 = mix(vec3(f112.x ? CB0[14].xyz.x : f111.x, f112.y ? CB0[14].xyz.y : f111.y, f112.z ? CB0[14].xyz.z : f111.z), f109.xyz, vec3(f110));
    vec4 f114 = f109;
    f114.x = f113.x;
    vec4 f115 = f114;
    f115.y = f113.y;
    vec4 f116 = f115;
    f116.z = f113.z;
    vec4 f117 = f116;
    f117.w = f110 * f109.w;
    vec3 f118 = sqrt(clamp(f117.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f119 = f117;
    f119.x = f118.x;
    vec4 f120 = f119;
    f120.y = f118.y;
    vec4 f121 = f120;
    f121.z = f118.z;
    _entryPointOutput = f121;
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
