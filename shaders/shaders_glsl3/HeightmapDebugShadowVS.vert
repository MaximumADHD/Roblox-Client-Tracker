#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[61];
in vec3 POSITION;

void main()
{
    vec3 v0 = POSITION - CB0[11].xyz;
    bvec3 v1 = bvec3(CB0[51].y > 0.0);
    gl_Position = vec4(vec3(v1.x ? v0.x : POSITION.x, v1.y ? v0.y : POSITION.y, v1.z ? v0.z : POSITION.z), 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
}

