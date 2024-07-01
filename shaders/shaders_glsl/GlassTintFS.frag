#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
varying vec4 VARYING2;
varying vec4 VARYING4;

void main()
{
    gl_FragData[0] = vec4(mix(vec3(1.0), VARYING2.xyz, vec3(clamp(VARYING2.w * 2.0, 0.0, 1.0))) * clamp(exp2((CB0[18].z * length(VARYING4.xyz)) + CB0[18].x) - CB0[18].w, 0.0, 1.0), 1.0);
}

