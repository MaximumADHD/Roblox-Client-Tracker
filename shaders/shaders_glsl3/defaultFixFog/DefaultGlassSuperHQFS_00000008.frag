#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowTransformGPU.h>
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
    vec3 f24 = -CB0[16].xyz;
    float f25 = dot(f23, f24);
    vec3 f26 = f14 * f14;
    float f27 = length(VARYING4.xyz);
    vec3 f28 = VARYING4.xyz / vec3(f27);
    float f29 = 0.08900000154972076416015625 + (mix(f15, f16, vec4(clamp((f2 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0))).y * 0.9110000133514404296875);
    float f30 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f31 = max(9.9999997473787516355514526367188e-05, dot(f23, f28));
    vec3 f32 = -f28;
    vec3 f33 = reflect(f32, f23);
    float f34 = f29 * 5.0;
    vec3 f35 = vec4(f33, f34).xyz;
    vec3 f36 = textureLod(PrefilteredEnvTexture, f35, f34).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f33.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f37 = textureLod(PrefilteredEnvIndoorTexture, f35, f34).xyz;
    vec3 f38;
    if (CB0[32].w == 0.0)
    {
        f38 = f37;
    }
    else
    {
        f38 = mix(f37, textureLod(PrefilteredEnvBlendTargetTexture, f35, f34).xyz, vec3(CB0[32].w));
    }
    vec4 f39 = texture(PrecomputedBRDFTexture, vec2(f29, f31));
    vec3 f40 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f41 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f42 = VARYING3.yzx - (VARYING3.yzx * f41);
    vec4 f43 = texture(LightMapTexture, f42);
    vec4 f44 = texture(LightGridSkylightTexture, f42);
    vec4 f45 = vec4(clamp(f41, 0.0, 1.0));
    vec4 f46 = mix(f43, vec4(0.0), f45);
    vec4 f47 = mix(f44, vec4(1.0), f45);
    vec3 f48 = f46.xyz * (f46.w * 120.0);
    float f49 = f47.x;
    float f50 = f47.y;
    vec3 f51 = f40 - CB0[46].xyz;
    vec3 f52 = f40 - CB0[47].xyz;
    vec3 f53 = f40 - CB0[48].xyz;
    vec4 f54 = vec4(f40, 1.0) * mat4(CB8[((dot(f51, f51) < CB0[46].w) ? 0 : ((dot(f52, f52) < CB0[47].w) ? 1 : ((dot(f53, f53) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f51, f51) < CB0[46].w) ? 0 : ((dot(f52, f52) < CB0[47].w) ? 1 : ((dot(f53, f53) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f51, f51) < CB0[46].w) ? 0 : ((dot(f52, f52) < CB0[47].w) ? 1 : ((dot(f53, f53) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f51, f51) < CB0[46].w) ? 0 : ((dot(f52, f52) < CB0[47].w) ? 1 : ((dot(f53, f53) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f55 = textureLod(ShadowAtlasTexture, f54.xy, 0.0);
    vec2 f56 = vec2(0.0);
    f56.x = CB0[52].z;
    vec2 f57 = f56;
    f57.y = CB0[52].w;
    float f58 = (2.0 * f54.z) - 1.0;
    float f59 = exp(CB0[52].z * f58);
    float f60 = -exp((-CB0[52].w) * f58);
    vec2 f61 = (f57 * CB0[53].y) * vec2(f59, f60);
    vec2 f62 = f61 * f61;
    float f63 = f55.x;
    float f64 = max(f55.y - (f63 * f63), f62.x);
    float f65 = f59 - f63;
    float f66 = f55.z;
    float f67 = max(f55.w - (f66 * f66), f62.y);
    float f68 = f60 - f66;
    vec3 f69 = f48 * f18;
    vec3 f70 = vec3(f49);
    vec3 f71 = mix(f48, f36, f70) * mix(vec3(1.0), f26, vec3(0.5));
    float f72 = (f25 * CB0[14].w) * (((f25 * CB0[53].x) > 0.0) ? mix(min((f59 <= f63) ? 1.0 : clamp(((f64 / (f64 + (f65 * f65))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f60 <= f66) ? 1.0 : clamp(((f67 / (f67 + (f68 * f68))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f50, clamp((length(f40 - CB0[11].xyz) * CB0[52].y) - (CB0[52].x * CB0[52].y), 0.0, 1.0)) : f50);
    vec3 f73;
    vec3 f74;
    if (f72 > 0.0)
    {
        vec3 f75 = normalize(f28 + f24);
        float f76 = clamp(f72, 0.0, 1.0);
        float f77 = f29 * f29;
        float f78 = max(0.001000000047497451305389404296875, dot(f23, f75));
        float f79 = dot(f24, f75);
        float f80 = 1.0 - f79;
        float f81 = f80 * f80;
        float f82 = (f81 * f81) * f80;
        vec3 f83 = vec3(f82) + (vec3(0.039999999105930328369140625) * (1.0 - f82));
        float f84 = f77 * f77;
        float f85 = (((f78 * f84) - f78) * f78) + 1.0;
        f74 = f69 + (((vec3(1.0) - (f83 * f30)) * CB0[15].xyz) * f76);
        f73 = ((f83 * (((f84 + (f84 * f84)) / (((f85 * f85) * ((f79 * 3.0) + 0.5)) * ((f78 * 0.75) + 0.25))) * f76)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f74 = f69;
        f73 = vec3(0.0);
    }
    float f86 = f39.x;
    float f87 = f39.y;
    vec3 f88 = ((vec3(0.039999999105930328369140625) * f86) + vec3(f87)) / vec3(f86 + f87);
    vec3 f89 = f23 * f23;
    bvec3 f90 = lessThan(f23, vec3(0.0));
    vec3 f91 = vec3(f90.x ? f89.x : vec3(0.0).x, f90.y ? f89.y : vec3(0.0).y, f90.z ? f89.z : vec3(0.0).z);
    vec3 f92 = f89 - f91;
    float f93 = f92.x;
    float f94 = f92.y;
    float f95 = f92.z;
    float f96 = f91.x;
    float f97 = f91.y;
    float f98 = f91.z;
    float f99 = 1.0 - f31;
    float f100 = 1.0 - VARYING2.w;
    float f101 = mix(0.660000026226043701171875, 1.0, f100 * f100);
    mat4 f102 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 f103 = vec4(CB0[11].xyz - VARYING4.xyz, 1.0) * f102;
    vec4 f104 = vec4(CB0[11].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * f101) / max(dot(VARYING4.xyz, f23), 0.00999999977648258209228515625)))) + (f23 * (3.0 * (1.0 - f101)))), 1.0) * f102;
    float f105 = f103.w;
    vec2 f106 = (f103.xy * 0.5) + vec2(0.5 * f105);
    vec4 f107 = vec4(0.0);
    f107.x = f106.x;
    vec4 f108 = f107;
    f108.y = f106.y;
    vec2 f109 = f108.xy / vec2(f105);
    float f110 = f104.w;
    vec2 f111 = (f104.xy * 0.5) + vec2(0.5 * f110);
    vec4 f112 = vec4(0.0);
    f112.x = f111.x;
    vec4 f113 = f112;
    f113.y = f111.y;
    vec2 f114 = f113.xy / vec2(f110);
    vec2 f115 = f114 - vec2(0.5);
    vec2 f116 = (f114 - f109) * clamp(vec2(1.0) - ((f115 * f115) * 4.0), vec2(0.0), vec2(1.0));
    vec2 f117 = normalize(f116) * CB0[28].x;
    vec4 f118 = texture(GBufferColorTexture, f109 + (f116 * clamp(min(texture(GBufferDepthTexture, f114 + f117).x * 500.0, texture(GBufferDepthTexture, f114 - f117).x * 500.0) - f105, 0.0, 1.0)));
    vec3 f119 = f118.xyz;
    vec3 f120 = (f119 * f119) * CB0[20].x;
    vec4 f121 = f118;
    f121.x = f120.x;
    vec4 f122 = f121;
    f122.y = f120.y;
    vec4 f123 = f122;
    f123.z = f120.z;
    vec3 f124 = f123.xyz * mix(vec3(1.0), VARYING2.xyz, vec3(f19));
    vec4 f125 = vec4(0.0);
    f125.x = f124.x;
    vec4 f126 = f125;
    f126.y = f124.y;
    vec4 f127 = f126;
    f127.z = f124.z;
    vec4 f128 = f127;
    f128.w = mix(1.0, f118.w, dot(f127.xyz, vec3(1.0)) / (dot(f123.xyz, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 f129 = mix(mix(f128, vec4(mix(((f74 + (((vec3(1.0) - (f88 * f30)) * ((((((((CB0[40].xyz * f93) + (CB0[42].xyz * f94)) + (CB0[44].xyz * f95)) + (CB0[41].xyz * f96)) + (CB0[43].xyz * f97)) + (CB0[45].xyz * f98)) * CB0[30].w) + ((((((((CB0[34].xyz * f93) + (CB0[36].xyz * f94)) + (CB0[38].xyz * f95)) + (CB0[35].xyz * f96)) + (CB0[37].xyz * f97)) + (CB0[39].xyz * f98)) * CB0[30].w) * f49))) * f18)) + (CB0[32].xyz + (CB0[33].xyz * (f49 * (2.0 - CB0[14].w))))) * (f26 * f18), f71, vec3(VARYING7.w)), 1.0), vec4(f18)), vec4(f71, 1.0), vec4(((f99 * f99) * 0.800000011920928955078125) * f19)) + vec4(f73 + (((mix(f38, f36, f70) * f88) * f30) * ((CB0[14].w * CB0[14].w) * f18)), 0.0);
    float f130 = clamp(exp2((CB0[18].z * f27) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f131 = textureLod(PrefilteredEnvTexture, vec4(f32, 0.0).xyz, max(CB0[18].y, f130) * 5.0).xyz;
    bvec3 f132 = bvec3(!(CB0[18].w == 0.0));
    vec3 f133 = mix(vec3(f132.x ? CB0[19].xyz.x : f131.x, f132.y ? CB0[19].xyz.y : f131.y, f132.z ? CB0[19].xyz.z : f131.z), f129.xyz, vec3(f130));
    vec4 f134 = f129;
    f134.x = f133.x;
    vec4 f135 = f134;
    f135.y = f133.y;
    vec4 f136 = f135;
    f136.z = f133.z;
    vec4 f137 = f136;
    f137.w = f130 * f129.w;
    vec3 f138 = sqrt(clamp(f137.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f139 = f137;
    f139.x = f138.x;
    vec4 f140 = f139;
    f140.y = f138.y;
    vec4 f141 = f140;
    f141.z = f138.z;
    _entryPointOutput = f141;
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
