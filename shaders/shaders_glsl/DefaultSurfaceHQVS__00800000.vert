#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
attribute vec4 POSITION;
attribute vec4 NORMAL;
attribute vec2 TEXCOORD0;
attribute vec4 COLOR0;
attribute vec4 COLOR1;
attribute vec4 TEXCOORD2;
varying vec2 VARYING0;
varying vec3 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;
varying vec3 VARYING8;

void main()
{
    vec3 v0 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec3 v1 = (TEXCOORD2.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec3 v2 = vec3(0.0);
    v2.z = -1.0;
    vec4 v3 = vec4(0.0);
    v3.w = (TEXCOORD2.w * 0.0078740157186985015869140625) - 1.0;
    vec4 v4 = vec4(POSITION.xyz, 1.0);
    vec4 v5 = v4 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v6 = v2;
    v6.x = 0.0;
    vec3 v7 = v6;
    v7.y = 0.0;
    vec3 v8 = ((POSITION.xyz + (v0 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v9 = vec4(0.0);
    v9.x = v8.x;
    vec4 v10 = v9;
    v10.y = v8.y;
    vec4 v11 = v10;
    v11.z = v8.z;
    vec4 v12 = v11;
    v12.w = 0.0;
    vec4 v13 = vec4(dot(CB0[25], v4), dot(CB0[26], v4), dot(CB0[27], v4), 0.0);
    v13.w = 0.0;
    vec4 v14 = v3;
    v14.x = v1.x;
    vec4 v15 = v14;
    v15.y = v1.y;
    vec4 v16 = v15;
    v16.z = v1.z;
    vec4 v17 = vec4(v0, 0.0);
    v17.w = 0.0;
    gl_Position = v5;
    VARYING0 = TEXCOORD0;
    VARYING1 = v7;
    VARYING2 = COLOR0;
    VARYING3 = v12;
    VARYING4 = vec4(CB0[11].xyz - POSITION.xyz, v5.w);
    VARYING5 = v17;
    VARYING6 = v16;
    VARYING7 = v13;
    VARYING8 = vec3(COLOR1.z * 0.0039215688593685626983642578125, COLOR1.w * 0.0039215688593685626983642578125, NORMAL.w * 0.0039215688593685626983642578125);
}

