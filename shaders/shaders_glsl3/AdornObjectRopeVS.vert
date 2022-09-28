#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <AdornParams.h>
uniform vec4 CB0[58];
uniform vec4 CB1[6];
in vec4 POSITION;
in vec2 TEXCOORD0;
in vec3 NORMAL;
out vec2 VARYING0;
out vec4 VARYING1;
out vec3 VARYING2;
out vec3 VARYING3;
out vec3 VARYING4;

void main()
{
    float v0 = ((0.5 * POSITION.x) + 0.5) * CB1[5].x;
    float v1 = exp((v0 - CB1[5].y) / CB1[5].z);
    float v2 = 0.5 / v1;
    float v3 = 0.5 * v1;
    vec3 v4 = vec3(0.0);
    v4.x = v0;
    vec3 v5 = v4;
    v5.y = (CB1[5].z * (v3 + v2)) - CB1[5].z;
    vec3 v6 = v5;
    v6.z = 0.0;
    vec3 v7 = vec3(0.0);
    v7.x = v3 - v2;
    vec3 v8 = v7;
    v8.y = -1.0;
    vec3 v9 = v8;
    v9.z = 0.0;
    vec3 v10 = normalize(v9);
    mat4 v11 = mat4(CB1[0], CB1[1], CB1[2], CB1[3]);
    vec4 v12 = vec4((v6 + (vec3(0.0, 0.0, 1.0) * (CB1[5].w * POSITION.z))) + (v10 * ((-CB1[5].w) * POSITION.y)), 1.0) * v11;
    vec3 v13 = v12.xyz;
    vec3 v14 = (((vec3(1.0, 0.0, 0.0) * NORMAL.x) + (vec3(0.0, 0.0, 1.0) * NORMAL.z)) - (v10 * NORMAL.y)) * mat3(v11[0].xyz, v11[1].xyz, v11[2].xyz);
    float v15 = dot(v14, -CB0[16].xyz);
    gl_Position = vec4(v12.xyz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = TEXCOORD0;
    VARYING1 = CB1[4];
    VARYING2 = (CB0[15].xyz * clamp(v15, 0.0, 1.0)) + (CB0[17].xyz * clamp(-v15, 0.0, 1.0));
    VARYING3 = ((v13 + (v14 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    VARYING4 = CB0[11].xyz - v13;
}

