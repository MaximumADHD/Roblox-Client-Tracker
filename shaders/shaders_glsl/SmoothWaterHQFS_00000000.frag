#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <Params.h>
uniform vec4 CB0[58];
uniform vec4 CB3[3];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D NormalMap1Texture;
uniform sampler2D NormalMap2Texture;
uniform samplerCube EnvMapTexture;

varying vec4 VARYING0;
varying vec3 VARYING1;
varying vec2 VARYING2;
varying vec2 VARYING3;
varying vec2 VARYING4;
varying vec3 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;

void main()
{
    float f0 = clamp(dot(step(CB0[24].xyz, abs(VARYING5 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f1 = VARYING5.yzx - (VARYING5.yzx * f0);
    vec4 f2 = vec4(clamp(f0, 0.0, 1.0));
    vec4 f3 = mix(texture3D(LightMapTexture, f1), vec4(0.0), f2);
    vec4 f4 = mix(texture3D(LightGridSkylightTexture, f1), vec4(1.0), f2);
    vec3 f5 = f3.xyz * (f3.w * 120.0);
    float f6 = f4.x;
    float f7 = f4.y;
    vec4 f8 = vec4(CB3[0].w);
    vec4 f9 = ((mix(texture2D(NormalMap1Texture, VARYING2), texture2D(NormalMap2Texture, VARYING2), f8) * VARYING0.x) + (mix(texture2D(NormalMap1Texture, VARYING3), texture2D(NormalMap2Texture, VARYING3), f8) * VARYING0.y)) + (mix(texture2D(NormalMap1Texture, VARYING4), texture2D(NormalMap2Texture, VARYING4), f8) * VARYING0.z);
    vec2 f10 = f9.wy * 2.0;
    vec2 f11 = f10 - vec2(1.0);
    float f12 = f9.x;
    vec3 f13 = vec3(dot(VARYING1, VARYING0.xyz));
    vec3 f14 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f13) * f11.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f13) * f11.y)) + (VARYING6.xyz * sqrt(clamp(1.0 + dot(vec2(1.0) - f10, f11), 0.0, 1.0)))), f12).xyz;
    vec3 f15 = mix(VARYING6.xyz, f14, vec3(0.25));
    vec3 f16 = VARYING7.xyz / vec3(sqrt(dot(VARYING7.xyz, VARYING7.xyz)));
    vec3 f17 = f14 * f14;
    bvec3 f18 = lessThan(f14, vec3(0.0));
    vec3 f19 = vec3(f18.x ? f17.x : vec3(0.0).x, f18.y ? f17.y : vec3(0.0).y, f18.z ? f17.z : vec3(0.0).z);
    vec3 f20 = f17 - f19;
    float f21 = f20.x;
    float f22 = f20.y;
    float f23 = f20.z;
    float f24 = f19.x;
    float f25 = f19.y;
    float f26 = f19.z;
    vec3 f27 = textureCube(EnvMapTexture, reflect(-f16, f15)).xyz;
    float f28 = 0.08900000154972076416015625 + (f12 * 0.9110000133514404296875);
    vec3 f29 = -CB0[16].xyz;
    vec3 f30 = normalize(f16 + f29);
    float f31 = f28 * f28;
    float f32 = max(0.001000000047497451305389404296875, dot(f14, f30));
    float f33 = dot(f29, f30);
    float f34 = 1.0 - f33;
    float f35 = f34 * f34;
    float f36 = (f35 * f35) * f34;
    float f37 = f31 * f31;
    float f38 = (((f32 * f37) - f32) * f32) + 1.0;
    vec3 f39 = mix(((min(f5 + (CB0[32].xyz + (CB0[33].xyz * f6)), vec3(CB0[21].w)) + (((((((CB0[40].xyz * f21) + (CB0[42].xyz * f22)) + (CB0[44].xyz * f23)) + (CB0[41].xyz * f24)) + (CB0[43].xyz * f25)) + (CB0[45].xyz * f26)) + (((((((CB0[34].xyz * f21) + (CB0[36].xyz * f22)) + (CB0[38].xyz * f23)) + (CB0[35].xyz * f24)) + (CB0[37].xyz * f25)) + (CB0[39].xyz * f26)) * f6))) + (CB0[15].xyz * f7)) * CB3[1].xyz, (((f27 * f27) * CB0[20].x) * f6) + (f5 * 0.100000001490116119384765625), vec3((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f15, f16))), 0.0, 1.0) + 0.300000011920928955078125) * (VARYING0.w * CB3[2].z))) + (((((vec3(f36) + (vec3(0.0199999995529651641845703125) * (1.0 - f36))) * (((f37 + (f37 * f37)) / (((f38 * f38) * ((f33 * 3.0) + 0.5)) * ((f32 * 0.75) + 0.25))) * clamp(dot(f14, f29) * f7, 0.0, 1.0))) * CB0[15].xyz) * 1.0) * clamp(1.0 - (VARYING7.w * CB0[28].y), 0.0, 1.0));
    vec4 f40 = vec4(0.0);
    f40.x = f39.x;
    vec4 f41 = f40;
    f41.y = f39.y;
    vec4 f42 = f41;
    f42.z = f39.z;
    vec4 f43 = f42;
    f43.w = 1.0;
    vec3 f44 = mix(CB0[19].xyz, f43.xyz, vec3(VARYING6.w));
    vec4 f45 = f43;
    f45.x = f44.x;
    vec4 f46 = f45;
    f46.y = f44.y;
    vec4 f47 = f46;
    f47.z = f44.z;
    vec3 f48 = sqrt(clamp(f47.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f49 = f47;
    f49.x = f48.x;
    vec4 f50 = f49;
    f50.y = f48.y;
    vec4 f51 = f50;
    f51.z = f48.z;
    gl_FragData[0] = f51;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$EnvMapTexture=s3
