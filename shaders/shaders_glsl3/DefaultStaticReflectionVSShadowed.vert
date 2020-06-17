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
out vec4 VARYING7;
out float VARYING8;

void main()
{
    vec3 v0 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec3 v1 = -CB0[11].xyz;
    float v2 = dot(v0, v1);
    vec3 v3 = CB0[7].xyz - POSITION.xyz;
    vec4 v4 = vec4(POSITION.xyz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v5 = ((POSITION.xyz + (v0 * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
    vec4 v6 = vec4(v5.x, v5.y, v5.z, vec4(0.0).w);
    v6.w = 0.0;
    vec4 v7 = vec4(POSITION.xyz, 0.0);
    v7.w = COLOR1.w * 0.0039215688593685626983642578125;
    float v8 = COLOR1.y * 0.50359570980072021484375;
    float v9 = clamp(v2, 0.0, 1.0);
    vec3 v10 = (CB0[10].xyz * v9) + (CB0[12].xyz * clamp(-v2, 0.0, 1.0));
    vec4 v11 = vec4(v10.x, v10.y, v10.z, vec4(0.0).w);
    v11.w = (v9 * CB0[23].w) * (COLOR1.y * exp2((v8 * dot(v0, normalize(v1 + normalize(v3)))) - v8));
    gl_Position = v4;
    VARYING0 = TEXCOORD0;
    VARYING1 = TEXCOORD1;
    VARYING2 = COLOR0;
    VARYING3 = v6;
    VARYING4 = vec4(v3, v4.w);
    VARYING5 = vec4(v0, COLOR1.z);
    VARYING6 = v11;
    VARYING7 = v7;
    VARYING8 = NORMAL.w;
}

