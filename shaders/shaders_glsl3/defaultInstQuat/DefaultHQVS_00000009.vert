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
    float v15 = v8.x;
    vec4 v16 = vec4(v15, v8.yz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v17 = ((v8 + (v12 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v18 = vec4(0.0);
    v18.x = v17.x;
    vec4 v19 = v18;
    v19.y = v17.y;
    vec4 v20 = v19;
    v20.z = v17.z;
    vec4 v21 = v20;
    v21.w = abs(CB1[gl_InstanceID * 7 + 3].w);
    vec4 v22 = vec4(v15, v8.yz, 0.0);
    v22.w = CB1[gl_InstanceID * 7 + 6].w;
    vec4 v23 = vec4(v12, 0.0);
    v23.w = inversesqrt(CB1[gl_InstanceID * 7 + 6].z * 0.174534320831298828125);
    gl_Position = v16;
    VARYING0 = (TEXCOORD0 * v14) + CB1[gl_InstanceID * 7 + 6].xy;
    VARYING1 = CB1[gl_InstanceID * 7 + 4] * mix(COLOR0 * 0.0039215688593685626983642578125, vec4(1.0), vec4(max(sign(CB1[gl_InstanceID * 7 + 3].w), 0.0)));
    VARYING2 = v21;
    VARYING3 = vec4(CB0[11].xyz - v8, v16.w);
    VARYING4 = v23;
    VARYING5 = v22;
}

