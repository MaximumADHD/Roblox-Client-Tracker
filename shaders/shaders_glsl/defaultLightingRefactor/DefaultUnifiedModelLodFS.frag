#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
varying vec3 VARYING0;
varying vec3 VARYING1;

void main()
{
    vec4 f0 = vec4(VARYING0, 1.0);
    vec3 f1 = mix(CB0[19].xyz, f0.xyz, vec3(clamp(exp2((CB0[18].z * length(VARYING1)) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f2 = f0;
    f2.x = f1.x;
    vec4 f3 = f2;
    f3.y = f1.y;
    vec4 f4 = f3;
    f4.z = f1.z;
    vec3 f5 = sqrt(clamp(f4.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f6 = f4;
    f6.x = f5.x;
    vec4 f7 = f6;
    f7.y = f5.y;
    vec4 f8 = f7;
    f8.z = f5.z;
    gl_FragData[0] = f8;
}

