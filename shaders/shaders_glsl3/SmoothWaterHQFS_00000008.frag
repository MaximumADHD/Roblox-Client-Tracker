#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowTransformGPU.h>
#include <Params.h>
uniform vec4 CB0[58];
uniform vec4 CB8[24];
uniform vec4 CB3[3];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D NormalMap1Texture;
uniform sampler2D NormalMap2Texture;

in vec4 VARYING0;
in vec3 VARYING1;
in vec2 VARYING2;
in vec2 VARYING3;
in vec2 VARYING4;
in vec3 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = CB0[11].xyz - VARYING7.xyz;
    vec3 f1 = -CB0[16].xyz;
    float f2 = clamp(dot(step(CB0[24].xyz, abs(VARYING5 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f3 = VARYING5.yzx - (VARYING5.yzx * f2);
    vec4 f4 = texture(LightMapTexture, f3);
    vec4 f5 = texture(LightGridSkylightTexture, f3);
    vec4 f6 = vec4(clamp(f2, 0.0, 1.0));
    vec4 f7 = mix(f4, vec4(0.0), f6);
    vec4 f8 = mix(f5, vec4(1.0), f6);
    float f9 = f8.x;
    float f10 = f8.y;
    vec3 f11 = f0 - CB0[46].xyz;
    vec3 f12 = f0 - CB0[47].xyz;
    vec3 f13 = f0 - CB0[48].xyz;
    vec4 f14 = vec4(f0, 1.0) * mat4(CB8[((dot(f11, f11) < CB0[46].w) ? 0 : ((dot(f12, f12) < CB0[47].w) ? 1 : ((dot(f13, f13) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f11, f11) < CB0[46].w) ? 0 : ((dot(f12, f12) < CB0[47].w) ? 1 : ((dot(f13, f13) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f11, f11) < CB0[46].w) ? 0 : ((dot(f12, f12) < CB0[47].w) ? 1 : ((dot(f13, f13) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f11, f11) < CB0[46].w) ? 0 : ((dot(f12, f12) < CB0[47].w) ? 1 : ((dot(f13, f13) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f15 = textureLod(ShadowAtlasTexture, f14.xy, 0.0);
    vec2 f16 = vec2(0.0);
    f16.x = CB0[52].z;
    vec2 f17 = f16;
    f17.y = CB0[52].w;
    float f18 = (2.0 * f14.z) - 1.0;
    float f19 = exp(CB0[52].z * f18);
    float f20 = -exp((-CB0[52].w) * f18);
    vec2 f21 = (f17 * CB0[53].y) * vec2(f19, f20);
    vec2 f22 = f21 * f21;
    float f23 = f15.x;
    float f24 = max(f15.y - (f23 * f23), f22.x);
    float f25 = f19 - f23;
    float f26 = f15.z;
    float f27 = max(f15.w - (f26 * f26), f22.y);
    float f28 = f20 - f26;
    float f29 = ((dot(VARYING6.xyz, f1) * CB0[53].x) > 0.0) ? mix(min((f19 <= f23) ? 1.0 : clamp(((f24 / (f24 + (f25 * f25))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f20 <= f26) ? 1.0 : clamp(((f27 / (f27 + (f28 * f28))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f10, clamp((length(f0 - CB0[11].xyz) * CB0[52].y) - (CB0[52].x * CB0[52].y), 0.0, 1.0)) : f10;
    vec4 f30 = texture(NormalMap1Texture, VARYING2);
    vec4 f31 = texture(NormalMap2Texture, VARYING2);
    vec4 f32 = vec4(CB3[0].w);
    vec4 f33 = texture(NormalMap1Texture, VARYING3);
    vec4 f34 = texture(NormalMap2Texture, VARYING3);
    vec4 f35 = texture(NormalMap1Texture, VARYING4);
    vec4 f36 = texture(NormalMap2Texture, VARYING4);
    vec4 f37 = ((mix(f30, f31, f32) * VARYING0.x) + (mix(f33, f34, f32) * VARYING0.y)) + (mix(f35, f36, f32) * VARYING0.z);
    vec2 f38 = f37.wy * 2.0;
    vec2 f39 = f38 - vec2(1.0);
    float f40 = f37.x;
    vec3 f41 = vec3(dot(VARYING1, VARYING0.xyz));
    vec3 f42 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f41) * f39.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f41) * f39.y)) + (VARYING6.xyz * sqrt(clamp(1.0 + dot(vec2(1.0) - f38, f39), 0.0, 1.0)))), f40).xyz;
    vec3 f43 = mix(VARYING6.xyz, f42, vec3(0.25));
    vec3 f44 = VARYING7.xyz / vec3(sqrt(dot(VARYING7.xyz, VARYING7.xyz)));
    vec3 f45 = -f44;
    vec3 f46 = reflect(f45, f43);
    vec3 f47 = f42 * f42;
    bvec3 f48 = lessThan(f42, vec3(0.0));
    vec3 f49 = vec3(f48.x ? f47.x : vec3(0.0).x, f48.y ? f47.y : vec3(0.0).y, f48.z ? f47.z : vec3(0.0).z);
    vec3 f50 = f47 - f49;
    float f51 = f50.x;
    float f52 = f50.y;
    float f53 = f50.z;
    float f54 = f49.x;
    float f55 = f49.y;
    float f56 = f49.z;
    float f57 = 0.08900000154972076416015625 + (f40 * 0.9110000133514404296875);
    float f58 = (dot(f42, f1) * CB0[14].w) * f29;
    vec3 f59;
    if (f58 > 0.0)
    {
        vec3 f60 = normalize(f44 + f1);
        float f61 = f57 * f57;
        float f62 = max(0.001000000047497451305389404296875, dot(f42, f60));
        float f63 = dot(f1, f60);
        float f64 = 1.0 - f63;
        float f65 = f64 * f64;
        float f66 = (f65 * f65) * f64;
        float f67 = f61 * f61;
        float f68 = (((f62 * f67) - f62) * f62) + 1.0;
        f59 = (((vec3(f66) + (vec3(0.0199999995529651641845703125) * (1.0 - f66))) * (((f67 + (f67 * f67)) / (((f68 * f68) * ((f63 * 3.0) + 0.5)) * ((f62 * 0.75) + 0.25))) * clamp(f58, 0.0, 1.0))) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f59 = vec3(0.0);
    }
    vec3 f69 = mix(((min((f7.xyz * (f7.w * 120.0)) + (CB0[32].xyz + (CB0[33].xyz * (f9 * (2.0 - CB0[14].w)))), vec3(CB0[21].w)) + (((((((CB0[40].xyz * f51) + (CB0[42].xyz * f52)) + (CB0[44].xyz * f53)) + (CB0[41].xyz * f54)) + (CB0[43].xyz * f55)) + (CB0[45].xyz * f56)) + (((((((CB0[34].xyz * f51) + (CB0[36].xyz * f52)) + (CB0[38].xyz * f53)) + (CB0[35].xyz * f54)) + (CB0[37].xyz * f55)) + (CB0[39].xyz * f56)) * f9))) + (CB0[15].xyz * f29)) * CB3[1].xyz, (textureLod(PrefilteredEnvTexture, vec4(f46, 0.0).xyz, 0.0).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f46.y * 1.58823525905609130859375, 0.0, 1.0)))) * f9, vec3((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f43, f44))), 0.0, 1.0) + 0.300000011920928955078125) * (VARYING0.w * CB3[2].z))) + (f59 * clamp(1.0 - (VARYING7.w * CB0[28].y), 0.0, 1.0));
    vec4 f70 = vec4(0.0);
    f70.x = f69.x;
    vec4 f71 = f70;
    f71.y = f69.y;
    vec4 f72 = f71;
    f72.z = f69.z;
    vec4 f73 = f72;
    f73.w = 1.0;
    vec3 f74 = textureLod(PrefilteredEnvTexture, vec4(f45, 0.0).xyz, max(CB0[18].y, VARYING6.w) * 5.0).xyz;
    bvec3 f75 = bvec3(!(CB0[18].w == 0.0));
    vec3 f76 = mix(vec3(f75.x ? CB0[19].xyz.x : f74.x, f75.y ? CB0[19].xyz.y : f74.y, f75.z ? CB0[19].xyz.z : f74.z), f73.xyz, vec3(VARYING6.w));
    vec4 f77 = f73;
    f77.x = f76.x;
    vec4 f78 = f77;
    f78.y = f76.y;
    vec4 f79 = f78;
    f79.z = f76.z;
    vec3 f80 = sqrt(clamp(f79.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f81 = f79;
    f81.x = f80.x;
    vec4 f82 = f81;
    f82.y = f80.y;
    vec4 f83 = f82;
    f83.z = f80.z;
    _entryPointOutput = f83;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
