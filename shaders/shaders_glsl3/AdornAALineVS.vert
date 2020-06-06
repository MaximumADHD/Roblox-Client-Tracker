#version 150

#extension GL_ARB_shading_language_include : require
#include <AdornParams.h>
#include <Globals.h>
uniform vec4 CB1[6];
uniform vec4 CB0[47];
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
        v6 = vec4(v7.x, v7.y, v7.z, v1.w);
    }
    else
    {
        vec3 v8 = v4.xyz + (v2 * ((v5 * (vec4(v4.xyz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3])).w) * CB1[5].x));
        v6 = vec4(v8.x, v8.y, v8.z, v1.w);
    }
    mat4 v9 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v10 = v6 * v9;
    vec4 v11 = v3 * v9;
    vec4 v12 = v4 * v9;
    vec4 v13 = v10;
    v13.y = v10.y * CB1[5].z;
    vec4 v14 = v11;
    v14.y = v11.y * CB1[5].z;
    vec4 v15 = v12;
    v15.y = v12.y * CB1[5].z;
    gl_Position = v10;
    VARYING0 = v13;
    VARYING1 = CB0[7].xyz - v6.xyz;
    VARYING2 = v14;
    VARYING3 = v15;
}

