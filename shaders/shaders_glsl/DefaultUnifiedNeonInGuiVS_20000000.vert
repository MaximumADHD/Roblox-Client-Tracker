#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
attribute vec4 POSITION;
attribute vec4 NORMAL;
attribute vec2 TEXCOORD0;
attribute vec4 COLOR0;
attribute vec4 COLOR1;
varying vec2 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;

void main()
{
    vec3 v0 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec4 v1 = vec4(POSITION.xyz, 1.0);
    vec4 v2 = v1 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v3 = ((POSITION.xyz + (v0 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v4 = vec4(0.0);
    v4.x = v3.x;
    vec4 v5 = v4;
    v5.y = v3.y;
    vec4 v6 = v5;
    v6.z = v3.z;
    vec4 v7 = v6;
    v7.w = 0.0;
    vec4 v8 = vec4(dot(CB0[25], v1), dot(CB0[26], v1), dot(CB0[27], v1), 0.0);
    v8.w = COLOR1.z * 0.0039215688593685626983642578125;
    vec4 v9 = vec4(v0, 0.0);
    v9.w = inversesqrt(COLOR1.y * 0.174534320831298828125);
    gl_Position = v2;
    VARYING0 = TEXCOORD0;
    VARYING1 = COLOR0;
    VARYING2 = v7;
    VARYING3 = vec4(CB0[11].xyz - POSITION.xyz, v2.w);
    VARYING4 = v9;
    VARYING5 = v8;
}

