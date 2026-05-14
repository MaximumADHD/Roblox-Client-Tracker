#version 150

#extension GL_ARB_shading_language_include : require
#include <VertexSkirtData.h>
#include <Globals.h>
#include <FeedbackData.h>
uniform vec4 CB12[256];
uniform vec4 unpackInfo[1];
uniform vec4 CB10[4];
uniform vec4 CB0[61];
uniform vec4 CB6[2];
uniform vec4 CB5[1];
uniform ivec4 CB4[1];
in vec4 POSITION;
in vec2 TEXCOORD0;
out vec2 VARYING0;
out vec3 VARYING1;

void main()
{
    vec3 v0 = (POSITION.xyz * unpackInfo[0].w) + unpackInfo[0].xyz;
    bool v1 = any(lessThan(v0, CB10[0].xyz)) || any(greaterThan(v0, CB10[1].xyz));
    vec3 v2;
    if (v1)
    {
        int v3 = int(CB10[1].w);
        vec3 v4;
        do
        {
            vec3 v5 = (step(CB10[1].xyz - vec3(0.100000001490116119384765625), v0) * vec3(float((v3 >> 1) & 1), float((v3 >> 3) & 1), float((v3 >> 5) & 1))) - ((vec3(1.0) - step(CB10[0].xyz + vec3(0.100000001490116119384765625), v0)) * vec3(float(v3 & 1), float((v3 >> 2) & 1), float((v3 >> 4) & 1)));
            vec3 v6 = abs(v5);
            if (dot(v6, vec3(1.0)) < 0.5)
            {
                v4 = v0;
                break;
            }
            vec3 v7 = clamp((v5 * CB12[((uint(POSITION.w) >> 8u) & 255u) * 1 + 0].xyz) + v6, vec3(0.0), vec3(1.0));
            v4 = v0 + ((CB12[((uint(POSITION.w) >> 8u) & 255u) * 1 + 0].xyz * (max(v7.x, max(v7.y, v7.z)) * smoothstep(-0.0500000007450580596923828125, 0.0, dot(normalize(CB0[11].xyz - v0), CB12[((uint(POSITION.w) >> 8u) & 255u) * 1 + 0].xyz)))) * CB10[0].w);
            break;
        } while(false);
        v2 = v4;
    }
    else
    {
        v2 = v0;
    }
    vec4 v8 = vec4(v2, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 v9;
    if (v1)
    {
        vec4 v10 = v8;
        v10.z = v8.z * 0.9999847412109375;
        v9 = v10;
    }
    else
    {
        v9 = v8;
    }
    vec2 v11 = v9.xy + (CB6[1].xy * v9.w);
    vec4 v12 = v9;
    v12.x = v11.x;
    vec4 v13 = v12;
    v13.y = v11.y;
    gl_Position = v13;
    VARYING0 = TEXCOORD0 * CB5[0].xy;
    VARYING1 = mod(mod(v2 / vec3(float(1 << (CB4[0].w + 4))), vec3(1024.0)) + vec3(1024.0), vec3(1024.0));
}

