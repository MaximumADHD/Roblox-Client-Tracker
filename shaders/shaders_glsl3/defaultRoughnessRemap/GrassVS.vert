#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <GrassParams.h>
#include <GrassPerFrameParams.h>
uniform vec4 CB0[53];
uniform vec4 CB1[2];
uniform vec4 CB2[3];
in vec4 POSITION;
in vec4 NORMAL;
out vec4 VARYING0;
out vec3 VARYING1;
out vec3 VARYING2;
out vec3 VARYING3;

void main()
{
    vec4 v0 = POSITION * vec4(0.00390625);
    vec3 v1 = v0.xyz + CB1[0].xyz;
    float v2 = v1.y - (smoothstep(0.0, 1.0, 1.0 - ((CB1[1].x - length(CB0[7].xyz - v1)) * CB1[1].y)) * v0.w);
    vec3 v3 = v1;
    v3.y = v2;
    vec4 v4 = vec4(v1.x, v2, v1.z, 1.0);
    vec3 v5 = CB0[7].xyz - v3;
    gl_Position = v4 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = vec4(((v3 + vec3(0.0, 6.0, 0.0)).yxz * CB0[16].xyz) + CB0[17].xyz, clamp(exp2((CB0[13].z * length(v5)) + CB0[13].x) - CB0[13].w, 0.0, 1.0));
    VARYING1 = vec3(dot(CB0[20], v4), dot(CB0[21], v4), dot(CB0[22], v4));
    VARYING2 = (CB0[10].xyz * clamp((abs(dot((NORMAL.xyz * 2.0) - vec3(1.0), -CB0[11].xyz)) + 0.89999997615814208984375) * 0.52631580829620361328125, 0.0, 1.0)) * exp2((-clamp(NORMAL.w, 0.0, 1.0)) * CB2[1].x);
    VARYING3 = v5;
}

