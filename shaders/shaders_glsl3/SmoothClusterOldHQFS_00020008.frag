#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowTransformGPU.h>
uniform vec4 CB0[58];
uniform vec4 CB4[63];
uniform vec4 CB8[24];
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
    vec3 f4 = vec3(VARYING3.xyz);
    vec4 f5 = texture(SpecularMapTexture, f4);
    vec4 f6 = ((f1 * VARYING0.x) + (f3 * VARYING0.y)) + (f5 * VARYING0.z);
    vec3 f7 = normalize(VARYING6);
    vec4 f8 = texture(AlbedoMapTexture, f0);
    vec4 f9 = texture(AlbedoMapTexture, f2);
    vec4 f10 = texture(AlbedoMapTexture, f4);
    int f11 = int(VARYING8.x + 0.5);
    int f12 = int(VARYING8.y + 0.5);
    int f13 = int(VARYING8.z + 0.5);
    vec3 f14;
    if (!(CB4[f11 * 1 + 0].w == 0.0))
    {
        f14 = (mix(vec3(1.0), CB4[f11 * 1 + 0].xyz, vec3(f8.w)) * f8.xyz) * VARYING0.x;
    }
    else
    {
        vec2 f15 = f8.xz - vec2(0.5);
        float f16 = f15.x;
        float f17 = f15.y;
        float f18 = CB4[f11 * 1 + 0].x * f8.y;
        float f19 = (CB4[f11 * 1 + 0].y * f16) - (CB4[f11 * 1 + 0].z * f17);
        float f20 = (CB4[f11 * 1 + 0].z * f16) + (CB4[f11 * 1 + 0].y * f17);
        float f21 = f18 - f20;
        f14 = (vec3(f21, f18, f21) + (vec3(f19, f20, f19) * vec3(1.0, 1.0, -1.0))) * VARYING0.x;
    }
    vec3 f22;
    if (!(CB4[f12 * 1 + 0].w == 0.0))
    {
        f22 = f14 + ((mix(vec3(1.0), CB4[f12 * 1 + 0].xyz, vec3(f9.w)) * f9.xyz) * VARYING0.y);
    }
    else
    {
        vec2 f23 = f9.xz - vec2(0.5);
        float f24 = f23.x;
        float f25 = f23.y;
        float f26 = CB4[f12 * 1 + 0].x * f9.y;
        float f27 = (CB4[f12 * 1 + 0].y * f24) - (CB4[f12 * 1 + 0].z * f25);
        float f28 = (CB4[f12 * 1 + 0].z * f24) + (CB4[f12 * 1 + 0].y * f25);
        float f29 = f26 - f28;
        f22 = f14 + ((vec3(f29, f26, f29) + (vec3(f27, f28, f27) * vec3(1.0, 1.0, -1.0))) * VARYING0.y);
    }
    vec3 f30;
    if (!(CB4[f13 * 1 + 0].w == 0.0))
    {
        f30 = f22 + ((mix(vec3(1.0), CB4[f13 * 1 + 0].xyz, vec3(f10.w)) * f10.xyz) * VARYING0.z);
    }
    else
    {
        vec2 f31 = f10.xz - vec2(0.5);
        float f32 = f31.x;
        float f33 = f31.y;
        float f34 = CB4[f13 * 1 + 0].x * f10.y;
        float f35 = (CB4[f13 * 1 + 0].y * f32) - (CB4[f13 * 1 + 0].z * f33);
        float f36 = (CB4[f13 * 1 + 0].z * f32) + (CB4[f13 * 1 + 0].y * f33);
        float f37 = f34 - f36;
        f30 = f22 + ((vec3(f37, f34, f37) + (vec3(f35, f36, f35) * vec3(1.0, 1.0, -1.0))) * VARYING0.z);
    }
    vec3 f38 = f30 * f30;
    vec3 f39 = CB0[11].xyz - VARYING5.xyz;
    float f40 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec3 f41 = -CB0[16].xyz;
    float f42 = dot(f7, f41);
    vec3 f43 = normalize(f39);
    float f44 = 0.08900000154972076416015625 + (f6.y * 0.9110000133514404296875);
    float f45 = f6.x;
    vec3 f46 = mix(vec3(0.039999999105930328369140625), f38, vec3(f45));
    float f47 = CB0[31].w * f40;
    vec3 f48 = reflect(-f43, f7);
    vec3 f49 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f50 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f51 = VARYING4.yzx - (VARYING4.yzx * f50);
    vec4 f52 = texture(LightMapTexture, f51);
    vec4 f53 = texture(LightGridSkylightTexture, f51);
    vec4 f54 = vec4(clamp(f50, 0.0, 1.0));
    vec4 f55 = mix(f52, vec4(0.0), f54);
    vec4 f56 = mix(f53, vec4(1.0), f54);
    vec3 f57 = f55.xyz * (f55.w * 120.0);
    float f58 = f56.x;
    float f59 = f56.y;
    vec3 f60 = f49 - CB0[46].xyz;
    vec3 f61 = f49 - CB0[47].xyz;
    vec3 f62 = f49 - CB0[48].xyz;
    vec4 f63 = vec4(f49, 1.0) * mat4(CB8[((dot(f60, f60) < CB0[46].w) ? 0 : ((dot(f61, f61) < CB0[47].w) ? 1 : ((dot(f62, f62) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f60, f60) < CB0[46].w) ? 0 : ((dot(f61, f61) < CB0[47].w) ? 1 : ((dot(f62, f62) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f60, f60) < CB0[46].w) ? 0 : ((dot(f61, f61) < CB0[47].w) ? 1 : ((dot(f62, f62) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f60, f60) < CB0[46].w) ? 0 : ((dot(f61, f61) < CB0[47].w) ? 1 : ((dot(f62, f62) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f64 = textureLod(ShadowAtlasTexture, f63.xy, 0.0);
    vec2 f65 = vec2(0.0);
    f65.x = CB0[52].z;
    vec2 f66 = f65;
    f66.y = CB0[52].w;
    float f67 = (2.0 * f63.z) - 1.0;
    float f68 = exp(CB0[52].z * f67);
    float f69 = -exp((-CB0[52].w) * f67);
    vec2 f70 = (f66 * CB0[53].y) * vec2(f68, f69);
    vec2 f71 = f70 * f70;
    float f72 = f64.x;
    float f73 = max(f64.y - (f72 * f72), f71.x);
    float f74 = f68 - f72;
    float f75 = f64.z;
    float f76 = max(f64.w - (f75 * f75), f71.y);
    float f77 = f69 - f75;
    float f78 = (f42 * CB0[14].w) * (((f42 * CB0[53].x) > 0.0) ? mix(min((f68 <= f72) ? 1.0 : clamp(((f73 / (f73 + (f74 * f74))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f69 <= f75) ? 1.0 : clamp(((f76 / (f76 + (f77 * f77))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f59, clamp((length(f49 - CB0[11].xyz) * CB0[52].y) - (CB0[52].x * CB0[52].y), 0.0, 1.0)) : f59);
    vec3 f79;
    vec3 f80;
    if (f78 > 0.0)
    {
        vec3 f81 = normalize(f43 + f41);
        float f82 = clamp(f78, 0.0, 1.0);
        float f83 = f44 * f44;
        float f84 = max(0.001000000047497451305389404296875, dot(f7, f81));
        float f85 = dot(f41, f81);
        float f86 = 1.0 - f85;
        float f87 = f86 * f86;
        float f88 = (f87 * f87) * f86;
        vec3 f89 = vec3(f88) + (f46 * (1.0 - f88));
        float f90 = f83 * f83;
        float f91 = (((f84 * f90) - f84) * f84) + 1.0;
        float f92 = 1.0 - f45;
        f80 = f57 + (((vec3(f92) - (f89 * (f47 * f92))) * CB0[15].xyz) * f82);
        f79 = ((f89 * (((f90 + (f90 * f90)) / (((f91 * f91) * ((f85 * 3.0) + 0.5)) * ((f84 * 0.75) + 0.25))) * f82)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f80 = f57;
        f79 = vec3(0.0);
    }
    float f93 = f44 * 5.0;
    vec3 f94 = vec4(f48, f93).xyz;
    vec3 f95 = textureLod(PrefilteredEnvIndoorTexture, f94, f93).xyz;
    vec3 f96;
    if (CB0[32].w == 0.0)
    {
        f96 = f95;
    }
    else
    {
        f96 = mix(f95, textureLod(PrefilteredEnvBlendTargetTexture, f94, f93).xyz, vec3(CB0[32].w));
    }
    vec4 f97 = texture(PrecomputedBRDFTexture, vec2(f44, max(9.9999997473787516355514526367188e-05, dot(f7, f43))));
    float f98 = f97.x;
    float f99 = f97.y;
    vec3 f100 = ((f46 * f98) + vec3(f99)) / vec3(f98 + f99);
    float f101 = 1.0 - f45;
    vec3 f102 = f7 * f7;
    bvec3 f103 = lessThan(f7, vec3(0.0));
    vec3 f104 = vec3(f103.x ? f102.x : vec3(0.0).x, f103.y ? f102.y : vec3(0.0).y, f103.z ? f102.z : vec3(0.0).z);
    vec3 f105 = f102 - f104;
    float f106 = f105.x;
    float f107 = f105.y;
    float f108 = f105.z;
    float f109 = f104.x;
    float f110 = f104.y;
    float f111 = f104.z;
    vec3 f112 = ((((f80 + (((vec3(f101) - (f100 * (f47 * f101))) * (((((((CB0[40].xyz * f106) + (CB0[42].xyz * f107)) + (CB0[44].xyz * f108)) + (CB0[41].xyz * f109)) + (CB0[43].xyz * f110)) + (CB0[45].xyz * f111)) + (((((((CB0[34].xyz * f106) + (CB0[36].xyz * f107)) + (CB0[38].xyz * f108)) + (CB0[35].xyz * f109)) + (CB0[37].xyz * f110)) + (CB0[39].xyz * f111)) * f58))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f58 * (2.0 - CB0[14].w)))) * 1.0)) + vec3((f6.z * 2.0) * f40)) * f38) + ((f79 * (f40 * VARYING0.w)) + ((mix(f96, textureLod(PrefilteredEnvTexture, f94, f93).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f48.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f58)) * f100) * f47));
    vec4 f113 = vec4(0.0);
    f113.x = f112.x;
    vec4 f114 = f113;
    f114.y = f112.y;
    vec4 f115 = f114;
    f115.z = f112.z;
    vec4 f116 = f115;
    f116.w = 1.0;
    float f117 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f118 = textureLod(PrefilteredEnvTexture, vec4(-f39, 0.0).xyz, max(CB0[18].y, f117) * 5.0).xyz;
    bvec3 f119 = bvec3(!(CB0[18].w == 0.0));
    vec3 f120 = mix(vec3(f119.x ? CB0[19].xyz.x : f118.x, f119.y ? CB0[19].xyz.y : f118.y, f119.z ? CB0[19].xyz.z : f118.z), f116.xyz, vec3(f117));
    vec4 f121 = f116;
    f121.x = f120.x;
    vec4 f122 = f121;
    f122.y = f120.y;
    vec4 f123 = f122;
    f123.z = f120.z;
    vec3 f124 = sqrt(clamp(f123.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f125 = f123;
    f125.x = f124.x;
    vec4 f126 = f125;
    f126.y = f124.y;
    vec4 f127 = f126;
    f127.z = f124.z;
    _entryPointOutput = f127;
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
