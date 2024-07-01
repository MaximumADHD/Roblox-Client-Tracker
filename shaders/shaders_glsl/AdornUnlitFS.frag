#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
varying vec4 VARYING0;
varying vec3 VARYING1;

void main()
{
    vec3 f0 = VARYING0.xyz * VARYING0.xyz;
    vec4 f1 = VARYING0;
    f1.x = f0.x;
    vec4 f2 = f1;
    f2.y = f0.y;
    vec4 f3 = f2;
    f3.z = f0.z;
    vec3 f4 = mix(CB0[19].xyz, f3.xyz, vec3(clamp(exp2((CB0[18].z * length(VARYING1)) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f5 = f3;
    f5.x = f4.x;
    vec4 f6 = f5;
    f6.y = f4.y;
    vec4 f7 = f6;
    f7.z = f4.z;
    vec3 f8 = sqrt(clamp(f7.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f9 = f7;
    f9.x = f8.x;
    vec4 f10 = f9;
    f10.y = f8.y;
    vec4 f11 = f10;
    f11.z = f8.z;
    gl_FragData[0] = f11;
}

