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
    float v27 = dot(CB1[gl_InstanceID * 7 + 0].xyz, v22);
    float v28 = dot(CB1[gl_InstanceID * 7 + 1].xyz, v22);
    float v29 = dot(CB1[gl_InstanceID * 7 + 2].xyz, v22);
    vec3 v30 = vec3(v27, v28, v29);
    vec2 v31 = vec2(0.0);
    v31.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, v0[v2]);
    vec2 v32 = v31;
    v32.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, v1[v2]);
    vec2 v33 = (TEXCOORD0 * v32) + CB1[gl_InstanceID * 7 + 6].xy;
    vec3 v34 = CB0[11].xyz - v26;
    vec2 v35 = vec2(v33.x * 4.0, v33.y);
    bvec2 v36 = bvec2(abs(TEXCOORD2.w - 3.5) > 2.0);
    vec2 v37 = vec2(v36.x ? vec2(0.0).x : v35.x, v36.y ? vec2(0.0).y : v35.y);
    vec3 v38 = vec3(0.0);
    v38.z = TEXCOORD2.w - 2.0;
    vec3 v39 = -CB0[16].xyz;
    float v40 = dot(v30, v39);
    vec4 v41 = vec4(v23, v24, v25, 1.0);
    vec4 v42 = v41 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v43 = v38;
    v43.x = v37.x;
    vec3 v44 = v43;
    v44.y = v37.y;
    vec3 v45 = ((v26 + (v30 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v46 = vec4(0.0);
    v46.x = v45.x;
    vec4 v47 = v46;
    v47.y = v45.y;
    vec4 v48 = v47;
    v48.z = v45.z;
    vec4 v49 = v48;
    v49.w = abs(CB1[gl_InstanceID * 7 + 3].w);
    vec4 v50 = vec4(dot(CB0[25], v41), dot(CB0[26], v41), dot(CB0[27], v41), 0.0);
    v50.w = CB1[gl_InstanceID * 7 + 5].w;
    float v51 = CB1[gl_InstanceID * 7 + 6].z * 0.50359976291656494140625;
    float v52 = clamp(v40, 0.0, 1.0);
    vec3 v53 = (CB0[15].xyz * v52) + (CB0[17].xyz * clamp(-v40, 0.0, 1.0));
    vec4 v54 = vec4(0.0);
    v54.x = v53.x;
    vec4 v55 = v54;
    v55.y = v53.y;
    vec4 v56 = v55;
    v56.z = v53.z;
    vec4 v57 = v56;
    v57.w = v52 * ((CB1[gl_InstanceID * 7 + 6].z * 0.055555999279022216796875) * exp2((v51 * dot(v30, normalize(v39 + normalize(v34)))) - v51));
    gl_Position = v42;
    VARYING0 = v33;
    VARYING1 = v44;
    VARYING2 = CB1[gl_InstanceID * 7 + 4] * mix(vec4(COLOR0.xyz, TEXCOORD1.w) * 0.0039215688593685626983642578125, vec4(1.0), vec4(max(sign(CB1[gl_InstanceID * 7 + 3].w), 0.0)));
    VARYING3 = v49;
    VARYING4 = vec4(v34, v42.w);
    VARYING5 = vec4(v27, v28, v29, CB1[gl_InstanceID * 7 + 6].w);
    VARYING6 = v57;
    VARYING7 = v50;
}

