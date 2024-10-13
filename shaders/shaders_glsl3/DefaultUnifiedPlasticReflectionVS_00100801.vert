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
in vec4 TEXCOORD2;
in vec4 COLOR0;
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
    float v12 = dot(CB1[gl_InstanceID * 7 + 0].xyz, v3);
    float v13 = dot(CB1[gl_InstanceID * 7 + 1].xyz, v3);
    float v14 = dot(CB1[gl_InstanceID * 7 + 2].xyz, v3);
    vec3 v15 = vec3(v12, v13, v14);
    vec2 v16 = vec2(0.0);
    v16.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, v0[v2]);
    vec2 v17 = v16;
    v17.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, v1[v2]);
    vec2 v18 = (TEXCOORD0 * v17) + CB1[gl_InstanceID * 7 + 6].xy;
    vec3 v19 = CB0[11].xyz - v11;
    vec2 v20 = vec2(v18.x * 4.0, v18.y);
    bvec2 v21 = bvec2(abs(TEXCOORD2.w - 3.5) > 2.0);
    vec2 v22 = vec2(v21.x ? vec2(0.0).x : v20.x, v21.y ? vec2(0.0).y : v20.y);
    vec3 v23 = vec3(0.0);
    v23.z = TEXCOORD2.w - 2.0;
    vec3 v24 = -CB0[16].xyz;
    float v25 = dot(v15, v24);
    vec4 v26 = vec4(v8, v9, v10, 1.0);
    vec4 v27 = v26 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v28 = v23;
    v28.x = v22.x;
    vec3 v29 = v28;
    v29.y = v22.y;
    vec3 v30 = ((v11 + (v15 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v31 = vec4(0.0);
    v31.x = v30.x;
    vec4 v32 = v31;
    v32.y = v30.y;
    vec4 v33 = v32;
    v33.z = v30.z;
    vec4 v34 = v33;
    v34.w = abs(CB1[gl_InstanceID * 7 + 3].w);
    vec4 v35 = vec4(dot(CB0[25], v26), dot(CB0[26], v26), dot(CB0[27], v26), 0.0);
    v35.w = CB1[gl_InstanceID * 7 + 5].w;
    float v36 = CB1[gl_InstanceID * 7 + 6].z * 0.50359976291656494140625;
    float v37 = clamp(v25, 0.0, 1.0);
    vec3 v38 = (CB0[15].xyz * v37) + (CB0[17].xyz * clamp(-v25, 0.0, 1.0));
    vec4 v39 = vec4(0.0);
    v39.x = v38.x;
    vec4 v40 = v39;
    v40.y = v38.y;
    vec4 v41 = v40;
    v41.z = v38.z;
    vec4 v42 = v41;
    v42.w = v37 * ((CB1[gl_InstanceID * 7 + 6].z * 0.055555999279022216796875) * exp2((v36 * dot(v15, normalize(v24 + normalize(v19)))) - v36));
    gl_Position = v27;
    VARYING0 = v18;
    VARYING1 = v29;
    VARYING2 = CB1[gl_InstanceID * 7 + 4] * mix(vec4(COLOR0.xyz, TEXCOORD1.w) * 0.0039215688593685626983642578125, vec4(1.0), vec4(max(sign(CB1[gl_InstanceID * 7 + 3].w), 0.0)));
    VARYING3 = v34;
    VARYING4 = vec4(v19, v27.w);
    VARYING5 = vec4(v12, v13, v14, CB1[gl_InstanceID * 7 + 6].w);
    VARYING6 = v42;
    VARYING7 = v35;
}

