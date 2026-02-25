#version 150

#extension GL_ARB_shading_language_include : require
#include <VertexSkirtData.h>
#include <Globals.h>
#include <FeedbackData.h>
uniform vec4 CB12[256];
uniform vec4 unpackInfo[1];
uniform vec4 CB10[2];
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
    int v1 = int(CB10[1].w);
    vec3 v2;
    do
    {
        if (!(any(lessThan(v0, CB10[0].xyz)) || any(greaterThan(v0, CB10[1].xyz))))
        {
            v2 = v0;
            break;
        }
        vec3 v3 = (step(CB10[1].xyz - vec3(0.100000001490116119384765625), v0) * vec3(float((v1 >> 1) & 1), float((v1 >> 3) & 1), float((v1 >> 5) & 1))) - ((vec3(1.0) - step(CB10[0].xyz + vec3(0.100000001490116119384765625), v0)) * vec3(float(v1 & 1), float((v1 >> 2) & 1), float((v1 >> 4) & 1)));
        vec3 v4 = abs(v3);
        if (dot(v4, vec3(1.0)) < 0.5)
        {
            v2 = v0;
            break;
        }
        vec3 v5 = clamp((v3 * CB12[((uint(POSITION.w) >> 8u) & 255u) * 1 + 0].xyz) + v4, vec3(0.0), vec3(1.0));
        v2 = v0 + ((CB12[((uint(POSITION.w) >> 8u) & 255u) * 1 + 0].xyz * max(v5.x, max(v5.y, v5.z))) * CB10[0].w);
        break;
    } while(false);
    vec4 v6 = vec4(v2, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec2 v7 = v6.xy + (CB6[1].xy * v6.w);
    vec4 v8 = v6;
    v8.x = v7.x;
    vec4 v9 = v8;
    v9.y = v7.y;
    gl_Position = v9;
    VARYING0 = TEXCOORD0 * CB5[0].xy;
    VARYING1 = mod(mod(v2 / vec3(float(1 << (CB4[0].w + 4))), vec3(1024.0)) + vec3(1024.0), vec3(1024.0));
}

