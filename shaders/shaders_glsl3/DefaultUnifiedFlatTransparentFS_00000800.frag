#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[61];
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
    vec4 f0 = texture(DiffuseMapTexture, VARYING0) * VARYING2;
    vec3 f1 = f0.xyz;
    vec3 f2 = f1 * f1;
    vec4 f3 = f0;
    f3.x = f2.x;
    vec4 f4 = f3;
    f4.y = f2.y;
    vec4 f5 = f4;
    f5.z = f2.z;
    float f6 = length(VARYING4.xyz);
    float f7 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f8 = VARYING3.yzx - (VARYING3.yzx * f7);
    vec4 f9 = vec4(clamp(f7, 0.0, 1.0));
    vec4 f10 = mix(texture(LightMapTexture, f8), vec4(0.0), f9);
    vec4 f11 = mix(texture(LightGridSkylightTexture, f8), vec4(1.0), f9);
    float f12 = f11.y;
    vec3 f13 = (((VARYING5.xyz * f12) + min((f10.xyz * (f10.w * 120.0)) + (CB0[32].xyz + (CB0[33].xyz * f11.x)), vec3(CB0[21].w))) * f5.xyz) + ((CB0[15].xyz * mix(vec3(0.100000001490116119384765625), f5.xyz, vec3(VARYING6.w * CB0[31].w))) * (VARYING5.w * f12));
    vec4 f14 = vec4(0.0);
    f14.x = f13.x;
    vec4 f15 = f14;
    f15.y = f13.y;
    vec4 f16 = f15;
    f16.z = f13.z;
    vec4 f17 = f16;
    f17.w = f0.w;
    float f18 = clamp(exp2((CB0[18].z * f6) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f19 = textureLod(PrefilteredEnvTexture, vec4(-(VARYING4.xyz / vec3(f6)), 0.0).xyz, max(CB0[18].y, f18) * 5.0).xyz;
    bvec3 f20 = bvec3(!(CB0[18].w == 0.0));
    vec3 f21 = mix(vec3(f20.x ? CB0[19].xyz.x : f19.x, f20.y ? CB0[19].xyz.y : f19.y, f20.z ? CB0[19].xyz.z : f19.z), f17.xyz, vec3(f18));
    vec4 f22 = f17;
    f22.x = f21.x;
    vec4 f23 = f22;
    f23.y = f21.y;
    vec4 f24 = f23;
    f24.z = f21.z;
    vec3 f25 = max(vec3(0.0), f24.xyz);
    vec4 f26 = f24;
    f26.x = f25.x;
    vec4 f27 = f26;
    f27.y = f25.y;
    vec4 f28 = f27;
    f28.z = f25.z;
    _entryPointOutput = f28;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s3
