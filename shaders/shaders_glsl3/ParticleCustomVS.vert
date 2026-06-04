#version 150

#extension GL_ARB_shading_language_include : require
#include <EmitterParams.h>
#include <Globals.h>
uniform vec4 CB1[5];
uniform vec4 CB0[61];
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
                    float v21 = CB1[4].z * CB1[4].z;
                    float v22 = CB1[4].x * CB1[4].y;
                    float v23 = CB1[4].w * CB1[4].z;
                    vec3 v24 = cross(vec3(1.0 - (2.0 * ((CB1[4].y * CB1[4].y) + v21)), 2.0 * (v22 + v23), 2.0 * ((CB1[4].x * CB1[4].z) - (CB1[4].w * CB1[4].y))), v18);
                    float v25 = dot(v24, v24);
                    vec3 v26;
                    if (v25 > 0.0199999995529651641845703125)
                    {
                        v26 = v24 * inversesqrt(v25);
                    }
                    else
                    {
                        vec3 v27 = vec3(2.0 * (v22 - v23), 1.0 - (2.0 * ((CB1[4].x * CB1[4].x) + v21)), 2.0 * ((CB1[4].y * CB1[4].z) + (CB1[4].w * CB1[4].x)));
                        vec3 v28 = v27 - (v18 * dot(v27, v18));
                        float v29 = dot(v28, v28);
                        vec3 v30 = v28 * inversesqrt(v29);
                        bvec3 v31 = bvec3(v29 > 9.9999999600419720025001879548654e-13);
                        v26 = vec3(v31.x ? v30.x : vec3(0.0, 1.0, 0.0).x, v31.y ? v30.y : vec3(0.0, 1.0, 0.0).y, v31.z ? v30.z : vec3(0.0, 1.0, 0.0).z);
                    }
                    v20 = v26;
                    v19 = cross(v18, v26);
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
    vec4 v32 = v14 + (CB0[10] * CB1[1].x);
    mat4 v33 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v34 = v14 * v33;
    vec3 v35 = vec3(0.0);
    v35.x = TEXCOORD2.x;
    vec3 v36 = v35;
    v36.y = TEXCOORD2.y;
    vec3 v37 = v36;
    v37.y = 1.0 - TEXCOORD2.y;
    vec3 v38 = v37;
    v38.z = length(CB0[11].xyz - v32.xyz);
    vec4 v39 = v32 * v33;
    vec4 v40 = v34;
    v40.z = (v39.z * v34.w) / v39.w;
    vec2 v41 = (TEXCOORD4 + ((TEXCOORD2 * (CB1[2].z - 1.0)) + vec2(0.5))) * CB1[2].xy;
    vec2 v42 = v41;
    v42.y = 1.0 - v41.y;
    vec2 v43 = vec2(1.0) / CB1[3].zw;
    vec2 v44 = v38.xy * v43;
    float v45 = v44.x;
    vec3 v46 = v38;
    v46.x = v45;
    float v47 = v44.y;
    vec3 v48 = v46;
    v48.y = v47;
    float v49 = v43.x;
    vec3 v50 = v48;
    v50.x = v45 + (mod(TEXCOORD7.x, CB1[3].z) * v49);
    float v51 = v43.y;
    vec3 v52 = v50;
    v52.y = v47 + (floor(TEXCOORD7.x / CB1[3].z) * v51);
    vec2 v53 = v48.xy;
    v53.x = v45 + (mod(TEXCOORD7.y, CB1[3].z) * v49);
    vec2 v54 = v53;
    v54.y = v47 + (floor(TEXCOORD7.y / CB1[3].z) * v51);
    gl_Position = v40;
    VARYING0 = v52;
    VARYING1 = TEXCOORD3 * 0.0039215688593685626983642578125;
    VARYING2 = v42;
    VARYING3 = v54;
    VARYING4 = TEXCOORD7.z;
}

