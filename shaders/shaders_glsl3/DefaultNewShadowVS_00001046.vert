#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB1[216];
uniform vec4 CB0[57];
in vec4 POSITION;
in vec2 TEXCOORD0;
in vec4 TEXCOORD4;
in vec4 TEXCOORD5;
in vec4 COLOR0;
out vec3 VARYING0;
out vec2 VARYING1;

void main()
{
    vec4 v0 = TEXCOORD5 * vec4(0.0039215688593685626983642578125);
    ivec4 v1 = ivec4(TEXCOORD4) * ivec4(3);
    float v2 = v0.x;
    float v3 = v0.y;
    float v4 = v0.z;
    float v5 = v0.w;
    ivec4 v6 = v1 + ivec4(1);
    ivec4 v7 = v1 + ivec4(2);
    vec4 v8 = vec4(dot((((CB1[v1.x * 1 + 0] * v2) + (CB1[v1.y * 1 + 0] * v3)) + (CB1[v1.z * 1 + 0] * v4)) + (CB1[v1.w * 1 + 0] * v5), POSITION), dot((((CB1[v6.x * 1 + 0] * v2) + (CB1[v6.y * 1 + 0] * v3)) + (CB1[v6.z * 1 + 0] * v4)) + (CB1[v6.w * 1 + 0] * v5), POSITION), dot((((CB1[v7.x * 1 + 0] * v2) + (CB1[v7.y * 1 + 0] * v3)) + (CB1[v7.z * 1 + 0] * v4)) + (CB1[v7.w * 1 + 0] * v5), POSITION), 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v9 = v8;
    v9.z = 0.5;
    vec3 v10 = vec3(0.0);
    v10.x = TEXCOORD0.x;
    vec3 v11 = v10;
    v11.y = TEXCOORD0.y;
    vec3 v12 = v11;
    v12.z = COLOR0.w;
    gl_Position = v9;
    VARYING0 = v12;
    VARYING1 = vec2(v8.zw);
}

