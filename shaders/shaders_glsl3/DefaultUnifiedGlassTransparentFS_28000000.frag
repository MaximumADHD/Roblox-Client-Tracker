#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <PartMaterialParams.h>
uniform vec4 CB0[61];
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
    vec3 f29 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f30 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f31 = VARYING3.yzx - (VARYING3.yzx * f30);
    vec4 f32 = texture(LightMapTexture, f31);
    vec4 f33 = texture(LightGridSkylightTexture, f31);
    vec4 f34 = vec4(clamp(f30, 0.0, 1.0));
    vec4 f35 = mix(f32, vec4(0.0), f34);
    vec4 f36 = mix(f33, vec4(1.0), f34);
    vec3 f37 = f35.xyz * (f35.w * 120.0);
    float f38 = f36.x;
    vec4 f39 = texture(ShadowMapTexture, f29.xy);
    float f40 = f29.z;
    float f41 = max(9.9999997473787516355514526367188e-05, dot(f23, f26));
    float f42 = 1.0 - f41;
    vec3 f43 = -f26;
    vec3 f44 = reflect(f43, f23);
    float f45 = f27 * 5.0;
    vec3 f46 = mat3(vec3(CB0[58].xyz), vec3(CB0[59].xyz), vec3(CB0[60].xyz)) * f44;
    bvec3 f47 = bvec3(!(CB0[58].x == 2.0));
    vec3 f48 = textureLod(PrefilteredEnvTexture, vec4(vec3(f47.x ? f46.x : f44.x, f47.y ? f46.y : f44.y, f47.z ? f46.z : f44.z), f45).xyz, f45).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f44.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f49 = vec4(f44, f45).xyz;
    vec3 f50 = textureLod(PrefilteredEnvIndoorTexture, f49, f45).xyz;
    vec3 f51;
    if (CB0[32].w == 0.0)
    {
        f51 = f50;
    }
    else
    {
        f51 = mix(f50, textureLod(PrefilteredEnvBlendTargetTexture, f49, f45).xyz, vec3(CB0[32].w));
    }
    vec4 f52 = texture(PrecomputedBRDFTexture, vec2(f27, f41));
    float f53 = f52.x;
    float f54 = f52.y;
    vec3 f55 = ((vec3(0.039999999105930328369140625) * f53) + vec3(f54)) / vec3(f53 + f54);
    vec3 f56 = f23 * f23;
    bvec3 f57 = lessThan(f23, vec3(0.0));
    vec3 f58 = vec3(f57.x ? f56.x : vec3(0.0).x, f57.y ? f56.y : vec3(0.0).y, f57.z ? f56.z : vec3(0.0).z);
    vec3 f59 = f56 - f58;
    float f60 = f59.x;
    float f61 = f59.y;
    float f62 = f59.z;
    float f63 = f58.x;
    float f64 = f58.y;
    float f65 = f58.z;
    vec3 f66 = vec3(f38);
    vec3 f67 = -CB0[16].xyz;
    float f68 = dot(f23, f67) * ((1.0 - ((step(f39.x, f40) * clamp(CB0[29].z + (CB0[29].w * abs(f40 - 0.5)), 0.0, 1.0)) * f39.y)) * f36.y);
    vec3 f69 = normalize(f26 + f67);
    float f70 = clamp(f68, 0.0, 1.0);
    float f71 = f27 * f27;
    float f72 = max(0.001000000047497451305389404296875, dot(f23, f69));
    float f73 = dot(f67, f69);
    float f74 = 1.0 - f73;
    float f75 = f74 * f74;
    float f76 = (f75 * f75) * f74;
    vec3 f77 = vec3(f76) + (vec3(0.039999999105930328369140625) * (1.0 - f76));
    float f78 = f71 * f71;
    float f79 = (((f72 * f78) - f72) * f72) + 1.0;
    vec3 f80 = mix(f37, f48, f66) * mix(vec3(1.0), f24, vec3(0.5));
    float f81 = 1.0 - VARYING2.w;
    float f82 = mix(0.660000026226043701171875, 1.0, f81 * f81);
    mat4 f83 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 f84 = vec4(CB0[11].xyz - VARYING4.xyz, 1.0) * f83;
    vec4 f85 = vec4(CB0[11].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * f82) / max(dot(VARYING4.xyz, f23), 0.00999999977648258209228515625)))) + (f23 * (3.0 * (1.0 - f82)))), 1.0) * f83;
    float f86 = f84.w;
    vec2 f87 = (f84.xy * 0.5) + vec2(0.5 * f86);
    vec4 f88 = vec4(0.0);
    f88.x = f87.x;
    vec4 f89 = f88;
    f89.y = f87.y;
    vec2 f90 = f89.xy / vec2(f86);
    float f91 = f85.w;
    vec2 f92 = (f85.xy * 0.5) + vec2(0.5 * f91);
    vec4 f93 = vec4(0.0);
    f93.x = f92.x;
    vec4 f94 = f93;
    f94.y = f92.y;
    vec2 f95 = f94.xy / vec2(f91);
    vec2 f96 = f95 - vec2(0.5);
    vec2 f97 = (f95 - f90) * clamp(vec2(1.0) - ((f96 * f96) * 4.0), vec2(0.0), vec2(1.0));
    vec2 f98 = normalize(f97) * CB0[28].x;
    vec4 f99 = texture(GBufferColorTexture, f90 + (f97 * clamp(min(texture(GBufferDepthTexture, f95 + f98).x * 500.0, texture(GBufferDepthTexture, f95 - f98).x * 500.0) - f86, 0.0, 1.0)));
    vec3 f100 = f99.xyz;
    vec3 f101 = (f100 * f100) * CB0[20].x;
    vec4 f102 = f99;
    f102.x = f101.x;
    vec4 f103 = f102;
    f103.y = f101.y;
    vec4 f104 = f103;
    f104.z = f101.z;
    vec3 f105 = f104.xyz * mix(vec3(1.0), VARYING2.xyz, vec3(f19));
    vec4 f106 = vec4(0.0);
    f106.x = f105.x;
    vec4 f107 = f106;
    f107.y = f105.y;
    vec4 f108 = f107;
    f108.z = f105.z;
    vec4 f109 = f108;
    f109.w = mix(1.0, f99.w, dot(f108.xyz, vec3(1.0)) / (dot(f104.xyz, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 f110 = mix(mix(f109, vec4(mix((((((((vec3(1.0) - (f55 * f28)) * (((((((CB0[40].xyz * f60) + (CB0[42].xyz * f61)) + (CB0[44].xyz * f62)) + (CB0[41].xyz * f63)) + (CB0[43].xyz * f64)) + (CB0[45].xyz * f65)) + (((((((CB0[34].xyz * f60) + (CB0[36].xyz * f61)) + (CB0[38].xyz * f62)) + (CB0[35].xyz * f63)) + (CB0[37].xyz * f64)) + (CB0[39].xyz * f65)) * f38))) * f18) + (CB0[32].xyz + (CB0[33].xyz * f38))) + ((((vec3(1.0) - (f77 * f28)) * CB0[15].xyz) * f70) + (CB0[17].xyz * clamp(-f68, 0.0, 1.0)))) + f37) * f24) * f18, f80, vec3(VARYING7.w)), 1.0), vec4(f18)), vec4(f80, 1.0), vec4(((f42 * f42) * 0.800000011920928955078125) * f19)) + vec4((((mix(f51, f48, f66) * f55) * f28) * f18) + (((f77 * (((f78 + (f78 * f78)) / (((f79 * f79) * ((f73 * 3.0) + 0.5)) * ((f72 * 0.75) + 0.25))) * f70)) * CB0[15].xyz) * 1.0), 0.0);
    float f111 = clamp(exp2((CB0[18].z * f25) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f112 = textureLod(PrefilteredEnvTexture, vec4(f43, 0.0).xyz, max(CB0[18].y, f111) * 5.0).xyz;
    bvec3 f113 = bvec3(!(CB0[18].w == 0.0));
    vec3 f114 = mix(vec3(f113.x ? CB0[19].xyz.x : f112.x, f113.y ? CB0[19].xyz.y : f112.y, f113.z ? CB0[19].xyz.z : f112.z), f110.xyz, vec3(f111));
    vec4 f115 = f110;
    f115.x = f114.x;
    vec4 f116 = f115;
    f116.y = f114.y;
    vec4 f117 = f116;
    f117.z = f114.z;
    vec4 f118 = f117;
    f118.w = 1.0 - ((1.0 - f110.w) * f111);
    vec3 f119 = sqrt(clamp(f118.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f120 = f118;
    f120.x = f119.x;
    vec4 f121 = f120;
    f121.y = f119.y;
    vec4 f122 = f121;
    f122.z = f119.z;
    _entryPointOutput = f122;
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
