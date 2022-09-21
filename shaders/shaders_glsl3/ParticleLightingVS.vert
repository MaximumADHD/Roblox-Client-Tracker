#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <EmitterParams.h>
uniform vec4 CB0[58];
uniform vec4 CB1[4];
in vec3 POSITION;
in vec2 TEXCOORD5;
in vec2 TEXCOORD1;
in vec2 TEXCOORD2;
in vec2 TEXCOORD4;
in float TEXCOORD6;
out vec3 VARYING0;

void main()
{
    vec2 v0 = (TEXCOORD4 + (TEXCOORD2 * CB1[2].z)) * CB1[2].xy;
    vec2 v1 = (TEXCOORD2 * 2.0) - vec2(1.0);
    vec2 v2 = TEXCOORD1 * vec2(0.00019175345369148999452590942382812, 3.0518509447574615478515625e-05);
    float v3 = v2.x;
    float v4;
    float v5;
    if (TEXCOORD6 <= 0.0)
    {
        float v6 = 1.0 - TEXCOORD6;
        v5 = 1.0 / v6;
        v4 = v6;
    }
    else
    {
        float v7 = 1.0 + TEXCOORD6;
        v5 = v7;
        v4 = 1.0 / v7;
    }
    float v8 = cos(v3);
    float v9 = sin(v3);
    vec4 v10 = vec4(0.0);
    v10.x = (v8 * TEXCOORD5.x) * v4;
    vec4 v11 = v10;
    v11.y = ((-v9) * TEXCOORD5.x) * v5;
    vec4 v12 = v11;
    v12.z = (v9 * TEXCOORD5.y) * v4;
    vec4 v13 = v12;
    v13.w = (v8 * TEXCOORD5.y) * v5;
    vec3 v14 = (POSITION + (CB0[8].xyz * dot(v1, v13.xy))) + (CB0[9].xyz * dot(v1, v13.zw));
    gl_Position = vec4((v0.x * 2.0) - 1.0, 1.0 - (v0.y * 2.0), 0.0, 1.0);
    VARYING0 = ((v14 + (normalize(CB0[11].xyz - v14) * 6.0)).yxz * CB0[21].xyz) + CB0[22].xyz;
}

