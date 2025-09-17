#version 150

#extension GL_ARB_shading_language_include : require
#include <EmitterParams.h>
#include <Globals.h>
uniform vec4 CB1[4];
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
                    float v21 = v18.y;
                    vec3 v22 = vec3(0.0, 1.0, 0.0) - (v18 * v21);
                    float v23 = v18.z;
                    vec3 v24 = vec3(-v23, 0.0, v18.x);
                    vec3 v25 = vec3(0.0, v23, -v21);
                    bvec3 v26 = bvec3(abs(v21) < 0.9900000095367431640625);
                    vec3 v27 = normalize(mix(v22, vec3(v26.x ? v24.x : v25.x, v26.y ? v24.y : v25.y, v26.z ? v24.z : v25.z), vec3(step(dot(v22, v22), 9.9999999747524270787835121154785e-07))));
                    v20 = normalize(cross(v27, v18));
                    v19 = v27;
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
    vec4 v28 = v14 + (CB0[10] * CB1[1].x);
    mat4 v29 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v30 = v14 * v29;
    vec3 v31 = vec3(0.0);
    v31.x = TEXCOORD2.x;
    vec3 v32 = v31;
    v32.y = TEXCOORD2.y;
    vec3 v33 = v32;
    v33.y = 1.0 - TEXCOORD2.y;
    vec3 v34 = v33;
    v34.z = length(CB0[11].xyz - v28.xyz);
    vec4 v35 = v28 * v29;
    vec4 v36 = v30;
    v36.z = (v35.z * v30.w) / v35.w;
    vec2 v37 = (TEXCOORD4 + ((TEXCOORD2 * (CB1[2].z - 1.0)) + vec2(0.5))) * CB1[2].xy;
    vec2 v38 = v37;
    v38.y = 1.0 - v37.y;
    vec2 v39 = vec2(1.0) / CB1[3].zw;
    vec2 v40 = v34.xy * v39;
    float v41 = v40.x;
    vec3 v42 = v34;
    v42.x = v41;
    float v43 = v40.y;
    vec3 v44 = v42;
    v44.y = v43;
    float v45 = v39.x;
    vec3 v46 = v44;
    v46.x = v41 + (mod(TEXCOORD7.x, CB1[3].z) * v45);
    float v47 = v39.y;
    vec3 v48 = v46;
    v48.y = v43 + (floor(TEXCOORD7.x / CB1[3].z) * v47);
    vec2 v49 = v44.xy;
    v49.x = v41 + (mod(TEXCOORD7.y, CB1[3].z) * v45);
    vec2 v50 = v49;
    v50.y = v43 + (floor(TEXCOORD7.y / CB1[3].z) * v47);
    gl_Position = v36;
    VARYING0 = v48;
    VARYING1 = TEXCOORD3 * 0.0039215688593685626983642578125;
    VARYING2 = v38;
    VARYING3 = v50;
    VARYING4 = TEXCOORD7.z;
}

