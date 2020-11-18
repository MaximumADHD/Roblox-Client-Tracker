#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[52];
in vec4 POSITION;
in vec4 NORMAL;
in vec2 TEXCOORD0;
in vec2 TEXCOORD1;
in vec4 COLOR0;
in vec4 COLOR1;
out vec2 VARYING0;
out vec2 VARYING1;
out vec4 VARYING2;
out vec4 VARYING3;
out vec4 VARYING4;
out vec4 VARYING5;
out vec4 VARYING6;
out float VARYING7;

void main()
{
    vec3 v0 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec4 v1 = vec4(POSITION.xyz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec2 v2 = TEXCOORD1;
    v2.x = max(0.0500000007450580596923828125, TEXCOORD1.x);
    vec3 v3 = ((POSITION.xyz + (v0 * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
    vec4 v4 = vec4(v3.x, v3.y, v3.z, vec4(0.0).w);
    v4.w = 0.0;
    vec4 v5 = vec4(POSITION.xyz, 0.0);
    v5.w = COLOR1.z * 0.0039215688593685626983642578125;
    vec4 v6 = vec4(v0, 0.0);
    v6.w = inversesqrt(0.1745329201221466064453125 * COLOR1.y);
    gl_Position = v1;
    VARYING0 = TEXCOORD0;
    VARYING1 = v2;
    VARYING2 = COLOR0;
    VARYING3 = v4;
    VARYING4 = vec4(CB0[7].xyz - POSITION.xyz, v1.w);
    VARYING5 = v6;
    VARYING6 = v5;
    VARYING7 = NORMAL.w;
}

