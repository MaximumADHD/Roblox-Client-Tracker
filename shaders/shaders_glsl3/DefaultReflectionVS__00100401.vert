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
    vec3 v12 = vec3(dot(CB1[gl_InstanceID * 7 + 0].xyz, v3), dot(CB1[gl_InstanceID * 7 + 1].xyz, v3), dot(CB1[gl_InstanceID * 7 + 2].xyz, v3));
    vec2 v13 = vec2(0.0);
    v13.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, v0[v2]);
    vec2 v14 = v13;
    v14.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, v1[v2]);
    vec2 v15 = (TEXCOORD0 * v14) + CB1[gl_InstanceID * 7 + 6].xy;
    vec3 v16 = CB0[11].xyz - v11;
    vec3 v17 = normalize(v16);
    vec3 v18 = v12 * ((dot(v12, v17) > 0.0) ? 1.0 : (-1.0));
    vec2 v19 = vec2(v15.x * 4.0, v15.y);
    bvec2 v20 = bvec2(abs(TEXCOORD2.w - 3.5) > 2.0);
    vec2 v21 = vec2(v20.x ? vec2(0.0).x : v19.x, v20.y ? vec2(0.0).y : v19.y);
    vec3 v22 = vec3(0.0);
    v22.z = TEXCOORD2.w - 2.0;
    vec3 v23 = -CB0[16].xyz;
    float v24 = dot(v18, v23);
    vec4 v25 = vec4(v8, v9, v10, 1.0);
    vec4 v26 = v25 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v27 = v22;
    v27.x = v21.x;
    vec3 v28 = v27;
    v28.y = v21.y;
    vec3 v29 = ((v11 + (v18 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v30 = vec4(0.0);
    v30.x = v29.x;
    vec4 v31 = v30;
    v31.y = v29.y;
    vec4 v32 = v31;
    v32.z = v29.z;
    vec4 v33 = v32;
    v33.w = abs(CB1[gl_InstanceID * 7 + 3].w);
    vec4 v34 = vec4(dot(CB0[25], v25), dot(CB0[26], v25), dot(CB0[27], v25), 0.0);
    v34.w = CB1[gl_InstanceID * 7 + 5].w;
    float v35 = CB1[gl_InstanceID * 7 + 6].z * 0.50359976291656494140625;
    float v36 = clamp(v24, 0.0, 1.0);
    vec3 v37 = (CB0[15].xyz * v36) + (CB0[17].xyz * clamp(-v24, 0.0, 1.0));
    vec4 v38 = vec4(0.0);
    v38.x = v37.x;
    vec4 v39 = v38;
    v39.y = v37.y;
    vec4 v40 = v39;
    v40.z = v37.z;
    vec4 v41 = v40;
    v41.w = v36 * ((CB1[gl_InstanceID * 7 + 6].z * 0.055555999279022216796875) * exp2((v35 * dot(v18, normalize(v23 + v17))) - v35));
    gl_Position = v26;
    VARYING0 = v15;
    VARYING1 = v28;
    VARYING2 = CB1[gl_InstanceID * 7 + 4] * mix(vec4(COLOR0.xyz, TEXCOORD1.w) * 0.0039215688593685626983642578125, vec4(1.0), vec4(max(sign(CB1[gl_InstanceID * 7 + 3].w), 0.0)));
    VARYING3 = v33;
    VARYING4 = vec4(v16, v26.w);
    VARYING5 = vec4(v18, CB1[gl_InstanceID * 7 + 6].w);
    VARYING6 = v41;
    VARYING7 = v34;
}

