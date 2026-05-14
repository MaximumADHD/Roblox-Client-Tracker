#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <FastClusterInstanceData.h>
uniform vec4 CB0[61];
uniform vec4 CB11[512];
uniform vec4 CB1[216];
in vec4 POSITION;
in vec4 NORMAL;
in vec2 TEXCOORD0;
in vec4 COLOR0;
in vec4 COLOR1;
out vec2 VARYING0;
out vec4 VARYING1;
out vec4 VARYING2;
out vec4 VARYING3;
out vec4 VARYING4;
out vec4 VARYING5;

void main()
{
    vec3 v0 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    int v1 = int(COLOR1.x);
    int v2 = int(CB11[v1 * 2 + 1].w) * 3;
    int v3 = v2 + 1;
    int v4 = v2 + 2;
    float v5 = dot(CB1[v2 * 1 + 0], POSITION);
    float v6 = dot(CB1[v3 * 1 + 0], POSITION);
    float v7 = dot(CB1[v4 * 1 + 0], POSITION);
    vec3 v8 = vec3(v5, v6, v7);
    float v9 = dot(CB1[v2 * 1 + 0].xyz, v0);
    float v10 = dot(CB1[v3 * 1 + 0].xyz, v0);
    float v11 = dot(CB1[v4 * 1 + 0].xyz, v0);
    vec4 v12 = vec4(v5, v6, v7, 1.0);
    vec4 v13 = v12 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v14 = ((v8 + (vec3(v9, v10, v11) * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v15 = vec4(0.0);
    v15.x = v14.x;
    vec4 v16 = v15;
    v16.y = v14.y;
    vec4 v17 = v16;
    v17.z = v14.z;
    vec4 v18 = v17;
    v18.w = 0.0;
    vec4 v19 = vec4(dot(CB0[25], v12), dot(CB0[26], v12), dot(CB0[27], v12), 0.0);
    v19.w = COLOR1.w * 0.0039215688593685626983642578125;
    vec4 v20 = vec4(v9, v10, v11, 0.0);
    v20.w = inversesqrt(COLOR1.y * 0.174534320831298828125);
    gl_Position = v13;
    VARYING0 = TEXCOORD0;
    VARYING1 = COLOR0 * CB11[v1 * 2 + 0];
    VARYING2 = v18;
    VARYING3 = vec4(CB0[11].xyz - v8, v13.w);
    VARYING4 = v20;
    VARYING5 = v19;
}

