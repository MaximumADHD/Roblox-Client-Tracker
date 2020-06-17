#version 110

#extension GL_ARB_shading_language_include : require
#include <EmitterParams.h>
#include <Globals.h>
uniform vec4 CB1[3];
uniform vec4 CB0[52];
attribute vec4 POSITION;
attribute vec4 TEXCOORD0;
attribute vec2 TEXCOORD1;
attribute vec4 TEXCOORD2;
attribute vec2 TEXCOORD3;
varying vec3 VARYING0;
varying vec4 VARYING1;
varying vec2 VARYING2;

void main()
{
    vec2 v0 = (TEXCOORD1 * 2.0) - vec2(1.0);
    vec4 v1 = TEXCOORD0 * vec4(0.00390625, 0.00390625, 0.00019175345369148999452590942382813, 3.0518509447574615478515625e-05);
    vec2 v2 = v1.xy + vec2(127.0);
    float v3 = v1.z;
    float v4 = cos(v3);
    float v5 = sin(v3);
    float v6 = v2.x;
    vec4 v7 = vec4(0.0);
    v7.x = v4 * v6;
    vec4 v8 = v7;
    v8.y = (-v5) * v6;
    float v9 = v2.y;
    vec4 v10 = v8;
    v10.z = v5 * v9;
    vec4 v11 = v10;
    v11.w = v4 * v9;
    vec4 v12 = (vec4(POSITION.xyz, 1.0) + (CB0[4] * dot(v0, v11.xy))) + (CB0[5] * dot(v0, v11.zw));
    vec4 v13 = v12 + (CB0[6] * CB1[1].x);
    mat4 v14 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v15 = v12 * v14;
    vec3 v16 = vec3(TEXCOORD1.x, TEXCOORD1.y, vec3(0.0).z);
    v16.y = 1.0 - TEXCOORD1.y;
    vec3 v17 = v16;
    v17.z = length(CB0[7].xyz - v13.xyz);
    vec4 v18 = v13 * v14;
    vec4 v19 = v15;
    v19.z = (v18.z * v15.w) / v18.w;
    vec2 v20 = (TEXCOORD3 + ((TEXCOORD1 * (CB1[2].z - 1.0)) + vec2(0.5))) * CB1[2].xy;
    vec2 v21 = v20;
    v21.y = 1.0 - v20.y;
    gl_Position = v19;
    VARYING0 = v17;
    VARYING1 = TEXCOORD2 * 0.0039215688593685626983642578125;
    VARYING2 = v21;
}

