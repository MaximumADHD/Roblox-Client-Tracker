#version 150

#extension GL_ARB_shading_language_include : require
#include <Instance.h>
const vec3 v0[16] = vec3[](vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0));
const vec3 v1[16] = vec3[](vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.699999988079071044921875, 0.699999988079071044921875, 0.0), vec3(0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, -1.0), vec3(0.0, 0.0, 1.0));

#include <Globals.h>
uniform vec4 CB1[511];
uniform vec4 CB0[52];
in vec4 POSITION;
in vec4 NORMAL;
in vec2 TEXCOORD0;
out vec3 VARYING0;

void main()
{
    int v2 = int(NORMAL.x);
    vec3 v3 = POSITION.xyz * CB1[gl_InstanceID * 7 + 3].xyz;
    vec4 v4 = vec4(v3.x, v3.y, v3.z, POSITION.w);
    vec2 v5 = vec2(0.0);
    v5.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, v0[v2]);
    vec2 v6 = v5;
    v6.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, v1[v2]);
    vec2 v7 = TEXCOORD0 * v6;
    vec3 v8 = vec3(v7.x, v7.y, vec3(0.0).z);
    v8.z = CB1[gl_InstanceID * 7 + 4].w * mix(NORMAL.w * 0.0039215688593685626983642578125, 1.0, CB1[gl_InstanceID * 7 + 3].w);
    gl_Position = vec4(dot(CB1[gl_InstanceID * 7 + 0], v4), dot(CB1[gl_InstanceID * 7 + 1], v4), dot(CB1[gl_InstanceID * 7 + 2], v4), 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = v8;
}

