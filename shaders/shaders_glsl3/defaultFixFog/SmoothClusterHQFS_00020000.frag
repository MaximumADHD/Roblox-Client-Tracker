#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[57];
uniform vec4 CB4[63];
uniform sampler2D ShadowMapTexture;
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
in vec3 VARYING9;
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
    int f11 = int(VARYING9.x + 0.5);
    int f12 = int(VARYING9.y + 0.5);
    int f13 = int(VARYING9.z + 0.5);
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
    float f39 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec3 f40 = normalize(VARYING8);
    float f41 = 0.08900000154972076416015625 + (f6.y * 0.9110000133514404296875);
    float f42 = f6.x;
    vec3 f43 = mix(vec3(0.039999999105930328369140625), f38, vec3(f42));
    float f44 = CB0[31].w * f39;
    vec3 f45 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f46 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f47 = VARYING4.yzx - (VARYING4.yzx * f46);
    vec4 f48 = texture(LightMapTexture, f47);
    vec4 f49 = texture(LightGridSkylightTexture, f47);
    vec4 f50 = vec4(clamp(f46, 0.0, 1.0));
    vec4 f51 = mix(f48, vec4(0.0), f50);
    vec4 f52 = mix(f49, vec4(1.0), f50);
    float f53 = f52.x;
    vec4 f54 = texture(ShadowMapTexture, f45.xy);
    float f55 = f45.z;
    vec3 f56 = reflect(-f40, f7);
    float f57 = f41 * 5.0;
    vec3 f58 = vec4(f56, f57).xyz;
    vec3 f59 = textureLod(PrefilteredEnvIndoorTexture, f58, f57).xyz;
    vec3 f60;
    if (CB0[32].w == 0.0)
    {
        f60 = f59;
    }
    else
    {
        f60 = mix(f59, textureLod(PrefilteredEnvBlendTargetTexture, f58, f57).xyz, vec3(CB0[32].w));
    }
    vec4 f61 = texture(PrecomputedBRDFTexture, vec2(f41, max(9.9999997473787516355514526367188e-05, dot(f7, f40))));
    float f62 = f61.x;
    float f63 = f61.y;
    vec3 f64 = ((f43 * f62) + vec3(f63)) / vec3(f62 + f63);
    float f65 = 1.0 - f42;
    float f66 = f44 * f65;
    vec3 f67 = vec3(f65);
    vec3 f68 = f7 * f7;
    bvec3 f69 = lessThan(f7, vec3(0.0));
    vec3 f70 = vec3(f69.x ? f68.x : vec3(0.0).x, f69.y ? f68.y : vec3(0.0).y, f69.z ? f68.z : vec3(0.0).z);
    vec3 f71 = f68 - f70;
    float f72 = f71.x;
    float f73 = f71.y;
    float f74 = f71.z;
    float f75 = f70.x;
    float f76 = f70.y;
    float f77 = f70.z;
    vec3 f78 = -CB0[16].xyz;
    float f79 = dot(f7, f78) * ((1.0 - ((step(f54.x, f55) * clamp(CB0[29].z + (CB0[29].w * abs(f55 - 0.5)), 0.0, 1.0)) * f54.y)) * f52.y);
    vec3 f80 = normalize(f40 + f78);
    float f81 = clamp(f79, 0.0, 1.0);
    float f82 = f41 * f41;
    float f83 = max(0.001000000047497451305389404296875, dot(f7, f80));
    float f84 = dot(f78, f80);
    float f85 = 1.0 - f84;
    float f86 = f85 * f85;
    float f87 = (f86 * f86) * f85;
    vec3 f88 = vec3(f87) + (f43 * (1.0 - f87));
    float f89 = f82 * f82;
    float f90 = (((f83 * f89) - f83) * f83) + 1.0;
    vec3 f91 = (((((vec3((f6.z * 2.0) * f39) + (((f67 - (f64 * f66)) * ((((((((CB0[40].xyz * f72) + (CB0[42].xyz * f73)) + (CB0[44].xyz * f74)) + (CB0[41].xyz * f75)) + (CB0[43].xyz * f76)) + (CB0[45].xyz * f77)) * CB0[30].w) + ((((((((CB0[34].xyz * f72) + (CB0[36].xyz * f73)) + (CB0[38].xyz * f74)) + (CB0[35].xyz * f75)) + (CB0[37].xyz * f76)) + (CB0[39].xyz * f77)) * CB0[30].w) * f53))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * f53)) * 1.0)) + ((((f67 - (f88 * f66)) * CB0[15].xyz) * f81) + (CB0[17].xyz * (f65 * clamp(-f79, 0.0, 1.0))))) + (f51.xyz * (f51.w * 120.0))) * f38) + (((mix(f60, textureLod(PrefilteredEnvTexture, f58, f57).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f56.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f53)) * f64) * f44) + (((f88 * (((f89 + (f89 * f89)) / (((f90 * f90) * ((f84 * 3.0) + 0.5)) * ((f83 * 0.75) + 0.25))) * f81)) * CB0[15].xyz) * (f39 * VARYING0.w)));
    vec4 f92 = vec4(0.0);
    f92.x = f91.x;
    vec4 f93 = f92;
    f93.y = f91.y;
    vec4 f94 = f93;
    f94.z = f91.z;
    vec4 f95 = f94;
    f95.w = 1.0;
    float f96 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f97 = textureLod(PrefilteredEnvTexture, vec4(-VARYING8, 0.0).xyz, max(CB0[18].y, f96) * 5.0).xyz;
    bvec3 f98 = bvec3(!(CB0[18].w == 0.0));
    vec3 f99 = mix(vec3(f98.x ? CB0[19].xyz.x : f97.x, f98.y ? CB0[19].xyz.y : f97.y, f98.z ? CB0[19].xyz.z : f97.z), f95.xyz, vec3(f96));
    vec4 f100 = f95;
    f100.x = f99.x;
    vec4 f101 = f100;
    f101.y = f99.y;
    vec4 f102 = f101;
    f102.z = f99.z;
    vec3 f103 = sqrt(clamp(f102.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f104 = f102;
    f104.x = f103.x;
    vec4 f105 = f104;
    f105.y = f103.y;
    vec4 f106 = f105;
    f106.z = f103.z;
    _entryPointOutput = f106;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
