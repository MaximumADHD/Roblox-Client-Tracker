#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
uniform vec4 CB0[53];
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
    vec4 f4 = texture(SpecularMapTexture, VARYING3.xyz);
    vec4 f5 = ((f1 * VARYING0.x) + (f3 * VARYING0.y)) + (f4 * VARYING0.z);
    vec4 f6 = ((texture(AlbedoMapTexture, f0).yxzw * VARYING0.x) + (texture(AlbedoMapTexture, f2).yxzw * VARYING0.y)) + (texture(AlbedoMapTexture, VARYING3.xyz).yxzw * VARYING0.z);
    vec2 f7 = f6.yz - vec2(0.5);
    float f8 = f7.x;
    float f9 = f7.y;
    float f10 = VARYING8.x * f6.x;
    float f11 = (VARYING8.y * f8) - (VARYING8.z * f9);
    float f12 = (VARYING8.z * f8) + (VARYING8.y * f9);
    float f13 = f10 - f12;
    float f14 = f6.w;
    vec3 f15 = vec4(vec3(f13, f10, f13) + (vec3(f11, f12, f11) * vec3(1.0, 1.0, -1.0)), f14).xyz;
    vec3 f16 = mix(f15, f15 * VARYING8.xyz, vec3(VARYING8.w * f14));
    vec4 f17 = vec4(0.0);
    f17.x = f16.x;
    vec4 f18 = f17;
    f18.y = f16.y;
    vec4 f19 = f18;
    f19.z = f16.z;
    vec3 f20 = f19.xyz * f19.xyz;
    vec3 f21 = CB0[7].xyz - VARYING5.xyz;
    float f22 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec3 f23 = normalize(VARYING6);
    vec3 f24 = -CB0[11].xyz;
    float f25 = dot(f23, f24);
    vec3 f26 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f27 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f28 = VARYING4.yzx - (VARYING4.yzx * f27);
    vec4 f29 = texture(LightMapTexture, f28);
    vec4 f30 = texture(LightGridSkylightTexture, f28);
    vec4 f31 = vec4(clamp(f27, 0.0, 1.0));
    vec4 f32 = mix(f29, vec4(0.0), f31);
    vec4 f33 = mix(f30, vec4(1.0), f31);
    float f34 = f33.x;
    float f35 = f33.y;
    vec3 f36 = f26 - CB0[41].xyz;
    vec3 f37 = f26 - CB0[42].xyz;
    vec3 f38 = f26 - CB0[43].xyz;
    vec4 f39 = vec4(f26, 1.0) * mat4(CB8[((dot(f36, f36) < CB0[41].w) ? 0 : ((dot(f37, f37) < CB0[42].w) ? 1 : ((dot(f38, f38) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f36, f36) < CB0[41].w) ? 0 : ((dot(f37, f37) < CB0[42].w) ? 1 : ((dot(f38, f38) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f36, f36) < CB0[41].w) ? 0 : ((dot(f37, f37) < CB0[42].w) ? 1 : ((dot(f38, f38) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f36, f36) < CB0[41].w) ? 0 : ((dot(f37, f37) < CB0[42].w) ? 1 : ((dot(f38, f38) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f40 = textureLod(ShadowAtlasTexture, f39.xy, 0.0);
    vec2 f41 = vec2(0.0);
    f41.x = CB0[46].z;
    vec2 f42 = f41;
    f42.y = CB0[46].w;
    float f43 = (2.0 * f39.z) - 1.0;
    float f44 = exp(CB0[46].z * f43);
    float f45 = -exp((-CB0[46].w) * f43);
    vec2 f46 = (f42 * CB0[47].y) * vec2(f44, f45);
    vec2 f47 = f46 * f46;
    float f48 = f40.x;
    float f49 = max(f40.y - (f48 * f48), f47.x);
    float f50 = f44 - f48;
    float f51 = f40.z;
    float f52 = max(f40.w - (f51 * f51), f47.y);
    float f53 = f45 - f51;
    vec3 f54 = normalize(f21);
    float f55 = 0.08900000154972076416015625 + (f5.y * 0.9110000133514404296875);
    float f56 = f5.x;
    vec3 f57 = mix(vec3(0.039999999105930328369140625), f20, vec3(f56));
    float f58 = CB0[26].w * f22;
    vec3 f59 = reflect(-f54, f23);
    vec3 f60 = normalize(f24 + f54);
    float f61 = clamp((f25 * CB0[9].w) * (((f25 * CB0[47].x) > 0.0) ? mix(min((f44 <= f48) ? 1.0 : clamp(((f49 / (f49 + (f50 * f50))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f45 <= f51) ? 1.0 : clamp(((f52 / (f52 + (f53 * f53))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f35, clamp((length(f26 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f35), 0.0, 1.0);
    float f62 = f55 * f55;
    float f63 = max(0.001000000047497451305389404296875, dot(f23, f60));
    float f64 = dot(f24, f60);
    float f65 = 1.0 - f64;
    float f66 = f65 * f65;
    float f67 = (f66 * f66) * f65;
    vec3 f68 = vec3(f67) + (f57 * (1.0 - f67));
    float f69 = f62 * f62;
    float f70 = (((f63 * f69) - f63) * f63) + 1.0;
    float f71 = 1.0 - f56;
    float f72 = f58 * f71;
    vec3 f73 = vec3(f71);
    float f74 = f55 * 5.0;
    vec3 f75 = vec4(f59, f74).xyz;
    vec3 f76 = textureLod(PrefilteredEnvIndoorTexture, f75, f74).xyz;
    vec3 f77;
    if (CB0[27].w == 0.0)
    {
        f77 = f76;
    }
    else
    {
        f77 = mix(f76, textureLod(PrefilteredEnvBlendTargetTexture, f75, f74).xyz, vec3(CB0[27].w));
    }
    vec4 f78 = texture(PrecomputedBRDFTexture, vec2(f55, max(9.9999997473787516355514526367188e-05, dot(f23, f54))));
    float f79 = f78.x;
    float f80 = f78.y;
    vec3 f81 = ((f57 * f79) + vec3(f80)) / vec3(f79 + f80);
    vec3 f82 = f23 * f23;
    bvec3 f83 = lessThan(f23, vec3(0.0));
    vec3 f84 = vec3(f83.x ? f82.x : vec3(0.0).x, f83.y ? f82.y : vec3(0.0).y, f83.z ? f82.z : vec3(0.0).z);
    vec3 f85 = f82 - f84;
    float f86 = f85.x;
    float f87 = f85.y;
    float f88 = f85.z;
    float f89 = f84.x;
    float f90 = f84.y;
    float f91 = f84.z;
    vec3 f92 = ((((((((f73 - (f68 * f72)) * CB0[10].xyz) * f61) + ((f32.xyz * (f32.w * 120.0)) * 1.0)) + ((f73 - (f81 * f72)) * (((((((CB0[35].xyz * f86) + (CB0[37].xyz * f87)) + (CB0[39].xyz * f88)) + (CB0[36].xyz * f89)) + (CB0[38].xyz * f90)) + (CB0[40].xyz * f91)) + (((((((CB0[29].xyz * f86) + (CB0[31].xyz * f87)) + (CB0[33].xyz * f88)) + (CB0[30].xyz * f89)) + (CB0[32].xyz * f90)) + (CB0[34].xyz * f91)) * f34)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f34))) + vec3((f5.z * 2.0) * f22)) * f20) + ((((((f68 * (((f69 + (f69 * f69)) / (((f70 * f70) * ((f64 * 3.0) + 0.5)) * ((f63 * 0.75) + 0.25))) * f61)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * f22) * VARYING0.w) + ((mix(f77, textureLod(PrefilteredEnvTexture, f75, f74).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f59.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f34)) * f81) * f58));
    vec4 f93 = vec4(0.0);
    f93.x = f92.x;
    vec4 f94 = f93;
    f94.y = f92.y;
    vec4 f95 = f94;
    f95.z = f92.z;
    vec4 f96 = f95;
    f96.w = 1.0;
    float f97 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f98 = textureLod(PrefilteredEnvTexture, vec4(-f21, 0.0).xyz, max(CB0[13].y, f97) * 5.0).xyz;
    bvec3 f99 = bvec3(!(CB0[13].w == 0.0));
    vec3 f100 = mix(vec3(f99.x ? CB0[14].xyz.x : f98.x, f99.y ? CB0[14].xyz.y : f98.y, f99.z ? CB0[14].xyz.z : f98.z), f96.xyz, vec3(f97));
    vec4 f101 = f96;
    f101.x = f100.x;
    vec4 f102 = f101;
    f102.y = f100.y;
    vec4 f103 = f102;
    f103.z = f100.z;
    vec3 f104 = sqrt(clamp(f103.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
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
