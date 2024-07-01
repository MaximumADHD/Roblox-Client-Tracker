#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <InstanceData.h>
const vec3 v0[16] = vec3[](vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0));
const vec3 v1[16] = vec3[](vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.699999988079071044921875, 0.699999988079071044921875, 0.0), vec3(0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, -1.0), vec3(0.0, 0.0, 1.0));

uniform vec4 CB0[58];
uniform vec4 CB1[511];
in vec4 POSITION;
in vec4 NORMAL;
in vec2 TEXCOORD0;
in vec4 COLOR0;
out vec2 VARYING0;
out float VARYING1;
out vec4 VARYING2;
out vec4 VARYING3;
out vec4 VARYING4;
out vec4 VARYING5;
out vec4 VARYING6;

void main()
{
    int v2 = int(NORMAL.w);
    vec4 v3 = COLOR0 * 0.0039215688593685626983642578125;
    float v4 = max(sign(CB1[gl_InstanceID * 7 + 3].w), 0.0);
    vec3 v5 = normalize(((NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0)) / (CB1[gl_InstanceID * 7 + 3].xyz + vec3(0.001000000047497451305389404296875)));
    vec3 v6 = POSITION.xyz * CB1[gl_InstanceID * 7 + 3].xyz;
    vec4 v7 = POSITION;
    v7.x = v6.x;
    vec4 v8 = v7;
    v8.y = v6.y;
    vec4 v9 = v8;
    v9.z = v6.z;
    float v10 = dot(CB1[gl_InstanceID * 7 + 0], v9);
    float v11 = dot(CB1[gl_InstanceID * 7 + 1], v9);
    float v12 = dot(CB1[gl_InstanceID * 7 + 2], v9);
    vec3 v13 = vec3(v10, v11, v12);
    float v14 = dot(CB1[gl_InstanceID * 7 + 0].xyz, v5);
    float v15 = dot(CB1[gl_InstanceID * 7 + 1].xyz, v5);
    float v16 = dot(CB1[gl_InstanceID * 7 + 2].xyz, v5);
    vec2 v17 = vec2(0.0);
    v17.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, v0[v2]);
    vec2 v18 = v17;
    v18.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, v1[v2]);
    vec3 v19 = CB1[gl_InstanceID * 7 + 4].xyz * mix(v3.xyz, vec3(1.0), vec3(v4));
    vec4 v20 = v3;
    v20.x = v19.x;
    vec4 v21 = v20;
    v21.y = v19.y;
    vec4 v22 = v21;
    v22.z = v19.z;
    vec4 v23 = v22;
    v23.w = CB1[gl_InstanceID * 7 + 4].w;
    vec4 v24 = vec4(v10, v11, v12, 1.0);
    vec4 v25 = v24 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v26 = ((v13 + (vec3(v14, v15, v16) * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v27 = vec4(0.0);
    v27.x = v26.x;
    vec4 v28 = v27;
    v28.y = v26.y;
    vec4 v29 = v28;
    v29.z = v26.z;
    vec4 v30 = v29;
    v30.w = abs(CB1[gl_InstanceID * 7 + 3].w);
    vec4 v31 = vec4(dot(CB0[25], v24), dot(CB0[26], v24), dot(CB0[27], v24), 0.0);
    v31.w = CB1[gl_InstanceID * 7 + 6].w;
    vec4 v32 = vec4(v14, v15, v16, 0.0);
    v32.w = inversesqrt(CB1[gl_InstanceID * 7 + 6].z * 0.174534320831298828125);
    gl_Position = v25;
    VARYING0 = (TEXCOORD0 * v18) + CB1[gl_InstanceID * 7 + 6].xy;
    VARYING1 = max(0.0500000007450580596923828125, mix(1.0 - v3.w, 0.0, v4));
    VARYING2 = v23;
    VARYING3 = v30;
    VARYING4 = vec4(CB0[11].xyz - v13, v25.w);
    VARYING5 = v32;
    VARYING6 = v31;
}

