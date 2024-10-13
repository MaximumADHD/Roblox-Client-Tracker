#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;

in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING6;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = VARYING2.xyz * VARYING2.xyz;
    vec4 f1 = VARYING2;
    f1.x = f0.x;
    vec4 f2 = f1;
    f2.y = f0.y;
    vec4 f3 = f2;
    f3.z = f0.z;
    float f4 = length(VARYING4.xyz);
    float f5 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f6 = VARYING3.yzx - (VARYING3.yzx * f5);
    vec4 f7 = vec4(clamp(f5, 0.0, 1.0));
    vec4 f8 = mix(texture(LightMapTexture, f6), vec4(0.0), f7);
    vec4 f9 = mix(texture(LightGridSkylightTexture, f6), vec4(1.0), f7);
    float f10 = f9.y;
    vec3 f11 = (((VARYING6.xyz * f10) + min((f8.xyz * (f8.w * 120.0)) + (CB0[32].xyz + (CB0[33].xyz * f9.x)), vec3(CB0[21].w))) * (f3.xyz * VARYING2.w)) + (CB0[15].xyz * ((VARYING6.w * f10) * 0.100000001490116119384765625));
    vec4 f12 = vec4(0.0);
    f12.x = f11.x;
    vec4 f13 = f12;
    f13.y = f11.y;
    vec4 f14 = f13;
    f14.z = f11.z;
    vec4 f15 = f14;
    f15.w = VARYING2.w;
    float f16 = clamp(exp2((CB0[18].z * f4) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f17 = textureLod(PrefilteredEnvTexture, vec4(-(VARYING4.xyz / vec3(f4)), 0.0).xyz, max(CB0[18].y, f16) * 5.0).xyz;
    bvec3 f18 = bvec3(!(CB0[18].w == 0.0));
    vec3 f19 = mix(vec3(f18.x ? CB0[19].xyz.x : f17.x, f18.y ? CB0[19].xyz.y : f17.y, f18.z ? CB0[19].xyz.z : f17.z), f15.xyz, vec3(f16));
    vec4 f20 = f15;
    f20.x = f19.x;
    vec4 f21 = f20;
    f21.y = f19.y;
    vec4 f22 = f21;
    f22.z = f19.z;
    vec3 f23 = max(vec3(0.0), f22.xyz);
    vec4 f24 = f22;
    f24.x = f23.x;
    vec4 f25 = f24;
    f25.y = f23.y;
    vec4 f26 = f25;
    f26.z = f23.z;
    _entryPointOutput = f26;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
