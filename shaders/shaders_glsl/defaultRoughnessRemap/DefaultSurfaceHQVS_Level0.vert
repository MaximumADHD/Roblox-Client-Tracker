#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
attribute vec4 POSITION;
attribute vec4 NORMAL;
attribute vec2 TEXCOORD0;
attribute vec2 TEXCOORD1;
attribute vec4 COLOR0;
attribute vec4 COLOR1;
attribute vec4 TEXCOORD2;
centroid varying vec2 VARYING0;
varying vec2 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;
varying float VARYING8;

void main()
{
    vec3 v0 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec3 v1 = (TEXCOORD2.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec4 v2 = vec4(0.0);
    v2.w = (TEXCOORD2.w * 0.0078740157186985015869140625) - 1.0;
    vec4 v3 = vec4(POSITION.xyz, 1.0);
    vec4 v4 = v3 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v5 = ((POSITION.xyz + (v0 * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
    vec4 v6 = vec4(0.0);
    v6.x = v5.x;
    vec4 v7 = v6;
    v7.y = v5.y;
    vec4 v8 = v7;
    v8.z = v5.z;
    vec4 v9 = v8;
    v9.w = 0.0;
    vec4 v10 = vec4(dot(CB0[20], v3), dot(CB0[21], v3), dot(CB0[22], v3), 0.0);
    v10.w = COLOR1.w * 0.0039215688593685626983642578125;
    vec4 v11 = v2;
    v11.x = v1.x;
    vec4 v12 = v11;
    v12.y = v1.y;
    vec4 v13 = v12;
    v13.z = v1.z;
    vec4 v14 = vec4(v0, 0.0);
    v14.w = 0.0;
    gl_Position = v4;
    VARYING0 = TEXCOORD0;
    VARYING1 = TEXCOORD1;
    VARYING2 = COLOR0;
    VARYING3 = v9;
    VARYING4 = vec4(CB0[7].xyz - POSITION.xyz, v4.w);
    VARYING5 = v14;
    VARYING6 = v13;
    VARYING7 = v10;
    VARYING8 = NORMAL.w;
}

