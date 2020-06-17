#version 150

#extension GL_ARB_shading_language_include : require
#include <Instance.h>
#include <Globals.h>
uniform vec4 CB1[511];
uniform vec4 CB0[52];
in vec4 POSITION;

void main()
{
    vec3 v0 = POSITION.xyz * CB1[gl_InstanceID * 7 + 3].xyz;
    vec4 v1 = vec4(v0.x, v0.y, v0.z, POSITION.w);
    gl_Position = vec4(dot(CB1[gl_InstanceID * 7 + 0], v1), dot(CB1[gl_InstanceID * 7 + 1], v1), dot(CB1[gl_InstanceID * 7 + 2], v1), 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
}

