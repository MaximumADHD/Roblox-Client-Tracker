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
    vec3 f14 = vec4(vec3(f13, f10, f13) + (vec3(f11, f12, f11) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 f15 = mix(f14, f14 * VARYING8.xyz, vec3(VARYING8.w));
    vec4 f16 = vec4(0.0);
    f16.x = f15.x;
    vec4 f17 = f16;
    f17.y = f15.y;
    vec4 f18 = f17;
    f18.z = f15.z;
    vec3 f19 = CB0[7].xyz - VARYING5.xyz;
    float f20 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec3 f21 = normalize(VARYING6);
    vec3 f22 = -CB0[11].xyz;
    float f23 = dot(f21, f22);
    vec3 f24 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f25 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f26 = VARYING4.yzx - (VARYING4.yzx * f25);
    vec4 f27 = texture(LightMapTexture, f26);
    vec4 f28 = texture(LightGridSkylightTexture, f26);
    vec4 f29 = vec4(clamp(f25, 0.0, 1.0));
    vec4 f30 = mix(f27, vec4(0.0), f29);
    vec4 f31 = mix(f28, vec4(1.0), f29);
    float f32 = f31.x;
    float f33 = f31.y;
    vec3 f34 = f24 - CB0[41].xyz;
    vec3 f35 = f24 - CB0[42].xyz;
    vec3 f36 = f24 - CB0[43].xyz;
    vec4 f37 = vec4(f24, 1.0) * mat4(CB8[((dot(f34, f34) < CB0[41].w) ? 0 : ((dot(f35, f35) < CB0[42].w) ? 1 : ((dot(f36, f36) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f34, f34) < CB0[41].w) ? 0 : ((dot(f35, f35) < CB0[42].w) ? 1 : ((dot(f36, f36) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f34, f34) < CB0[41].w) ? 0 : ((dot(f35, f35) < CB0[42].w) ? 1 : ((dot(f36, f36) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f34, f34) < CB0[41].w) ? 0 : ((dot(f35, f35) < CB0[42].w) ? 1 : ((dot(f36, f36) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f38 = textureLod(ShadowAtlasTexture, f37.xy, 0.0);
    vec2 f39 = vec2(0.0);
    f39.x = CB0[46].z;
    vec2 f40 = f39;
    f40.y = CB0[46].w;
    float f41 = (2.0 * f37.z) - 1.0;
    float f42 = exp(CB0[46].z * f41);
    float f43 = -exp((-CB0[46].w) * f41);
    vec2 f44 = (f40 * CB0[47].y) * vec2(f42, f43);
    vec2 f45 = f44 * f44;
    float f46 = f38.x;
    float f47 = max(f38.y - (f46 * f46), f45.x);
    float f48 = f42 - f46;
    float f49 = f38.z;
    float f50 = max(f38.w - (f49 * f49), f45.y);
    float f51 = f43 - f49;
    vec3 f52 = normalize(f19);
    float f53 = f5.y;
    float f54 = CB0[26].w * f20;
    vec3 f55 = reflect(-f52, f21);
    vec3 f56 = normalize(f22 + f52);
    float f57 = clamp((f23 * CB0[9].w) * (((f23 * CB0[47].x) > 0.0) ? mix(min((f42 <= f46) ? 1.0 : clamp(((f47 / (f47 + (f48 * f48))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f43 <= f49) ? 1.0 : clamp(((f50 / (f50 + (f51 * f51))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f33, clamp((length(f24 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f33), 0.0, 1.0);
    float f58 = f53 * f53;
    float f59 = max(0.001000000047497451305389404296875, dot(f21, f56));
    float f60 = dot(f22, f56);
    float f61 = 1.0 - f60;
    float f62 = f61 * f61;
    float f63 = (f62 * f62) * f61;
    vec3 f64 = vec3(f63) + (vec3(0.039999999105930328369140625) * (1.0 - f63));
    float f65 = f58 * f58;
    float f66 = (((f59 * f65) - f59) * f59) + 1.0;
    float f67 = f53 * 5.0;
    vec3 f68 = vec4(f55, f67).xyz;
    vec3 f69 = textureLod(PrefilteredEnvIndoorTexture, f68, f67).xyz;
    vec3 f70;
    if (CB0[27].w == 0.0)
    {
        f70 = f69;
    }
    else
    {
        f70 = mix(f69, textureLod(PrefilteredEnvBlendTargetTexture, f68, f67).xyz, vec3(CB0[27].w));
    }
    vec4 f71 = texture(PrecomputedBRDFTexture, vec2(f53, max(9.9999997473787516355514526367188e-05, dot(f21, f52))));
    float f72 = f71.x;
    float f73 = f71.y;
    vec3 f74 = ((vec3(0.039999999105930328369140625) * f72) + vec3(f73)) / vec3(f72 + f73);
    vec3 f75 = f21 * f21;
    bvec3 f76 = lessThan(f21, vec3(0.0));
    vec3 f77 = vec3(f76.x ? f75.x : vec3(0.0).x, f76.y ? f75.y : vec3(0.0).y, f76.z ? f75.z : vec3(0.0).z);
    vec3 f78 = f75 - f77;
    float f79 = f78.x;
    float f80 = f78.y;
    float f81 = f78.z;
    float f82 = f77.x;
    float f83 = f77.y;
    float f84 = f77.z;
    vec3 f85 = ((((((((vec3(1.0) - (f64 * f54)) * CB0[10].xyz) * f57) + ((f30.xyz * (f30.w * 120.0)) * 1.0)) + ((vec3(1.0) - (f74 * f54)) * (((((((CB0[35].xyz * f79) + (CB0[37].xyz * f80)) + (CB0[39].xyz * f81)) + (CB0[36].xyz * f82)) + (CB0[38].xyz * f83)) + (CB0[40].xyz * f84)) + (((((((CB0[29].xyz * f79) + (CB0[31].xyz * f80)) + (CB0[33].xyz * f81)) + (CB0[30].xyz * f82)) + (CB0[32].xyz * f83)) + (CB0[34].xyz * f84)) * f32)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f32))) + vec3((f5.z * 2.0) * f20)) * (f18.xyz * f18.xyz)) + ((((((f64 * (((f65 + (f65 * f65)) / (((f66 * f66) * ((f60 * 3.0) + 0.5)) * ((f59 * 0.75) + 0.25))) * f57)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * f20) * VARYING0.w) + ((mix(f70, textureLod(PrefilteredEnvTexture, f68, f67).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f55.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f32)) * f74) * f54));
    vec4 f86 = vec4(0.0);
    f86.x = f85.x;
    vec4 f87 = f86;
    f87.y = f85.y;
    vec4 f88 = f87;
    f88.z = f85.z;
    vec4 f89 = f88;
    f89.w = 1.0;
    float f90 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f91 = textureLod(PrefilteredEnvTexture, vec4(-f19, 0.0).xyz, max(CB0[13].y, f90) * 5.0).xyz;
    bvec3 f92 = bvec3(!(CB0[13].w == 0.0));
    vec3 f93 = mix(vec3(f92.x ? CB0[14].xyz.x : f91.x, f92.y ? CB0[14].xyz.y : f91.y, f92.z ? CB0[14].xyz.z : f91.z), f89.xyz, vec3(f90));
    vec4 f94 = f89;
    f94.x = f93.x;
    vec4 f95 = f94;
    f95.y = f93.y;
    vec4 f96 = f95;
    f96.z = f93.z;
    vec3 f97 = sqrt(clamp(f96.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f98 = f96;
    f98.x = f97.x;
    vec4 f99 = f98;
    f99.y = f97.y;
    vec4 f100 = f99;
    f100.z = f97.z;
    _entryPointOutput = f100;
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
