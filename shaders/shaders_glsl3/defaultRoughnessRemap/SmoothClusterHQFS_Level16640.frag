#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
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
in vec4 VARYING9;
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
    float f11 = f10.x;
    vec4 f12 = f9;
    f12.y = f11;
    float f13 = f10.y;
    vec4 f14 = f12;
    f14.z = f13;
    vec4 f15;
    if (VARYING9.w < 1.0)
    {
        vec3 f16 = vec3(0.0);
        f16.x = VARYING9.x * f9.x;
        vec3 f17 = f16;
        f17.y = (VARYING9.y * f11) - (VARYING9.z * f13);
        vec3 f18 = f17;
        f18.z = (VARYING9.z * f11) + (VARYING9.y * f13);
        vec3 f19 = mix(f18, f14.xyz, vec3(VARYING9.w));
        vec4 f20 = f14;
        f20.x = f19.x;
        vec4 f21 = f20;
        f21.y = f19.y;
        vec4 f22 = f21;
        f22.z = f19.z;
        f15 = f22;
    }
    else
    {
        f15 = f14;
    }
    float f23 = f15.x - f15.z;
    vec3 f24 = vec4(vec3(f23, f15.x, f23) + (vec3(f15.yzy) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 f25 = mix(f24, f24 * VARYING9.xyz, vec3(VARYING9.w));
    vec4 f26 = vec4(0.0);
    f26.x = f25.x;
    vec4 f27 = f26;
    f27.y = f25.y;
    vec4 f28 = f27;
    f28.z = f25.z;
    vec3 f29 = f28.xyz * f28.xyz;
    float f30 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec3 f31 = normalize(VARYING6);
    vec3 f32 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f33 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f34 = VARYING4.yzx - (VARYING4.yzx * f33);
    vec4 f35 = texture(LightMapTexture, f34);
    vec4 f36 = texture(LightGridSkylightTexture, f34);
    vec4 f37 = vec4(clamp(f33, 0.0, 1.0));
    vec4 f38 = mix(f35, vec4(0.0), f37);
    vec4 f39 = mix(f36, vec4(1.0), f37);
    float f40 = f39.x;
    vec4 f41 = texture(ShadowMapTexture, f32.xy);
    float f42 = f32.z;
    vec3 f43 = normalize(VARYING8);
    float f44 = 0.08900000154972076416015625 + (f5.y * 0.9110000133514404296875);
    float f45 = f5.x;
    vec3 f46 = mix(vec3(0.039999999105930328369140625), f29, vec3(f45));
    float f47 = CB0[26].w * f30;
    vec3 f48 = reflect(-f43, f31);
    vec3 f49 = -CB0[11].xyz;
    float f50 = (dot(f31, f49) * CB0[9].w) * ((1.0 - ((step(f41.x, f42) * clamp(CB0[24].z + (CB0[24].w * abs(f42 - 0.5)), 0.0, 1.0)) * f41.y)) * f39.y);
    vec3 f51 = normalize(f49 + f43);
    float f52 = clamp(f50, 0.0, 1.0);
    float f53 = f44 * f44;
    float f54 = max(0.001000000047497451305389404296875, dot(f31, f51));
    float f55 = dot(f49, f51);
    float f56 = 1.0 - f55;
    float f57 = f56 * f56;
    float f58 = (f57 * f57) * f56;
    vec3 f59 = vec3(f58) + (f46 * (1.0 - f58));
    float f60 = f53 * f53;
    float f61 = (((f54 * f60) - f54) * f54) + 1.0;
    float f62 = 1.0 - f45;
    float f63 = f47 * f62;
    vec3 f64 = vec3(f62);
    float f65 = f44 * 5.0;
    vec3 f66 = vec4(f48, f65).xyz;
    vec3 f67 = textureLod(PrefilteredEnvIndoorTexture, f66, f65).xyz;
    vec3 f68;
    if (CB0[27].w == 0.0)
    {
        f68 = f67;
    }
    else
    {
        f68 = mix(f67, textureLod(PrefilteredEnvBlendTargetTexture, f66, f65).xyz, vec3(CB0[27].w));
    }
    vec4 f69 = texture(PrecomputedBRDFTexture, vec2(f44, max(9.9999997473787516355514526367188e-05, dot(f31, f43))));
    float f70 = f69.x;
    float f71 = f69.y;
    vec3 f72 = ((f46 * f70) + vec3(f71)) / vec3(f70 + f71);
    vec3 f73 = f31 * f31;
    bvec3 f74 = lessThan(f31, vec3(0.0));
    vec3 f75 = vec3(f74.x ? f73.x : vec3(0.0).x, f74.y ? f73.y : vec3(0.0).y, f74.z ? f73.z : vec3(0.0).z);
    vec3 f76 = f73 - f75;
    float f77 = f76.x;
    float f78 = f76.y;
    float f79 = f76.z;
    float f80 = f75.x;
    float f81 = f75.y;
    float f82 = f75.z;
    vec3 f83 = (((((((((f64 - (f59 * f63)) * CB0[10].xyz) * f52) + (CB0[12].xyz * (f62 * clamp(-f50, 0.0, 1.0)))) + ((f38.xyz * (f38.w * 120.0)) * 1.0)) + ((f64 - (f72 * f63)) * (((((((CB0[35].xyz * f77) + (CB0[37].xyz * f78)) + (CB0[39].xyz * f79)) + (CB0[36].xyz * f80)) + (CB0[38].xyz * f81)) + (CB0[40].xyz * f82)) + (((((((CB0[29].xyz * f77) + (CB0[31].xyz * f78)) + (CB0[33].xyz * f79)) + (CB0[30].xyz * f80)) + (CB0[32].xyz * f81)) + (CB0[34].xyz * f82)) * f40)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f40))) + vec3((f5.z * 2.0) * f30)) * f29) + ((((((f59 * (((f60 + (f60 * f60)) / (((f61 * f61) * ((f55 * 3.0) + 0.5)) * ((f54 * 0.75) + 0.25))) * f52)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * f30) * VARYING0.w) + ((mix(f68, textureLod(PrefilteredEnvTexture, f66, f65).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f48.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f40)) * f72) * f47));
    vec4 f84 = vec4(0.0);
    f84.x = f83.x;
    vec4 f85 = f84;
    f85.y = f83.y;
    vec4 f86 = f85;
    f86.z = f83.z;
    vec4 f87 = f86;
    f87.w = 1.0;
    float f88 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f89 = textureLod(PrefilteredEnvTexture, vec4(-VARYING8, 0.0).xyz, max(CB0[13].y, f88) * 5.0).xyz;
    bvec3 f90 = bvec3(!(CB0[13].w == 0.0));
    vec3 f91 = mix(vec3(f90.x ? CB0[14].xyz.x : f89.x, f90.y ? CB0[14].xyz.y : f89.y, f90.z ? CB0[14].xyz.z : f89.z), f87.xyz, vec3(f88));
    vec4 f92 = f87;
    f92.x = f91.x;
    vec4 f93 = f92;
    f93.y = f91.y;
    vec4 f94 = f93;
    f94.z = f91.z;
    vec3 f95 = sqrt(clamp(f94.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f96 = f94;
    f96.x = f95.x;
    vec4 f97 = f96;
    f97.y = f95.y;
    vec4 f98 = f97;
    f98.z = f95.z;
    _entryPointOutput = f98;
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
