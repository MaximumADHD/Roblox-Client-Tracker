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
attribute float TEXCOORD6;
attribute vec3 TEXCOORD7;
varying vec3 VARYING0;
varying vec4 VARYING1;
varying vec2 VARYING2;
varying vec4 VARYING3;
varying vec2 VARYING4;
varying float VARYING5;

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
    float v29 = v24.w;
    vec2 v30 = (vec2(0.5) * (v28.xy / vec2(v29)).xy) + vec2(0.5);
    vec3 v31 = vec3(v30.x, v30.y, vec3(0.0).z);
    v31.z = min(v29 - CB1[1].x, 495.0);
    vec4 v32 = vec4(v31.x, v31.y, v31.z, vec4(0.0).w);
    v32.w = 1.0 / TEXCOORD5.x;
    vec2 v33 = (TEXCOORD4 + ((TEXCOORD2 * (CB1[2].z - 1.0)) + vec2(0.5))) * CB1[2].xy;
    vec2 v34 = v33;
    v34.y = 1.0 - v33.y;
    vec2 v35 = CB1[3].zw * vec2(0.015625);
    vec2 v36 = vec2(1.0) / CB1[3].zw;
    vec2 v37 = clamp(v26.xy, v35, vec2(1.0) - v35).xy * v36;
    float v38 = v36.x;
    vec3 v39 = vec3(v37.x, v37.y, v26.z);
    v39.x = v37.x + (mod(TEXCOORD7.x, CB1[3].z) * v38);
    float v40 = v36.y;
    vec3 v41 = v39;
    v41.y = v37.y + (floor(TEXCOORD7.x / CB1[3].z) * v40);
    vec2 v42 = v37.xy;
    v42.x = v37.x + (mod(TEXCOORD7.y, CB1[3].z) * v38);
    vec2 v43 = v42;
    v43.y = v37.y + (floor(TEXCOORD7.y / CB1[3].z) * v40);
    gl_Position = v28;
    VARYING0 = v41;
    VARYING1 = TEXCOORD3 * 0.0039215688593685626983642578125;
    VARYING2 = v34;
    VARYING3 = v32;
    VARYING4 = v43;
    VARYING5 = TEXCOORD7.z;
}

