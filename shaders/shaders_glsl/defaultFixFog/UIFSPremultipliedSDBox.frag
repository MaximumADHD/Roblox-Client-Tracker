#version 110

#extension GL_ARB_shading_language_include : require
#include <UIParams.h>
uniform vec4 CB1[9];
uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING1;

void main()
{
    vec4 f0;
    if (CB1[5].y < 0.5)
    {
        f0 = texture2D(DiffuseMapTexture, VARYING0);
    }
    else
    {
        vec4 f1;
        if (CB1[5].y < 1.5)
        {
            f1 = vec4(1.0, 1.0, 1.0, texture2D(DiffuseMapTexture, VARYING0).x);
        }
        else
        {
            vec4 f2;
            if (CB1[5].y < 2.5)
            {
                vec4 f3 = texture2D(DiffuseMapTexture, VARYING0);
                float f4 = f3.w;
                vec3 f5 = f3.xyz / vec3(f4);
                bvec3 f6 = bvec3(f4 == 0.0);
                f2 = vec4(vec3(f6.x ? vec3(0.0).x : f5.x, f6.y ? vec3(0.0).y : f5.y, f6.z ? vec3(0.0).z : f5.z), f4);
            }
            else
            {
                vec4 f7;
                if (CB1[5].y < 3.5)
                {
                    float f8 = CB1[8].x - 2.0;
                    float f9 = CB1[8].y - 2.0;
                    float f10 = f9 * 0.3333333432674407958984375;
                    float f11 = 1.0 - (f10 / CB1[8].y);
                    vec2 f12 = (VARYING0 * vec2(f8 * 0.5, f10)) / CB1[8].xy;
                    f7 = vec4((vec4(texture2D(DiffuseMapTexture, (VARYING0 * vec2(f8, f9 * 0.666666686534881591796875)) / CB1[8].xy).x, texture2D(DiffuseMapTexture, vec2(0.0, f11) + f12).x, texture2D(DiffuseMapTexture, vec2(0.5, f11) + f12).x, 1.0) * mat4(vec4(1.164000034332275390625, 0.0, 1.7929999828338623046875, -0.969500005245208740234375), vec4(1.164000034332275390625, -0.212999999523162841796875, -0.53299999237060546875, 0.300000011920928955078125), vec4(1.164000034332275390625, 2.111999988555908203125, 0.0, -1.1289999485015869140625), vec4(0.0, 0.0, 0.0, 1.0))).xyz, 1.0);
                }
                else
                {
                    f7 = texture2D(DiffuseMapTexture, VARYING0);
                }
                f2 = f7;
            }
            f1 = f2;
        }
        f0 = f1;
    }
    vec4 f13 = VARYING1 * f0;
    vec2 f14 = abs(vec2((VARYING0.x * CB1[6].x) + CB1[6].y, (VARYING0.y * CB1[6].z) + CB1[6].w)) - CB1[7].xy;
    float f15 = length(max(f14, vec2(0.0))) + min(max(f14.x, f14.y), 0.0);
    float f16 = (f13.w * clamp(CB1[7].z - f15, 0.0, 1.0)) * clamp(f15 - CB1[7].w, 0.0, 1.0);
    vec4 f17 = f13;
    f17.w = f16;
    gl_FragData[0] = vec4(f17.xyz * f16, f16);
}

//$$DiffuseMapTexture=s0
