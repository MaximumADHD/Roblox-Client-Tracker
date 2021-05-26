#version 110

#extension GL_ARB_shading_language_include : require
#include <EmitterParams.h>
#include <Globals.h>
uniform vec4 CB1[4];
uniform vec4 CB0[53];
attribute vec3 POSITION;
attribute vec3 TEXCOORD0;
attribute vec2 TEXCOORD5;
attribute vec2 TEXCOORD1;
attribute vec2 TEXCOORD2;
attribute vec4 TEXCOORD3;
attribute vec2 TEXCOORD4;
varying vec3 VARYING0;
varying vec4 VARYING1;
varying vec2 VARYING2;

void main()
{
    vec4 v0 = vec4(POSITION, 1.0);
    vec2 v1 = (TEXCOORD2 * 2.0) - vec2(1.0);
    vec2 v2 = TEXCOORD1 * vec2(0.00019175345369148999452590942382813, 3.0518509447574615478515625e-05);
    float v3 = v2.x;
    float v4 = cos(v3);
    float v5 = sin(v3);
    vec4 v6 = vec4(0.0);
    v6.x = v4 * TEXCOORD5.x;
    vec4 v7 = v6;
    v7.y = (-v5) * TEXCOORD5.x;
    vec4 v8 = v7;
    v8.z = v5 * TEXCOORD5.y;
    vec4 v9 = v8;
    v9.w = v4 * TEXCOORD5.y;
    vec4 v10;
    if (0.0 == CB1[3].x)
    {
        v10 = (v0 + (CB0[4] * dot(v1, v9.xy))) + (CB0[5] * dot(v1, v9.zw));
    }
    else
    {
        vec4 v11;
        if (1.0 == CB1[3].x)
        {
            v11 = (v0 + (CB0[4] * dot(v1, v9.xy))) + (vec4(0.0, 1.0, 0.0, 0.0) * dot(v1, v9.zw));
        }
        else
        {
            float v12 = length(TEXCOORD0);
            vec4 v13;
            if (v12 > 9.9999997473787516355514526367188e-05)
            {
                vec3 v14 = TEXCOORD0 / vec3(v12);
                vec3 v15;
                vec3 v16;
                if (2.0 == CB1[3].x)
                {
                    v16 = normalize(cross(v14, CB0[6].xyz));
                    v15 = v14;
                }
                else
                {
                    vec3 v17 = normalize(cross(v14, vec3(0.0, 1.0, 0.0)));
                    v16 = normalize(cross(v17, v14));
                    v15 = v17;
                }
                v13 = (v0 + (vec4(v15, 0.0) * dot(v1, v9.xy))) + (vec4(v16, 0.0) * dot(v1, v9.zw));
            }
            else
            {
                v13 = v0;
            }
            v11 = v13;
        }
        v10 = v11;
    }
    vec4 v18 = v10 + (CB0[6] * CB1[1].x);
    mat4 v19 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v20 = v10 * v19;
    vec3 v21 = vec3(TEXCOORD2.x, TEXCOORD2.y, vec3(0.0).z);
    v21.y = 1.0 - TEXCOORD2.y;
    vec3 v22 = v21;
    v22.z = length(CB0[7].xyz - v18.xyz);
    vec4 v23 = v18 * v19;
    vec4 v24 = v20;
    v24.z = (v23.z * v20.w) / v23.w;
    vec2 v25 = (TEXCOORD4 + ((TEXCOORD2 * (CB1[2].z - 1.0)) + vec2(0.5))) * CB1[2].xy;
    vec2 v26 = v25;
    v26.y = 1.0 - v25.y;
    gl_Position = v24;
    VARYING0 = v22;
    VARYING1 = TEXCOORD3 * 0.0039215688593685626983642578125;
    VARYING2 = v26;
}

