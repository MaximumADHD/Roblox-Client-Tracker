#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <FeedbackData.h>
uniform vec4 unpackInfo[1];
uniform vec4 CB0[58];
uniform vec4 CB6[2];
attribute vec4 POSITION;
attribute vec2 TEXCOORD0;
varying vec2 VARYING0;

void main()
{
    vec4 v0 = vec4((POSITION.xyz * unpackInfo[0].w) + unpackInfo[0].xyz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec2 v1 = v0.xy + (CB6[1].xy * v0.w);
    vec4 v2 = v0;
    v2.x = v1.x;
    vec4 v3 = v2;
    v3.y = v1.y;
    gl_Position = v3;
    VARYING0 = TEXCOORD0;
}

