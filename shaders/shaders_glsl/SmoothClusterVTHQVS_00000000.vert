#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[57];
uniform vec4 unpackInfo[1];
attribute vec4 POSITION;
attribute vec2 TEXCOORD0;
varying vec4 VARYING0;
varying vec3 VARYING1;
varying vec4 VARYING2;
varying vec3 VARYING3;
varying vec3 VARYING4;
varying vec2 VARYING5;

void main()
{
    vec3 v0 = (POSITION.xyz * unpackInfo[0].w) + unpackInfo[0].xyz;
    vec4 v1 = vec4(v0, 1.0);
    vec4 v2 = v1 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v3 = v2;
    v3.z = v2.z - (float(POSITION.w < 0.0) * 0.00200000009499490261077880859375);
    vec3 v4 = CB0[11].xyz - v0;
    vec4 v5 = vec4(0.0);
    v5.w = (abs(POSITION.w) > 3.0) ? 0.0 : 1.0;
    bvec3 v6 = equal(mod(abs(POSITION.www), vec3(4.0)), vec3(1.0, 2.0, 3.0));
    vec3 v7 = vec3(v6.x ? vec3(1.0).x : vec3(0.0).x, v6.y ? vec3(1.0).y : vec3(0.0).y, v6.z ? vec3(1.0).z : vec3(0.0).z);
    vec4 v8 = v5;
    v8.x = v7.x;
    vec4 v9 = v8;
    v9.y = v7.y;
    vec4 v10 = v9;
    v10.z = v7.z;
    gl_Position = v3;
    VARYING0 = v10;
    VARYING1 = ((v0 + vec3(0.0, 6.0, 0.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    VARYING2 = vec4(dot(CB0[25], v1), dot(CB0[26], v1), dot(CB0[27], v1), length(v4));
    VARYING3 = vec3(0.0, 1.0, 0.0);
    VARYING4 = v4;
    VARYING5 = TEXCOORD0;
}

