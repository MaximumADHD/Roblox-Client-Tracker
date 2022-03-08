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
    vec3 v14 = vec3(dot(CB1[gl_InstanceID * 7 + 0].xyz, v5), dot(CB1[gl_InstanceID * 7 + 1].xyz, v5), dot(CB1[gl_InstanceID * 7 + 2].xyz, v5));
    vec2 v15 = vec2(0.0);
    v15.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, v0[v2]);
    vec2 v16 = v15;
    v16.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, v1[v2]);
    vec2 v17 = v16;
    v17.x = dot(CB1[gl_InstanceID * 7 + 3].xyz, v0[v2]);
    vec2 v18 = v17;
    v18.y = dot(CB1[gl_InstanceID * 7 + 3].xyz, v1[v2]);
    vec3 v19 = CB1[gl_InstanceID * 7 + 4].xyz * mix(v3.xyz, vec3(1.0), vec3(v4));
    vec4 v20 = v3;
    v20.x = v19.x;
    vec4 v21 = v20;
    v21.y = v19.y;
    vec4 v22 = v21;
    v22.z = v19.z;
    vec4 v23 = v22;
    v23.w = CB1[gl_InstanceID * 7 + 4].w;
    vec3 v24 = CB0[7].xyz - v13;
    vec3 v25 = normalize(v24);
    vec3 v26 = v14 * ((dot(v14, v25) > 0.0) ? 1.0 : (-1.0));
    vec3 v27 = -CB0[11].xyz;
    float v28 = dot(v26, v27);
    vec4 v29 = vec4(v10, v11, v12, 1.0);
    vec4 v30 = v29 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec2 v31 = TEXCOORD0.zw * v18;
    v31.x = max(0.0500000007450580596923828125, mix(1.0 - v3.w, 0.0, v4));
    vec3 v32 = ((v13 + (v26 * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
    vec4 v33 = vec4(0.0);
    v33.x = v32.x;
    vec4 v34 = v33;
    v34.y = v32.y;
    vec4 v35 = v34;
    v35.z = v32.z;
    vec4 v36 = v35;
    v36.w = abs(CB1[gl_InstanceID * 7 + 3].w);
    float v37 = CB1[gl_InstanceID * 7 + 6].z * 0.50359570980072021484375;
    float v38 = clamp(v28, 0.0, 1.0);
    vec3 v39 = (CB0[10].xyz * v38) + (CB0[12].xyz * clamp(-v28, 0.0, 1.0));
    vec4 v40 = vec4(0.0);
    v40.x = v39.x;
    vec4 v41 = v40;
    v41.y = v39.y;
    vec4 v42 = v41;
    v42.z = v39.z;
    vec4 v43 = v42;
    v43.w = (v38 * CB0[23].w) * (CB1[gl_InstanceID * 7 + 6].z * exp2((v37 * dot(v26, normalize(v27 + v25))) - v37));
    vec4 v44 = vec4(dot(CB0[20], v29), dot(CB0[21], v29), dot(CB0[22], v29), 0.0);
    v44.w = CB1[gl_InstanceID * 7 + 6].w;
    gl_Position = v30;
    VARYING0 = (TEXCOORD0.xy * v16) + CB1[gl_InstanceID * 7 + 6].xy;
    VARYING1 = v31;
    VARYING2 = v23;
    VARYING3 = v36;
    VARYING4 = vec4(v24, v30.w);
    VARYING5 = vec4(v26, CB1[gl_InstanceID * 7 + 6].w);
    VARYING6 = v43;
    VARYING7 = v44;
    VARYING8 = TEXCOORD2.w - 1.0;
}

