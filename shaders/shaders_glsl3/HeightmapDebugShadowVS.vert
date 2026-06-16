#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[61];
in vec3 POSITION;

void main()
{
    gl_Position = vec4(POSITION, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
}

