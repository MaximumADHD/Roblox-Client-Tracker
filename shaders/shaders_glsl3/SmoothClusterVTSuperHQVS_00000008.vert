#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform vec4 unpackInfo[1];
uniform vec4 CB3[63];
in vec4 POSITION;
in vec2 TEXCOORD0;
in vec4 NORMAL;
out vec4 VARYING0;
out vec4 VARYING1;
out vec3 VARYING2;
out vec4 VARYING3;
out vec2 VARYING4;

void main()
{
    vec3 v0 = (POSITION.xyz * unpackInfo[0].w) + unpackInfo[0].xyz;
    float v1 = v0.x;
    vec4 v2 = vec4(v1, v0.yz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v3 = v2;
    v3.z = v2.z - (NORMAL.w * 0.00200000009499490261077880859375);
    vec4 v4 = vec4(0.0);
    v4.w = NORMAL.w;
    vec3 v5 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec3 v6 = ((v0 + (v5 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v7 = v4;
    v7.x = v6.x;
    vec4 v8 = v7;
    v8.y = v6.y;
    vec4 v9 = v8;
    v9.z = v6.z;
    gl_Position = v3;
    VARYING0 = v9;
    VARYING1 = vec4(v1, v0.yz, length(CB0[11].xyz - v0));
    VARYING2 = v5;
    VARYING3 = CB3[int(abs(POSITION.w)) * 1 + 0];
    VARYING4 = TEXCOORD0;
}

