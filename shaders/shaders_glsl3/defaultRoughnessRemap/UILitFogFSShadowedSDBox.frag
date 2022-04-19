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
    vec4 f3 = vec4(f2.x ? f1.x : f0.x, f2.y ? f1.y : f0.y, f2.z ? f1.z : f0.z, f2.w ? f1.w : f0.w);
    float f4 = f0.w;
    vec4 f5 = vec4(f0.xyz / vec3(f4), f4);
    bvec4 f6 = bvec4(CB2[0].y > 1.5);
    vec4 f7 = VARYING1 * vec4(f6.x ? f5.x : f3.x, f6.y ? f5.y : f3.y, f6.z ? f5.z : f3.z, f6.w ? f5.w : f3.w);
    vec2 f8 = abs(vec2((VARYING0.x * CB3[0].x) + CB3[0].y, (VARYING0.y * CB3[0].z) + CB3[0].w)) - CB3[1].xy;
    float f9 = length(max(f8, vec2(0.0))) + min(max(f8.x, f8.y), 0.0);
    float f10 = (f7.w * clamp(CB3[1].z - f9, 0.0, 1.0)) * clamp(f9 - CB3[1].w, 0.0, 1.0);
    vec4 f11 = f7;
    f11.w = f10;
    vec4 f12 = f11;
    f12.w = f10;
    vec3 f13 = f12.xyz * f12.xyz;
    vec4 f14 = f12;
    f14.x = f13.x;
    vec4 f15 = f14;
    f15.y = f13.y;
    vec4 f16 = f15;
    f16.z = f13.z;
    float f17 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f18 = VARYING3.yzx - (VARYING3.yzx * f17);
    vec4 f19 = vec4(clamp(f17, 0.0, 1.0));
    vec4 f20 = mix(texture(LightMapTexture, f18), vec4(0.0), f19);
    vec4 f21 = mix(texture(LightGridSkylightTexture, f18), vec4(1.0), f19);
    float f22 = f21.y;
    vec3 f23 = VARYING4.xyz - CB0[41].xyz;
    vec3 f24 = VARYING4.xyz - CB0[42].xyz;
    vec3 f25 = VARYING4.xyz - CB0[43].xyz;
    vec4 f26 = vec4(VARYING4.xyz, 1.0) * mat4(CB8[((dot(f23, f23) < CB0[41].w) ? 0 : ((dot(f24, f24) < CB0[42].w) ? 1 : ((dot(f25, f25) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f23, f23) < CB0[41].w) ? 0 : ((dot(f24, f24) < CB0[42].w) ? 1 : ((dot(f25, f25) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f23, f23) < CB0[41].w) ? 0 : ((dot(f24, f24) < CB0[42].w) ? 1 : ((dot(f25, f25) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f23, f23) < CB0[41].w) ? 0 : ((dot(f24, f24) < CB0[42].w) ? 1 : ((dot(f25, f25) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f27 = textureLod(ShadowAtlasTexture, f26.xy, 0.0);
    vec2 f28 = vec2(0.0);
    f28.x = CB0[46].z;
    vec2 f29 = f28;
    f29.y = CB0[46].w;
    float f30 = (2.0 * f26.z) - 1.0;
    float f31 = exp(CB0[46].z * f30);
    float f32 = -exp((-CB0[46].w) * f30);
    vec2 f33 = (f29 * CB0[47].y) * vec2(f31, f32);
    vec2 f34 = f33 * f33;
    float f35 = f27.x;
    float f36 = max(f27.y - (f35 * f35), f34.x);
    float f37 = f31 - f35;
    float f38 = f27.z;
    float f39 = max(f27.w - (f38 * f38), f34.y);
    float f40 = f32 - f38;
    vec3 f41 = mix(f16.xyz * CB2[0].w, (min((f20.xyz * (f20.w * 120.0)) + (CB0[8].xyz + (CB0[9].xyz * f21.x)), vec3(CB0[16].w)) + (VARYING2 * (((VARYING4.w * CB0[47].x) > 0.0) ? mix(min((f31 <= f35) ? 1.0 : clamp(((f36 / (f36 + (f37 * f37))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f32 <= f38) ? 1.0 : clamp(((f39 / (f39 + (f40 * f40))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f22, clamp((length(VARYING4.xyz - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f22))) * f16.xyz, vec3(CB2[0].z));
    vec4 f42 = f16;
    f42.x = f41.x;
    vec4 f43 = f42;
    f43.y = f41.y;
    vec4 f44 = f43;
    f44.z = f41.z;
    float f45 = clamp(exp2((CB0[13].z * length(VARYING5)) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f46 = textureLod(PrefilteredEnvTexture, vec4(-VARYING5, 0.0).xyz, max(CB0[13].y, f45) * 5.0).xyz;
    bvec3 f47 = bvec3(!(CB0[13].w == 0.0));
    vec3 f48 = mix(vec3(f47.x ? CB0[14].xyz.x : f46.x, f47.y ? CB0[14].xyz.y : f46.y, f47.z ? CB0[14].xyz.z : f46.z), f44.xyz, vec3(f45));
    vec4 f49 = f44;
    f49.x = f48.x;
    vec4 f50 = f49;
    f50.y = f48.y;
    vec4 f51 = f50;
    f51.z = f48.z;
    vec3 f52 = sqrt(clamp(f51.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f53 = f51;
    f53.x = f52.x;
    vec4 f54 = f53;
    f54.y = f52.y;
    vec4 f55 = f54;
    f55.z = f52.z;
    _entryPointOutput = f55;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s0
