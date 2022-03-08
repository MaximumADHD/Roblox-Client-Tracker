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
    vec3 v17 = vec3(v14, v15, v16);
    vec2 v18 = vec2(0.0);
    v18.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, v0[v2]);
    vec2 v19 = v18;
    v19.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, v1[v2]);
    vec2 v20 = v19;
    v20.x = dot(CB1[gl_InstanceID * 7 + 3].xyz, v0[v2]);
    vec2 v21 = v20;
    v21.y = dot(CB1[gl_InstanceID * 7 + 3].xyz, v1[v2]);
    vec3 v22 = CB1[gl_InstanceID * 7 + 4].xyz * mix(v3.xyz, vec3(1.0), vec3(v4));
    vec4 v23 = v3;
    v23.x = v22.x;
    vec4 v24 = v23;
    v24.y = v22.y;
    vec4 v25 = v24;
    v25.z = v22.z;
    vec4 v26 = v25;
    v26.w = CB1[gl_InstanceID * 7 + 4].w;
    vec3 v27 = CB0[7].xyz - v13;
    vec3 v28 = -CB0[11].xyz;
    float v29 = dot(v17, v28);
    vec4 v30 = vec4(v10, v11, v12, 1.0);
    vec4 v31 = v30 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec2 v32 = TEXCOORD0.zw * v21;
    v32.x = max(0.0500000007450580596923828125, mix(1.0 - v3.w, 0.0, v4));
    vec3 v33 = ((v13 + (v17 * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
    vec4 v34 = vec4(0.0);
    v34.x = v33.x;
    vec4 v35 = v34;
    v35.y = v33.y;
    vec4 v36 = v35;
    v36.z = v33.z;
    vec4 v37 = v36;
    v37.w = abs(CB1[gl_InstanceID * 7 + 3].w);
    float v38 = CB1[gl_InstanceID * 7 + 6].z * 0.50359570980072021484375;
    float v39 = clamp(v29, 0.0, 1.0);
    vec3 v40 = (CB0[10].xyz * v39) + (CB0[12].xyz * clamp(-v29, 0.0, 1.0));
    vec4 v41 = vec4(0.0);
    v41.x = v40.x;
    vec4 v42 = v41;
    v42.y = v40.y;
    vec4 v43 = v42;
    v43.z = v40.z;
    vec4 v44 = v43;
    v44.w = (v39 * CB0[23].w) * (CB1[gl_InstanceID * 7 + 6].z * exp2((v38 * dot(v17, normalize(v28 + normalize(v27)))) - v38));
    vec4 v45 = vec4(dot(CB0[20], v30), dot(CB0[21], v30), dot(CB0[22], v30), 0.0);
    v45.w = CB1[gl_InstanceID * 7 + 6].w;
    gl_Position = v31;
    VARYING0 = (TEXCOORD0.xy * v19) + CB1[gl_InstanceID * 7 + 6].xy;
    VARYING1 = v32;
    VARYING2 = v26;
    VARYING3 = v37;
    VARYING4 = vec4(v27, v31.w);
    VARYING5 = vec4(v14, v15, v16, CB1[gl_InstanceID * 7 + 6].w);
    VARYING6 = v44;
    VARYING7 = v45;
    VARYING8 = TEXCOORD2.w - 1.0;
}

