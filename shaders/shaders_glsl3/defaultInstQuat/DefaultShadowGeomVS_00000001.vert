#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <InstanceData.h>
uniform vec4 CB0[58];
uniform vec4 CB1[511];
in vec4 POSITION;
out vec3 VARYING0;

void main()
{
    vec3 v0 = cross(CB1[gl_InstanceID * 7 + 0].xyz, cross(CB1[gl_InstanceID * 7 + 0].xyz, POSITION.xyz) + (POSITION.xyz * CB1[gl_InstanceID * 7 + 0].w));
    vec4 v1 = vec4(((POSITION.xyz + v0) + v0) + CB1[gl_InstanceID * 7 + 1].xyz, 1.0);
    gl_Position = v1 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = vec3(dot(CB0[25], v1), dot(CB0[26], v1), dot(CB0[27], v1));
}

