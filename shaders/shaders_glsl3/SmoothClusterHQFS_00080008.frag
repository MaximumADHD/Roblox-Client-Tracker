#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
uniform vec4 CB0[58];
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
    vec3 f9 = (((mix(vec3(1.0), CB4[int(VARYING8.x + 0.5) * 1 + 0].xyz, vec3(f6.w)) * f6.xyz) * VARYING0.x) + ((mix(vec3(1.0), CB4[int(VARYING8.y + 0.5) * 1 + 0].xyz, vec3(f7.w)) * f7.xyz) * VARYING0.y)) + ((mix(vec3(1.0), CB4[int(VARYING8.z + 0.5) * 1 + 0].xyz, vec3(f8.w)) * f8.xyz) * VARYING0.z);
    vec3 f10 = f9 * f9;
    vec3 f11 = CB0[11].xyz - VARYING5.xyz;
    float f12 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec3 f13 = normalize(VARYING6);
    vec3 f14 = -CB0[16].xyz;
    float f15 = dot(f13, f14);
    vec3 f16 = normalize(f11);
    float f17 = 0.08900000154972076416015625 + (f5.y * 0.9110000133514404296875);
    float f18 = f5.x;
    vec3 f19 = mix(vec3(0.039999999105930328369140625), f10, vec3(f18));
    float f20 = CB0[31].w * f12;
    vec3 f21 = reflect(-f16, f13);
    vec3 f22 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f23 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f24 = VARYING4.yzx - (VARYING4.yzx * f23);
    vec4 f25 = texture(LightMapTexture, f24);
    vec4 f26 = texture(LightGridSkylightTexture, f24);
    vec4 f27 = vec4(clamp(f23, 0.0, 1.0));
    vec4 f28 = mix(f25, vec4(0.0), f27);
    vec4 f29 = mix(f26, vec4(1.0), f27);
    vec3 f30 = f28.xyz * (f28.w * 120.0);
    float f31 = f29.x;
    float f32 = f29.y;
    vec3 f33 = f22 - CB0[46].xyz;
    vec3 f34 = f22 - CB0[47].xyz;
    vec3 f35 = f22 - CB0[48].xyz;
    vec4 f36 = vec4(f22, 1.0) * mat4(CB8[((dot(f33, f33) < CB0[46].w) ? 0 : ((dot(f34, f34) < CB0[47].w) ? 1 : ((dot(f35, f35) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f33, f33) < CB0[46].w) ? 0 : ((dot(f34, f34) < CB0[47].w) ? 1 : ((dot(f35, f35) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f33, f33) < CB0[46].w) ? 0 : ((dot(f34, f34) < CB0[47].w) ? 1 : ((dot(f35, f35) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f33, f33) < CB0[46].w) ? 0 : ((dot(f34, f34) < CB0[47].w) ? 1 : ((dot(f35, f35) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
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
    float f51 = (f15 * CB0[14].w) * (((f15 * CB0[52].x) > 0.0) ? mix(min((f41 <= f45) ? 1.0 : clamp(((f46 / (f46 + (f47 * f47))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f42 <= f48) ? 1.0 : clamp(((f49 / (f49 + (f50 * f50))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f32, clamp((length(f22 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f32);
    vec3 f52;
    vec3 f53;
    if (f51 > 0.0)
    {
        vec3 f54 = normalize(f16 - CB0[16].xyz);
        float f55 = clamp(f51, 0.0, 1.0);
        float f56 = f17 * f17;
        float f57 = max(0.001000000047497451305389404296875, dot(f13, f54));
        float f58 = dot(f14, f54);
        float f59 = 1.0 - f58;
        float f60 = f59 * f59;
        float f61 = (f60 * f60) * f59;
        vec3 f62 = vec3(f61) + (f19 * (1.0 - f61));
        float f63 = f56 * f56;
        float f64 = (((f57 * f63) - f57) * f57) + 1.0;
        float f65 = 1.0 - f18;
        f53 = f30 + (((vec3(f65) - (f62 * (f20 * f65))) * CB0[15].xyz) * f55);
        f52 = ((f62 * (((f63 + (f63 * f63)) / max(((f64 * f64) * ((f58 * 3.0) + 0.5)) * ((f57 * 0.75) + 0.25), 7.0000001869630068540573120117188e-05)) * f55)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f53 = f30;
        f52 = vec3(0.0);
    }
    float f66 = f17 * 5.0;
    vec3 f67 = vec4(f21, f66).xyz;
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
    vec4 f70 = texture(PrecomputedBRDFTexture, vec2(f17, max(9.9999997473787516355514526367188e-05, dot(f13, f16))));
    float f71 = f70.x;
    float f72 = f70.y;
    vec3 f73 = ((f19 * f71) + vec3(f72)) / vec3(f71 + f72);
    float f74 = 1.0 - f18;
    vec3 f75 = f13 * f13;
    bvec3 f76 = lessThan(f13, vec3(0.0));
    vec3 f77 = vec3(f76.x ? f75.x : vec3(0.0).x, f76.y ? f75.y : vec3(0.0).y, f76.z ? f75.z : vec3(0.0).z);
    vec3 f78 = f75 - f77;
    float f79 = f78.x;
    float f80 = f78.y;
    float f81 = f78.z;
    float f82 = f77.x;
    float f83 = f77.y;
    float f84 = f77.z;
    vec3 f85 = ((((f53 + (((vec3(f74) - (f73 * (f20 * f74))) * (((((((CB0[40].xyz * f79) + (CB0[42].xyz * f80)) + (CB0[44].xyz * f81)) + (CB0[41].xyz * f82)) + (CB0[43].xyz * f83)) + (CB0[45].xyz * f84)) + (((((((CB0[34].xyz * f79) + (CB0[36].xyz * f80)) + (CB0[38].xyz * f81)) + (CB0[35].xyz * f82)) + (CB0[37].xyz * f83)) + (CB0[39].xyz * f84)) * f31))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f31 * (2.0 - CB0[14].w)))) * 1.0)) + vec3((f5.z * 2.0) * f12)) * f10) + ((f52 * (f12 * VARYING0.w)) + ((mix(f69, textureLod(PrefilteredEnvTexture, f67, f66).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f21.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f31)) * f73) * f20));
    vec4 f86 = vec4(0.0);
    f86.x = f85.x;
    vec4 f87 = f86;
    f87.y = f85.y;
    vec4 f88 = f87;
    f88.z = f85.z;
    vec4 f89 = f88;
    f89.w = 1.0;
    float f90 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f91 = textureLod(PrefilteredEnvTexture, vec4(-f11, 0.0).xyz, max(CB0[18].y, f90) * 5.0).xyz;
    bvec3 f92 = bvec3(!(CB0[18].w == 0.0));
    vec3 f93 = mix(vec3(f92.x ? CB0[19].xyz.x : f91.x, f92.y ? CB0[19].xyz.y : f91.y, f92.z ? CB0[19].xyz.z : f91.z), f89.xyz, vec3(f90));
    vec4 f94 = f89;
    f94.x = f93.x;
    vec4 f95 = f94;
    f95.y = f93.y;
    vec4 f96 = f95;
    f96.z = f93.z;
    vec3 f97 = sqrt(clamp(f96.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
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
