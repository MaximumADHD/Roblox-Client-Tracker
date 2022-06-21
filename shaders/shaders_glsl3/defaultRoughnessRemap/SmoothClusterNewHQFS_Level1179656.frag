#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
uniform vec4 CB0[53];
uniform vec4 CB8[24];
uniform vec4 CB4[63];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2DArray SpecularMapTexture;
uniform sampler2DArray AlbedoMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec3 VARYING4;
in vec4 VARYING5;
in vec3 VARYING6;
in vec4 VARYING8;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = vec3(VARYING1.xy, VARYING2.x);
    vec4 f1 = texture(SpecularMapTexture, f0);
    vec3 f2 = vec3(VARYING1.zw, VARYING2.z);
    vec4 f3 = texture(SpecularMapTexture, f2);
    vec4 f4 = texture(SpecularMapTexture, VARYING3.xyz);
    vec4 f5 = ((f1 * VARYING0.x) + (f3 * VARYING0.y)) + (f4 * VARYING0.z);
    vec4 f6 = texture(AlbedoMapTexture, f0);
    vec4 f7 = texture(AlbedoMapTexture, f2);
    vec4 f8 = texture(AlbedoMapTexture, VARYING3.xyz);
    int f9 = int(VARYING8.x + 0.5);
    int f10 = int(VARYING8.y + 0.5);
    int f11 = int(VARYING8.z + 0.5);
    vec3 f12;
    if (!(CB4[f9 * 1 + 0].w == 0.0))
    {
        f12 = (mix(vec3(1.0), CB4[f9 * 1 + 0].xyz, vec3(f6.w)) * f6.xyz) * VARYING0.x;
    }
    else
    {
        vec2 f13 = f6.xz - vec2(0.5);
        float f14 = f13.x;
        float f15 = f13.y;
        float f16 = CB4[f9 * 1 + 0].x * f6.y;
        float f17 = (CB4[f9 * 1 + 0].y * f14) - (CB4[f9 * 1 + 0].z * f15);
        float f18 = (CB4[f9 * 1 + 0].z * f14) + (CB4[f9 * 1 + 0].y * f15);
        float f19 = f16 - f18;
        f12 = (vec3(f19, f16, f19) + (vec3(f17, f18, f17) * vec3(1.0, 1.0, -1.0))) * VARYING0.x;
    }
    vec3 f20;
    if (!(CB4[f10 * 1 + 0].w == 0.0))
    {
        f20 = f12 + ((mix(vec3(1.0), CB4[f10 * 1 + 0].xyz, vec3(f7.w)) * f7.xyz) * VARYING0.y);
    }
    else
    {
        vec2 f21 = f7.xz - vec2(0.5);
        float f22 = f21.x;
        float f23 = f21.y;
        float f24 = CB4[f10 * 1 + 0].x * f7.y;
        float f25 = (CB4[f10 * 1 + 0].y * f22) - (CB4[f10 * 1 + 0].z * f23);
        float f26 = (CB4[f10 * 1 + 0].z * f22) + (CB4[f10 * 1 + 0].y * f23);
        float f27 = f24 - f26;
        f20 = f12 + ((vec3(f27, f24, f27) + (vec3(f25, f26, f25) * vec3(1.0, 1.0, -1.0))) * VARYING0.y);
    }
    vec3 f28;
    if (!(CB4[f11 * 1 + 0].w == 0.0))
    {
        f28 = f20 + ((mix(vec3(1.0), CB4[f11 * 1 + 0].xyz, vec3(f8.w)) * f8.xyz) * VARYING0.z);
    }
    else
    {
        vec2 f29 = f8.xz - vec2(0.5);
        float f30 = f29.x;
        float f31 = f29.y;
        float f32 = CB4[f11 * 1 + 0].x * f8.y;
        float f33 = (CB4[f11 * 1 + 0].y * f30) - (CB4[f11 * 1 + 0].z * f31);
        float f34 = (CB4[f11 * 1 + 0].z * f30) + (CB4[f11 * 1 + 0].y * f31);
        float f35 = f32 - f34;
        f28 = f20 + ((vec3(f35, f32, f35) + (vec3(f33, f34, f33) * vec3(1.0, 1.0, -1.0))) * VARYING0.z);
    }
    vec3 f36 = f28 * f28;
    vec3 f37 = CB0[7].xyz - VARYING5.xyz;
    float f38 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec3 f39 = normalize(VARYING6);
    vec3 f40 = -CB0[11].xyz;
    float f41 = dot(f39, f40);
    vec3 f42 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f43 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f44 = VARYING4.yzx - (VARYING4.yzx * f43);
    vec4 f45 = texture(LightMapTexture, f44);
    vec4 f46 = texture(LightGridSkylightTexture, f44);
    vec4 f47 = vec4(clamp(f43, 0.0, 1.0));
    vec4 f48 = mix(f45, vec4(0.0), f47);
    vec4 f49 = mix(f46, vec4(1.0), f47);
    float f50 = f49.x;
    float f51 = f49.y;
    vec3 f52 = f42 - CB0[41].xyz;
    vec3 f53 = f42 - CB0[42].xyz;
    vec3 f54 = f42 - CB0[43].xyz;
    vec4 f55 = vec4(f42, 1.0) * mat4(CB8[((dot(f52, f52) < CB0[41].w) ? 0 : ((dot(f53, f53) < CB0[42].w) ? 1 : ((dot(f54, f54) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f52, f52) < CB0[41].w) ? 0 : ((dot(f53, f53) < CB0[42].w) ? 1 : ((dot(f54, f54) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f52, f52) < CB0[41].w) ? 0 : ((dot(f53, f53) < CB0[42].w) ? 1 : ((dot(f54, f54) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f52, f52) < CB0[41].w) ? 0 : ((dot(f53, f53) < CB0[42].w) ? 1 : ((dot(f54, f54) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f56 = textureLod(ShadowAtlasTexture, f55.xy, 0.0);
    vec2 f57 = vec2(0.0);
    f57.x = CB0[46].z;
    vec2 f58 = f57;
    f58.y = CB0[46].w;
    float f59 = (2.0 * f55.z) - 1.0;
    float f60 = exp(CB0[46].z * f59);
    float f61 = -exp((-CB0[46].w) * f59);
    vec2 f62 = (f58 * CB0[47].y) * vec2(f60, f61);
    vec2 f63 = f62 * f62;
    float f64 = f56.x;
    float f65 = max(f56.y - (f64 * f64), f63.x);
    float f66 = f60 - f64;
    float f67 = f56.z;
    float f68 = max(f56.w - (f67 * f67), f63.y);
    float f69 = f61 - f67;
    vec3 f70 = normalize(f37);
    float f71 = 0.08900000154972076416015625 + (f5.y * 0.9110000133514404296875);
    float f72 = f5.x;
    vec3 f73 = mix(vec3(0.039999999105930328369140625), f36, vec3(f72));
    float f74 = CB0[26].w * f38;
    vec3 f75 = reflect(-f70, f39);
    vec3 f76 = normalize(f70 - CB0[11].xyz);
    float f77 = clamp((f41 * CB0[9].w) * (((f41 * CB0[47].x) > 0.0) ? mix(min((f60 <= f64) ? 1.0 : clamp(((f65 / (f65 + (f66 * f66))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f61 <= f67) ? 1.0 : clamp(((f68 / (f68 + (f69 * f69))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f51, clamp((length(f42 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f51), 0.0, 1.0);
    float f78 = f71 * f71;
    float f79 = max(0.001000000047497451305389404296875, dot(f39, f76));
    float f80 = dot(f40, f76);
    float f81 = 1.0 - f80;
    float f82 = f81 * f81;
    float f83 = (f82 * f82) * f81;
    vec3 f84 = vec3(f83) + (f73 * (1.0 - f83));
    float f85 = f78 * f78;
    float f86 = (((f79 * f85) - f79) * f79) + 1.0;
    float f87 = 1.0 - f72;
    float f88 = f74 * f87;
    vec3 f89 = vec3(f87);
    float f90 = f71 * 5.0;
    vec3 f91 = vec4(f75, f90).xyz;
    vec3 f92 = textureLod(PrefilteredEnvIndoorTexture, f91, f90).xyz;
    vec3 f93;
    if (CB0[27].w == 0.0)
    {
        f93 = f92;
    }
    else
    {
        f93 = mix(f92, textureLod(PrefilteredEnvBlendTargetTexture, f91, f90).xyz, vec3(CB0[27].w));
    }
    vec4 f94 = texture(PrecomputedBRDFTexture, vec2(f71, max(9.9999997473787516355514526367188e-05, dot(f39, f70))));
    float f95 = f94.x;
    float f96 = f94.y;
    vec3 f97 = ((f73 * f95) + vec3(f96)) / vec3(f95 + f96);
    vec3 f98 = f39 * f39;
    bvec3 f99 = lessThan(f39, vec3(0.0));
    vec3 f100 = vec3(f99.x ? f98.x : vec3(0.0).x, f99.y ? f98.y : vec3(0.0).y, f99.z ? f98.z : vec3(0.0).z);
    vec3 f101 = f98 - f100;
    float f102 = f101.x;
    float f103 = f101.y;
    float f104 = f101.z;
    float f105 = f100.x;
    float f106 = f100.y;
    float f107 = f100.z;
    vec3 f108 = ((((((((f89 - (f84 * f88)) * CB0[10].xyz) * f77) + ((f48.xyz * (f48.w * 120.0)) * 1.0)) + ((f89 - (f97 * f88)) * (((((((CB0[35].xyz * f102) + (CB0[37].xyz * f103)) + (CB0[39].xyz * f104)) + (CB0[36].xyz * f105)) + (CB0[38].xyz * f106)) + (CB0[40].xyz * f107)) + (((((((CB0[29].xyz * f102) + (CB0[31].xyz * f103)) + (CB0[33].xyz * f104)) + (CB0[30].xyz * f105)) + (CB0[32].xyz * f106)) + (CB0[34].xyz * f107)) * f50)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f50))) + vec3((f5.z * 2.0) * f38)) * f36) + ((((((f84 * (((f85 + (f85 * f85)) / (((f86 * f86) * ((f80 * 3.0) + 0.5)) * ((f79 * 0.75) + 0.25))) * f77)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * f38) * VARYING0.w) + ((mix(f93, textureLod(PrefilteredEnvTexture, f91, f90).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f75.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f50)) * f97) * f74));
    vec4 f109 = vec4(0.0);
    f109.x = f108.x;
    vec4 f110 = f109;
    f110.y = f108.y;
    vec4 f111 = f110;
    f111.z = f108.z;
    vec4 f112 = f111;
    f112.w = 1.0;
    float f113 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f114 = textureLod(PrefilteredEnvTexture, vec4(-f37, 0.0).xyz, max(CB0[13].y, f113) * 5.0).xyz;
    bvec3 f115 = bvec3(!(CB0[13].w == 0.0));
    vec3 f116 = mix(vec3(f115.x ? CB0[14].xyz.x : f114.x, f115.y ? CB0[14].xyz.y : f114.y, f115.z ? CB0[14].xyz.z : f114.z), f112.xyz, vec3(f113));
    vec4 f117 = f112;
    f117.x = f116.x;
    vec4 f118 = f117;
    f118.y = f116.y;
    vec4 f119 = f118;
    f119.z = f116.z;
    vec3 f120 = sqrt(clamp(f119.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f121 = f119;
    f121.x = f120.x;
    vec4 f122 = f121;
    f122.y = f120.y;
    vec4 f123 = f122;
    f123.z = f120.z;
    _entryPointOutput = f123;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
