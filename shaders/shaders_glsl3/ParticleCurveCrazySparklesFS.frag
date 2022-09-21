#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <EmitterParams.h>
uniform vec4 CB0[58];
uniform vec4 CB1[4];
uniform sampler2D texTexture;

in vec3 VARYING0;
in vec4 VARYING1;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(texTexture, VARYING0.xy);
    vec3 f1 = VARYING1.xyz * CB1[0].xyz;
    float f2 = f0.w;
    float f3 = f2 * 2.0;
    vec3 f4 = f1 * f3;
    vec3 f5 = mix(f1, f0.xyz, vec3(f3 - 1.0));
    bvec3 f6 = bvec3(f2 < 0.5);
    vec3 f7 = vec3(f6.x ? f4.x : f5.x, f6.y ? f4.y : f5.y, f6.z ? f4.z : f5.z);
    vec4 f8 = vec4(0.0);
    f8.x = f7.x;
    vec4 f9 = f8;
    f9.y = f7.y;
    vec4 f10 = f9;
    f10.z = f7.z;
    vec3 f11 = f10.xyz * VARYING1.w;
    vec4 f12 = f10;
    f12.x = f11.x;
    vec4 f13 = f12;
    f13.y = f11.y;
    vec4 f14 = f13;
    f14.z = f11.z;
    vec3 f15 = sqrt(clamp((f14.xyz * f14.xyz) * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f16 = f14;
    f16.x = f15.x;
    vec4 f17 = f16;
    f17.y = f15.y;
    vec4 f18 = f17;
    f18.z = f15.z;
    float f19 = clamp(exp2((CB0[18].z * VARYING0.z) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec4 f20 = f18;
    f20.w = (CB1[1].y * f2) * (VARYING1.w * f19);
    vec3 f21 = f20.xyz * f19;
    vec4 f22 = f20;
    f22.x = f21.x;
    vec4 f23 = f22;
    f23.y = f21.y;
    vec4 f24 = f23;
    f24.z = f21.z;
    _entryPointOutput = f24;
}

//$$texTexture=s0
