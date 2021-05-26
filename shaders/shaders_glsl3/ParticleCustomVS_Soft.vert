#version 150

#extension GL_ARB_shading_language_include : require
#include <EmitterParams.h>
#include <Globals.h>
uniform vec4 CB1[4];
uniform vec4 CB0[53];
in vec3 POSITION;
in vec3 TEXCOORD0;
in vec4 TEXCOORD1;
in vec2 TEXCOORD2;
in vec4 TEXCOORD3;
in vec2 TEXCOORD4;
out vec3 VARYING0;
out vec4 VARYING1;
out vec2 VARYING2;
out vec4 VARYING3;

void main()
{
    vec4 v0 = vec4(POSITION, 1.0);
    vec2 v1 = (TEXCOORD2 * 2.0) - vec2(1.0);
    vec4 v2 = TEXCOORD1 * vec4(0.00390625, 0.00390625, 0.00019175345369148999452590942382813, 3.0518509447574615478515625e-05);
    vec2 v3 = v2.xy + vec2(127.0);
    float v4 = v2.z;
    float v5 = cos(v4);
    float v6 = sin(v4);
    float v7 = v3.x;
    vec4 v8 = vec4(0.0);
    v8.x = v5 * v7;
    vec4 v9 = v8;
    v9.y = (-v6) * v7;
    float v10 = v3.y;
    vec4 v11 = v9;
    v11.z = v6 * v10;
    vec4 v12 = v11;
    v12.w = v5 * v10;
    vec4 v13;
    if (0.0 == CB1[3].x)
    {
        v13 = (v0 + (CB0[4] * dot(v1, v12.xy))) + (CB0[5] * dot(v1, v12.zw));
    }
    else
    {
        vec4 v14;
        if (1.0 == CB1[3].x)
        {
            v14 = (v0 + (CB0[4] * dot(v1, v12.xy))) + (vec4(0.0, 1.0, 0.0, 0.0) * dot(v1, v12.zw));
        }
        else
        {
            float v15 = length(TEXCOORD0);
            vec4 v16;
            if (v15 > 9.9999997473787516355514526367188e-05)
            {
                vec3 v17 = TEXCOORD0 / vec3(v15);
                vec3 v18;
                vec3 v19;
                if (2.0 == CB1[3].x)
                {
                    v19 = normalize(cross(v17, CB0[6].xyz));
                    v18 = v17;
                }
                else
                {
                    vec3 v20 = normalize(cross(v17, vec3(0.0, 1.0, 0.0)));
                    v19 = normalize(cross(v20, v17));
                    v18 = v20;
                }
                v16 = (v0 + (vec4(v18, 0.0) * dot(v1, v12.xy))) + (vec4(v19, 0.0) * dot(v1, v12.zw));
            }
            else
            {
                v16 = v0;
            }
            v14 = v16;
        }
        v13 = v14;
    }
    vec4 v21 = v13 + (CB0[6] * CB1[1].x);
    mat4 v22 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v23 = v13 * v22;
    vec3 v24 = vec3(TEXCOORD2.x, TEXCOORD2.y, vec3(0.0).z);
    v24.y = 1.0 - TEXCOORD2.y;
    vec3 v25 = v24;
    v25.z = length(CB0[7].xyz - v21.xyz);
    vec4 v26 = v21 * v22;
    vec4 v27 = v23;
    v27.z = (v26.z * v23.w) / v26.w;
    float v28 = v23.w;
    vec2 v29 = (vec2(0.5) * (v27.xy / vec2(v28)).xy) + vec2(0.5);
    vec3 v30 = vec3(v29.x, v29.y, vec3(0.0).z);
    v30.z = min(v28 - CB1[1].x, 495.0);
    vec4 v31 = vec4(v30.x, v30.y, v30.z, vec4(0.0).w);
    v31.w = 1.0 / v7;
    vec2 v32 = (TEXCOORD4 + ((TEXCOORD2 * (CB1[2].z - 1.0)) + vec2(0.5))) * CB1[2].xy;
    vec2 v33 = v32;
    v33.y = 1.0 - v32.y;
    gl_Position = v27;
    VARYING0 = v25;
    VARYING1 = TEXCOORD3 * 0.0039215688593685626983642578125;
    VARYING2 = v33;
    VARYING3 = v31;
}

