#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <EmitterParams.h>
uniform vec4 CB0[58];
uniform vec4 CB1[4];
uniform sampler2D texTexture;

varying vec3 VARYING0;
varying vec4 VARYING1;

void main()
{
    vec4 f0 = texture2D(texTexture, VARYING0.xy);
    vec3 f1 = (f0.xyz + VARYING1.xyz) * CB1[0].xyz;
    vec4 f2 = vec4(0.0);
    f2.x = f1.x;
    vec4 f3 = f2;
    f3.y = f1.y;
    vec4 f4 = f3;
    f4.z = f1.z;
    vec3 f5 = sqrt(clamp((f4.xyz * f4.xyz) * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f6 = f4;
    f6.x = f5.x;
    vec4 f7 = f6;
    f7.y = f5.y;
    vec4 f8 = f7;
    f8.z = f5.z;
    float f9 = (f0.w * VARYING1.w) * clamp(exp2((CB0[18].z * VARYING0.z) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec4 f10 = f8;
    f10.w = f9;
    vec4 f11 = f10;
    f11.w = f9;
    vec3 f12 = f11.xyz * f9;
    vec4 f13 = f11;
    f13.x = f12.x;
    vec4 f14 = f13;
    f14.y = f12.y;
    vec4 f15 = f14;
    f15.z = f12.z;
    gl_FragData[0] = f15;
}

//$$texTexture=s0
