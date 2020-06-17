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
out vec2 VARYING0;
out vec2 VARYING1;
out vec4 VARYING2;
out vec4 VARYING3;
out vec4 VARYING4;
out vec4 VARYING5;
out vec4 VARYING6;
out float VARYING7;

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
    vec3 v8 = vec3(dot(CB1[v1 * 1 + 0].xyz, v0), dot(CB1[v2 * 1 + 0].xyz, v0), dot(CB1[v3 * 1 + 0].xyz, v0));
    vec3 v9 = -CB0[11].xyz;
    float v10 = dot(v8, v9);
    vec3 v11 = CB0[7].xyz - v7;
    vec4 v12 = vec4(v4, v5, v6, 1.0);
    vec4 v13 = v12 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v14 = ((v7 + (v8 * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
    vec4 v15 = vec4(v14.x, v14.y, v14.z, vec4(0.0).w);
    v15.w = 0.0;
    float v16 = COLOR1.y * 0.50359570980072021484375;
    float v17 = clamp(v10, 0.0, 1.0);
    vec3 v18 = (CB0[10].xyz * v17) + (CB0[12].xyz * clamp(-v10, 0.0, 1.0));
    vec4 v19 = vec4(v18.x, v18.y, v18.z, vec4(0.0).w);
    v19.w = (v17 * CB0[23].w) * (COLOR1.y * exp2((v16 * dot(v8, normalize(v9 + normalize(v11)))) - v16));
    vec4 v20 = vec4(dot(CB0[20], v12), dot(CB0[21], v12), dot(CB0[22], v12), 0.0);
    v20.w = COLOR1.z * 0.0039215688593685626983642578125;
    gl_Position = v13;
    VARYING0 = TEXCOORD0;
    VARYING1 = TEXCOORD1;
    VARYING2 = COLOR0;
    VARYING3 = v15;
    VARYING4 = vec4(v11, v13.w);
    VARYING5 = v19;
    VARYING6 = v20;
    VARYING7 = NORMAL.w;
}

