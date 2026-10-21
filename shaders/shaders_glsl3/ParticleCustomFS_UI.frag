#version 150

#extension GL_ARB_shading_language_include : require
#include <EmitterParams.h>
uniform vec4 CB1[5];
uniform sampler2D texTexture;

in vec3 VARYING0;
in vec4 VARYING1;
in vec2 VARYING3;
in float VARYING4;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(texTexture, VARYING0.xy);
    vec4 f1 = texture(texTexture, VARYING3);
    float f2 = f0.w;
    float f3 = f1.w;
    vec3 f4 = mix(f0.xyz * f2, f1.xyz * f3, vec3(VARYING4));
    vec4 f5 = vec4(0.0);
    f5.x = f4.x;
    vec4 f6 = f5;
    f6.y = f4.y;
    vec4 f7 = f6;
    f7.z = f4.z;
    float f8 = mix(f2, f3, VARYING4);
    vec4 f9 = f7;
    f9.w = f8;
    vec3 f10 = f9.xyz * VARYING1.xyz;
    vec4 f11 = vec4(0.0);
    f11.x = f10.x;
    vec4 f12 = f11;
    f12.y = f10.y;
    vec4 f13 = f12;
    f13.z = f10.z;
    vec3 f14 = f13.xyz * VARYING1.w;
    vec4 f15 = f13;
    f15.x = f14.x;
    vec4 f16 = f15;
    f16.y = f14.y;
    vec4 f17 = f16;
    f17.z = f14.z;
    vec4 f18 = f17;
    f18.w = (VARYING1.w * f8) * CB1[1].y;
    _entryPointOutput = f18;
}

//$$texTexture=s0
