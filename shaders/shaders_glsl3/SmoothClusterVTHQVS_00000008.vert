#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[57];
uniform vec4 unpackInfo[1];
in vec4 POSITION;
in vec2 TEXCOORD0;
out vec4 VARYING0;
out vec3 VARYING1;
out vec4 VARYING2;
out vec3 VARYING3;
out vec2 VARYING4;

void main()
{
    vec3 v0 = (POSITION.xyz * unpackInfo[0].w) + unpackInfo[0].xyz;
    float v1 = v0.x;
    vec4 v2 = vec4(v1, v0.yz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v3 = v2;
    v3.z = v2.z - (float(POSITION.w < 0.0) * 0.00200000009499490261077880859375);
    vec4 v4 = vec4(0.0);
    v4.w = (abs(POSITION.w) > 3.0) ? 0.0 : 1.0;
    bvec3 v5 = equal(mod(abs(POSITION.www), vec3(4.0)), vec3(1.0, 2.0, 3.0));
    vec3 v6 = vec3(v5.x ? vec3(1.0).x : vec3(0.0).x, v5.y ? vec3(1.0).y : vec3(0.0).y, v5.z ? vec3(1.0).z : vec3(0.0).z);
    vec4 v7 = v4;
    v7.x = v6.x;
    vec4 v8 = v7;
    v8.y = v6.y;
    vec4 v9 = v8;
    v9.z = v6.z;
    gl_Position = v3;
    VARYING0 = v9;
    VARYING1 = ((v0 + vec3(0.0, 6.0, 0.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    VARYING2 = vec4(v1, v0.yz, length(CB0[11].xyz - v0));
    VARYING3 = vec3(0.0, 1.0, 0.0);
    VARYING4 = TEXCOORD0;
}

