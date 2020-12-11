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
    vec3 v11 = v8 * ((dot(v8, v10) > (-0.0500000007450580596923828125)) ? 1.0 : (-1.0));
    vec3 v12 = -CB0[11].xyz;
    float v13 = dot(v11, v12);
    vec4 v14 = vec4(v4, v5, v6, 1.0);
    vec4 v15 = v14 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v16 = ((v7 + (v11 * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
    vec4 v17 = vec4(v16.x, v16.y, v16.z, vec4(0.0).w);
    v17.w = 0.0;
    vec4 v18 = vec4(v9, v15.w);
    float v19 = COLOR0.w * 2.0;
    float v20 = clamp(v19 - 1.0, 0.0, 1.0);
    float v21 = (clamp(2.0 - (dot(v11, normalize(v18.xyz)) * 3.0), 0.0, 1.0) * 0.300000011920928955078125) * clamp(v19, 0.0, 1.0);
    vec4 v22 = COLOR0;
    v22.w = mix(v20, 1.0, v21);
    vec4 v23 = vec4(dot(CB0[20], v14), dot(CB0[21], v14), dot(CB0[22], v14), 0.0);
    v23.w = mix((COLOR1.w * 0.0039215688593685626983642578125) * v20, 1.0, v21);
    float v24 = COLOR1.y * 0.50359570980072021484375;
    float v25 = clamp(v13, 0.0, 1.0);
    vec3 v26 = (CB0[10].xyz * v25) + (CB0[12].xyz * clamp(-v13, 0.0, 1.0));
    vec4 v27 = vec4(v26.x, v26.y, v26.z, vec4(0.0).w);
    v27.w = (v25 * CB0[23].w) * (COLOR1.y * exp2((v24 * dot(v11, normalize(v12 + v10))) - v24));
    gl_Position = v15;
    VARYING0 = TEXCOORD0;
    VARYING1 = TEXCOORD1;
    VARYING2 = v22;
    VARYING3 = v17;
    VARYING4 = v18;
    VARYING5 = vec4(v11, COLOR1.z);
    VARYING6 = v27;
    VARYING7 = v23;
    VARYING8 = NORMAL.w;
}

