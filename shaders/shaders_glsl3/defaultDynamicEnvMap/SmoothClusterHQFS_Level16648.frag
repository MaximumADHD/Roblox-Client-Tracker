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
    vec4 f6 = texture(AlbedoMapTexture, f0);
    vec4 f7 = texture(AlbedoMapTexture, f2);
    vec4 f8 = texture(AlbedoMapTexture, VARYING3.xyz);
    vec4 f9 = ((f6.yxzw * VARYING0.x) + (f7.yxzw * VARYING0.y)) + (f8.yxzw * VARYING0.z);
    vec2 f10 = f9.yz - vec2(0.5);
    float f11 = VARYING8.x * f9.x;
    float f12 = f10.x;
    float f13 = f10.y;
    float f14 = (VARYING8.y * f12) - (VARYING8.z * f13);
    float f15 = (VARYING8.z * f12) + (VARYING8.y * f13);
    float f16 = f11 - f15;
    vec3 f17 = vec4(vec3(f16, f11, f16) + (vec3(f14, f15, f14) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 f18 = CB0[7].xyz - VARYING5.xyz;
    float f19 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec3 f20 = normalize(VARYING6);
    vec3 f21 = -CB0[11].xyz;
    float f22 = dot(f20, f21);
    vec3 f23 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f24 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f25 = VARYING4.yzx - (VARYING4.yzx * f24);
    vec4 f26 = texture(LightMapTexture, f25);
    vec4 f27 = texture(LightGridSkylightTexture, f25);
    vec4 f28 = vec4(clamp(f24, 0.0, 1.0));
    vec4 f29 = mix(f26, vec4(0.0), f28);
    vec4 f30 = mix(f27, vec4(1.0), f28);
    float f31 = f30.x;
    float f32 = f30.y;
    vec3 f33 = f23 - CB0[41].xyz;
    vec3 f34 = f23 - CB0[42].xyz;
    vec3 f35 = f23 - CB0[43].xyz;
    vec4 f36 = vec4(f23, 1.0) * mat4(CB8[((dot(f33, f33) < CB0[41].w) ? 0 : ((dot(f34, f34) < CB0[42].w) ? 1 : ((dot(f35, f35) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f33, f33) < CB0[41].w) ? 0 : ((dot(f34, f34) < CB0[42].w) ? 1 : ((dot(f35, f35) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f33, f33) < CB0[41].w) ? 0 : ((dot(f34, f34) < CB0[42].w) ? 1 : ((dot(f35, f35) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f33, f33) < CB0[41].w) ? 0 : ((dot(f34, f34) < CB0[42].w) ? 1 : ((dot(f35, f35) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f37 = textureLod(ShadowAtlasTexture, f36.xy, 0.0);
    vec2 f38 = vec2(0.0);
    f38.x = CB0[46].z;
    vec2 f39 = f38;
    f39.y = CB0[46].w;
    float f40 = (2.0 * f36.z) - 1.0;
    float f41 = exp(CB0[46].z * f40);
    float f42 = -exp((-CB0[46].w) * f40);
    vec2 f43 = (f39 * CB0[47].y) * vec2(f41, f42);
    vec2 f44 = f43 * f43;
    float f45 = f37.x;
    float f46 = max(f37.y - (f45 * f45), f44.x);
    float f47 = f41 - f45;
    float f48 = f37.z;
    float f49 = max(f37.w - (f48 * f48), f44.y);
    float f50 = f42 - f48;
    vec3 f51 = normalize(f18);
    vec3 f52 = (f17 * f17).xyz;
    float f53 = f5.y;
    float f54 = f5.x;
    vec3 f55 = mix(vec3(0.039999999105930328369140625), f52, vec3(f54));
    float f56 = CB0[26].w * f19;
    vec3 f57 = reflect(-f51, f20);
    vec3 f58 = normalize(f21 + f51);
    float f59 = clamp(f22 * (((f22 * CB0[47].x) > 0.0) ? mix(min((f41 <= f45) ? 1.0 : clamp(((f46 / (f46 + (f47 * f47))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f42 <= f48) ? 1.0 : clamp(((f49 / (f49 + (f50 * f50))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f32, clamp((length(f23 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f32), 0.0, 1.0);
    float f60 = f53 * f53;
    float f61 = max(0.001000000047497451305389404296875, dot(f20, f58));
    float f62 = dot(f21, f58);
    float f63 = 1.0 - f62;
    float f64 = f63 * f63;
    float f65 = (f64 * f64) * f63;
    vec3 f66 = vec3(f65) + (f55 * (1.0 - f65));
    float f67 = f60 * f60;
    float f68 = (((f61 * f67) - f61) * f61) + 1.0;
    float f69 = 1.0 - f54;
    float f70 = f56 * f69;
    vec3 f71 = vec3(f69);
    float f72 = f53 * 5.0;
    vec3 f73 = vec4(f57, f72).xyz;
    vec3 f74 = textureLod(PrefilteredEnvIndoorTexture, f73, f72).xyz;
    vec3 f75;
    if (CB0[27].w == 0.0)
    {
        f75 = f74;
    }
    else
    {
        f75 = mix(f74, textureLod(PrefilteredEnvBlendTargetTexture, f73, f72).xyz, vec3(CB0[27].w));
    }
    vec4 f76 = texture(PrecomputedBRDFTexture, vec2(f53, max(9.9999997473787516355514526367188e-05, dot(f20, f51))));
    float f77 = f76.x;
    float f78 = f76.y;
    vec3 f79 = ((f55 * f77) + vec3(f78)) / vec3(f77 + f78);
    vec3 f80 = f20 * f20;
    bvec3 f81 = lessThan(f20, vec3(0.0));
    vec3 f82 = vec3(f81.x ? f80.x : vec3(0.0).x, f81.y ? f80.y : vec3(0.0).y, f81.z ? f80.z : vec3(0.0).z);
    vec3 f83 = f80 - f82;
    float f84 = f83.x;
    float f85 = f83.y;
    float f86 = f83.z;
    float f87 = f82.x;
    float f88 = f82.y;
    float f89 = f82.z;
    vec3 f90 = ((((((((f71 - (f66 * f70)) * CB0[10].xyz) * f59) + ((f29.xyz * (f29.w * 120.0)).xyz * 1.0)) + ((f71 - (f79 * f70)) * (((((((CB0[35].xyz * f84) + (CB0[37].xyz * f85)) + (CB0[39].xyz * f86)) + (CB0[36].xyz * f87)) + (CB0[38].xyz * f88)) + (CB0[40].xyz * f89)) + (((((((CB0[29].xyz * f84) + (CB0[31].xyz * f85)) + (CB0[33].xyz * f86)) + (CB0[30].xyz * f87)) + (CB0[32].xyz * f88)) + (CB0[34].xyz * f89)) * f31)))) + (CB0[27].xyz + (CB0[28].xyz * f31))) + vec3((f5.z * 2.0) * f19)) * f52) + (((((f66 * (((f67 + (f67 * f67)) / (((f68 * f68) * ((f62 * 3.0) + 0.5)) * ((f61 * 0.75) + 0.25))) * f59)) * CB0[10].xyz) * f19) * VARYING0.w) + ((mix(f75, textureLod(PrefilteredEnvTexture, f73, f72).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f57.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f31)) * f79) * f56));
    vec4 f91 = vec4(f90.x, f90.y, f90.z, vec4(0.0).w);
    f91.w = 1.0;
    float f92 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f93 = textureLod(PrefilteredEnvTexture, vec4(-f18, 0.0).xyz, max(CB0[13].y, f92) * 5.0).xyz;
    bvec3 f94 = bvec3(!(CB0[13].w == 0.0));
    vec3 f95 = sqrt(clamp(mix(vec3(f94.x ? CB0[14].xyz.x : f93.x, f94.y ? CB0[14].xyz.y : f93.y, f94.z ? CB0[14].xyz.z : f93.z), f91.xyz, vec3(f92)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f95.x, f95.y, f95.z, f91.w);
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
