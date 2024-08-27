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
in vec4 TEXCOORD4;
in vec4 TEXCOORD5;
out vec2 VARYING0;
out float VARYING1;
out vec4 VARYING2;
out vec4 VARYING3;
out vec4 VARYING4;
out vec4 VARYING5;
out vec4 VARYING6;

void main()
{
    vec3 v0 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec4 v1 = TEXCOORD5 * vec4(0.0039215688593685626983642578125);
    ivec4 v2 = ivec4(TEXCOORD4);
    int v3 = 3 * v2.w;
    vec4 v4 = vec4(v1.w);
    int v5 = 3 * v2.z;
    vec4 v6 = vec4(v1.z);
    int v7 = 3 * v2.y;
    vec4 v8 = vec4(v1.y);
    int v9 = 3 * v2.x;
    float v10 = v1.x;
    vec4 v11 = CB1[v3 * 1 + 0] * v4 + (CB1[v5 * 1 + 0] * v6 + (CB1[v7 * 1 + 0] * v8 + (CB1[v9 * 1 + 0] * v10)));
    vec4 v12 = CB1[(v3 + 1) * 1 + 0] * v4 + (CB1[(v5 + 1) * 1 + 0] * v6 + (CB1[(v7 + 1) * 1 + 0] * v8 + (CB1[(v9 + 1) * 1 + 0] * v10)));
    vec4 v13 = CB1[(v3 + 2) * 1 + 0] * v4 + (CB1[(v5 + 2) * 1 + 0] * v6 + (CB1[(v7 + 2) * 1 + 0] * v8 + (CB1[(v9 + 2) * 1 + 0] * v10)));
    float v14 = dot(v11, POSITION);
    float v15 = dot(v12, POSITION);
    float v16 = dot(v13, POSITION);
    vec3 v17 = vec3(v14, v15, v16);
    float v18 = dot(v11.xyz, v0);
    float v19 = dot(v12.xyz, v0);
    float v20 = dot(v13.xyz, v0);
    vec4 v21 = vec4(v14, v15, v16, 1.0);
    vec4 v22 = v21 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v23 = ((v17 + (vec3(v18, v19, v20) * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v24 = vec4(0.0);
    v24.x = v23.x;
    vec4 v25 = v24;
    v25.y = v23.y;
    vec4 v26 = v25;
    v26.z = v23.z;
    vec4 v27 = v26;
    v27.w = 0.0;
    vec4 v28 = vec4(dot(CB0[25], v21), dot(CB0[26], v21), dot(CB0[27], v21), 0.0);
    v28.w = COLOR1.z * 0.0039215688593685626983642578125;
    vec4 v29 = vec4(v18, v19, v20, 0.0);
    v29.w = inversesqrt(COLOR1.y * 0.174534320831298828125);
    gl_Position = v22;
    VARYING0 = TEXCOORD0;
    VARYING1 = max(0.0500000007450580596923828125, COLOR1.w * 0.0039215688593685626983642578125);
    VARYING2 = COLOR0;
    VARYING3 = v27;
    VARYING4 = vec4(CB0[11].xyz - v17, v22.w);
    VARYING5 = v29;
    VARYING6 = v28;
}

