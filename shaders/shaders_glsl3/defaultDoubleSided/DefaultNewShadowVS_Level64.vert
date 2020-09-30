#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[52];
in vec4 POSITION;
in vec2 TEXCOORD0;
in vec4 COLOR0;
out vec3 VARYING0;
out vec2 VARYING1;

void main()
{
    vec4 v0 = vec4(POSITION.xyz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v1 = v0;
    v1.z = 0.5;
    vec3 v2 = vec3(TEXCOORD0.x, TEXCOORD0.y, vec3(0.0).z);
    v2.z = COLOR0.w * 0.0039215688593685626983642578125;
    gl_Position = v1;
    VARYING0 = v2;
    VARYING1 = vec2(v0.zw);
}

