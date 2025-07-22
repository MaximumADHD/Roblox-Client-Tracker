#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <FeedbackData.h>
uniform vec4 unpackInfo[1];
uniform vec4 CB0[61];
uniform vec4 CB6[2];
attribute vec4 POSITION;
attribute vec2 TEXCOORD0;
attribute vec4 NORMAL;
varying vec2 VARYING0;

void main()
{
    vec4 v0 = vec4((POSITION.xyz * unpackInfo[0].w) + unpackInfo[0].xyz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v1 = v0;
    v1.z = v0.z - (NORMAL.w * 0.00200000009499490261077880859375);
    vec2 v2 = v1.xy + (CB6[1].xy * v0.w);
    vec4 v3 = v1;
    v3.x = v2.x;
    vec4 v4 = v3;
    v4.y = v2.y;
    gl_Position = v4;
    VARYING0 = TEXCOORD0;
}

