#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
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
out vec4 VARYING7;
out float VARYING8;

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
    vec3 v9 = CB0[7].xyz - v7;
    vec3 v10 = normalize(v9);
    vec3 v11 = v8 * ((dot(v8, v10) > 0.0) ? 1.0 : (-1.0));
    vec3 v12 = -CB0[11].xyz;
    float v13 = dot(v11, v12);
    vec4 v14 = vec4(v4, v5, v6, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v15 = ((v7 + (v11 * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
    vec4 v16 = vec4(v15.x, v15.y, v15.z, vec4(0.0).w);
    v16.w = 0.0;
    vec4 v17 = vec4(v4, v5, v6, 0.0);
    v17.w = COLOR1.w * 0.0039215688593685626983642578125;
    float v18 = COLOR1.y * 0.50359570980072021484375;
    float v19 = clamp(v13, 0.0, 1.0);
    vec3 v20 = (CB0[10].xyz * v19) + (CB0[12].xyz * clamp(-v13, 0.0, 1.0));
    vec4 v21 = vec4(v20.x, v20.y, v20.z, vec4(0.0).w);
    v21.w = (v19 * CB0[23].w) * (COLOR1.y * exp2((v18 * dot(v11, normalize(v12 + v10))) - v18));
    gl_Position = v14;
    VARYING0 = TEXCOORD0;
    VARYING1 = TEXCOORD1;
    VARYING2 = COLOR0;
    VARYING3 = v16;
    VARYING4 = vec4(v9, v14.w);
    VARYING5 = vec4(v11, COLOR1.z);
    VARYING6 = v21;
    VARYING7 = v17;
    VARYING8 = NORMAL.w;
}

