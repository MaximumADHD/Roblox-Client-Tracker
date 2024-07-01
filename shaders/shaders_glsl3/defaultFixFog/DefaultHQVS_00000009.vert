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
in vec4 COLOR0;
out vec2 VARYING0;
out vec4 VARYING1;
out vec4 VARYING2;
out vec4 VARYING3;
out vec4 VARYING4;
out vec4 VARYING5;

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
    vec2 v15 = vec2(0.0);
    v15.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, v0[v2]);
    vec2 v16 = v15;
    v16.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, v1[v2]);
    vec4 v17 = vec4(v8, v9, v10, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v18 = ((v11 + (vec3(v12, v13, v14) * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v19 = vec4(0.0);
    v19.x = v18.x;
    vec4 v20 = v19;
    v20.y = v18.y;
    vec4 v21 = v20;
    v21.z = v18.z;
    vec4 v22 = v21;
    v22.w = abs(CB1[gl_InstanceID * 7 + 3].w);
    vec4 v23 = vec4(v8, v9, v10, 0.0);
    v23.w = CB1[gl_InstanceID * 7 + 6].w;
    vec4 v24 = vec4(v12, v13, v14, 0.0);
    v24.w = inversesqrt(CB1[gl_InstanceID * 7 + 6].z * 0.174534320831298828125);
    gl_Position = v17;
    VARYING0 = (TEXCOORD0 * v16) + CB1[gl_InstanceID * 7 + 6].xy;
    VARYING1 = CB1[gl_InstanceID * 7 + 4] * mix(COLOR0 * 0.0039215688593685626983642578125, vec4(1.0), vec4(max(sign(CB1[gl_InstanceID * 7 + 3].w), 0.0)));
    VARYING2 = v22;
    VARYING3 = vec4(CB0[11].xyz - v11, v17.w);
    VARYING4 = v24;
    VARYING5 = v23;
}

