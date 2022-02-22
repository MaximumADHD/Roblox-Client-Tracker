#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
#include <AdvancedUIShadingParams.h>
uniform vec4 CB0[53];
uniform vec4 CB8[24];
uniform vec4 CB2[1];
uniform vec4 CB3[2];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING1;
in vec3 VARYING2;
in vec3 VARYING3;
in vec4 VARYING4;
in vec3 VARYING5;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING0);
    vec4 f1 = vec4(1.0, 1.0, 1.0, f0.x);
    bvec4 f2 = bvec4(CB2[0].y > 0.5);
    vec4 f3 = VARYING1 * vec4(f2.x ? f1.x : f0.x, f2.y ? f1.y : f0.y, f2.z ? f1.z : f0.z, f2.w ? f1.w : f0.w);
    vec2 f4 = abs(vec2((VARYING0.x * CB3[0].x) + CB3[0].y, (VARYING0.y * CB3[0].z) + CB3[0].w)) - CB3[1].xy;
    float f5 = length(max(f4, vec2(0.0))) + min(max(f4.x, f4.y), 0.0);
    float f6 = (f3.w * clamp(CB3[1].z - f5, 0.0, 1.0)) * clamp(f5 - CB3[1].w, 0.0, 1.0);
    vec4 f7 = f3;
    f7.w = f6;
    vec4 f8 = f7;
    f8.w = f6;
    vec3 f9 = f8.xyz * f8.xyz;
    vec4 f10 = f8;
    f10.x = f9.x;
    vec4 f11 = f10;
    f11.y = f9.y;
    vec4 f12 = f11;
    f12.z = f9.z;
    float f13 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f14 = VARYING3.yzx - (VARYING3.yzx * f13);
    vec4 f15 = vec4(clamp(f13, 0.0, 1.0));
    vec4 f16 = mix(texture(LightMapTexture, f14), vec4(0.0), f15);
    vec4 f17 = mix(texture(LightGridSkylightTexture, f14), vec4(1.0), f15);
    float f18 = f17.y;
    vec3 f19 = VARYING4.xyz - CB0[41].xyz;
    vec3 f20 = VARYING4.xyz - CB0[42].xyz;
    vec3 f21 = VARYING4.xyz - CB0[43].xyz;
    vec4 f22 = vec4(VARYING4.xyz, 1.0) * mat4(CB8[((dot(f19, f19) < CB0[41].w) ? 0 : ((dot(f20, f20) < CB0[42].w) ? 1 : ((dot(f21, f21) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f19, f19) < CB0[41].w) ? 0 : ((dot(f20, f20) < CB0[42].w) ? 1 : ((dot(f21, f21) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f19, f19) < CB0[41].w) ? 0 : ((dot(f20, f20) < CB0[42].w) ? 1 : ((dot(f21, f21) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f19, f19) < CB0[41].w) ? 0 : ((dot(f20, f20) < CB0[42].w) ? 1 : ((dot(f21, f21) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f23 = textureLod(ShadowAtlasTexture, f22.xy, 0.0);
    vec2 f24 = vec2(0.0);
    f24.x = CB0[46].z;
    vec2 f25 = f24;
    f25.y = CB0[46].w;
    float f26 = (2.0 * f22.z) - 1.0;
    float f27 = exp(CB0[46].z * f26);
    float f28 = -exp((-CB0[46].w) * f26);
    vec2 f29 = (f25 * CB0[47].y) * vec2(f27, f28);
    vec2 f30 = f29 * f29;
    float f31 = f23.x;
    float f32 = max(f23.y - (f31 * f31), f30.x);
    float f33 = f27 - f31;
    float f34 = f23.z;
    float f35 = max(f23.w - (f34 * f34), f30.y);
    float f36 = f28 - f34;
    vec3 f37 = mix(f12.xyz * CB2[0].w, (min((f16.xyz * (f16.w * 120.0)) + (CB0[8].xyz + (CB0[9].xyz * f17.x)), vec3(CB0[16].w)) + (VARYING2 * (((VARYING4.w * CB0[47].x) > 0.0) ? mix(min((f27 <= f31) ? 1.0 : clamp(((f32 / (f32 + (f33 * f33))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f28 <= f34) ? 1.0 : clamp(((f35 / (f35 + (f36 * f36))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f18, clamp((length(VARYING4.xyz - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f18))) * f12.xyz, vec3(CB2[0].z));
    vec4 f38 = f12;
    f38.x = f37.x;
    vec4 f39 = f38;
    f39.y = f37.y;
    vec4 f40 = f39;
    f40.z = f37.z;
    float f41 = clamp(exp2((CB0[13].z * length(VARYING5)) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f42 = textureLod(PrefilteredEnvTexture, vec4(-VARYING5, 0.0).xyz, max(CB0[13].y, f41) * 5.0).xyz;
    bvec3 f43 = bvec3(!(CB0[13].w == 0.0));
    vec3 f44 = mix(vec3(f43.x ? CB0[14].xyz.x : f42.x, f43.y ? CB0[14].xyz.y : f42.y, f43.z ? CB0[14].xyz.z : f42.z), f40.xyz, vec3(f41));
    vec4 f45 = f40;
    f45.x = f44.x;
    vec4 f46 = f45;
    f46.y = f44.y;
    vec4 f47 = f46;
    f47.z = f44.z;
    vec3 f48 = sqrt(clamp(f47.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f49 = f47;
    f49.x = f48.x;
    vec4 f50 = f49;
    f50.y = f48.y;
    vec4 f51 = f50;
    f51.z = f48.z;
    _entryPointOutput = f51;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s0
