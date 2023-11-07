#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
#include <AdvancedUIShadingParams.h>
uniform vec4 CB0[57];
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
    vec3 f5 = f0.xyz / vec3(f4);
    bvec3 f6 = bvec3(f4 == 0.0);
    vec4 f7 = vec4(vec3(f6.x ? vec3(0.0).x : f5.x, f6.y ? vec3(0.0).y : f5.y, f6.z ? vec3(0.0).z : f5.z), f4);
    bvec4 f8 = bvec4(CB2[0].y > 1.5);
    vec4 f9 = VARYING1 * vec4(f8.x ? f7.x : f3.x, f8.y ? f7.y : f3.y, f8.z ? f7.z : f3.z, f8.w ? f7.w : f3.w);
    vec2 f10 = abs(vec2((VARYING0.x * CB3[0].x) + CB3[0].y, (VARYING0.y * CB3[0].z) + CB3[0].w)) - CB3[1].xy;
    float f11 = length(max(f10, vec2(0.0))) + min(max(f10.x, f10.y), 0.0);
    float f12 = (f9.w * clamp(CB3[1].z - f11, 0.0, 1.0)) * clamp(f11 - CB3[1].w, 0.0, 1.0);
    vec4 f13 = f9;
    f13.w = f12;
    vec4 f14 = f13;
    f14.w = f12;
    vec3 f15 = f14.xyz * f14.xyz;
    vec4 f16 = f14;
    f16.x = f15.x;
    vec4 f17 = f16;
    f17.y = f15.y;
    vec4 f18 = f17;
    f18.z = f15.z;
    float f19 = clamp(dot(step(CB0[24].xyz, abs(VARYING3 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f20 = VARYING3.yzx - (VARYING3.yzx * f19);
    vec4 f21 = vec4(clamp(f19, 0.0, 1.0));
    vec4 f22 = mix(texture(LightMapTexture, f20), vec4(0.0), f21);
    vec4 f23 = mix(texture(LightGridSkylightTexture, f20), vec4(1.0), f21);
    float f24 = f23.y;
    vec3 f25 = VARYING4.xyz - CB0[46].xyz;
    vec3 f26 = VARYING4.xyz - CB0[47].xyz;
    vec3 f27 = VARYING4.xyz - CB0[48].xyz;
    vec4 f28 = vec4(VARYING4.xyz, 1.0) * mat4(CB8[((dot(f25, f25) < CB0[46].w) ? 0 : ((dot(f26, f26) < CB0[47].w) ? 1 : ((dot(f27, f27) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f25, f25) < CB0[46].w) ? 0 : ((dot(f26, f26) < CB0[47].w) ? 1 : ((dot(f27, f27) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f25, f25) < CB0[46].w) ? 0 : ((dot(f26, f26) < CB0[47].w) ? 1 : ((dot(f27, f27) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f25, f25) < CB0[46].w) ? 0 : ((dot(f26, f26) < CB0[47].w) ? 1 : ((dot(f27, f27) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f29 = textureLod(ShadowAtlasTexture, f28.xy, 0.0);
    vec2 f30 = vec2(0.0);
    f30.x = CB0[51].z;
    vec2 f31 = f30;
    f31.y = CB0[51].w;
    float f32 = (2.0 * f28.z) - 1.0;
    float f33 = exp(CB0[51].z * f32);
    float f34 = -exp((-CB0[51].w) * f32);
    vec2 f35 = (f31 * CB0[52].y) * vec2(f33, f34);
    vec2 f36 = f35 * f35;
    float f37 = f29.x;
    float f38 = max(f29.y - (f37 * f37), f36.x);
    float f39 = f33 - f37;
    float f40 = f29.z;
    float f41 = max(f29.w - (f40 * f40), f36.y);
    float f42 = f34 - f40;
    vec3 f43 = mix(f18.xyz * CB2[0].w, (min((f22.xyz * (f22.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f23.x)), vec3(CB0[21].w)) + (VARYING2 * (((VARYING4.w * CB0[52].x) > 0.0) ? mix(min((f33 <= f37) ? 1.0 : clamp(((f38 / (f38 + (f39 * f39))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f34 <= f40) ? 1.0 : clamp(((f41 / (f41 + (f42 * f42))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f24, clamp((length(VARYING4.xyz - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f24))) * f18.xyz, vec3(CB2[0].z));
    vec4 f44 = f18;
    f44.x = f43.x;
    vec4 f45 = f44;
    f45.y = f43.y;
    vec4 f46 = f45;
    f46.z = f43.z;
    float f47 = clamp(exp2((CB0[18].z * length(VARYING5)) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f48 = textureLod(PrefilteredEnvTexture, vec4(-VARYING5, 0.0).xyz, max(CB0[18].y, f47) * 5.0).xyz;
    bvec3 f49 = bvec3(!(CB0[18].w == 0.0));
    vec3 f50 = mix(vec3(f49.x ? CB0[19].xyz.x : f48.x, f49.y ? CB0[19].xyz.y : f48.y, f49.z ? CB0[19].xyz.z : f48.z), f46.xyz, vec3(f47));
    vec4 f51 = f46;
    f51.x = f50.x;
    vec4 f52 = f51;
    f52.y = f50.y;
    vec4 f53 = f52;
    f53.z = f50.z;
    vec3 f54 = sqrt(clamp(f53.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f55 = f53;
    f55.x = f54.x;
    vec4 f56 = f55;
    f56.y = f54.y;
    vec4 f57 = f56;
    f57.z = f54.z;
    _entryPointOutput = f57;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s0
