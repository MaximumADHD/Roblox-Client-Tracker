#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[57];
uniform vec4 unpackInfo[1];
uniform vec4 CB3[63];
in vec4 POSITION;
in vec2 TEXCOORD0;
in vec4 NORMAL;
out vec3 VARYING0;
out vec4 VARYING1;
out vec3 VARYING2;
out vec4 VARYING3;
out vec2 VARYING4;

void main()
{
    vec3 v0 = (POSITION.xyz * unpackInfo[0].w) + unpackInfo[0].xyz;
    float v1 = v0.x;
    vec4 v2 = vec4(v1, v0.yz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v3 = v2;
    v3.z = v2.z - (float(POSITION.w < 0.0) * 0.00200000009499490261077880859375);
    vec3 v4 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    gl_Position = v3;
    VARYING0 = ((v0 + (v4 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    VARYING1 = vec4(v1, v0.yz, length(CB0[11].xyz - v0));
    VARYING2 = v4;
    VARYING3 = CB3[int(abs(POSITION.w)) * 1 + 0];
    VARYING4 = TEXCOORD0;
}

