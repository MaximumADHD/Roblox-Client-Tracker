#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[61];
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
out vec4 VARYING7;

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
    vec3 v9 = CB0[11].xyz - v7;
    vec3 v10 = normalize(v9);
    vec3 v11 = v8 * ((dot(v8, v10) > 0.0) ? 1.0 : (-1.0));
    vec2 v12 = vec2(TEXCOORD0.x * 4.0, TEXCOORD0.y) * clamp(NORMAL.w, 0.0, 1.0);
    vec3 v13 = vec3(0.0);
    v13.z = NORMAL.w - 1.0;
    vec3 v14 = -CB0[16].xyz;
    float v15 = dot(v11, v14);
    vec4 v16 = vec4(v4, v5, v6, 1.0);
    vec4 v17 = v16 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v18 = v13;
    v18.x = v12.x;
    vec3 v19 = v18;
    v19.y = v12.y;
    vec3 v20 = ((v7 + (v11 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v21 = vec4(0.0);
    v21.x = v20.x;
    vec4 v22 = v21;
    v22.y = v20.y;
    vec4 v23 = v22;
    v23.z = v20.z;
    vec4 v24 = v23;
    v24.w = 0.0;
    vec4 v25 = vec4(dot(CB0[25], v16), dot(CB0[26], v16), dot(CB0[27], v16), 0.0);
    v25.w = COLOR1.w * 0.0039215688593685626983642578125;
    float v26 = COLOR1.y * 0.50359976291656494140625;
    float v27 = clamp(v15, 0.0, 1.0);
    vec3 v28 = (CB0[15].xyz * v27) + (CB0[17].xyz * clamp(-v15, 0.0, 1.0));
    vec4 v29 = vec4(0.0);
    v29.x = v28.x;
    vec4 v30 = v29;
    v30.y = v28.y;
    vec4 v31 = v30;
    v31.z = v28.z;
    vec4 v32 = v31;
    v32.w = v27 * ((COLOR1.y * 0.055555999279022216796875) * exp2((v26 * dot(v11, normalize(v14 + v10))) - v26));
    gl_Position = v17;
    VARYING0 = TEXCOORD0;
    VARYING1 = v19;
    VARYING2 = COLOR0;
    VARYING3 = v24;
    VARYING4 = vec4(v9, v17.w);
    VARYING5 = vec4(v11, COLOR1.z);
    VARYING6 = v32;
    VARYING7 = v25;
}

