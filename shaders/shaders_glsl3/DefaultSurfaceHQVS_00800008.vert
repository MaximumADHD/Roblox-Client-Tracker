#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
in vec4 POSITION;
in vec4 NORMAL;
in vec2 TEXCOORD0;
in vec4 COLOR0;
in vec4 COLOR1;
in vec4 TEXCOORD2;
out vec2 VARYING0;
out vec3 VARYING1;
out vec4 VARYING2;
out vec4 VARYING3;
out vec4 VARYING4;
out vec4 VARYING5;
out vec4 VARYING6;
out vec4 VARYING7;
out vec3 VARYING8;

void main()
{
    vec3 v0 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec3 v1 = (TEXCOORD2.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec3 v2 = vec3(0.0);
    v2.z = -1.0;
    vec4 v3 = vec4(0.0);
    v3.w = (TEXCOORD2.w * 0.0078740157186985015869140625) - 1.0;
    vec4 v4 = vec4(POSITION.xyz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v5 = v2;
    v5.x = 0.0;
    vec3 v6 = v5;
    v6.y = 0.0;
    vec3 v7 = ((POSITION.xyz + (v0 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v8 = vec4(0.0);
    v8.x = v7.x;
    vec4 v9 = v8;
    v9.y = v7.y;
    vec4 v10 = v9;
    v10.z = v7.z;
    vec4 v11 = v10;
    v11.w = 0.0;
    vec4 v12 = vec4(POSITION.xyz, 0.0);
    v12.w = 0.0;
    vec4 v13 = v3;
    v13.x = v1.x;
    vec4 v14 = v13;
    v14.y = v1.y;
    vec4 v15 = v14;
    v15.z = v1.z;
    vec4 v16 = vec4(v0, 0.0);
    v16.w = 0.0;
    gl_Position = v4;
    VARYING0 = TEXCOORD0;
    VARYING1 = v6;
    VARYING2 = COLOR0;
    VARYING3 = v11;
    VARYING4 = vec4(CB0[11].xyz - POSITION.xyz, v4.w);
    VARYING5 = v16;
    VARYING6 = v15;
    VARYING7 = v12;
    VARYING8 = vec3(COLOR1.z * 0.0039215688593685626983642578125, COLOR1.w * 0.0039215688593685626983642578125, NORMAL.w * 0.0039215688593685626983642578125);
}

