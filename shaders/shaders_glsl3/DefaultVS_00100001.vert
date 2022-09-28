#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <Instance.h>
const vec3 v0[16] = vec3[](vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0));
const vec3 v1[16] = vec3[](vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.699999988079071044921875, 0.699999988079071044921875, 0.0), vec3(0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, -1.0), vec3(0.0, 0.0, 1.0));

uniform vec4 CB0[58];
uniform vec4 CB1[511];
in vec4 POSITION;
in vec4 TEXCOORD1;
in vec4 TEXCOORD0;
in vec4 TEXCOORD2;
in vec4 COLOR0;
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
    int v2 = int(TEXCOORD1.z);
    vec3 v3 = normalize(((vec3(TEXCOORD1.xy, COLOR0.w) * 0.0078740157186985015869140625) - vec3(1.0)) / (CB1[gl_InstanceID * 7 + 3].xyz + vec3(0.001000000047497451305389404296875)));
    vec3 v4 = POSITION.xyz * CB1[gl_InstanceID * 7 + 3].xyz;
    vec4 v5 = POSITION;
    v5.x = v4.x;
    vec4 v6 = v5;
    v6.y = v4.y;
    vec4 v7 = v6;
    v7.z = v4.z;
    float v8 = dot(CB1[gl_InstanceID * 7 + 0], v7);
    float v9 = dot(CB1[gl_InstanceID * 7 + 1], v7);
    float v10 = dot(CB1[gl_InstanceID * 7 + 2], v7);
    vec3 v11 = vec3(v8, v9, v10);
    vec3 v12 = vec3(dot(CB1[gl_InstanceID * 7 + 0].xyz, v3), dot(CB1[gl_InstanceID * 7 + 1].xyz, v3), dot(CB1[gl_InstanceID * 7 + 2].xyz, v3));
    vec2 v13 = vec2(0.0);
    v13.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, v0[v2]);
    vec2 v14 = v13;
    v14.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, v1[v2]);
    vec2 v15 = v14;
    v15.x = dot(CB1[gl_InstanceID * 7 + 3].xyz, v0[v2]);
    vec2 v16 = v15;
    v16.y = dot(CB1[gl_InstanceID * 7 + 3].xyz, v1[v2]);
    vec3 v17 = CB0[11].xyz - v11;
    vec3 v18 = -CB0[16].xyz;
    float v19 = dot(v12, v18);
    vec4 v20 = vec4(v8, v9, v10, 1.0);
    vec4 v21 = v20 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v22 = ((v11 + (v12 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v23 = vec4(0.0);
    v23.x = v22.x;
    vec4 v24 = v23;
    v24.y = v22.y;
    vec4 v25 = v24;
    v25.z = v22.z;
    vec4 v26 = v25;
    v26.w = abs(CB1[gl_InstanceID * 7 + 3].w);
    float v27 = CB1[gl_InstanceID * 7 + 6].z * 0.50359570980072021484375;
    float v28 = clamp(v19, 0.0, 1.0);
    vec3 v29 = (CB0[15].xyz * v28) + (CB0[17].xyz * clamp(-v19, 0.0, 1.0));
    vec4 v30 = vec4(0.0);
    v30.x = v29.x;
    vec4 v31 = v30;
    v31.y = v29.y;
    vec4 v32 = v31;
    v32.z = v29.z;
    vec4 v33 = v32;
    v33.w = (v28 * CB0[28].w) * (CB1[gl_InstanceID * 7 + 6].z * exp2((v27 * dot(v12, normalize(v18 + normalize(v17)))) - v27));
    vec4 v34 = vec4(dot(CB0[25], v20), dot(CB0[26], v20), dot(CB0[27], v20), 0.0);
    v34.w = CB1[gl_InstanceID * 7 + 6].w;
    gl_Position = v21;
    VARYING0 = (TEXCOORD0.xy * v14) + CB1[gl_InstanceID * 7 + 6].xy;
    VARYING1 = TEXCOORD0.zw * v16;
    VARYING2 = CB1[gl_InstanceID * 7 + 4] * mix(vec4(COLOR0.xyz, TEXCOORD1.w) * 0.0039215688593685626983642578125, vec4(1.0), vec4(max(sign(CB1[gl_InstanceID * 7 + 3].w), 0.0)));
    VARYING3 = v26;
    VARYING4 = vec4(v17, v21.w);
    VARYING5 = v33;
    VARYING6 = v34;
    VARYING7 = TEXCOORD2.w - 1.0;
}

