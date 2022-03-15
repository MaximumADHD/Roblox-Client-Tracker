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
    vec3 v12 = vec3(dot(CB1[gl_InstanceID * 7 + 0].xyz, v3), dot(CB1[gl_InstanceID * 7 + 1].xyz, v3), dot(CB1[gl_InstanceID * 7 + 2].xyz, v3));
    vec2 v13 = vec2(0.0);
    v13.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, v0[v2]);
    vec2 v14 = v13;
    v14.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, v1[v2]);
    vec2 v15 = v14;
    v15.x = dot(CB1[gl_InstanceID * 7 + 3].xyz, v0[v2]);
    vec2 v16 = v15;
    v16.y = dot(CB1[gl_InstanceID * 7 + 3].xyz, v1[v2]);
    vec3 v17 = CB0[7].xyz - v11;
    vec3 v18 = normalize(v17);
    vec3 v19 = v12 * ((dot(v12, v18) > 0.0) ? 1.0 : (-1.0));
    vec3 v20 = -CB0[11].xyz;
    float v21 = dot(v19, v20);
    vec4 v22 = vec4(v8, v9, v10, 1.0);
    vec4 v23 = v22 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v24 = ((v11 + (v19 * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
    vec4 v25 = vec4(0.0);
    v25.x = v24.x;
    vec4 v26 = v25;
    v26.y = v24.y;
    vec4 v27 = v26;
    v27.z = v24.z;
    vec4 v28 = v27;
    v28.w = abs(CB1[gl_InstanceID * 7 + 3].w);
    float v29 = CB1[gl_InstanceID * 7 + 6].z * 0.50359570980072021484375;
    float v30 = clamp(v21, 0.0, 1.0);
    vec3 v31 = (CB0[10].xyz * v30) + (CB0[12].xyz * clamp(-v21, 0.0, 1.0));
    vec4 v32 = vec4(0.0);
    v32.x = v31.x;
    vec4 v33 = v32;
    v33.y = v31.y;
    vec4 v34 = v33;
    v34.z = v31.z;
    vec4 v35 = v34;
    v35.w = (v30 * CB0[23].w) * (CB1[gl_InstanceID * 7 + 6].z * exp2((v29 * dot(v19, normalize(v20 + v18))) - v29));
    vec4 v36 = vec4(dot(CB0[20], v22), dot(CB0[21], v22), dot(CB0[22], v22), 0.0);
    v36.w = CB1[gl_InstanceID * 7 + 6].w;
    gl_Position = v23;
    VARYING0 = (TEXCOORD0.xy * v14) + CB1[gl_InstanceID * 7 + 6].xy;
    VARYING1 = TEXCOORD0.zw * v16;
    VARYING2 = CB1[gl_InstanceID * 7 + 4] * mix(COLOR0 * 0.0039215688593685626983642578125, vec4(1.0), vec4(max(sign(CB1[gl_InstanceID * 7 + 3].w), 0.0)));
    VARYING3 = v28;
    VARYING4 = vec4(v17, v23.w);
    VARYING5 = v35;
    VARYING6 = v36;
    VARYING7 = TEXCOORD2.w - 1.0;
}

