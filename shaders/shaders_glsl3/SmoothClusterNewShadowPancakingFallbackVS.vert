#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB1[1];
uniform vec4 CB0[47];
in vec4 POSITION;
out vec2 VARYING0;

void main()
{
    vec4 v0 = vec4((POSITION.xyz * CB1[0].w) + CB1[0].xyz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    float v1 = v0.z + (float(POSITION.w < 0.0) * 0.004999999888241291046142578125);
    vec4 v2 = v0;
    v2.z = v1;
    vec4 v3 = v2;
    v3.z = 0.5;
    gl_Position = v3;
    VARYING0 = vec2(v1, v0.w);
}

