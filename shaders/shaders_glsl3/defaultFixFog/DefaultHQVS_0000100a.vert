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
out vec2 VARYING0;
out vec4 VARYING1;
out vec4 VARYING2;
out vec4 VARYING3;
out vec4 VARYING4;
out vec4 VARYING5;

void main()
{
    vec3 v0 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    int v1 = int(COLOR1.x) * 3;
    int v2 = v1 + 1;
    int v3 = v1 + 2;
    float v4 = dot(CB1[v1 * 1 + 0], POSITION);
    float v5 = dot(CB1[v2 * 1 + 0], POSITION);
    float v6 = dot(CB1[v3 * 1 + 0], POSITION);
    vec3 v7 = vec3(v4, v5, v6);
    float v8 = dot(CB1[v1 * 1 + 0].xyz, v0);
    float v9 = dot(CB1[v2 * 1 + 0].xyz, v0);
    float v10 = dot(CB1[v3 * 1 + 0].xyz, v0);
    vec4 v11 = vec4(v4, v5, v6, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v12 = ((v7 + (vec3(v8, v9, v10) * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v13 = vec4(0.0);
    v13.x = v12.x;
    vec4 v14 = v13;
    v14.y = v12.y;
    vec4 v15 = v14;
    v15.z = v12.z;
    vec4 v16 = v15;
    v16.w = 0.0;
    vec4 v17 = vec4(v4, v5, v6, 0.0);
    v17.w = COLOR1.z * 0.0039215688593685626983642578125;
    vec4 v18 = vec4(v8, v9, v10, 0.0);
    v18.w = inversesqrt(COLOR1.y * 0.174534320831298828125);
    gl_Position = v11;
    VARYING0 = TEXCOORD0;
    VARYING1 = COLOR0;
    VARYING2 = v16;
    VARYING3 = vec4(CB0[11].xyz - v7, v11.w);
    VARYING4 = v18;
    VARYING5 = v17;
}

