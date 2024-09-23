#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform vec4 CB1[216];
in vec4 POSITION;
in vec4 NORMAL;
in vec2 TEXCOORD0;
in vec4 COLOR0;
in vec4 COLOR1;
in vec4 TEXCOORD2;
out vec2 VARYING0;
out vec3 VARYING1;
out vec4 VARYING2;
out vec4 VARYING3;
out vec4 VARYING4;
out vec4 VARYING5;
out vec4 VARYING6;
out vec4 VARYING7;
flat out vec3 VARYING8;

void main()
{
    vec3 v0 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec3 v1 = (TEXCOORD2.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    int v2 = int(COLOR1.x) * 3;
    int v3 = v2 + 1;
    int v4 = v2 + 2;
    float v5 = dot(CB1[v2 * 1 + 0], POSITION);
    float v6 = dot(CB1[v3 * 1 + 0], POSITION);
    float v7 = dot(CB1[v4 * 1 + 0], POSITION);
    vec3 v8 = vec3(v5, v6, v7);
    float v9 = dot(CB1[v2 * 1 + 0].xyz, v0);
    float v10 = dot(CB1[v3 * 1 + 0].xyz, v0);
    float v11 = dot(CB1[v4 * 1 + 0].xyz, v0);
    vec3 v12 = vec3(0.0);
    v12.z = -1.0;
    vec4 v13 = vec4(0.0);
    v13.w = (TEXCOORD2.w * 0.0078740157186985015869140625) - 1.0;
    vec4 v14 = vec4(v5, v6, v7, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v15 = v12;
    v15.x = 0.0;
    vec3 v16 = v15;
    v16.y = 0.0;
    vec3 v17 = ((v8 + (vec3(v9, v10, v11) * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v18 = vec4(0.0);
    v18.x = v17.x;
    vec4 v19 = v18;
    v19.y = v17.y;
    vec4 v20 = v19;
    v20.z = v17.z;
    vec4 v21 = v20;
    v21.w = 0.0;
    vec4 v22 = vec4(v5, v6, v7, 0.0);
    v22.w = 0.0;
    vec4 v23 = v13;
    v23.x = dot(CB1[v2 * 1 + 0].xyz, v1);
    vec4 v24 = v23;
    v24.y = dot(CB1[v3 * 1 + 0].xyz, v1);
    vec4 v25 = v24;
    v25.z = dot(CB1[v4 * 1 + 0].xyz, v1);
    vec4 v26 = vec4(v9, v10, v11, 0.0);
    v26.w = 0.0;
    gl_Position = v14;
    VARYING0 = TEXCOORD0;
    VARYING1 = v16;
    VARYING2 = COLOR0;
    VARYING3 = v21;
    VARYING4 = vec4(CB0[11].xyz - v8, v14.w);
    VARYING5 = v26;
    VARYING6 = v25;
    VARYING7 = v22;
    VARYING8 = vec3(COLOR1.z * 0.0039215688593685626983642578125, COLOR1.w * 0.0039215688593685626983642578125, NORMAL.w * 0.0039215688593685626983642578125);
}

