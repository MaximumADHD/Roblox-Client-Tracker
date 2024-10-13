#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = (texture(DiffuseMapTexture, VARYING0) * VARYING2).xyz;
    vec3 f1 = f0 * f0;
    vec4 f2 = vec4(0.0);
    f2.x = f1.x;
    vec4 f3 = f2;
    f3.y = f1.y;
    vec4 f4 = f3;
    f4.z = f1.z;
    float f5 = length(VARYING4.xyz);
    float f6 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f7 = VARYING3.yzx - (VARYING3.yzx * f6);
    vec4 f8 = vec4(clamp(f6, 0.0, 1.0));
    vec4 f9 = mix(texture(LightMapTexture, f7), vec4(0.0), f8);
    vec4 f10 = mix(texture(LightGridSkylightTexture, f7), vec4(1.0), f8);
    float f11 = f10.y;
    vec3 f12 = (((VARYING5.xyz * f11) + min((f9.xyz * (f9.w * 120.0)) + (CB0[32].xyz + (CB0[33].xyz * f10.x)), vec3(CB0[21].w))) * f4.xyz) + ((CB0[15].xyz * mix(vec3(0.100000001490116119384765625), f4.xyz, vec3(VARYING6.w * CB0[31].w))) * (VARYING5.w * f11));
    vec4 f13 = vec4(0.0);
    f13.x = f12.x;
    vec4 f14 = f13;
    f14.y = f12.y;
    vec4 f15 = f14;
    f15.z = f12.z;
    vec4 f16 = f15;
    f16.w = 1.0;
    float f17 = clamp(exp2((CB0[18].z * f5) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f18 = textureLod(PrefilteredEnvTexture, vec4(-(VARYING4.xyz / vec3(f5)), 0.0).xyz, max(CB0[18].y, f17) * 5.0).xyz;
    bvec3 f19 = bvec3(!(CB0[18].w == 0.0));
    vec3 f20 = mix(vec3(f19.x ? CB0[19].xyz.x : f18.x, f19.y ? CB0[19].xyz.y : f18.y, f19.z ? CB0[19].xyz.z : f18.z), f16.xyz, vec3(f17));
    vec4 f21 = f16;
    f21.x = f20.x;
    vec4 f22 = f21;
    f22.y = f20.y;
    vec4 f23 = f22;
    f23.z = f20.z;
    vec3 f24 = max(vec3(0.0), f23.xyz);
    vec4 f25 = f23;
    f25.x = f24.x;
    vec4 f26 = f25;
    f26.y = f24.y;
    vec4 f27 = f26;
    f27.z = f24.z;
    _entryPointOutput = f27;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s3
