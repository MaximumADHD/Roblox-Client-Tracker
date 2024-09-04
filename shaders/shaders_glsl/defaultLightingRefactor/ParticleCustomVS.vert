#version 110

#extension GL_ARB_shading_language_include : require
#include <EmitterParams.h>
#include <Globals.h>
uniform vec4 CB1[4];
uniform vec4 CB0[58];
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
varying vec2 VARYING3;
varying float VARYING4;

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
        v14 = (v0 + (CB0[8] * dot(v1, v13.xy))) + (CB0[9] * dot(v1, v13.zw));
    }
    else
    {
        vec4 v15;
        if (1.0 == CB1[3].x)
        {
            v15 = (v0 + (CB0[8] * dot(v1, v13.xy))) + (vec4(0.0, 1.0, 0.0, 0.0) * dot(v1, v13.zw));
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
                    v20 = normalize(cross(v18, CB0[10].xyz));
                    v19 = v18;
                }
                else
                {
                    float v21 = v18.y;
                    float v22 = v18.z;
                    vec3 v23 = vec3(-v22, 0.0, v18.x);
                    vec3 v24 = vec3(0.0, v22, -v21);
                    bvec3 v25 = bvec3(abs(v21) < 0.9900000095367431640625);
                    vec3 v26 = normalize(vec3(v25.x ? v23.x : v24.x, v25.y ? v23.y : v24.y, v25.z ? v23.z : v24.z));
                    v20 = normalize(cross(v26, v18));
                    v19 = v26;
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
    vec4 v27 = v14 + (CB0[10] * CB1[1].x);
    mat4 v28 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v29 = v14 * v28;
    vec3 v30 = vec3(0.0);
    v30.x = TEXCOORD2.x;
    vec3 v31 = v30;
    v31.y = TEXCOORD2.y;
    vec3 v32 = v31;
    v32.y = 1.0 - TEXCOORD2.y;
    vec3 v33 = v32;
    v33.z = length(CB0[11].xyz - v27.xyz);
    vec4 v34 = v27 * v28;
    vec4 v35 = v29;
    v35.z = (v34.z * v29.w) / v34.w;
    vec2 v36 = (TEXCOORD4 + ((TEXCOORD2 * (CB1[2].z - 1.0)) + vec2(0.5))) * CB1[2].xy;
    vec2 v37 = v36;
    v37.y = 1.0 - v36.y;
    vec2 v38 = vec2(1.0) / CB1[3].zw;
    vec2 v39 = v33.xy * v38;
    float v40 = v39.x;
    vec3 v41 = v33;
    v41.x = v40;
    float v42 = v39.y;
    vec3 v43 = v41;
    v43.y = v42;
    float v44 = v38.x;
    vec3 v45 = v43;
    v45.x = v40 + (mod(TEXCOORD7.x, CB1[3].z) * v44);
    float v46 = v38.y;
    vec3 v47 = v45;
    v47.y = v42 + (floor(TEXCOORD7.x / CB1[3].z) * v46);
    vec2 v48 = v43.xy;
    v48.x = v40 + (mod(TEXCOORD7.y, CB1[3].z) * v44);
    vec2 v49 = v48;
    v49.y = v42 + (floor(TEXCOORD7.y / CB1[3].z) * v46);
    gl_Position = v35;
    VARYING0 = v47;
    VARYING1 = TEXCOORD3 * 0.0039215688593685626983642578125;
    VARYING2 = v37;
    VARYING3 = v49;
    VARYING4 = TEXCOORD7.z;
}

