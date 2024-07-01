#version 150

#extension GL_ARB_shading_language_include : require
#include <InstanceData.h>
#include <Globals.h>
uniform vec4 CB1[384];
uniform vec4 CB0[58];
in vec4 POSITION;

void main()
{
    vec4 v0 = vec4((POSITION.xyz * 0.0039215688593685626983642578125) - vec3(0.5), 1.0);
    gl_Position = vec4(dot(CB1[gl_InstanceID * 3 + 0], v0), dot(CB1[gl_InstanceID * 3 + 1], v0), dot(CB1[gl_InstanceID * 3 + 2], v0), 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
}

