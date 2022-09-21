#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <AdornParams.h>
uniform vec4 CB0[58];
uniform vec4 CB1[6];
attribute vec4 POSITION;
attribute vec2 TEXCOORD0;
varying vec2 VARYING0;
varying vec4 VARYING1;
varying vec3 VARYING2;
varying vec3 VARYING3;
varying vec3 VARYING4;

void main()
{
    float v0 = ((POSITION.x + 1.0) * (3.141592502593994140625 * CB1[5].w)) + 1.57079637050628662109375;
    float v1 = sin(v0);
    float v2 = cos(v0);
    vec2 v3 = normalize(vec2(CB1[5].x, (6.28318500518798828125 * CB1[5].y) * CB1[5].w));
    float v4 = v3.y;
    vec3 v5 = vec3(0.0, v1, v2);
    vec3 v6 = (v5 * POSITION.y) - (cross(v5, vec3(v3.x, v2 * v4, (-v1) * v4)) * POSITION.z);
    mat4 v7 = mat4(CB1[0], CB1[1], CB1[2], CB1[3]);
    vec4 v8 = vec4(vec3((POSITION.x * CB1[5].x) * 0.5, v1 * CB1[5].y, v2 * CB1[5].y) + (v6 * (0.5 * CB1[5].z)), 1.0) * v7;
    vec3 v9 = v8.xyz;
    vec3 v10 = v6 * mat3(v7[0].xyz, v7[1].xyz, v7[2].xyz);
    float v11 = dot(v10, -CB0[16].xyz);
    gl_Position = vec4(v8.xyz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = TEXCOORD0;
    VARYING1 = CB1[4];
    VARYING2 = (CB0[15].xyz * clamp(v11, 0.0, 1.0)) + (CB0[17].xyz * clamp(-v11, 0.0, 1.0));
    VARYING3 = ((v9 + (v10 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    VARYING4 = CB0[11].xyz - v9;
}

