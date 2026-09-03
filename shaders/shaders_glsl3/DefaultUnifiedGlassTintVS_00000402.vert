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
out vec3 VARYING1;
out vec4 VARYING2;
out vec4 VARYING3;
out vec4 VARYING4;
out vec4 VARYING5;
out vec4 VARYING6;

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
    vec3 v9 = vec3(dot(CB1[v2 * 1 + 0].xyz, v0), dot(CB1[v3 * 1 + 0].xyz, v0), dot(CB1[v4 * 1 + 0].xyz, v0));
    vec3 v10 = CB0[11].xyz - v8;
    vec3 v11 = normalize(v10);
    vec3 v12 = v9 * ((dot(v9, v11) > 0.0) ? 1.0 : (-1.0));
    vec2 v13 = vec2(TEXCOORD0.x * 4.0, TEXCOORD0.y) * clamp(NORMAL.w, 0.0, 1.0);
    vec3 v14 = vec3(0.0);
    v14.z = NORMAL.w - 1.0;
    vec3 v15 = -CB0[16].xyz;
    float v16 = dot(v12, v15);
    vec4 v17 = vec4(v5, v6, v7, 1.0);
    vec4 v18 = v17 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v19 = v14;
    v19.x = v13.x;
    vec3 v20 = v19;
    v20.y = v13.y;
    vec3 v21 = ((v8 + (v12 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v22 = vec4(0.0);
    v22.x = v21.x;
    vec4 v23 = v22;
    v23.y = v21.y;
    vec4 v24 = v23;
    v24.z = v21.z;
    vec4 v25 = v24;
    v25.w = 0.0;
    float v26 = COLOR1.y * 0.50359976291656494140625;
    float v27 = clamp(v16, 0.0, 1.0);
    vec3 v28 = (CB0[15].xyz * v27) + (CB0[17].xyz * clamp(-v16, 0.0, 1.0));
    vec4 v29 = vec4(0.0);
    v29.x = v28.x;
    vec4 v30 = v29;
    v30.y = v28.y;
    vec4 v31 = v30;
    v31.z = v28.z;
    vec4 v32 = v31;
    v32.w = v27 * ((COLOR1.y * 0.055555999279022216796875) * exp2((v26 * dot(v12, normalize(v15 + v11))) - v26));
    vec4 v33 = vec4(dot(CB0[25], v17), dot(CB0[26], v17), dot(CB0[27], v17), 0.0);
    v33.w = COLOR1.z * 0.0039215688593685626983642578125;
    gl_Position = v18;
    VARYING0 = TEXCOORD0;
    VARYING1 = v20;
    VARYING2 = COLOR0 * CB11[v1 * 2 + 0];
    VARYING3 = v25;
    VARYING4 = vec4(v10, v18.w);
    VARYING5 = v32;
    VARYING6 = v33;
}

