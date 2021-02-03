#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
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
    vec3 v1 = CB0[7].xyz - POSITION.xyz;
    vec3 v2 = normalize(v1);
    vec3 v3 = v0 * ((dot(v0, v2) > 0.0) ? 1.0 : (-1.0));
    vec3 v4 = -CB0[11].xyz;
    float v5 = dot(v3, v4);
    vec4 v6 = vec4(POSITION.xyz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v7 = ((POSITION.xyz + (v3 * 6.0)).yxz * CB0[16].xyz) + CB0[17].xyz;
    vec4 v8 = vec4(v7.x, v7.y, v7.z, vec4(0.0).w);
    v8.w = 0.0;
    vec4 v9 = vec4(POSITION.xyz, 0.0);
    v9.w = COLOR1.w * 0.0039215688593685626983642578125;
    float v10 = COLOR1.y * 0.50359570980072021484375;
    float v11 = clamp(v5, 0.0, 1.0);
    vec3 v12 = (CB0[10].xyz * v11) + (CB0[12].xyz * clamp(-v5, 0.0, 1.0));
    vec4 v13 = vec4(v12.x, v12.y, v12.z, vec4(0.0).w);
    v13.w = (v11 * CB0[23].w) * (COLOR1.y * exp2((v10 * dot(v3, normalize(v4 + v2))) - v10));
    gl_Position = v6;
    VARYING0 = TEXCOORD0;
    VARYING1 = TEXCOORD1;
    VARYING2 = COLOR0;
    VARYING3 = v8;
    VARYING4 = vec4(v1, v6.w);
    VARYING5 = vec4(v3, COLOR1.z);
    VARYING6 = v13;
    VARYING7 = v9;
    VARYING8 = NORMAL.w;
}

