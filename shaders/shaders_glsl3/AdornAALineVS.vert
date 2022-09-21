#version 150

#extension GL_ARB_shading_language_include : require
#include <AdornParams.h>
#include <Globals.h>
uniform vec4 CB1[6];
uniform vec4 CB0[58];
in vec4 POSITION;
in vec3 NORMAL;
out vec4 VARYING0;
out vec3 VARYING1;
out vec4 VARYING2;
out vec4 VARYING3;

void main()
{
    mat4 v0 = mat4(CB1[0], CB1[1], CB1[2], CB1[3]);
    vec4 v1 = POSITION * v0;
    vec3 v2 = normalize(NORMAL * mat3(v0[0].xyz, v0[1].xyz, v0[2].xyz));
    vec4 v3 = vec4(1.0, 0.0, 0.0, 1.0) * v0;
    vec4 v4 = vec4(-1.0, 0.0, 0.0, 1.0) * v0;
    float v5 = CB1[5].w + 2.0;
    vec4 v6;
    if (length(v1 - v3) < length(v1 - v4))
    {
        vec3 v7 = v3.xyz + (v2 * ((v5 * (vec4(v3.xyz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3])).w) * CB1[5].x));
        vec4 v8 = v1;
        v8.x = v7.x;
        vec4 v9 = v8;
        v9.y = v7.y;
        vec4 v10 = v9;
        v10.z = v7.z;
        v6 = v10;
    }
    else
    {
        vec3 v11 = v4.xyz + (v2 * ((v5 * (vec4(v4.xyz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3])).w) * CB1[5].x));
        vec4 v12 = v1;
        v12.x = v11.x;
        vec4 v13 = v12;
        v13.y = v11.y;
        vec4 v14 = v13;
        v14.z = v11.z;
        v6 = v14;
    }
    mat4 v15 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v16 = v6 * v15;
    vec4 v17 = v3 * v15;
    vec4 v18 = v4 * v15;
    vec4 v19 = v16;
    v19.y = v16.y * CB1[5].z;
    vec4 v20 = v17;
    v20.y = v17.y * CB1[5].z;
    vec4 v21 = v18;
    v21.y = v18.y * CB1[5].z;
    gl_Position = v16;
    VARYING0 = v19;
    VARYING1 = CB0[11].xyz - v6.xyz;
    VARYING2 = v20;
    VARYING3 = v21;
}

