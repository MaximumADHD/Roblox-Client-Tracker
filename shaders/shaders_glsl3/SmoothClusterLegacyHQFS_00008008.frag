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
    vec4 f9 = ((f6.yxzw * VARYING0.x) + (f7.yxzw * VARYING0.y)) + (f8.yxzw * VARYING0.z);
    vec2 f10 = f9.yz - vec2(0.5);
    float f11 = f9.x;
    float f12 = f11 - f10.y;
    vec3 f13 = vec4(vec3(f12, f11, f12) + (vec3(f10.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 f14 = CB0[11].xyz - VARYING5.xyz;
    float f15 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec3 f16 = normalize(VARYING6);
    vec3 f17 = -CB0[16].xyz;
    float f18 = dot(f16, f17);
    vec3 f19 = normalize(f14);
    float f20 = 0.08900000154972076416015625 + (f5.y * 0.9110000133514404296875);
    float f21 = CB0[31].w * f15;
    vec3 f22 = reflect(-f19, f16);
    vec3 f23 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f24 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f25 = VARYING4.yzx - (VARYING4.yzx * f24);
    vec4 f26 = texture(LightMapTexture, f25);
    vec4 f27 = texture(LightGridSkylightTexture, f25);
    vec4 f28 = vec4(clamp(f24, 0.0, 1.0));
    vec4 f29 = mix(f26, vec4(0.0), f28);
    vec4 f30 = mix(f27, vec4(1.0), f28);
    vec3 f31 = f29.xyz * (f29.w * 120.0);
    float f32 = f30.x;
    float f33 = f30.y;
    vec3 f34 = f23 - CB0[46].xyz;
    vec3 f35 = f23 - CB0[47].xyz;
    vec3 f36 = f23 - CB0[48].xyz;
    vec4 f37 = vec4(f23, 1.0) * mat4(CB8[((dot(f34, f34) < CB0[46].w) ? 0 : ((dot(f35, f35) < CB0[47].w) ? 1 : ((dot(f36, f36) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f34, f34) < CB0[46].w) ? 0 : ((dot(f35, f35) < CB0[47].w) ? 1 : ((dot(f36, f36) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f34, f34) < CB0[46].w) ? 0 : ((dot(f35, f35) < CB0[47].w) ? 1 : ((dot(f36, f36) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f34, f34) < CB0[46].w) ? 0 : ((dot(f35, f35) < CB0[47].w) ? 1 : ((dot(f36, f36) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f38 = textureLod(ShadowAtlasTexture, f37.xy, 0.0);
    vec2 f39 = vec2(0.0);
    f39.x = CB0[51].z;
    vec2 f40 = f39;
    f40.y = CB0[51].w;
    float f41 = (2.0 * f37.z) - 1.0;
    float f42 = exp(CB0[51].z * f41);
    float f43 = -exp((-CB0[51].w) * f41);
    vec2 f44 = (f40 * CB0[52].y) * vec2(f42, f43);
    vec2 f45 = f44 * f44;
    float f46 = f38.x;
    float f47 = max(f38.y - (f46 * f46), f45.x);
    float f48 = f42 - f46;
    float f49 = f38.z;
    float f50 = max(f38.w - (f49 * f49), f45.y);
    float f51 = f43 - f49;
    float f52 = (f18 * CB0[14].w) * (((f18 * CB0[52].x) > 0.0) ? mix(min((f42 <= f46) ? 1.0 : clamp(((f47 / (f47 + (f48 * f48))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f43 <= f49) ? 1.0 : clamp(((f50 / (f50 + (f51 * f51))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f33, clamp((length(f23 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f33);
    vec3 f53;
    vec3 f54;
    if (f52 > 0.0)
    {
        vec3 f55 = normalize(f19 + f17);
        float f56 = clamp(f52, 0.0, 1.0);
        float f57 = f20 * f20;
        float f58 = max(0.001000000047497451305389404296875, dot(f16, f55));
        float f59 = dot(f17, f55);
        float f60 = 1.0 - f59;
        float f61 = f60 * f60;
        float f62 = (f61 * f61) * f60;
        vec3 f63 = vec3(f62) + (vec3(0.039999999105930328369140625) * (1.0 - f62));
        float f64 = f57 * f57;
        float f65 = (((f58 * f64) - f58) * f58) + 1.0;
        f54 = f31 + (((vec3(1.0) - (f63 * f21)) * CB0[15].xyz) * f56);
        f53 = ((f63 * (((f64 + (f64 * f64)) / (((f65 * f65) * ((f59 * 3.0) + 0.5)) * ((f58 * 0.75) + 0.25))) * f56)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f54 = f31;
        f53 = vec3(0.0);
    }
    float f66 = f20 * 5.0;
    vec3 f67 = vec4(f22, f66).xyz;
    vec3 f68 = textureLod(PrefilteredEnvIndoorTexture, f67, f66).xyz;
    vec3 f69;
    if (CB0[32].w == 0.0)
    {
        f69 = f68;
    }
    else
    {
        f69 = mix(f68, textureLod(PrefilteredEnvBlendTargetTexture, f67, f66).xyz, vec3(CB0[32].w));
    }
    vec4 f70 = texture(PrecomputedBRDFTexture, vec2(f20, max(9.9999997473787516355514526367188e-05, dot(f16, f19))));
    float f71 = f70.x;
    float f72 = f70.y;
    vec3 f73 = ((vec3(0.039999999105930328369140625) * f71) + vec3(f72)) / vec3(f71 + f72);
    vec3 f74 = f16 * f16;
    bvec3 f75 = lessThan(f16, vec3(0.0));
    vec3 f76 = vec3(f75.x ? f74.x : vec3(0.0).x, f75.y ? f74.y : vec3(0.0).y, f75.z ? f74.z : vec3(0.0).z);
    vec3 f77 = f74 - f76;
    float f78 = f77.x;
    float f79 = f77.y;
    float f80 = f77.z;
    float f81 = f76.x;
    float f82 = f76.y;
    float f83 = f76.z;
    vec3 f84 = ((((f54 + (((vec3(1.0) - (f73 * f21)) * (((((((CB0[40].xyz * f78) + (CB0[42].xyz * f79)) + (CB0[44].xyz * f80)) + (CB0[41].xyz * f81)) + (CB0[43].xyz * f82)) + (CB0[45].xyz * f83)) + (((((((CB0[34].xyz * f78) + (CB0[36].xyz * f79)) + (CB0[38].xyz * f80)) + (CB0[35].xyz * f81)) + (CB0[37].xyz * f82)) + (CB0[39].xyz * f83)) * f32))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f32 * (2.0 - CB0[14].w)))) * 1.0)) + vec3((f5.z * 2.0) * f15)) * (f13 * f13)) + ((f53 * (f15 * VARYING0.w)) + ((mix(f69, textureLod(PrefilteredEnvTexture, f67, f66).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f22.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f32)) * f73) * f21));
    vec4 f85 = vec4(0.0);
    f85.x = f84.x;
    vec4 f86 = f85;
    f86.y = f84.y;
    vec4 f87 = f86;
    f87.z = f84.z;
    vec4 f88 = f87;
    f88.w = 1.0;
    float f89 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f90 = textureLod(PrefilteredEnvTexture, vec4(-f14, 0.0).xyz, max(CB0[18].y, f89) * 5.0).xyz;
    bvec3 f91 = bvec3(!(CB0[18].w == 0.0));
    vec3 f92 = mix(vec3(f91.x ? CB0[19].xyz.x : f90.x, f91.y ? CB0[19].xyz.y : f90.y, f91.z ? CB0[19].xyz.z : f90.z), f88.xyz, vec3(f89));
    vec4 f93 = f88;
    f93.x = f92.x;
    vec4 f94 = f93;
    f94.y = f92.y;
    vec4 f95 = f94;
    f95.z = f92.z;
    vec3 f96 = sqrt(clamp(f95.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f97 = f95;
    f97.x = f96.x;
    vec4 f98 = f97;
    f98.y = f96.y;
    vec4 f99 = f98;
    f99.z = f96.z;
    _entryPointOutput = f99;
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
