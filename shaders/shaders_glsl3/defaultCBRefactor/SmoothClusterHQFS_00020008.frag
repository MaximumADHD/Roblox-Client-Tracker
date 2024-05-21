#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SCLayerData.h>
#include <LightShadowTransformGPU.h>
uniform vec4 CB0[57];
uniform vec4 CB5[189];
uniform vec4 CB4[24];
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
    if (!(CB5[f11 * 3 + 2].w == 0.0))
    {
        f14 = (mix(vec3(1.0), CB5[f11 * 3 + 2].xyz, vec3(f8.w)) * f8.xyz) * VARYING0.x;
    }
    else
    {
        vec2 f15 = f8.xz - vec2(0.5);
        float f16 = f15.x;
        float f17 = f15.y;
        float f18 = CB5[f11 * 3 + 2].x * f8.y;
        float f19 = (CB5[f11 * 3 + 2].y * f16) - (CB5[f11 * 3 + 2].z * f17);
        float f20 = (CB5[f11 * 3 + 2].z * f16) + (CB5[f11 * 3 + 2].y * f17);
        float f21 = f18 - f20;
        f14 = (vec3(f21, f18, f21) + (vec3(f19, f20, f19) * vec3(1.0, 1.0, -1.0))) * VARYING0.x;
    }
    vec3 f22;
    if (!(CB5[f12 * 3 + 2].w == 0.0))
    {
        f22 = f14 + ((mix(vec3(1.0), CB5[f12 * 3 + 2].xyz, vec3(f9.w)) * f9.xyz) * VARYING0.y);
    }
    else
    {
        vec2 f23 = f9.xz - vec2(0.5);
        float f24 = f23.x;
        float f25 = f23.y;
        float f26 = CB5[f12 * 3 + 2].x * f9.y;
        float f27 = (CB5[f12 * 3 + 2].y * f24) - (CB5[f12 * 3 + 2].z * f25);
        float f28 = (CB5[f12 * 3 + 2].z * f24) + (CB5[f12 * 3 + 2].y * f25);
        float f29 = f26 - f28;
        f22 = f14 + ((vec3(f29, f26, f29) + (vec3(f27, f28, f27) * vec3(1.0, 1.0, -1.0))) * VARYING0.y);
    }
    vec3 f30;
    if (!(CB5[f13 * 3 + 2].w == 0.0))
    {
        f30 = f22 + ((mix(vec3(1.0), CB5[f13 * 3 + 2].xyz, vec3(f10.w)) * f10.xyz) * VARYING0.z);
    }
    else
    {
        vec2 f31 = f10.xz - vec2(0.5);
        float f32 = f31.x;
        float f33 = f31.y;
        float f34 = CB5[f13 * 3 + 2].x * f10.y;
        float f35 = (CB5[f13 * 3 + 2].y * f32) - (CB5[f13 * 3 + 2].z * f33);
        float f36 = (CB5[f13 * 3 + 2].z * f32) + (CB5[f13 * 3 + 2].y * f33);
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
    vec3 f48 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f49 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f50 = VARYING4.yzx - (VARYING4.yzx * f49);
    vec4 f51 = texture(LightMapTexture, f50);
    vec4 f52 = texture(LightGridSkylightTexture, f50);
    vec4 f53 = vec4(clamp(f49, 0.0, 1.0));
    vec4 f54 = mix(f51, vec4(0.0), f53);
    vec4 f55 = mix(f52, vec4(1.0), f53);
    float f56 = f55.x;
    float f57 = f55.y;
    vec3 f58 = f48 - CB0[46].xyz;
    vec3 f59 = f48 - CB0[47].xyz;
    vec3 f60 = f48 - CB0[48].xyz;
    vec4 f61 = vec4(f48, 1.0) * mat4(CB4[((dot(f58, f58) < CB0[46].w) ? 0 : ((dot(f59, f59) < CB0[47].w) ? 1 : ((dot(f60, f60) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB4[((dot(f58, f58) < CB0[46].w) ? 0 : ((dot(f59, f59) < CB0[47].w) ? 1 : ((dot(f60, f60) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB4[((dot(f58, f58) < CB0[46].w) ? 0 : ((dot(f59, f59) < CB0[47].w) ? 1 : ((dot(f60, f60) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB4[((dot(f58, f58) < CB0[46].w) ? 0 : ((dot(f59, f59) < CB0[47].w) ? 1 : ((dot(f60, f60) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f62 = textureLod(ShadowAtlasTexture, f61.xy, 0.0);
    vec2 f63 = vec2(0.0);
    f63.x = CB0[51].z;
    vec2 f64 = f63;
    f64.y = CB0[51].w;
    float f65 = (2.0 * f61.z) - 1.0;
    float f66 = exp(CB0[51].z * f65);
    float f67 = -exp((-CB0[51].w) * f65);
    vec2 f68 = (f64 * CB0[52].y) * vec2(f66, f67);
    vec2 f69 = f68 * f68;
    float f70 = f62.x;
    float f71 = max(f62.y - (f70 * f70), f69.x);
    float f72 = f66 - f70;
    float f73 = f62.z;
    float f74 = max(f62.w - (f73 * f73), f69.y);
    float f75 = f67 - f73;
    vec3 f76 = reflect(-f43, f7);
    float f77 = f44 * 5.0;
    vec3 f78 = vec4(f76, f77).xyz;
    vec3 f79 = textureLod(PrefilteredEnvIndoorTexture, f78, f77).xyz;
    vec3 f80;
    if (CB0[32].w == 0.0)
    {
        f80 = f79;
    }
    else
    {
        f80 = mix(f79, textureLod(PrefilteredEnvBlendTargetTexture, f78, f77).xyz, vec3(CB0[32].w));
    }
    vec4 f81 = texture(PrecomputedBRDFTexture, vec2(f44, max(9.9999997473787516355514526367188e-05, dot(f7, f43))));
    float f82 = f81.x;
    float f83 = f81.y;
    vec3 f84 = ((f46 * f82) + vec3(f83)) / vec3(f82 + f83);
    float f85 = 1.0 - f45;
    float f86 = f47 * f85;
    vec3 f87 = vec3(f85);
    vec3 f88 = f7 * f7;
    bvec3 f89 = lessThan(f7, vec3(0.0));
    vec3 f90 = vec3(f89.x ? f88.x : vec3(0.0).x, f89.y ? f88.y : vec3(0.0).y, f89.z ? f88.z : vec3(0.0).z);
    vec3 f91 = f88 - f90;
    float f92 = f91.x;
    float f93 = f91.y;
    float f94 = f91.z;
    float f95 = f90.x;
    float f96 = f90.y;
    float f97 = f90.z;
    vec3 f98 = (mix(f80, textureLod(PrefilteredEnvTexture, f78, f77).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f76.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f56)) * f84) * f47;
    vec3 f99 = (vec3((f6.z * 2.0) * f40) + (((f87 - (f84 * f86)) * (((((((CB0[40].xyz * f92) + (CB0[42].xyz * f93)) + (CB0[44].xyz * f94)) + (CB0[41].xyz * f95)) + (CB0[43].xyz * f96)) + (CB0[45].xyz * f97)) + (((((((CB0[34].xyz * f92) + (CB0[36].xyz * f93)) + (CB0[38].xyz * f94)) + (CB0[35].xyz * f95)) + (CB0[37].xyz * f96)) + (CB0[39].xyz * f97)) * f56))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f56 * (2.0 - CB0[14].w)))) * 1.0);
    float f100 = (f42 * CB0[14].w) * (((f42 * CB0[52].x) > 0.0) ? mix(min((f66 <= f70) ? 1.0 : clamp(((f71 / (f71 + (f72 * f72))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f67 <= f73) ? 1.0 : clamp(((f74 / (f74 + (f75 * f75))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f57, clamp((length(f48 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f57);
    vec3 f101;
    vec3 f102;
    if (f100 > 0.0)
    {
        vec3 f103 = normalize(f43 + f41);
        float f104 = clamp(f100, 0.0, 1.0);
        float f105 = f44 * f44;
        float f106 = max(0.001000000047497451305389404296875, dot(f7, f103));
        float f107 = dot(f41, f103);
        float f108 = 1.0 - f107;
        float f109 = f108 * f108;
        float f110 = (f109 * f109) * f108;
        vec3 f111 = vec3(f110) + (f46 * (1.0 - f110));
        float f112 = f105 * f105;
        float f113 = (((f106 * f112) - f106) * f106) + 1.0;
        f102 = f99 + (((f87 - (f111 * f86)) * CB0[15].xyz) * f104);
        f101 = f98 + (((f111 * (((f112 + (f112 * f112)) / (((f113 * f113) * ((f107 * 3.0) + 0.5)) * ((f106 * 0.75) + 0.25))) * f104)) * CB0[15].xyz) * ((CB0[14].w * CB0[14].w) * (f40 * VARYING0.w)));
    }
    else
    {
        f102 = f99;
        f101 = f98;
    }
    vec3 f114 = ((f102 + (f54.xyz * (f54.w * 120.0))) * f38) + f101;
    vec4 f115 = vec4(0.0);
    f115.x = f114.x;
    vec4 f116 = f115;
    f116.y = f114.y;
    vec4 f117 = f116;
    f117.z = f114.z;
    vec4 f118 = f117;
    f118.w = 1.0;
    float f119 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f120 = textureLod(PrefilteredEnvTexture, vec4(-f39, 0.0).xyz, max(CB0[18].y, f119) * 5.0).xyz;
    bvec3 f121 = bvec3(!(CB0[18].w == 0.0));
    vec3 f122 = mix(vec3(f121.x ? CB0[19].xyz.x : f120.x, f121.y ? CB0[19].xyz.y : f120.y, f121.z ? CB0[19].xyz.z : f120.z), f118.xyz, vec3(f119));
    vec4 f123 = f118;
    f123.x = f122.x;
    vec4 f124 = f123;
    f124.y = f122.y;
    vec4 f125 = f124;
    f125.z = f122.z;
    vec3 f126 = sqrt(clamp(f125.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f127 = f125;
    f127.x = f126.x;
    vec4 f128 = f127;
    f128.y = f126.y;
    vec4 f129 = f128;
    f129.z = f126.z;
    _entryPointOutput = f129;
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
