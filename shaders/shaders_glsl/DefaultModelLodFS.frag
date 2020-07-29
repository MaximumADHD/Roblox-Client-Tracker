#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[52];
varying vec3 VARYING0;
varying vec3 VARYING1;

void main()
{
    vec4 f0 = vec4(VARYING0, 1.0);
    vec3 f1 = sqrt(clamp(mix(CB0[14].xyz, f0.xyz, vec3(clamp(exp2((CB0[13].z * length(VARYING1)) + CB0[13].x) - CB0[13].w, 0.0, 1.0))).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    gl_FragData[0] = vec4(f1.x, f1.y, f1.z, f0.w);
}

