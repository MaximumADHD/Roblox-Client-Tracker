#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[52];
uniform vec4 CB1[216];
in vec4 POSITION;
in vec4 NORMAL;
in vec2 TEXCOORD0;
in vec2 TEXCOORD1;
in vec4 COLOR0;
in vec4 COLOR1;
in vec4 TEXCOORD4;
in vec4 TEXCOORD5;
in vec4 TEXCOORD2;
out vec2 VARYING0;
out vec2 VARYING1;
out vec4 VARYING2;
out vec4 VARYING3;
out vec4 VARYING4;
out vec4 VARYING5;
out vec4 VARYING6;
out vec4 VARYING7;
out float VARYING8;

void main()
{
    vec3 v0 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec3 v1 = (TEXCOORD2.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec4 v2 = TEXCOORD5 * vec4(0.0039215688593685626983642578125);
    ivec4 v3 = ivec4(TEXCOORD4) * ivec4(3);
    float v4 = v2.x;
    float v5 = v2.y;
    float v6 = v2.z;
    float v7 = v2.w;
    vec4 v8 = (((CB1[v3.x * 1 + 0] * v4) + (CB1[v3.y * 1 + 0] * v5)) + (CB1[v3.z * 1 + 0] * v6)) + (CB1[v3.w * 1 + 0] * v7);
    ivec4 v9 = v3 + ivec4(1);
    vec4 v10 = (((CB1[v9.x * 1 + 0] * v4) + (CB1[v9.y * 1 + 0] * v5)) + (CB1[v9.z * 1 + 0] * v6)) + (CB1[v9.w * 1 + 0] * v7);
    ivec4 v11 = v3 + ivec4(2);
    vec4 v12 = (((CB1[v11.x * 1 + 0] * v4) + (CB1[v11.y * 1 + 0] * v5)) + (CB1[v11.z * 1 + 0] * v6)) + (CB1[v11.w * 1 + 0] * v7);
    float v13 = dot(v8, POSITION);
    float v14 = dot(v10, POSITION);
    float v15 = dot(v12, POSITION);
    vec3 v16 = vec3(v13, v14, v15);
    vec3 v17 = v8.xyz;
    float v18 = dot(v17, v0);
    vec3 v19 = v10.xyz;
    float v20 = dot(v19, v0);
    vec3 v21 = v12.xyz;
    float v22 = dot(v21, v0);
    vec3 v23 = vec3(dot(v17, v1), dot(v19, v1), dot(v21, v1));
    vec4 v24 = vec4(0.0);
    v24.w = (TEXCOORD2.w * 0.0078740157186985015869140625) - 1.0;
    vec4 v25 = vec4(v13, v14, v15, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v26 = ((v16 + (vec3(v18, v20, v22) * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
    vec4 v27 = vec4(v26.x, v26.y, v26.z, vec4(0.0).w);
    v27.w = 0.0;
    vec4 v28 = vec4(v13, v14, v15, 0.0);
    v28.w = COLOR1.w * 0.0039215688593685626983642578125;
    vec4 v29 = vec4(v18, v20, v22, 0.0);
    v29.w = 0.0;
    gl_Position = v25;
    VARYING0 = TEXCOORD0;
    VARYING1 = TEXCOORD1;
    VARYING2 = COLOR0;
    VARYING3 = v27;
    VARYING4 = vec4(CB0[7].xyz - v16, v25.w);
    VARYING5 = v29;
    VARYING6 = vec4(v23.x, v23.y, v23.z, v24.w);
    VARYING7 = v28;
    VARYING8 = NORMAL.w;
}

