#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <AdvancedUIShadingParams.h>
uniform vec4 CB0[57];
uniform vec4 CB2[1];
uniform vec4 CB3[2];
uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING1;

void main()
{
    vec4 f0;
    if (CB2[0].y < 0.5)
    {
        f0 = texture2D(DiffuseMapTexture, VARYING0);
    }
    else
    {
        vec4 f1;
        if (CB2[0].y < 1.5)
        {
            f1 = vec4(1.0, 1.0, 1.0, texture2D(DiffuseMapTexture, VARYING0).x);
        }
        else
        {
            vec4 f2;
            if (CB2[0].y < 2.5)
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
                if (CB2[0].y < 3.5)
                {
                    float f8 = VARYING0.x * 0.5;
                    float f9 = VARYING0.y * 0.3333333432674407958984375;
                    vec2 f10 = vec2(f8, f9);
                    vec2 f11 = f10;
                    f11.y = f9 + 0.666666686534881591796875;
                    vec2 f12 = f10;
                    f12.x = f8 + 0.5;
                    vec2 f13 = f12;
                    f13.y = f9 + 0.666666686534881591796875;
                    f7 = vec4((vec4(texture2D(DiffuseMapTexture, vec2(VARYING0.x, VARYING0.y * 0.666666686534881591796875)).x, texture2D(DiffuseMapTexture, f11).x, texture2D(DiffuseMapTexture, f13).x, 1.0) * mat4(vec4(1.16429996490478515625, 0.0, 1.59580004215240478515625, -0.8705999851226806640625), vec4(1.16429996490478515625, -0.391730010509490966796875, -0.812900006771087646484375, 0.52960002422332763671875), vec4(1.16429996490478515625, 2.0169999599456787109375, 0.0, -1.0813000202178955078125), vec4(0.0, 0.0, 0.0, 1.0))).xyz, 1.0);
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
    vec4 f14 = VARYING1 * f0;
    vec2 f15 = abs(vec2((VARYING0.x * CB3[0].x) + CB3[0].y, (VARYING0.y * CB3[0].z) + CB3[0].w)) - CB3[1].xy;
    float f16 = length(max(f15, vec2(0.0))) + min(max(f15.x, f15.y), 0.0);
    vec4 f17 = f14;
    f17.w = (f14.w * clamp(CB3[1].z - f16, 0.0, 1.0)) * clamp(f16 - CB3[1].w, 0.0, 1.0);
    vec3 f18 = sqrt(clamp((f17.xyz * f17.xyz) * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f19 = f17;
    f19.x = f18.x;
    vec4 f20 = f19;
    f20.y = f18.y;
    vec4 f21 = f20;
    f21.z = f18.z;
    gl_FragData[0] = f21;
}

//$$DiffuseMapTexture=s0
