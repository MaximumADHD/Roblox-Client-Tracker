#version 150

#extension GL_ARB_shading_language_include : require
#include <BackdropSourceCB.h>
uniform vec4 CB1[2];
in vec4 POSITION;
out vec2 VARYING0;

void main()
{
    vec3 v0 = vec3((POSITION.xy * vec2(0.5, -0.5)) + vec2(0.5), 1.0);
    gl_Position = POSITION;
    VARYING0 = vec2(dot(CB1[0].xyz, v0), dot(CB1[1].xyz, v0));
}

