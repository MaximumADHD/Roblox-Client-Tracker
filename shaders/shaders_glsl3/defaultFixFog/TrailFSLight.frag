#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <TrailParams.h>
uniform vec4 CB0[58];
uniform vec4 CB1[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D texTexture;

in vec2 VARYING0;
in vec4 VARYING1;
in vec3 VARYING2;
in vec3 VARYING3;
in vec3 VARYING4;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(texTexture, VARYING0);
    vec3 f1 = f0.xyz * VARYING1.xyz;
    vec4 f2 = vec4(0.0);
    f2.x = f1.x;
    vec4 f3 = f2;
    f3.y = f1.y;
    vec4 f4 = f3;
    f4.z = f1.z;
    vec3 f5 = f4.xyz * f4.xyz;
    vec4 f6 = f4;
    f6.x = f5.x;
    vec4 f7 = f6;
    f7.y = f5.y;
    vec4 f8 = f7;
    f8.z = f5.z;
    float f9 = clamp(dot(step(CB0[24].xyz, abs(VARYING2 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f10 = VARYING2.yzx - (VARYING2.yzx * f9);
    vec4 f11 = vec4(clamp(f9, 0.0, 1.0));
    vec4 f12 = mix(texture(LightMapTexture, f10), vec4(0.0), f11);
    vec4 f13 = mix(texture(LightGridSkylightTexture, f10), vec4(1.0), f11);
    vec4 f14 = texture(ShadowMapTexture, VARYING3.xy);
    vec3 f15 = mix(f8.xyz * CB1[0].w, (min((f12.xyz * (f12.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f13.x)), vec3(CB0[21].w)) + (CB0[15].xyz * ((1.0 - ((step(f14.x, VARYING3.z) * clamp(CB0[29].z + (CB0[29].w * abs(VARYING3.z - 0.5)), 0.0, 1.0)) * f14.y)) * f13.y))) * f8.xyz, vec3(CB1[0].z));
    vec4 f16 = f8;
    f16.x = f15.x;
    vec4 f17 = f16;
    f17.y = f15.y;
    vec4 f18 = f17;
    f18.z = f15.z;
    float f19 = clamp(exp2((CB0[18].z * length(VARYING4)) + CB0[18].x) - CB0[18].w, 0.0, 1.0) * (VARYING1.w * f0.w);
    vec3 f20 = sqrt(clamp(f18.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f21 = f18;
    f21.x = f20.x;
    vec4 f22 = f21;
    f22.y = f20.y;
    vec4 f23 = f22;
    f23.z = f20.z;
    vec3 f24 = f23.xyz * f19;
    vec4 f25 = f23;
    f25.x = f24.x;
    vec4 f26 = f25;
    f26.y = f24.y;
    vec4 f27 = f26;
    f27.z = f24.z;
    vec4 f28 = f27;
    f28.w = f19 * CB1[0].y;
    _entryPointOutput = f28;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$texTexture=s0
