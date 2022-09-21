#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[22];
in vec3 POSITION;
in vec2 TEXCOORD0;
out vec3 VARYING0;
out vec2 VARYING1;
out vec4 VARYING2;

void main()
{
    vec4 v0 = vec4(POSITION, 1.0) * mat4(CB1[0], CB1[1], CB1[2], CB1[3]);
    vec4 v1 = vec4(v0.xyz, 1.0) * mat4(CB1[4], CB1[5], CB1[6], CB1[7]);
    v1.z = 0.0;
    gl_Position = v1;
    VARYING0 = v0.xyz;
    VARYING1 = TEXCOORD0;
    VARYING2 = mix(CB1[13], CB1[12], vec4(clamp(v0.y * 0.0005882352706976234912872314453125, 0.0, 1.0)));
}

