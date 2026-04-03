#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <VertexSkirtData.h>
uniform vec4 CB12[256];
uniform vec4 unpackInfo[1];
uniform vec4 CB0[61];
uniform vec4 CB10[2];
in vec4 POSITION;

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
        v2 = v0 + ((CB12[((uint(POSITION.w) >> 8u) & 255u) * 1 + 0].xyz * (max(v5.x, max(v5.y, v5.z)) * smoothstep(-0.0500000007450580596923828125, 0.0, dot(normalize(CB0[11].xyz - v0), CB12[((uint(POSITION.w) >> 8u) & 255u) * 1 + 0].xyz)))) * CB10[0].w);
        break;
    } while(false);
    gl_Position = vec4(v2, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
}

