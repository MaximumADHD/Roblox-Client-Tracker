#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
in vec4 POSITION;
in vec2 TEXCOORD0;
in vec4 COLOR0;
out vec3 VARYING0;

void main()
{
    vec3 v0 = vec3(0.0);
    v0.x = TEXCOORD0.x;
    vec3 v1 = v0;
    v1.y = TEXCOORD0.y;
    vec3 v2 = v1;
    v2.z = COLOR0.w * 0.0039215688593685626983642578125;
    gl_Position = vec4(POSITION.xyz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = v2;
}

