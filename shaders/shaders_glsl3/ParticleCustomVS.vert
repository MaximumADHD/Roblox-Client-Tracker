#version 150

#extension GL_ARB_shading_language_include : require
#include <EmitterParams.h>
#include <Globals.h>
uniform vec4 CB1[4];
uniform vec4 CB0[53];
in vec3 POSITION;
in vec3 TEXCOORD0;
in vec2 TEXCOORD5;
in vec2 TEXCOORD1;
in vec2 TEXCOORD2;
in vec4 TEXCOORD3;
in vec2 TEXCOORD4;
in float TEXCOORD6;
in vec3 TEXCOORD7;
out vec3 VARYING0;
out vec4 VARYING1;
out vec2 VARYING2;
out vec2 VARYING3;
out float VARYING4;

void main()
{
    vec4 v0 = vec4(POSITION, 1.0);
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
    vec4 v14;
    if (0.0 == CB1[3].x)
    {
        v14 = (v0 + (CB0[4] * dot(v1, v13.xy))) + (CB0[5] * dot(v1, v13.zw));
    }
    else
    {
        vec4 v15;
        if (1.0 == CB1[3].x)
        {
            v15 = (v0 + (CB0[4] * dot(v1, v13.xy))) + (vec4(0.0, 1.0, 0.0, 0.0) * dot(v1, v13.zw));
        }
        else
        {
            float v16 = length(TEXCOORD0);
            vec4 v17;
            if (v16 > 9.9999997473787516355514526367188e-05)
            {
                vec3 v18 = TEXCOORD0 / vec3(v16);
                vec3 v19;
                vec3 v20;
                if (2.0 == CB1[3].x)
                {
                    v20 = normalize(cross(v18, CB0[6].xyz));
                    v19 = v18;
                }
                else
                {
                    vec3 v21 = normalize(cross(v18, vec3(0.0, 1.0, 0.0)));
                    v20 = normalize(cross(v21, v18));
                    v19 = v21;
                }
                v17 = (v0 + (vec4(v19, 0.0) * dot(v1, v13.xy))) + (vec4(v20, 0.0) * dot(v1, v13.zw));
            }
            else
            {
                v17 = v0;
            }
            v15 = v17;
        }
        v14 = v15;
    }
    vec4 v22 = v14 + (CB0[6] * CB1[1].x);
    mat4 v23 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v24 = v14 * v23;
    vec3 v25 = vec3(TEXCOORD2.x, TEXCOORD2.y, vec3(0.0).z);
    v25.y = 1.0 - TEXCOORD2.y;
    vec3 v26 = v25;
    v26.z = length(CB0[7].xyz - v22.xyz);
    vec4 v27 = v22 * v23;
    vec4 v28 = v24;
    v28.z = (v27.z * v24.w) / v27.w;
    vec2 v29 = (TEXCOORD4 + ((TEXCOORD2 * (CB1[2].z - 1.0)) + vec2(0.5))) * CB1[2].xy;
    vec2 v30 = v29;
    v30.y = 1.0 - v29.y;
    vec2 v31 = CB1[3].zw * vec2(0.015625);
    vec2 v32 = vec2(1.0) / CB1[3].zw;
    vec2 v33 = clamp(v26.xy, v31, vec2(1.0) - v31).xy * v32;
    float v34 = v32.x;
    vec3 v35 = vec3(v33.x, v33.y, v26.z);
    v35.x = v33.x + (mod(TEXCOORD7.x, CB1[3].z) * v34);
    float v36 = v32.y;
    vec3 v37 = v35;
    v37.y = v33.y + (floor(TEXCOORD7.x / CB1[3].z) * v36);
    vec2 v38 = v33.xy;
    v38.x = v33.x + (mod(TEXCOORD7.y, CB1[3].z) * v34);
    vec2 v39 = v38;
    v39.y = v33.y + (floor(TEXCOORD7.y / CB1[3].z) * v36);
    gl_Position = v28;
    VARYING0 = v37;
    VARYING1 = TEXCOORD3 * 0.0039215688593685626983642578125;
    VARYING2 = v30;
    VARYING3 = v39;
    VARYING4 = TEXCOORD7.z;
}

