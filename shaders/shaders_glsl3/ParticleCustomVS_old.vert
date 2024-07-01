#version 150

#extension GL_ARB_shading_language_include : require
#include <EmitterParams.h>
#include <Globals.h>
uniform vec4 CB1[4];
uniform vec4 CB0[58];
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
    vec4 v22 = v14 + (CB0[10] * CB1[1].x);
    mat4 v23 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v24 = v14 * v23;
    vec3 v25 = vec3(0.0);
    v25.x = TEXCOORD2.x;
    vec3 v26 = v25;
    v26.y = TEXCOORD2.y;
    vec3 v27 = v26;
    v27.y = 1.0 - TEXCOORD2.y;
    vec3 v28 = v27;
    v28.z = length(CB0[11].xyz - v22.xyz);
    vec4 v29 = v22 * v23;
    vec4 v30 = v24;
    v30.z = (v29.z * v24.w) / v29.w;
    vec2 v31 = (TEXCOORD4 + ((TEXCOORD2 * (CB1[2].z - 1.0)) + vec2(0.5))) * CB1[2].xy;
    vec2 v32 = v31;
    v32.y = 1.0 - v31.y;
    vec2 v33 = vec2(1.0) / CB1[3].zw;
    vec2 v34 = v28.xy * v33;
    float v35 = v34.x;
    vec3 v36 = v28;
    v36.x = v35;
    float v37 = v34.y;
    vec3 v38 = v36;
    v38.y = v37;
    float v39 = v33.x;
    vec3 v40 = v38;
    v40.x = v35 + (mod(TEXCOORD7.x, CB1[3].z) * v39);
    float v41 = v33.y;
    vec3 v42 = v40;
    v42.y = v37 + (floor(TEXCOORD7.x / CB1[3].z) * v41);
    vec2 v43 = v38.xy;
    v43.x = v35 + (mod(TEXCOORD7.y, CB1[3].z) * v39);
    vec2 v44 = v43;
    v44.y = v37 + (floor(TEXCOORD7.y / CB1[3].z) * v41);
    gl_Position = v30;
    VARYING0 = v42;
    VARYING1 = TEXCOORD3 * 0.0039215688593685626983642578125;
    VARYING2 = v32;
    VARYING3 = v44;
    VARYING4 = TEXCOORD7.z;
}

