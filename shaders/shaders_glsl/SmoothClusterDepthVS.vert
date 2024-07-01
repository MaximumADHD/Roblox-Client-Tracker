#version 110

#extension GL_ARB_shading_language_include : require
#include <UnpackInfo.h>
#include <Globals.h>
uniform vec4 CB1[1];
uniform vec4 CB0[58];
attribute vec4 POSITION;

void main()
{
    vec4 v0 = vec4((POSITION.xyz * CB1[0].w) + CB1[0].xyz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v1 = v0;
    v1.z = v0.z - (float(POSITION.w < 0.0) * 0.00200000009499490261077880859375);
    gl_Position = v1;
}

