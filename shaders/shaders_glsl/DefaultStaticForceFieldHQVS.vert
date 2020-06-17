#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[52];
attribute vec4 POSITION;
attribute vec4 NORMAL;
attribute vec2 TEXCOORD0;
attribute vec2 TEXCOORD1;
attribute vec4 COLOR0;
attribute vec4 COLOR1;
varying vec2 VARYING0;
varying vec2 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying float VARYING7;

void main()
{
    vec3 v0 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec4 v1 = vec4(POSITION.xyz, 1.0);
    vec4 v2 = v1 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec2 v3 = TEXCOORD1;
    v3.x = max(0.0500000007450580596923828125, TEXCOORD1.x);
    vec3 v4 = ((POSITION.xyz + (v0 * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
    vec4 v5 = vec4(v4.x, v4.y, v4.z, vec4(0.0).w);
    v5.w = 0.0;
    vec4 v6 = vec4(dot(CB0[20], v1), dot(CB0[21], v1), dot(CB0[22], v1), 0.0);
    v6.w = COLOR1.z * 0.0039215688593685626983642578125;
    vec4 v7 = vec4(v0, 0.0);
    v7.w = inversesqrt(0.1745329201221466064453125 * COLOR1.y);
    gl_Position = v2;
    VARYING0 = TEXCOORD0;
    VARYING1 = v3;
    VARYING2 = COLOR0;
    VARYING3 = v5;
    VARYING4 = vec4(CB0[7].xyz - POSITION.xyz, v2.w);
    VARYING5 = v7;
    VARYING6 = v6;
    VARYING7 = NORMAL.w;
}

