#version 150

#extension GL_ARB_shading_language_include : require
#include <Instance.h>
const vec3 v0[16] = vec3[](vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0));
const vec3 v1[16] = vec3[](vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.699999988079071044921875, 0.699999988079071044921875, 0.0), vec3(0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, -1.0), vec3(0.0, 0.0, 1.0));

#include <Globals.h>
uniform vec4 CB1[511];
uniform vec4 CB0[58];
in vec4 POSITION;
in vec4 TEXCOORD1;
in vec2 TEXCOORD0;
out vec3 VARYING0;

void main()
{
    int v2 = int(TEXCOORD1.z);
    vec3 v3 = POSITION.xyz * CB1[gl_InstanceID * 7 + 3].xyz;
    vec4 v4 = POSITION;
    v4.x = v3.x;
    vec4 v5 = v4;
    v5.y = v3.y;
    vec4 v6 = v5;
    v6.z = v3.z;
    vec2 v7 = vec2(0.0);
    v7.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, v0[v2]);
    vec2 v8 = v7;
    v8.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, v1[v2]);
    vec2 v9 = TEXCOORD0 * v8;
    vec3 v10 = vec3(0.0);
    v10.x = v9.x;
    vec3 v11 = v10;
    v11.y = v9.y;
    vec3 v12 = v11;
    v12.z = CB1[gl_InstanceID * 7 + 4].w * mix(TEXCOORD1.w * 0.0039215688593685626983642578125, 1.0, CB1[gl_InstanceID * 7 + 3].w);
    gl_Position = vec4(dot(CB1[gl_InstanceID * 7 + 0], v6), dot(CB1[gl_InstanceID * 7 + 1], v6), dot(CB1[gl_InstanceID * 7 + 2], v6), 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = v12;
}

