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
    vec3 f4 = vec3(VARYING3.xyz);
    vec4 f5 = texture(SpecularMapTexture, f4);
    vec4 f6 = ((f1 * VARYING0.x) + (f3 * VARYING0.y)) + (f5 * VARYING0.z);
    vec3 f7 = normalize(VARYING6);
    vec4 f8 = texture(AlbedoMapTexture, f0);
    vec4 f9 = texture(AlbedoMapTexture, f2);
    vec4 f10 = texture(AlbedoMapTexture, f4);
    vec4 f11 = ((f8.yxzw * VARYING0.x) + (f9.yxzw * VARYING0.y)) + (f10.yxzw * VARYING0.z);
    vec2 f12 = f11.yz - vec2(0.5);
    float f13 = f11.x;
    float f14 = f13 - f12.y;
    vec3 f15 = vec4(vec3(f14, f13, f14) + (vec3(f12.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 f16 = CB0[11].xyz - VARYING5.xyz;
    float f17 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec3 f18 = -CB0[16].xyz;
    float f19 = dot(f7, f18);
    vec3 f20 = normalize(f16);
    float f21 = 0.08900000154972076416015625 + (f6.y * 0.9110000133514404296875);
    float f22 = CB0[31].w * f17;
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
    vec3 f51 = reflect(-f20, f7);
    float f52 = f21 * 5.0;
    vec3 f53 = vec4(f51, f52).xyz;
    vec3 f54 = textureLod(PrefilteredEnvIndoorTexture, f53, f52).xyz;
    vec3 f55;
    if (CB0[32].w == 0.0)
    {
        f55 = f54;
    }
    else
    {
        f55 = mix(f54, textureLod(PrefilteredEnvBlendTargetTexture, f53, f52).xyz, vec3(CB0[32].w));
    }
    vec4 f56 = texture(PrecomputedBRDFTexture, vec2(f21, max(9.9999997473787516355514526367188e-05, dot(f7, f20))));
    float f57 = f56.x;
    float f58 = f56.y;
    vec3 f59 = ((vec3(0.039999999105930328369140625) * f57) + vec3(f58)) / vec3(f57 + f58);
    vec3 f60 = f7 * f7;
    bvec3 f61 = lessThan(f7, vec3(0.0));
    vec3 f62 = vec3(f61.x ? f60.x : vec3(0.0).x, f61.y ? f60.y : vec3(0.0).y, f61.z ? f60.z : vec3(0.0).z);
    vec3 f63 = f60 - f62;
    float f64 = f63.x;
    float f65 = f63.y;
    float f66 = f63.z;
    float f67 = f62.x;
    float f68 = f62.y;
    float f69 = f62.z;
    vec3 f70 = (mix(f55, textureLod(PrefilteredEnvTexture, f53, f52).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f51.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f31)) * f59) * f22;
    vec3 f71 = (vec3((f6.z * 2.0) * f17) + (((vec3(1.0) - (f59 * f22)) * (((((((CB0[40].xyz * f64) + (CB0[42].xyz * f65)) + (CB0[44].xyz * f66)) + (CB0[41].xyz * f67)) + (CB0[43].xyz * f68)) + (CB0[45].xyz * f69)) + (((((((CB0[34].xyz * f64) + (CB0[36].xyz * f65)) + (CB0[38].xyz * f66)) + (CB0[35].xyz * f67)) + (CB0[37].xyz * f68)) + (CB0[39].xyz * f69)) * f31))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f31 * (2.0 - CB0[14].w)))) * 1.0);
    float f72 = (f19 * CB0[14].w) * (((f19 * CB0[52].x) > 0.0) ? mix(min((f41 <= f45) ? 1.0 : clamp(((f46 / (f46 + (f47 * f47))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f42 <= f48) ? 1.0 : clamp(((f49 / (f49 + (f50 * f50))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f32, clamp((length(f23 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f32);
    vec3 f73;
    vec3 f74;
    if (f72 > 0.0)
    {
        vec3 f75 = normalize(f20 + f18);
        float f76 = clamp(f72, 0.0, 1.0);
        float f77 = f21 * f21;
        float f78 = max(0.001000000047497451305389404296875, dot(f7, f75));
        float f79 = dot(f18, f75);
        float f80 = 1.0 - f79;
        float f81 = f80 * f80;
        float f82 = (f81 * f81) * f80;
        vec3 f83 = vec3(f82) + (vec3(0.039999999105930328369140625) * (1.0 - f82));
        float f84 = f77 * f77;
        float f85 = (((f78 * f84) - f78) * f78) + 1.0;
        f74 = f71 + (((vec3(1.0) - (f83 * f22)) * CB0[15].xyz) * f76);
        f73 = f70 + (((f83 * (((f84 + (f84 * f84)) / (((f85 * f85) * ((f79 * 3.0) + 0.5)) * ((f78 * 0.75) + 0.25))) * f76)) * CB0[15].xyz) * ((CB0[14].w * CB0[14].w) * (f17 * VARYING0.w)));
    }
    else
    {
        f74 = f71;
        f73 = f70;
    }
    vec3 f86 = ((f74 + (f29.xyz * (f29.w * 120.0))) * (f15 * f15)) + f73;
    vec4 f87 = vec4(0.0);
    f87.x = f86.x;
    vec4 f88 = f87;
    f88.y = f86.y;
    vec4 f89 = f88;
    f89.z = f86.z;
    vec4 f90 = f89;
    f90.w = 1.0;
    float f91 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f92 = textureLod(PrefilteredEnvTexture, vec4(-f16, 0.0).xyz, max(CB0[18].y, f91) * 5.0).xyz;
    bvec3 f93 = bvec3(!(CB0[18].w == 0.0));
    vec3 f94 = mix(vec3(f93.x ? CB0[19].xyz.x : f92.x, f93.y ? CB0[19].xyz.y : f92.y, f93.z ? CB0[19].xyz.z : f92.z), f90.xyz, vec3(f91));
    vec4 f95 = f90;
    f95.x = f94.x;
    vec4 f96 = f95;
    f96.y = f94.y;
    vec4 f97 = f96;
    f97.z = f94.z;
    vec3 f98 = sqrt(clamp(f97.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f99 = f97;
    f99.x = f98.x;
    vec4 f100 = f99;
    f100.y = f98.y;
    vec4 f101 = f100;
    f101.z = f98.z;
    _entryPointOutput = f101;
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
