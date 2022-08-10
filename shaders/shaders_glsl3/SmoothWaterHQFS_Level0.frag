#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <Params.h>
uniform vec4 CB0[53];
uniform vec4 CB3[3];
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
    float f0 = clamp(dot(step(CB0[19].xyz, abs(VARYING5 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f1 = VARYING5.yzx - (VARYING5.yzx * f0);
    vec4 f2 = vec4(clamp(f0, 0.0, 1.0));
    vec4 f3 = mix(texture(LightMapTexture, f1), vec4(0.0), f2);
    vec4 f4 = mix(texture(LightGridSkylightTexture, f1), vec4(1.0), f2);
    vec3 f5 = f3.xyz * (f3.w * 120.0);
    float f6 = f4.x;
    float f7 = f4.y;
    vec4 f8 = vec4(CB3[0].w);
    vec4 f9 = ((mix(texture(NormalMap1Texture, VARYING2), texture(NormalMap2Texture, VARYING2), f8) * VARYING0.x) + (mix(texture(NormalMap1Texture, VARYING3), texture(NormalMap2Texture, VARYING3), f8) * VARYING0.y)) + (mix(texture(NormalMap1Texture, VARYING4), texture(NormalMap2Texture, VARYING4), f8) * VARYING0.z);
    vec2 f10 = f9.wy * 2.0;
    vec2 f11 = f10 - vec2(1.0);
    float f12 = f9.x;
    vec3 f13 = vec3(dot(VARYING1, VARYING0.xyz));
    vec3 f14 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f13) * f11.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f13) * f11.y)) + (VARYING6.xyz * sqrt(clamp(1.0 + dot(vec2(1.0) - f10, f11), 0.0, 1.0)))), f12).xyz;
    vec3 f15 = mix(VARYING6.xyz, f14, vec3(0.25));
    vec3 f16 = normalize(VARYING7.xyz);
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
    vec3 f27 = -f16;
    vec3 f28 = reflect(f27, f15);
    float f29 = 0.08900000154972076416015625 + (f12 * 0.9110000133514404296875);
    vec3 f30 = -CB0[11].xyz;
    vec3 f31 = normalize(f16 - CB0[11].xyz);
    float f32 = f29 * f29;
    float f33 = max(0.001000000047497451305389404296875, dot(f14, f31));
    float f34 = dot(f30, f31);
    float f35 = 1.0 - f34;
    float f36 = f35 * f35;
    float f37 = (f36 * f36) * f35;
    float f38 = f32 * f32;
    float f39 = (((f33 * f38) - f33) * f33) + 1.0;
    vec3 f40 = mix(((min(f5 + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f6)), vec3(CB0[16].w)) + (((((((CB0[35].xyz * f21) + (CB0[37].xyz * f22)) + (CB0[39].xyz * f23)) + (CB0[36].xyz * f24)) + (CB0[38].xyz * f25)) + (CB0[40].xyz * f26)) + (((((((CB0[29].xyz * f21) + (CB0[31].xyz * f22)) + (CB0[33].xyz * f23)) + (CB0[30].xyz * f24)) + (CB0[32].xyz * f25)) + (CB0[34].xyz * f26)) * f6))) + (CB0[10].xyz * f7)) * CB3[1].xyz, ((textureLod(PrefilteredEnvTexture, vec4(f28, 0.0).xyz, 0.0).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f28.y * 1.58823525905609130859375, 0.0, 1.0)))) * f6) + (f5 * 0.100000001490116119384765625), vec3(((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f15, f16))), 0.0, 1.0) + 0.300000011920928955078125) * VARYING0.w) * CB3[2].z)) + (((((vec3(f37) + (vec3(0.0199999995529651641845703125) * (1.0 - f37))) * (((f38 + (f38 * f38)) / (((f39 * f39) * ((f34 * 3.0) + 0.5)) * ((f33 * 0.75) + 0.25))) * clamp((dot(f14, f30) * CB0[9].w) * f7, 0.0, 1.0))) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * clamp(1.0 - (VARYING7.w * CB0[23].y), 0.0, 1.0));
    vec4 f41 = vec4(0.0);
    f41.x = f40.x;
    vec4 f42 = f41;
    f42.y = f40.y;
    vec4 f43 = f42;
    f43.z = f40.z;
    vec4 f44 = f43;
    f44.w = 1.0;
    vec3 f45 = textureLod(PrefilteredEnvTexture, vec4(f27, 0.0).xyz, max(CB0[13].y, VARYING6.w) * 5.0).xyz;
    bvec3 f46 = bvec3(!(CB0[13].w == 0.0));
    vec3 f47 = mix(vec3(f46.x ? CB0[14].xyz.x : f45.x, f46.y ? CB0[14].xyz.y : f45.y, f46.z ? CB0[14].xyz.z : f45.z), f44.xyz, vec3(VARYING6.w));
    vec4 f48 = f44;
    f48.x = f47.x;
    vec4 f49 = f48;
    f49.y = f47.y;
    vec4 f50 = f49;
    f50.z = f47.z;
    vec3 f51 = sqrt(clamp(f50.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f52 = f50;
    f52.x = f51.x;
    vec4 f53 = f52;
    f53.y = f51.y;
    vec4 f54 = f53;
    f54.z = f51.z;
    _entryPointOutput = f54;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
