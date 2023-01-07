#version 150

#extension GL_ARB_shading_language_include : require
#include <InstanceData.h>
#include <Globals.h>
uniform vec4 CB1[511];
uniform vec4 CB0[58];
in vec4 POSITION;
in vec4 TEXCOORD0;
out vec2 VARYING0;

void main()
{
    vec3 v0 = POSITION.xyz * CB1[gl_InstanceID * 7 + 3].xyz;
    vec4 v1 = POSITION;
    v1.x = v0.x;
    vec4 v2 = v1;
    v2.y = v0.y;
    vec4 v3 = v2;
    v3.z = v0.z;
    gl_Position = vec4(dot(CB1[gl_InstanceID * 7 + 0], v3), dot(CB1[gl_InstanceID * 7 + 1], v3), dot(CB1[gl_InstanceID * 7 + 2], v3), 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = TEXCOORD0.xy;
}

