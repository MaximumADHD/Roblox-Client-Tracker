#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[57];
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
    vec3 v2 = vec3(0.0);
    v2.x = TEXCOORD0.x;
    vec3 v3 = v2;
    v3.y = TEXCOORD0.y;
    vec3 v4 = v3;
    v4.z = COLOR0.w;
    gl_Position = v1;
    VARYING0 = v4;
    VARYING1 = vec2(v0.zw);
}

