#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <Instance.h>
uniform vec4 CB0[52];
uniform vec4 CB1[511];
in vec4 POSITION;
out vec3 VARYING0;

void main()
{
    vec4 v0 = vec4(dot(CB1[gl_InstanceID * 7 + 0], POSITION), dot(CB1[gl_InstanceID * 7 + 1], POSITION), dot(CB1[gl_InstanceID * 7 + 2], POSITION), 1.0);
    gl_Position = v0 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = vec3(dot(CB0[20], v0), dot(CB0[21], v0), dot(CB0[22], v0));
}

