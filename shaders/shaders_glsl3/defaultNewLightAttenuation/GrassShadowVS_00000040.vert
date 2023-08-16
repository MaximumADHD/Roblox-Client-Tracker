#version 150

#extension GL_ARB_shading_language_include : require
#include <GrassParams.h>
#include <Globals.h>
uniform vec4 CB1[2];
uniform vec4 CB0[57];
in vec4 POSITION;
out vec2 VARYING0;

void main()
{
    vec4 v0 = POSITION / vec4(256.0);
    vec3 v1 = v0.xyz + CB1[0].xyz;
    vec4 v2 = vec4(v1.x, v1.y - (smoothstep(0.0, 1.0, 1.0 - ((CB1[1].x - length(CB0[11].xyz - v1)) * CB1[1].y)) * v0.w), v1.z, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    float v3 = v2.z - (float(POSITION.w < 0.0) * 0.00200000009499490261077880859375);
    vec4 v4 = v2;
    v4.z = v3;
    vec4 v5 = v4;
    v5.z = 0.5;
    gl_Position = v5;
    VARYING0 = vec2(v3, v2.w);
}

