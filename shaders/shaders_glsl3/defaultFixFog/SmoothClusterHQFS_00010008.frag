#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowTransformGPU.h>
uniform vec4 CB0[57];
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
in vec4 VARYING8;
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
    vec4 f8 = ((texture(AlbedoMapTexture, f0).yxzw * VARYING0.x) + (texture(AlbedoMapTexture, f2).yxzw * VARYING0.y)) + (texture(AlbedoMapTexture, f4).yxzw * VARYING0.z);
    vec2 f9 = f8.yz - vec2(0.5);
    float f10 = f9.x;
    float f11 = f9.y;
    float f12 = VARYING8.x * f8.x;
    float f13 = (VARYING8.y * f10) - (VARYING8.z * f11);
    float f14 = (VARYING8.z * f10) + (VARYING8.y * f11);
    float f15 = f12 - f14;
    float f16 = f8.w;
    vec3 f17 = vec4(vec3(f15, f12, f15) + (vec3(f13, f14, f13) * vec3(1.0, 1.0, -1.0)), f16).xyz;
    vec3 f18 = mix(f17, f17 * VARYING8.xyz, vec3(VARYING8.w * f16));
    vec4 f19 = vec4(0.0);
    f19.x = f18.x;
    vec4 f20 = f19;
    f20.y = f18.y;
    vec4 f21 = f20;
    f21.z = f18.z;
    vec3 f22 = CB0[11].xyz - VARYING5.xyz;
    float f23 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec3 f24 = -CB0[16].xyz;
    float f25 = dot(f7, f24);
    vec3 f26 = normalize(f22);
    float f27 = 0.08900000154972076416015625 + (f6.y * 0.9110000133514404296875);
    float f28 = CB0[31].w * f23;
    vec3 f29 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f30 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f31 = VARYING4.yzx - (VARYING4.yzx * f30);
    vec4 f32 = texture(LightMapTexture, f31);
    vec4 f33 = texture(LightGridSkylightTexture, f31);
    vec4 f34 = vec4(clamp(f30, 0.0, 1.0));
    vec4 f35 = mix(f32, vec4(0.0), f34);
    vec4 f36 = mix(f33, vec4(1.0), f34);
    float f37 = f36.x;
    float f38 = f36.y;
    vec3 f39 = f29 - CB0[46].xyz;
    vec3 f40 = f29 - CB0[47].xyz;
    vec3 f41 = f29 - CB0[48].xyz;
    vec4 f42 = vec4(f29, 1.0) * mat4(CB8[((dot(f39, f39) < CB0[46].w) ? 0 : ((dot(f40, f40) < CB0[47].w) ? 1 : ((dot(f41, f41) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f39, f39) < CB0[46].w) ? 0 : ((dot(f40, f40) < CB0[47].w) ? 1 : ((dot(f41, f41) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f39, f39) < CB0[46].w) ? 0 : ((dot(f40, f40) < CB0[47].w) ? 1 : ((dot(f41, f41) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f39, f39) < CB0[46].w) ? 0 : ((dot(f40, f40) < CB0[47].w) ? 1 : ((dot(f41, f41) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f43 = textureLod(ShadowAtlasTexture, f42.xy, 0.0);
    vec2 f44 = vec2(0.0);
    f44.x = CB0[51].z;
    vec2 f45 = f44;
    f45.y = CB0[51].w;
    float f46 = (2.0 * f42.z) - 1.0;
    float f47 = exp(CB0[51].z * f46);
    float f48 = -exp((-CB0[51].w) * f46);
    vec2 f49 = (f45 * CB0[52].y) * vec2(f47, f48);
    vec2 f50 = f49 * f49;
    float f51 = f43.x;
    float f52 = max(f43.y - (f51 * f51), f50.x);
    float f53 = f47 - f51;
    float f54 = f43.z;
    float f55 = max(f43.w - (f54 * f54), f50.y);
    float f56 = f48 - f54;
    vec3 f57 = reflect(-f26, f7);
    float f58 = f27 * 5.0;
    vec3 f59 = vec4(f57, f58).xyz;
    vec3 f60 = textureLod(PrefilteredEnvIndoorTexture, f59, f58).xyz;
    vec3 f61;
    if (CB0[32].w == 0.0)
    {
        f61 = f60;
    }
    else
    {
        f61 = mix(f60, textureLod(PrefilteredEnvBlendTargetTexture, f59, f58).xyz, vec3(CB0[32].w));
    }
    vec4 f62 = texture(PrecomputedBRDFTexture, vec2(f27, max(9.9999997473787516355514526367188e-05, dot(f7, f26))));
    float f63 = f62.x;
    float f64 = f62.y;
    vec3 f65 = ((vec3(0.039999999105930328369140625) * f63) + vec3(f64)) / vec3(f63 + f64);
    vec3 f66 = f7 * f7;
    bvec3 f67 = lessThan(f7, vec3(0.0));
    vec3 f68 = vec3(f67.x ? f66.x : vec3(0.0).x, f67.y ? f66.y : vec3(0.0).y, f67.z ? f66.z : vec3(0.0).z);
    vec3 f69 = f66 - f68;
    float f70 = f69.x;
    float f71 = f69.y;
    float f72 = f69.z;
    float f73 = f68.x;
    float f74 = f68.y;
    float f75 = f68.z;
    vec3 f76 = (mix(f61, textureLod(PrefilteredEnvTexture, f59, f58).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f57.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f37)) * f65) * f28;
    vec3 f77 = (vec3((f6.z * 2.0) * f23) + (((vec3(1.0) - (f65 * f28)) * ((((((((CB0[40].xyz * f70) + (CB0[42].xyz * f71)) + (CB0[44].xyz * f72)) + (CB0[41].xyz * f73)) + (CB0[43].xyz * f74)) + (CB0[45].xyz * f75)) * CB0[30].w) + ((((((((CB0[34].xyz * f70) + (CB0[36].xyz * f71)) + (CB0[38].xyz * f72)) + (CB0[35].xyz * f73)) + (CB0[37].xyz * f74)) + (CB0[39].xyz * f75)) * CB0[30].w) * f37))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f37 * (2.0 - CB0[14].w)))) * 1.0);
    float f78 = (f25 * CB0[14].w) * (((f25 * CB0[52].x) > 0.0) ? mix(min((f47 <= f51) ? 1.0 : clamp(((f52 / (f52 + (f53 * f53))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f48 <= f54) ? 1.0 : clamp(((f55 / (f55 + (f56 * f56))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f38, clamp((length(f29 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f38);
    vec3 f79;
    vec3 f80;
    if (f78 > 0.0)
    {
        vec3 f81 = normalize(f26 + f24);
        float f82 = clamp(f78, 0.0, 1.0);
        float f83 = f27 * f27;
        float f84 = max(0.001000000047497451305389404296875, dot(f7, f81));
        float f85 = dot(f24, f81);
        float f86 = 1.0 - f85;
        float f87 = f86 * f86;
        float f88 = (f87 * f87) * f86;
        vec3 f89 = vec3(f88) + (vec3(0.039999999105930328369140625) * (1.0 - f88));
        float f90 = f83 * f83;
        float f91 = (((f84 * f90) - f84) * f84) + 1.0;
        f80 = f77 + (((vec3(1.0) - (f89 * f28)) * CB0[15].xyz) * f82);
        f79 = f76 + (((f89 * (((f90 + (f90 * f90)) / (((f91 * f91) * ((f85 * 3.0) + 0.5)) * ((f84 * 0.75) + 0.25))) * f82)) * CB0[15].xyz) * ((CB0[14].w * CB0[14].w) * (f23 * VARYING0.w)));
    }
    else
    {
        f80 = f77;
        f79 = f76;
    }
    vec3 f92 = ((f80 + (f35.xyz * (f35.w * 120.0))) * (f21.xyz * f21.xyz)) + f79;
    vec4 f93 = vec4(0.0);
    f93.x = f92.x;
    vec4 f94 = f93;
    f94.y = f92.y;
    vec4 f95 = f94;
    f95.z = f92.z;
    vec4 f96 = f95;
    f96.w = 1.0;
    float f97 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f98 = textureLod(PrefilteredEnvTexture, vec4(-f22, 0.0).xyz, max(CB0[18].y, f97) * 5.0).xyz;
    bvec3 f99 = bvec3(!(CB0[18].w == 0.0));
    vec3 f100 = mix(vec3(f99.x ? CB0[19].xyz.x : f98.x, f99.y ? CB0[19].xyz.y : f98.y, f99.z ? CB0[19].xyz.z : f98.z), f96.xyz, vec3(f97));
    vec4 f101 = f96;
    f101.x = f100.x;
    vec4 f102 = f101;
    f102.y = f100.y;
    vec4 f103 = f102;
    f103.z = f100.z;
    vec3 f104 = sqrt(clamp(f103.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f105 = f103;
    f105.x = f104.x;
    vec4 f106 = f105;
    f106.y = f104.y;
    vec4 f107 = f106;
    f107.z = f104.z;
    _entryPointOutput = f107;
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
