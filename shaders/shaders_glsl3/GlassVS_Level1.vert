#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <Instance.h>
const vec3 v0[16] = vec3[](vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0));
const vec3 v1[16] = vec3[](vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.699999988079071044921875, 0.699999988079071044921875, 0.0), vec3(0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, -1.0), vec3(0.0, 0.0, 1.0));

uniform vec4 CB0[53];
uniform vec4 CB1[511];
in vec4 POSITION;
in vec4 NORMAL;
in vec4 TEXCOORD0;
in vec4 TEXCOORD2;
in vec4 COLOR0;
centroid out vec2 VARYING0;
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
    int v2 = int(NORMAL.w);
    vec3 v3 = normalize(((NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0)) / (CB1[gl_InstanceID * 7 + 3].xyz + vec3(0.001000000047497451305389404296875)));
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
    float v12 = dot(CB1[gl_InstanceID * 7 + 0].xyz, v3);
    float v13 = dot(CB1[gl_InstanceID * 7 + 1].xyz, v3);
    float v14 = dot(CB1[gl_InstanceID * 7 + 2].xyz, v3);
    vec3 v15 = vec3(v12, v13, v14);
    vec2 v16 = vec2(0.0);
    v16.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, v0[v2]);
    vec2 v17 = v16;
    v17.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, v1[v2]);
    vec2 v18 = v17;
    v18.x = dot(CB1[gl_InstanceID * 7 + 3].xyz, v0[v2]);
    vec2 v19 = v18;
    v19.y = dot(CB1[gl_InstanceID * 7 + 3].xyz, v1[v2]);
    vec4 v20 = CB1[gl_InstanceID * 7 + 4] * mix(COLOR0 * 0.0039215688593685626983642578125, vec4(1.0), vec4(max(sign(CB1[gl_InstanceID * 7 + 3].w), 0.0)));
    vec3 v21 = CB0[7].xyz - v11;
    vec3 v22 = -CB0[11].xyz;
    float v23 = dot(v15, v22);
    vec4 v24 = vec4(v8, v9, v10, 1.0);
    vec4 v25 = v24 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v26 = ((v11 + (v15 * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
    vec4 v27 = vec4(0.0);
    v27.x = v26.x;
    vec4 v28 = v27;
    v28.y = v26.y;
    vec4 v29 = v28;
    v29.z = v26.z;
    vec4 v30 = v29;
    v30.w = abs(CB1[gl_InstanceID * 7 + 3].w);
    vec4 v31 = vec4(v21, v25.w);
    float v32 = v20.w * 2.0;
    float v33 = clamp(v32 - 1.0, 0.0, 1.0);
    float v34 = (clamp(2.0 - (dot(v15, normalize(v31.xyz)) * 3.0), 0.0, 1.0) * 0.300000011920928955078125) * clamp(v32, 0.0, 1.0);
    vec4 v35 = v20;
    v35.w = mix(v33, 1.0, v34);
    vec4 v36 = vec4(dot(CB0[20], v24), dot(CB0[21], v24), dot(CB0[22], v24), 0.0);
    v36.w = mix(CB1[gl_InstanceID * 7 + 5].w * v33, 1.0, v34);
    float v37 = CB1[gl_InstanceID * 7 + 6].z * 0.50359570980072021484375;
    float v38 = clamp(v23, 0.0, 1.0);
    vec3 v39 = (CB0[10].xyz * v38) + (CB0[12].xyz * clamp(-v23, 0.0, 1.0));
    vec4 v40 = vec4(0.0);
    v40.x = v39.x;
    vec4 v41 = v40;
    v41.y = v39.y;
    vec4 v42 = v41;
    v42.z = v39.z;
    vec4 v43 = v42;
    v43.w = (v38 * CB0[23].w) * (CB1[gl_InstanceID * 7 + 6].z * exp2((v37 * dot(v15, normalize(v22 + normalize(v21)))) - v37));
    gl_Position = v25;
    VARYING0 = (TEXCOORD0.xy * v17) + CB1[gl_InstanceID * 7 + 6].xy;
    VARYING1 = TEXCOORD0.zw * v19;
    VARYING2 = v35;
    VARYING3 = v30;
    VARYING4 = v31;
    VARYING5 = vec4(v12, v13, v14, CB1[gl_InstanceID * 7 + 6].w);
    VARYING6 = v43;
    VARYING7 = v36;
    VARYING8 = TEXCOORD2.w - 1.0;
}

