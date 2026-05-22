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
out vec4 VARYING7;

void main()
{
    vec3 v0 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    int v1 = int(COLOR1.x);
    vec4 v2 = COLOR0 * CB11[v1 * 2 + 0];
    int v3 = int(CB11[v1 * 2 + 1].w) * 3;
    int v4 = v3 + 1;
    int v5 = v3 + 2;
    float v6 = dot(CB1[v3 * 1 + 0], POSITION);
    float v7 = dot(CB1[v4 * 1 + 0], POSITION);
    float v8 = dot(CB1[v5 * 1 + 0], POSITION);
    vec3 v9 = vec3(v6, v7, v8);
    float v10 = dot(CB1[v3 * 1 + 0].xyz, v0);
    float v11 = dot(CB1[v4 * 1 + 0].xyz, v0);
    float v12 = dot(CB1[v5 * 1 + 0].xyz, v0);
    vec3 v13 = vec3(v10, v11, v12);
    vec3 v14 = CB0[11].xyz - v9;
    vec3 v15 = normalize(v14);
    vec2 v16 = vec2(TEXCOORD0.x * 4.0, TEXCOORD0.y) * clamp(NORMAL.w, 0.0, 1.0);
    vec3 v17 = vec3(0.0);
    v17.z = NORMAL.w - 1.0;
    vec3 v18 = -CB0[16].xyz;
    float v19 = dot(v13, v18);
    vec4 v20 = vec4(v6, v7, v8, 1.0);
    vec4 v21 = v20 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v22 = v17;
    v22.x = v16.x;
    vec3 v23 = v22;
    v23.y = v16.y;
    vec3 v24 = ((v9 + (v13 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v25 = vec4(0.0);
    v25.x = v24.x;
    vec4 v26 = v25;
    v26.y = v24.y;
    vec4 v27 = v26;
    v27.z = v24.z;
    vec4 v28 = v27;
    v28.w = 0.0;
    float v29 = v2.w * 2.0;
    float v30 = clamp(v29 - 1.0, 0.0, 1.0);
    float v31 = (clamp(2.0 - (dot(v13, v15) * 3.0), 0.0, 1.0) * 0.300000011920928955078125) * clamp(v29, 0.0, 1.0);
    vec4 v32 = v2;
    v32.w = mix(v30, 1.0, v31);
    vec4 v33 = vec4(dot(CB0[25], v20), dot(CB0[26], v20), dot(CB0[27], v20), 0.0);
    v33.w = mix((COLOR1.w * 0.0039215688593685626983642578125) * v30, 1.0, v31);
    float v34 = COLOR1.y * 0.50359976291656494140625;
    float v35 = clamp(v19, 0.0, 1.0);
    vec3 v36 = (CB0[15].xyz * v35) + (CB0[17].xyz * clamp(-v19, 0.0, 1.0));
    vec4 v37 = vec4(0.0);
    v37.x = v36.x;
    vec4 v38 = v37;
    v38.y = v36.y;
    vec4 v39 = v38;
    v39.z = v36.z;
    vec4 v40 = v39;
    v40.w = v35 * ((COLOR1.y * 0.055555999279022216796875) * exp2((v34 * dot(v13, normalize(v18 + v15))) - v34));
    gl_Position = v21;
    VARYING0 = TEXCOORD0;
    VARYING1 = v23;
    VARYING2 = v32;
    VARYING3 = v28;
    VARYING4 = vec4(v14, v21.w);
    VARYING5 = vec4(v10, v11, v12, COLOR1.z);
    VARYING6 = v40;
    VARYING7 = v33;
}

