#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <InstanceData.h>
const vec3 v0[16] = vec3[](vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0));
const vec3 v1[16] = vec3[](vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.699999988079071044921875, 0.699999988079071044921875, 0.0), vec3(0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, 1.0));

uniform vec4 CB0[61];
uniform vec4 CB10[216];
uniform vec4 CB1[511];
in vec4 POSITION;
in vec4 TEXCOORD1;
in vec2 TEXCOORD0;
in vec4 TEXCOORD2;
in vec4 COLOR0;
in vec4 TEXCOORD5;
in vec4 TEXCOORD6;
out vec2 VARYING0;
out vec3 VARYING1;
out vec4 VARYING2;
out vec4 VARYING3;
out vec4 VARYING4;
out vec4 VARYING5;
out vec4 VARYING6;

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
    vec4 v8 = TEXCOORD6 * vec4(0.0039215688593685626983642578125);
    ivec4 v9 = ivec4(TEXCOORD5);
    int v10 = 3 * v9.x;
    float v11 = v8.x;
    int v12 = 3 * v9.y;
    float v13 = v8.y;
    int v14 = 3 * v9.z;
    float v15 = v8.z;
    int v16 = 3 * v9.w;
    float v17 = v8.w;
    vec4 v18 = (((CB10[v10 * 1 + 0] * v11) + (CB10[v12 * 1 + 0] * v13)) + (CB10[v14 * 1 + 0] * v15)) + (CB10[v16 * 1 + 0] * v17);
    vec4 v19 = (((CB10[(v10 + 1) * 1 + 0] * v11) + (CB10[(v12 + 1) * 1 + 0] * v13)) + (CB10[(v14 + 1) * 1 + 0] * v15)) + (CB10[(v16 + 1) * 1 + 0] * v17);
    vec4 v20 = (((CB10[(v10 + 2) * 1 + 0] * v11) + (CB10[(v12 + 2) * 1 + 0] * v13)) + (CB10[(v14 + 2) * 1 + 0] * v15)) + (CB10[(v16 + 2) * 1 + 0] * v17);
    vec4 v21 = vec4(dot(v18, v7), dot(v19, v7), dot(v20, v7), 1.0);
    vec3 v22 = vec3(dot(v18.xyz, v3), dot(v19.xyz, v3), dot(v20.xyz, v3));
    float v23 = dot(CB1[gl_InstanceID * 7 + 0], v21);
    float v24 = dot(CB1[gl_InstanceID * 7 + 1], v21);
    float v25 = dot(CB1[gl_InstanceID * 7 + 2], v21);
    vec3 v26 = vec3(v23, v24, v25);
    vec3 v27 = vec3(dot(CB1[gl_InstanceID * 7 + 0].xyz, v22), dot(CB1[gl_InstanceID * 7 + 1].xyz, v22), dot(CB1[gl_InstanceID * 7 + 2].xyz, v22));
    vec2 v28 = vec2(0.0);
    v28.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, v0[v2]);
    vec2 v29 = v28;
    v29.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, v1[v2]);
    vec2 v30 = (TEXCOORD0 * v29) + CB1[gl_InstanceID * 7 + 6].xy;
    vec3 v31 = CB0[11].xyz - v26;
    vec2 v32 = vec2(v30.x * 4.0, v30.y);
    bvec2 v33 = bvec2(abs(TEXCOORD2.w - 3.5) > 2.0);
    vec2 v34 = vec2(v33.x ? vec2(0.0).x : v32.x, v33.y ? vec2(0.0).y : v32.y);
    vec3 v35 = vec3(0.0);
    v35.z = TEXCOORD2.w - 2.0;
    vec3 v36 = -CB0[16].xyz;
    float v37 = dot(v27, v36);
    vec4 v38 = vec4(v23, v24, v25, 1.0);
    vec4 v39 = v38 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v40 = v35;
    v40.x = v34.x;
    vec3 v41 = v40;
    v41.y = v34.y;
    vec3 v42 = ((v26 + (v27 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v43 = vec4(0.0);
    v43.x = v42.x;
    vec4 v44 = v43;
    v44.y = v42.y;
    vec4 v45 = v44;
    v45.z = v42.z;
    vec4 v46 = v45;
    v46.w = abs(CB1[gl_InstanceID * 7 + 3].w);
    float v47 = CB1[gl_InstanceID * 7 + 6].z * 0.50359976291656494140625;
    float v48 = clamp(v37, 0.0, 1.0);
    vec3 v49 = (CB0[15].xyz * v48) + (CB0[17].xyz * clamp(-v37, 0.0, 1.0));
    vec4 v50 = vec4(0.0);
    v50.x = v49.x;
    vec4 v51 = v50;
    v51.y = v49.y;
    vec4 v52 = v51;
    v52.z = v49.z;
    vec4 v53 = v52;
    v53.w = v48 * ((CB1[gl_InstanceID * 7 + 6].z * 0.055555999279022216796875) * exp2((v47 * dot(v27, normalize(v36 + normalize(v31)))) - v47));
    vec4 v54 = vec4(dot(CB0[25], v38), dot(CB0[26], v38), dot(CB0[27], v38), 0.0);
    v54.w = CB1[gl_InstanceID * 7 + 6].w;
    gl_Position = v39;
    VARYING0 = v30;
    VARYING1 = v41;
    VARYING2 = CB1[gl_InstanceID * 7 + 4] * mix(vec4(COLOR0.xyz, TEXCOORD1.w) * 0.0039215688593685626983642578125, vec4(1.0), vec4(max(sign(CB1[gl_InstanceID * 7 + 3].w), 0.0)));
    VARYING3 = v46;
    VARYING4 = vec4(v31, v39.w);
    VARYING5 = v53;
    VARYING6 = v54;
}

