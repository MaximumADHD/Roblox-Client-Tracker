#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <InstanceData.h>
const vec3 v0[16] = vec3[](vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0));
const vec3 v1[16] = vec3[](vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.699999988079071044921875, 0.699999988079071044921875, 0.0), vec3(0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, -1.0), vec3(0.0, 0.0, 1.0));

uniform vec4 CB0[61];
uniform vec4 CB10[216];
uniform vec4 CB1[511];
in vec4 POSITION;
in vec4 TEXCOORD1;
in vec2 TEXCOORD0;
in vec4 TEXCOORD2;
in vec4 COLOR0;
in vec4 TEXCOORD5;
in vec4 TEXCOORD6;
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
    vec3 v2 = (TEXCOORD2.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    int v3 = int(TEXCOORD1.z);
    vec3 v4 = normalize(((vec3(TEXCOORD1.xy, COLOR0.w) * 0.0078740157186985015869140625) - vec3(1.0)) / (CB1[gl_InstanceID * 7 + 3].xyz + vec3(0.001000000047497451305389404296875)));
    vec3 v5 = POSITION.xyz * CB1[gl_InstanceID * 7 + 3].xyz;
    vec4 v6 = POSITION;
    v6.x = v5.x;
    vec4 v7 = v6;
    v7.y = v5.y;
    vec4 v8 = v7;
    v8.z = v5.z;
    vec4 v9 = TEXCOORD6 * vec4(0.0039215688593685626983642578125);
    ivec4 v10 = ivec4(TEXCOORD5);
    int v11 = 3 * v10.x;
    float v12 = v9.x;
    int v13 = 3 * v10.y;
    float v14 = v9.y;
    int v15 = 3 * v10.z;
    float v16 = v9.z;
    int v17 = 3 * v10.w;
    float v18 = v9.w;
    vec4 v19 = (((CB10[v11 * 1 + 0] * v12) + (CB10[v13 * 1 + 0] * v14)) + (CB10[v15 * 1 + 0] * v16)) + (CB10[v17 * 1 + 0] * v18);
    vec4 v20 = (((CB10[(v11 + 1) * 1 + 0] * v12) + (CB10[(v13 + 1) * 1 + 0] * v14)) + (CB10[(v15 + 1) * 1 + 0] * v16)) + (CB10[(v17 + 1) * 1 + 0] * v18);
    vec4 v21 = (((CB10[(v11 + 2) * 1 + 0] * v12) + (CB10[(v13 + 2) * 1 + 0] * v14)) + (CB10[(v15 + 2) * 1 + 0] * v16)) + (CB10[(v17 + 2) * 1 + 0] * v18);
    vec4 v22 = vec4(dot(v19, v8), dot(v20, v8), dot(v21, v8), 1.0);
    vec3 v23 = v19.xyz;
    vec3 v24 = v20.xyz;
    vec3 v25 = v21.xyz;
    vec3 v26 = vec3(dot(v23, v4), dot(v24, v4), dot(v25, v4));
    vec3 v27 = vec3(dot(v23, v2), dot(v24, v2), dot(v25, v2));
    float v28 = dot(CB1[gl_InstanceID * 7 + 0], v22);
    float v29 = dot(CB1[gl_InstanceID * 7 + 1], v22);
    float v30 = dot(CB1[gl_InstanceID * 7 + 2], v22);
    vec3 v31 = vec3(v28, v29, v30);
    float v32 = dot(CB1[gl_InstanceID * 7 + 0].xyz, v26);
    float v33 = dot(CB1[gl_InstanceID * 7 + 1].xyz, v26);
    float v34 = dot(CB1[gl_InstanceID * 7 + 2].xyz, v26);
    vec2 v35 = vec2(0.0);
    v35.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, v0[v3]);
    vec2 v36 = v35;
    v36.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, v1[v3]);
    vec2 v37 = (TEXCOORD0 * v36) + CB1[gl_InstanceID * 7 + 6].xy;
    vec4 v38 = vec4(0.0);
    v38.w = sign(TEXCOORD2.w - 0.5);
    vec2 v39 = vec2(v37.x * 4.0, v37.y);
    bvec2 v40 = bvec2(abs(TEXCOORD2.w - 3.5) > 2.0);
    vec2 v41 = vec2(v40.x ? vec2(0.0).x : v39.x, v40.y ? vec2(0.0).y : v39.y);
    vec3 v42 = vec3(0.0);
    v42.z = TEXCOORD2.w - 2.0;
    vec4 v43 = vec4(v28, v29, v30, 1.0);
    vec4 v44 = v43 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v45 = v42;
    v45.x = v41.x;
    vec3 v46 = v45;
    v46.y = v41.y;
    vec3 v47 = ((v31 + (vec3(v32, v33, v34) * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v48 = vec4(0.0);
    v48.x = v47.x;
    vec4 v49 = v48;
    v49.y = v47.y;
    vec4 v50 = v49;
    v50.z = v47.z;
    vec4 v51 = v50;
    v51.w = abs(CB1[gl_InstanceID * 7 + 3].w);
    vec4 v52 = vec4(dot(CB0[25], v43), dot(CB0[26], v43), dot(CB0[27], v43), 0.0);
    v52.w = CB1[gl_InstanceID * 7 + 5].w;
    vec4 v53 = v38;
    v53.x = dot(CB1[gl_InstanceID * 7 + 0].xyz, v27);
    vec4 v54 = v53;
    v54.y = dot(CB1[gl_InstanceID * 7 + 1].xyz, v27);
    vec4 v55 = v54;
    v55.z = dot(CB1[gl_InstanceID * 7 + 2].xyz, v27);
    vec4 v56 = vec4(v32, v33, v34, 0.0);
    v56.w = 0.0;
    gl_Position = v44;
    VARYING0 = v37;
    VARYING1 = v46;
    VARYING2 = CB1[gl_InstanceID * 7 + 4] * mix(vec4(COLOR0.xyz, TEXCOORD1.w) * 0.0039215688593685626983642578125, vec4(1.0), vec4(max(sign(CB1[gl_InstanceID * 7 + 3].w), 0.0)));
    VARYING3 = v51;
    VARYING4 = vec4(CB0[11].xyz - v31, v44.w);
    VARYING5 = v56;
    VARYING6 = v55;
    VARYING7 = v52;
}

