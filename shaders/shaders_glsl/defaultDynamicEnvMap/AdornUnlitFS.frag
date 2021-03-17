#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
varying vec4 VARYING0;
varying vec3 VARYING1;

void main()
{
    vec3 f0 = sqrt(clamp(mix(CB0[14].xyz, (VARYING0.xyz * VARYING0.xyz).xyz, vec3(clamp(exp2((CB0[13].z * length(VARYING1)) + CB0[13].x) - CB0[13].w, 0.0, 1.0))).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    gl_FragData[0] = vec4(f0.x, f0.y, f0.z, VARYING0.w);
}

