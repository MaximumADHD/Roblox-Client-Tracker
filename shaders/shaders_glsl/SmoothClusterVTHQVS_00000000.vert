#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[57];
uniform vec4 unpackInfo[1];
uniform vec4 CB3[63];
attribute vec4 POSITION;
attribute vec2 TEXCOORD0;
attribute vec4 NORMAL;
varying vec3 VARYING0;
varying vec4 VARYING1;
varying vec3 VARYING2;
varying vec3 VARYING3;
varying vec4 VARYING4;
varying vec2 VARYING5;

void main()
{
    vec3 v0 = (POSITION.xyz * unpackInfo[0].w) + unpackInfo[0].xyz;
    vec4 v1 = vec4(v0, 1.0);
    vec4 v2 = v1 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v3 = v2;
    v3.z = v2.z - (float(POSITION.w < 0.0) * 0.00200000009499490261077880859375);
    vec3 v4 = CB0[11].xyz - v0;
    vec3 v5 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    gl_Position = v3;
    VARYING0 = ((v0 + (v5 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    VARYING1 = vec4(dot(CB0[25], v1), dot(CB0[26], v1), dot(CB0[27], v1), length(v4));
    VARYING2 = v5;
    VARYING3 = v4;
    VARYING4 = CB3[int(abs(POSITION.w)) * 1 + 0];
    VARYING5 = TEXCOORD0;
}

