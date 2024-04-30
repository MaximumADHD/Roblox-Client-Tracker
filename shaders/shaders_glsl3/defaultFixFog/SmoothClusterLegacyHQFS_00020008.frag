#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowTransformGPU.h>
uniform vec4 CB0[57];
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
in vec3 VARYING8;
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
    vec3 f37 = CB0[11].xyz - VARYING5.xyz;
    float f38 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec3 f39 = normalize(VARYING6);
    vec3 f40 = -CB0[16].xyz;
    float f41 = dot(f39, f40);
    vec3 f42 = normalize(f37);
    float f43 = 0.08900000154972076416015625 + (f5.y * 0.9110000133514404296875);
    float f44 = f5.x;
    vec3 f45 = mix(vec3(0.039999999105930328369140625), f36, vec3(f44));
    float f46 = CB0[31].w * f38;
    vec3 f47 = reflect(-f42, f39);
    vec3 f48 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f49 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f50 = VARYING4.yzx - (VARYING4.yzx * f49);
    vec4 f51 = texture(LightMapTexture, f50);
    vec4 f52 = texture(LightGridSkylightTexture, f50);
    vec4 f53 = vec4(clamp(f49, 0.0, 1.0));
    vec4 f54 = mix(f51, vec4(0.0), f53);
    vec4 f55 = mix(f52, vec4(1.0), f53);
    vec3 f56 = f54.xyz * (f54.w * 120.0);
    float f57 = f55.x;
    float f58 = f55.y;
    vec3 f59 = f48 - CB0[46].xyz;
    vec3 f60 = f48 - CB0[47].xyz;
    vec3 f61 = f48 - CB0[48].xyz;
    vec4 f62 = vec4(f48, 1.0) * mat4(CB8[((dot(f59, f59) < CB0[46].w) ? 0 : ((dot(f60, f60) < CB0[47].w) ? 1 : ((dot(f61, f61) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f59, f59) < CB0[46].w) ? 0 : ((dot(f60, f60) < CB0[47].w) ? 1 : ((dot(f61, f61) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f59, f59) < CB0[46].w) ? 0 : ((dot(f60, f60) < CB0[47].w) ? 1 : ((dot(f61, f61) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f59, f59) < CB0[46].w) ? 0 : ((dot(f60, f60) < CB0[47].w) ? 1 : ((dot(f61, f61) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f63 = textureLod(ShadowAtlasTexture, f62.xy, 0.0);
    vec2 f64 = vec2(0.0);
    f64.x = CB0[51].z;
    vec2 f65 = f64;
    f65.y = CB0[51].w;
    float f66 = (2.0 * f62.z) - 1.0;
    float f67 = exp(CB0[51].z * f66);
    float f68 = -exp((-CB0[51].w) * f66);
    vec2 f69 = (f65 * CB0[52].y) * vec2(f67, f68);
    vec2 f70 = f69 * f69;
    float f71 = f63.x;
    float f72 = max(f63.y - (f71 * f71), f70.x);
    float f73 = f67 - f71;
    float f74 = f63.z;
    float f75 = max(f63.w - (f74 * f74), f70.y);
    float f76 = f68 - f74;
    float f77 = (f41 * CB0[14].w) * (((f41 * CB0[52].x) > 0.0) ? mix(min((f67 <= f71) ? 1.0 : clamp(((f72 / (f72 + (f73 * f73))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f68 <= f74) ? 1.0 : clamp(((f75 / (f75 + (f76 * f76))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f58, clamp((length(f48 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f58);
    vec3 f78;
    vec3 f79;
    if (f77 > 0.0)
    {
        vec3 f80 = normalize(f42 + f40);
        float f81 = clamp(f77, 0.0, 1.0);
        float f82 = f43 * f43;
        float f83 = max(0.001000000047497451305389404296875, dot(f39, f80));
        float f84 = dot(f40, f80);
        float f85 = 1.0 - f84;
        float f86 = f85 * f85;
        float f87 = (f86 * f86) * f85;
        vec3 f88 = vec3(f87) + (f45 * (1.0 - f87));
        float f89 = f82 * f82;
        float f90 = (((f83 * f89) - f83) * f83) + 1.0;
        float f91 = 1.0 - f44;
        f79 = f56 + (((vec3(f91) - (f88 * (f46 * f91))) * CB0[15].xyz) * f81);
        f78 = ((f88 * (((f89 + (f89 * f89)) / (((f90 * f90) * ((f84 * 3.0) + 0.5)) * ((f83 * 0.75) + 0.25))) * f81)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f79 = f56;
        f78 = vec3(0.0);
    }
    float f92 = f43 * 5.0;
    vec3 f93 = vec4(f47, f92).xyz;
    vec3 f94 = textureLod(PrefilteredEnvIndoorTexture, f93, f92).xyz;
    vec3 f95;
    if (CB0[32].w == 0.0)
    {
        f95 = f94;
    }
    else
    {
        f95 = mix(f94, textureLod(PrefilteredEnvBlendTargetTexture, f93, f92).xyz, vec3(CB0[32].w));
    }
    vec4 f96 = texture(PrecomputedBRDFTexture, vec2(f43, max(9.9999997473787516355514526367188e-05, dot(f39, f42))));
    float f97 = f96.x;
    float f98 = f96.y;
    vec3 f99 = ((f45 * f97) + vec3(f98)) / vec3(f97 + f98);
    float f100 = 1.0 - f44;
    vec3 f101 = f39 * f39;
    bvec3 f102 = lessThan(f39, vec3(0.0));
    vec3 f103 = vec3(f102.x ? f101.x : vec3(0.0).x, f102.y ? f101.y : vec3(0.0).y, f102.z ? f101.z : vec3(0.0).z);
    vec3 f104 = f101 - f103;
    float f105 = f104.x;
    float f106 = f104.y;
    float f107 = f104.z;
    float f108 = f103.x;
    float f109 = f103.y;
    float f110 = f103.z;
    vec3 f111 = ((((f79 + (((vec3(f100) - (f99 * (f46 * f100))) * ((((((((CB0[40].xyz * f105) + (CB0[42].xyz * f106)) + (CB0[44].xyz * f107)) + (CB0[41].xyz * f108)) + (CB0[43].xyz * f109)) + (CB0[45].xyz * f110)) * CB0[30].w) + ((((((((CB0[34].xyz * f105) + (CB0[36].xyz * f106)) + (CB0[38].xyz * f107)) + (CB0[35].xyz * f108)) + (CB0[37].xyz * f109)) + (CB0[39].xyz * f110)) * CB0[30].w) * f57))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f57 * (2.0 - CB0[14].w)))) * 1.0)) + vec3((f5.z * 2.0) * f38)) * f36) + ((f78 * (f38 * VARYING0.w)) + ((mix(f95, textureLod(PrefilteredEnvTexture, f93, f92).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f47.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f57)) * f99) * f46));
    vec4 f112 = vec4(0.0);
    f112.x = f111.x;
    vec4 f113 = f112;
    f113.y = f111.y;
    vec4 f114 = f113;
    f114.z = f111.z;
    vec4 f115 = f114;
    f115.w = 1.0;
    float f116 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f117 = textureLod(PrefilteredEnvTexture, vec4(-f37, 0.0).xyz, max(CB0[18].y, f116) * 5.0).xyz;
    bvec3 f118 = bvec3(!(CB0[18].w == 0.0));
    vec3 f119 = mix(vec3(f118.x ? CB0[19].xyz.x : f117.x, f118.y ? CB0[19].xyz.y : f117.y, f118.z ? CB0[19].xyz.z : f117.z), f115.xyz, vec3(f116));
    vec4 f120 = f115;
    f120.x = f119.x;
    vec4 f121 = f120;
    f121.y = f119.y;
    vec4 f122 = f121;
    f122.z = f119.z;
    vec3 f123 = sqrt(clamp(f122.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f124 = f122;
    f124.x = f123.x;
    vec4 f125 = f124;
    f125.y = f123.y;
    vec4 f126 = f125;
    f126.z = f123.z;
    _entryPointOutput = f126;
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
