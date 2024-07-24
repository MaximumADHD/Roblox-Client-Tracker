#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <InstanceData.h>
const vec3 v0[16] = vec3[](vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0));
const vec3 v1[16] = vec3[](vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.699999988079071044921875, 0.699999988079071044921875, 0.0), vec3(0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, -1.0), vec3(0.0, 0.0, 1.0));

uniform vec4 CB0[58];
uniform vec4 CB1[511];
in vec4 POSITION;
in vec4 NORMAL;
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

void main()
{
    int v2 = int(NORMAL.w);
    vec3 v3 = POSITION.xyz * CB1[gl_InstanceID * 7 + 3].xyz;
    vec4 v4 = vec4(0.0);
    v4.x = v3.x;
    vec4 v5 = v4;
    v5.y = v3.y;
    vec4 v6 = v5;
    v6.z = v3.z;
    vec3 v7 = cross(CB1[gl_InstanceID * 7 + 0].xyz, cross(CB1[gl_InstanceID * 7 + 0].xyz, v6.xyz) + (v6.xyz * CB1[gl_InstanceID * 7 + 0].w));
    vec3 v8 = ((v6.xyz + v7) + v7) + CB1[gl_InstanceID * 7 + 1].xyz;
    vec3 v9 = ((NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0)) / (CB1[gl_InstanceID * 7 + 3].xyz + vec3(0.001000000047497451305389404296875));
    vec3 v10 = cross(CB1[gl_InstanceID * 7 + 0].xyz, cross(CB1[gl_InstanceID * 7 + 0].xyz, v9) + (v9 * CB1[gl_InstanceID * 7 + 0].w));
    vec3 v11 = (v9 + v10) + v10;
    vec3 v12 = v11 * inversesqrt(max(dot(v11, v11), 9.9999997473787516355514526367188e-05));
    vec2 v13 = vec2(0.0);
    v13.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, v0[v2]);
    vec2 v14 = v13;
    v14.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, v1[v2]);
    vec2 v15 = (TEXCOORD0 * v14) + CB1[gl_InstanceID * 7 + 6].xy;
    vec3 v16 = CB0[11].xyz - v8;
    vec2 v17 = vec2(v15.x * 4.0, v15.y);
    bvec2 v18 = bvec2(abs(TEXCOORD2.w - 3.5) > 2.0);
    vec2 v19 = vec2(v18.x ? vec2(0.0).x : v17.x, v18.y ? vec2(0.0).y : v17.y);
    vec3 v20 = vec3(0.0);
    v20.z = TEXCOORD2.w - 2.0;
    vec3 v21 = -CB0[16].xyz;
    float v22 = dot(v12, v21);
    vec4 v23 = vec4(v8, 1.0);
    vec4 v24 = v23 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v25 = v20;
    v25.x = v19.x;
    vec3 v26 = v25;
    v26.y = v19.y;
    vec3 v27 = ((v8 + (v12 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v28 = vec4(0.0);
    v28.x = v27.x;
    vec4 v29 = v28;
    v29.y = v27.y;
    vec4 v30 = v29;
    v30.z = v27.z;
    vec4 v31 = v30;
    v31.w = abs(CB1[gl_InstanceID * 7 + 3].w);
    float v32 = CB1[gl_InstanceID * 7 + 6].z * 0.50359976291656494140625;
    float v33 = clamp(v22, 0.0, 1.0);
    vec3 v34 = (CB0[15].xyz * v33) + (CB0[17].xyz * clamp(-v22, 0.0, 1.0));
    vec4 v35 = vec4(0.0);
    v35.x = v34.x;
    vec4 v36 = v35;
    v36.y = v34.y;
    vec4 v37 = v36;
    v37.z = v34.z;
    vec4 v38 = v37;
    v38.w = v33 * ((CB1[gl_InstanceID * 7 + 6].z * 0.055555999279022216796875) * exp2((v32 * dot(v12, normalize(v21 + normalize(v16)))) - v32));
    vec4 v39 = vec4(dot(CB0[25], v23), dot(CB0[26], v23), dot(CB0[27], v23), 0.0);
    v39.w = CB1[gl_InstanceID * 7 + 6].w;
    gl_Position = v24;
    VARYING0 = v15;
    VARYING1 = v26;
    VARYING2 = CB1[gl_InstanceID * 7 + 4] * mix(COLOR0 * 0.0039215688593685626983642578125, vec4(1.0), vec4(max(sign(CB1[gl_InstanceID * 7 + 3].w), 0.0)));
    VARYING3 = v31;
    VARYING4 = vec4(v16, v24.w);
    VARYING5 = v38;
    VARYING6 = v39;
}

