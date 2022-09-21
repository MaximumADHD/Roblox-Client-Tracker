#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
uniform vec4 CB0[58];
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
    float f31 = f30.x;
    float f32 = f30.y;
    vec3 f33 = f23 - CB0[46].xyz;
    vec3 f34 = f23 - CB0[47].xyz;
    vec3 f35 = f23 - CB0[48].xyz;
    vec4 f36 = vec4(f23, 1.0) * mat4(CB8[((dot(f33, f33) < CB0[46].w) ? 0 : ((dot(f34, f34) < CB0[47].w) ? 1 : ((dot(f35, f35) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f33, f33) < CB0[46].w) ? 0 : ((dot(f34, f34) < CB0[47].w) ? 1 : ((dot(f35, f35) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f33, f33) < CB0[46].w) ? 0 : ((dot(f34, f34) < CB0[47].w) ? 1 : ((dot(f35, f35) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f33, f33) < CB0[46].w) ? 0 : ((dot(f34, f34) < CB0[47].w) ? 1 : ((dot(f35, f35) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f37 = textureLod(ShadowAtlasTexture, f36.xy, 0.0);
    vec2 f38 = vec2(0.0);
    f38.x = CB0[51].z;
    vec2 f39 = f38;
    f39.y = CB0[51].w;
    float f40 = (2.0 * f36.z) - 1.0;
    float f41 = exp(CB0[51].z * f40);
    float f42 = -exp((-CB0[51].w) * f40);
    vec2 f43 = (f39 * CB0[52].y) * vec2(f41, f42);
    vec2 f44 = f43 * f43;
    float f45 = f37.x;
    float f46 = max(f37.y - (f45 * f45), f44.x);
    float f47 = f41 - f45;
    float f48 = f37.z;
    float f49 = max(f37.w - (f48 * f48), f44.y);
    float f50 = f42 - f48;
    vec3 f51 = normalize(f19 - CB0[16].xyz);
    float f52 = clamp((f18 * CB0[14].w) * (((f18 * CB0[52].x) > 0.0) ? mix(min((f41 <= f45) ? 1.0 : clamp(((f46 / (f46 + (f47 * f47))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f42 <= f48) ? 1.0 : clamp(((f49 / (f49 + (f50 * f50))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f32, clamp((length(f23 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f32), 0.0, 1.0);
    float f53 = f20 * f20;
    float f54 = max(0.001000000047497451305389404296875, dot(f16, f51));
    float f55 = dot(f17, f51);
    float f56 = 1.0 - f55;
    float f57 = f56 * f56;
    float f58 = (f57 * f57) * f56;
    vec3 f59 = vec3(f58) + (vec3(0.039999999105930328369140625) * (1.0 - f58));
    float f60 = f53 * f53;
    float f61 = (((f54 * f60) - f54) * f54) + 1.0;
    float f62 = f20 * 5.0;
    vec3 f63 = vec4(f22, f62).xyz;
    vec3 f64 = textureLod(PrefilteredEnvIndoorTexture, f63, f62).xyz;
    vec3 f65;
    if (CB0[32].w == 0.0)
    {
        f65 = f64;
    }
    else
    {
        f65 = mix(f64, textureLod(PrefilteredEnvBlendTargetTexture, f63, f62).xyz, vec3(CB0[32].w));
    }
    vec4 f66 = texture(PrecomputedBRDFTexture, vec2(f20, max(9.9999997473787516355514526367188e-05, dot(f16, f19))));
    float f67 = f66.x;
    float f68 = f66.y;
    vec3 f69 = ((vec3(0.039999999105930328369140625) * f67) + vec3(f68)) / vec3(f67 + f68);
    vec3 f70 = f16 * f16;
    bvec3 f71 = lessThan(f16, vec3(0.0));
    vec3 f72 = vec3(f71.x ? f70.x : vec3(0.0).x, f71.y ? f70.y : vec3(0.0).y, f71.z ? f70.z : vec3(0.0).z);
    vec3 f73 = f70 - f72;
    float f74 = f73.x;
    float f75 = f73.y;
    float f76 = f73.z;
    float f77 = f72.x;
    float f78 = f72.y;
    float f79 = f72.z;
    vec3 f80 = (((((((f29.xyz * (f29.w * 120.0)) * 1.0) + (((vec3(1.0) - (f59 * f21)) * CB0[15].xyz) * f52)) + ((vec3(1.0) - (f69 * f21)) * (((((((CB0[40].xyz * f74) + (CB0[42].xyz * f75)) + (CB0[44].xyz * f76)) + (CB0[41].xyz * f77)) + (CB0[43].xyz * f78)) + (CB0[45].xyz * f79)) + (((((((CB0[34].xyz * f74) + (CB0[36].xyz * f75)) + (CB0[38].xyz * f76)) + (CB0[35].xyz * f77)) + (CB0[37].xyz * f78)) + (CB0[39].xyz * f79)) * f31)))) + (CB0[32].xyz + ((CB0[33].xyz * (2.0 - CB0[14].w)) * f31))) + vec3((f5.z * 2.0) * f15)) * (f13 * f13)) + (((((f59 * (((f60 + (f60 * f60)) / (((f61 * f61) * ((f55 * 3.0) + 0.5)) * ((f54 * 0.75) + 0.25))) * f52)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w)) * (f15 * VARYING0.w)) + ((mix(f65, textureLod(PrefilteredEnvTexture, f63, f62).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f22.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f31)) * f69) * f21));
    vec4 f81 = vec4(0.0);
    f81.x = f80.x;
    vec4 f82 = f81;
    f82.y = f80.y;
    vec4 f83 = f82;
    f83.z = f80.z;
    vec4 f84 = f83;
    f84.w = 1.0;
    float f85 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f86 = textureLod(PrefilteredEnvTexture, vec4(-f14, 0.0).xyz, max(CB0[18].y, f85) * 5.0).xyz;
    bvec3 f87 = bvec3(!(CB0[18].w == 0.0));
    vec3 f88 = mix(vec3(f87.x ? CB0[19].xyz.x : f86.x, f87.y ? CB0[19].xyz.y : f86.y, f87.z ? CB0[19].xyz.z : f86.z), f84.xyz, vec3(f85));
    vec4 f89 = f84;
    f89.x = f88.x;
    vec4 f90 = f89;
    f90.y = f88.y;
    vec4 f91 = f90;
    f91.z = f88.z;
    vec3 f92 = sqrt(clamp(f91.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f93 = f91;
    f93.x = f92.x;
    vec4 f94 = f93;
    f94.y = f92.y;
    vec4 f95 = f94;
    f95.z = f92.z;
    _entryPointOutput = f95;
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
