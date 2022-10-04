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
    vec3 f29 = reflect(-f25, f22);
    float f30 = f26 * 5.0;
    vec3 f31 = vec4(f29, f30).xyz;
    vec3 f32 = textureLod(PrefilteredEnvTexture, f31, f30).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f29.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f33 = textureLod(PrefilteredEnvIndoorTexture, f31, f30).xyz;
    vec3 f34;
    if (CB0[32].w == 0.0)
    {
        f34 = f33;
    }
    else
    {
        f34 = mix(f33, textureLod(PrefilteredEnvBlendTargetTexture, f31, f30).xyz, vec3(CB0[32].w));
    }
    vec4 f35 = texture(PrecomputedBRDFTexture, vec2(f26, f28));
    vec3 f36 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f37 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f38 = VARYING3.yzx - (VARYING3.yzx * f37);
    vec4 f39 = vec4(clamp(f37, 0.0, 1.0));
    vec4 f40 = mix(texture(LightMapTexture, f38), vec4(0.0), f39);
    vec4 f41 = mix(texture(LightGridSkylightTexture, f38), vec4(1.0), f39);
    vec3 f42 = f40.xyz * (f40.w * 120.0);
    float f43 = f41.x;
    vec4 f44 = texture(ShadowMapTexture, f36.xy);
    float f45 = f36.z;
    vec3 f46 = vec3(f43);
    vec3 f47 = mix(f42, f32, f46) * mix(vec3(1.0), f23, vec3(0.5));
    vec3 f48 = -CB0[16].xyz;
    float f49 = dot(f22, f48) * ((1.0 - ((step(f44.x, f45) * clamp(CB0[29].z + (CB0[29].w * abs(f45 - 0.5)), 0.0, 1.0)) * f44.y)) * f41.y);
    vec3 f50 = normalize(f25 - CB0[16].xyz);
    float f51 = clamp(f49, 0.0, 1.0);
    float f52 = f26 * f26;
    float f53 = max(0.001000000047497451305389404296875, dot(f22, f50));
    float f54 = dot(f48, f50);
    float f55 = 1.0 - f54;
    float f56 = f55 * f55;
    float f57 = (f56 * f56) * f55;
    vec3 f58 = vec3(f57) + (vec3(0.039999999105930328369140625) * (1.0 - f57));
    float f59 = f52 * f52;
    float f60 = (((f53 * f59) - f53) * f53) + 1.0;
    float f61 = f35.x;
    float f62 = f35.y;
    vec3 f63 = ((vec3(0.039999999105930328369140625) * f61) + vec3(f62)) / vec3(f61 + f62);
    vec3 f64 = f22 * f22;
    bvec3 f65 = lessThan(f22, vec3(0.0));
    vec3 f66 = vec3(f65.x ? f64.x : vec3(0.0).x, f65.y ? f64.y : vec3(0.0).y, f65.z ? f64.z : vec3(0.0).z);
    vec3 f67 = f64 - f66;
    float f68 = f67.x;
    float f69 = f67.y;
    float f70 = f67.z;
    float f71 = f66.x;
    float f72 = f66.y;
    float f73 = f66.z;
    float f74 = 1.0 - f28;
    float f75 = 1.0 - VARYING2.w;
    float f76 = mix(0.660000026226043701171875, 1.0, f75 * f75);
    mat4 f77 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 f78 = vec4(CB0[11].xyz - VARYING4.xyz, 1.0) * f77;
    vec4 f79 = vec4(CB0[11].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * f76) / max(dot(VARYING4.xyz, f22), 0.00999999977648258209228515625)))) + (f22 * (3.0 * (1.0 - f76)))), 1.0) * f77;
    float f80 = f78.w;
    vec2 f81 = (f78.xy * 0.5) + vec2(0.5 * f80);
    vec4 f82 = vec4(0.0);
    f82.x = f81.x;
    vec4 f83 = f82;
    f83.y = f81.y;
    vec2 f84 = f83.xy / vec2(f80);
    float f85 = f79.w;
    vec2 f86 = (f79.xy * 0.5) + vec2(0.5 * f85);
    vec4 f87 = vec4(0.0);
    f87.x = f86.x;
    vec4 f88 = f87;
    f88.y = f86.y;
    vec2 f89 = f88.xy / vec2(f85);
    vec2 f90 = f89 - vec2(0.5);
    vec2 f91 = (f89 - f84) * clamp(vec2(1.0) - ((f90 * f90) * 4.0), vec2(0.0), vec2(1.0));
    vec2 f92 = normalize(f91) * CB0[28].x;
    vec4 f93 = texture(GBufferColorTexture, f84 + (f91 * clamp(min(texture(GBufferDepthTexture, f89 + f92).x * 500.0, texture(GBufferDepthTexture, f89 - f92).x * 500.0) - f80, 0.0, 1.0)));
    vec3 f94 = f93.xyz;
    vec3 f95 = (f94 * f94) * CB0[20].x;
    vec4 f96 = f93;
    f96.x = f95.x;
    vec4 f97 = f96;
    f97.y = f95.y;
    vec4 f98 = f97;
    f98.z = f95.z;
    vec3 f99 = f98.xyz * mix(vec3(1.0), VARYING2.xyz, vec3(f18));
    vec4 f100 = vec4(0.0);
    f100.x = f99.x;
    vec4 f101 = f100;
    f101.y = f99.y;
    vec4 f102 = f101;
    f102.z = f99.z;
    vec4 f103 = f102;
    f103.w = mix(1.0, f93.w, dot(f102.xyz, vec3(1.0)) / (dot(f98.xyz, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 f104 = mix(mix(f103, vec4(mix(((((f42 * f17) + ((((vec3(1.0) - (f58 * f27)) * CB0[15].xyz) * f51) + (CB0[17].xyz * clamp(-f49, 0.0, 1.0)))) + (((vec3(1.0) - (f63 * f27)) * (((((((CB0[40].xyz * f68) + (CB0[42].xyz * f69)) + (CB0[44].xyz * f70)) + (CB0[41].xyz * f71)) + (CB0[43].xyz * f72)) + (CB0[45].xyz * f73)) + (((((((CB0[34].xyz * f68) + (CB0[36].xyz * f69)) + (CB0[38].xyz * f70)) + (CB0[35].xyz * f71)) + (CB0[37].xyz * f72)) + (CB0[39].xyz * f73)) * f43))) * f17)) + (CB0[32].xyz + (CB0[33].xyz * f43))) * (f23 * f17), f47, vec3(VARYING7.w)), 1.0), vec4(f17)), vec4(f47, 1.0), vec4(((f74 * f74) * 0.800000011920928955078125) * f18)) + vec4((((f58 * (min((f59 + (f59 * f59)) / (((f60 * f60) * ((f54 * 3.0) + 0.5)) * ((f53 * 0.75) + 0.25)), 65504.0) * f51)) * CB0[15].xyz) * 1.0) + (((mix(f34, f32, f46) * f63) * f27) * f17), 0.0);
    float f105 = clamp(exp2((CB0[18].z * f24) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f106 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[18].y, f105) * 5.0).xyz;
    bvec3 f107 = bvec3(!(CB0[18].w == 0.0));
    vec3 f108 = mix(vec3(f107.x ? CB0[19].xyz.x : f106.x, f107.y ? CB0[19].xyz.y : f106.y, f107.z ? CB0[19].xyz.z : f106.z), f104.xyz, vec3(f105));
    vec4 f109 = f104;
    f109.x = f108.x;
    vec4 f110 = f109;
    f110.y = f108.y;
    vec4 f111 = f110;
    f111.z = f108.z;
    vec4 f112 = f111;
    f112.w = f105 * f104.w;
    vec3 f113 = sqrt(clamp(f112.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f114 = f112;
    f114.x = f113.x;
    vec4 f115 = f114;
    f115.y = f113.y;
    vec4 f116 = f115;
    f116.z = f113.z;
    _entryPointOutput = f116;
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
