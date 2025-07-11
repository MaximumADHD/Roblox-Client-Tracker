#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SAParams.h>
uniform vec4 CB0[61];
uniform vec4 CB3[1];
in vec4 POSITION;
in vec4 NORMAL;
in vec2 TEXCOORD0;
in vec4 COLOR0;
in vec4 COLOR1;
out vec2 VARYING0;
out vec3 VARYING1;
out vec4 VARYING2;
out vec4 VARYING3;
out vec4 VARYING4;
out vec4 VARYING5;
out vec4 VARYING6;
out vec3 VARYING7;

void main()
{
    vec3 v0 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec3 v1 = CB0[11].xyz - POSITION.xyz;
    vec3 v2 = normalize(v1);
    vec3 v3 = v0 * ((dot(v0, v2) > 0.0) ? 1.0 : (-1.0));
    vec3 v4 = vec3(0.0);
    v4.z = -1.0;
    vec3 v5 = -CB0[16].xyz;
    float v6 = dot(v3, v5);
    vec4 v7 = vec4(POSITION.xyz, 1.0);
    vec4 v8 = v7 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec3 v9 = v4;
    v9.x = 0.0;
    vec3 v10 = v9;
    v10.y = 0.0;
    vec3 v11 = ((POSITION.xyz + (v3 * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
    vec4 v12 = vec4(0.0);
    v12.x = v11.x;
    vec4 v13 = v12;
    v13.y = v11.y;
    vec4 v14 = v13;
    v14.z = v11.z;
    vec4 v15 = v14;
    v15.w = 0.0;
    float v16 = CB3[0].z * 0.50359976291656494140625;
    float v17 = clamp(v6, 0.0, 1.0);
    vec3 v18 = (CB0[15].xyz * v17) + (CB0[17].xyz * clamp(-v6, 0.0, 1.0));
    vec4 v19 = vec4(0.0);
    v19.x = v18.x;
    vec4 v20 = v19;
    v20.y = v18.y;
    vec4 v21 = v20;
    v21.z = v18.z;
    vec4 v22 = v21;
    v22.w = v17 * ((CB3[0].z * 0.055555999279022216796875) * exp2((v16 * dot(v3, normalize(v5 + v2))) - v16));
    vec4 v23 = vec4(dot(CB0[25], v7), dot(CB0[26], v7), dot(CB0[27], v7), 0.0);
    v23.w = 0.0;
    gl_Position = v8;
    VARYING0 = TEXCOORD0;
    VARYING1 = v10;
    VARYING2 = COLOR0;
    VARYING3 = v15;
    VARYING4 = vec4(v1, v8.w);
    VARYING5 = v22;
    VARYING6 = v23;
    VARYING7 = vec3(COLOR1.z * 0.0039215688593685626983642578125, COLOR1.w * 0.0039215688593685626983642578125, NORMAL.w * 0.0039215688593685626983642578125);
}

