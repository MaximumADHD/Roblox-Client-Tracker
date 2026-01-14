#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <FeedbackData.h>
uniform vec4 unpackInfo[1];
uniform vec4 CB0[61];
uniform vec4 CB6[2];
uniform ivec4 CB4[1];
in vec4 POSITION;
in vec2 TEXCOORD0;
in vec4 NORMAL;
out vec2 VARYING0;
out vec3 VARYING1;

void main()
{
    vec3 v0 = (POSITION.xyz * unpackInfo[0].w) + unpackInfo[0].xyz;
    vec4 v1 = vec4(v0, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v2 = v1;
    v2.z = v1.z - (NORMAL.w * 0.00200000009499490261077880859375);
    vec2 v3 = v2.xy + (CB6[1].xy * v1.w);
    vec4 v4 = v2;
    v4.x = v3.x;
    vec4 v5 = v4;
    v5.y = v3.y;
    gl_Position = v5;
    VARYING0 = TEXCOORD0;
    VARYING1 = mod(mod(v0 / vec3(float(1 << (CB4[0].w + 4))), vec3(1024.0)) + vec3(1024.0), vec3(1024.0));
}

