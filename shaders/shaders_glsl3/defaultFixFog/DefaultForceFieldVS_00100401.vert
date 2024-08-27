#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <InstanceData.h>
const vec3 v0[16] = vec3[](vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0));
const vec3 v1[16] = vec3[](vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.699999988079071044921875, 0.699999988079071044921875, 0.0), vec3(0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, -1.0), vec3(0.0, 0.0, 1.0));

uniform vec4 CB0[58];
uniform vec4 CB1[511];
in vec4 POSITION;
in vec4 TEXCOORD1;
in vec2 TEXCOORD0;
in vec4 COLOR0;
out vec2 VARYING0;
out float VARYING1;
out vec4 VARYING2;
out vec4 VARYING3;
out vec4 VARYING4;
out vec4 VARYING5;
out vec4 VARYING6;
out vec4 VARYING7;

void main()
{
    int v2 = int(TEXCOORD1.z);
    vec4 v3 = vec4(COLOR0.xyz, TEXCOORD1.w) * 0.0039215688593685626983642578125;
    float v4 = max(sign(CB1[gl_InstanceID * 7 + 3].w), 0.0);
    vec3 v5 = normalize(((vec3(TEXCOORD1.xy, COLOR0.w) * 0.0078740157186985015869140625) - vec3(1.0)) / (CB1[gl_InstanceID * 7 + 3].xyz + vec3(0.001000000047497451305389404296875)));
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
    vec3 v14 = vec3(dot(CB1[gl_InstanceID * 7 + 0].xyz, v5), dot(CB1[gl_InstanceID * 7 + 1].xyz, v5), dot(CB1[gl_InstanceID * 7 + 2].xyz, v5));
    vec2 v15 = vec2(0.0);
    v15.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, v0[v2]);
    vec2 v16 = v15;
    v16.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, v1[v2]);
    vec3 v17 = CB1[gl_InstanceID * 7 + 4].xyz * mix(v3.xyz, vec3(1.0), vec3(v4));
    vec4 v18 = v3;
    v18.x = v17.x;
    vec4 v19 = v18;
    v19.y = v17.y;
    vec4 v20 = v19;
    v20.z = v17.z;
    vec4 v21 = v20;
    v21.w = CB1[gl_InstanceID * 7 + 4].w;
    vec3 v22 = CB0[11].xyz - v13;
    vec3 v23 = normalize(v22);
    vec3 v24 = v14 * ((dot(v14, v23) > 0.0) ? 1.0 : (-1.0));
    vec3 v25 = -CB0[16].xyz;
    float v26 = dot(v24, v25);
    vec4 v27 = vec4(v10, v11, v12, 1.0);
    vec4 v28 = v27 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v29 = ((v13 + (v24 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v30 = vec4(0.0);
    v30.x = v29.x;
    vec4 v31 = v30;
    v31.y = v29.y;
    vec4 v32 = v31;
    v32.z = v29.z;
    vec4 v33 = v32;
    v33.w = abs(CB1[gl_InstanceID * 7 + 3].w);
    float v34 = CB1[gl_InstanceID * 7 + 6].z * 0.50359976291656494140625;
    float v35 = clamp(v26, 0.0, 1.0);
    vec3 v36 = (CB0[15].xyz * v35) + (CB0[17].xyz * clamp(-v26, 0.0, 1.0));
    vec4 v37 = vec4(0.0);
    v37.x = v36.x;
    vec4 v38 = v37;
    v38.y = v36.y;
    vec4 v39 = v38;
    v39.z = v36.z;
    vec4 v40 = v39;
    v40.w = v35 * ((CB1[gl_InstanceID * 7 + 6].z * 0.055555999279022216796875) * exp2((v34 * dot(v24, normalize(v25 + v23))) - v34));
    vec4 v41 = vec4(dot(CB0[25], v27), dot(CB0[26], v27), dot(CB0[27], v27), 0.0);
    v41.w = CB1[gl_InstanceID * 7 + 6].w;
    gl_Position = v28;
    VARYING0 = (TEXCOORD0 * v16) + CB1[gl_InstanceID * 7 + 6].xy;
    VARYING1 = max(0.0500000007450580596923828125, mix(1.0 - v3.w, 0.0, v4));
    VARYING2 = v21;
    VARYING3 = v33;
    VARYING4 = vec4(v22, v28.w);
    VARYING5 = vec4(v24, CB1[gl_InstanceID * 7 + 6].w);
    VARYING6 = v40;
    VARYING7 = v41;
}

