#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <TrailParams.h>
uniform vec4 CB0[53];
uniform vec4 CB1[1];
attribute vec4 POSITION;
attribute vec3 TEXCOORD0;
attribute vec4 TEXCOORD1;
varying vec2 VARYING0;
varying vec4 VARYING1;
varying vec3 VARYING2;
varying vec3 VARYING3;
varying vec3 VARYING4;

void main()
{
    vec2 v0 = vec2(0.0);
    v0.x = TEXCOORD0.x;
    vec2 v1 = v0;
    v1.y = TEXCOORD0.y;
    vec4 v2 = vec4(POSITION.xyz, 1.0);
    gl_Position = (POSITION + (CB0[6] * CB1[0].x)) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = v1;
    VARYING1 = TEXCOORD1 * 0.0039215688593685626983642578125;
    VARYING2 = (POSITION.yxz * CB0[16].xyz) + CB0[17].xyz;
    VARYING3 = vec3(dot(CB0[20], v2), dot(CB0[21], v2), dot(CB0[22], v2));
    VARYING4 = CB0[7].xyz - POSITION.xyz;
}

