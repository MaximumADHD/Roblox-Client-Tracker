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
    float v14 = dot(CB1[gl_InstanceID * 7 + 0].xyz, v5);
    float v15 = dot(CB1[gl_InstanceID * 7 + 1].xyz, v5);
    float v16 = dot(CB1[gl_InstanceID * 7 + 2].xyz, v5);
    vec3 v17 = vec3(v14, v15, v16);
    vec2 v18 = vec2(0.0);
    v18.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, v0[v2]);
    vec2 v19 = v18;
    v19.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, v1[v2]);
    vec3 v20 = CB1[gl_InstanceID * 7 + 4].xyz * mix(v3.xyz, vec3(1.0), vec3(v4));
    vec4 v21 = v3;
    v21.x = v20.x;
    vec4 v22 = v21;
    v22.y = v20.y;
    vec4 v23 = v22;
    v23.z = v20.z;
    vec4 v24 = v23;
    v24.w = CB1[gl_InstanceID * 7 + 4].w;
    vec3 v25 = CB0[11].xyz - v13;
    vec3 v26 = -CB0[16].xyz;
    float v27 = dot(v17, v26);
    vec4 v28 = vec4(v10, v11, v12, 1.0);
    vec4 v29 = v28 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v30 = ((v13 + (v17 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v31 = vec4(0.0);
    v31.x = v30.x;
    vec4 v32 = v31;
    v32.y = v30.y;
    vec4 v33 = v32;
    v33.z = v30.z;
    vec4 v34 = v33;
    v34.w = abs(CB1[gl_InstanceID * 7 + 3].w);
    float v35 = CB1[gl_InstanceID * 7 + 6].z * 0.50359976291656494140625;
    float v36 = clamp(v27, 0.0, 1.0);
    vec3 v37 = (CB0[15].xyz * v36) + (CB0[17].xyz * clamp(-v27, 0.0, 1.0));
    vec4 v38 = vec4(0.0);
    v38.x = v37.x;
    vec4 v39 = v38;
    v39.y = v37.y;
    vec4 v40 = v39;
    v40.z = v37.z;
    vec4 v41 = v40;
    v41.w = v36 * ((CB1[gl_InstanceID * 7 + 6].z * 0.055555999279022216796875) * exp2((v35 * dot(v17, normalize(v26 + normalize(v25)))) - v35));
    vec4 v42 = vec4(dot(CB0[25], v28), dot(CB0[26], v28), dot(CB0[27], v28), 0.0);
    v42.w = CB1[gl_InstanceID * 7 + 6].w;
    gl_Position = v29;
    VARYING0 = (TEXCOORD0 * v19) + CB1[gl_InstanceID * 7 + 6].xy;
    VARYING1 = max(0.0500000007450580596923828125, mix(1.0 - v3.w, 0.0, v4));
    VARYING2 = v24;
    VARYING3 = v34;
    VARYING4 = vec4(v25, v29.w);
    VARYING5 = vec4(v14, v15, v16, CB1[gl_InstanceID * 7 + 6].w);
    VARYING6 = v41;
    VARYING7 = v42;
}

