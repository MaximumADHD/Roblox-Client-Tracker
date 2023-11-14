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
    do
    {
        if (CB2[0].y < 0.5)
        {
            f0 = texture2D(DiffuseMapTexture, VARYING0);
            break;
        }
        else
        {
            if (CB2[0].y < 1.5)
            {
                f0 = vec4(1.0, 1.0, 1.0, texture2D(DiffuseMapTexture, VARYING0).x);
                break;
            }
            else
            {
                if (CB2[0].y < 2.5)
                {
                    vec4 f1 = texture2D(DiffuseMapTexture, VARYING0);
                    float f2 = f1.w;
                    vec3 f3 = f1.xyz / vec3(f2);
                    bvec3 f4 = bvec3(f2 == 0.0);
                    f0 = vec4(vec3(f4.x ? vec3(0.0).x : f3.x, f4.y ? vec3(0.0).y : f3.y, f4.z ? vec3(0.0).z : f3.z), f2);
                    break;
                }
                else
                {
                    if (CB2[0].y < 3.5)
                    {
                        float f5 = VARYING0.x * 0.5;
                        float f6 = VARYING0.y * 0.3333333432674407958984375;
                        vec2 f7 = vec2(f5, f6);
                        vec2 f8 = f7;
                        f8.y = f6 + 0.666666686534881591796875;
                        vec2 f9 = f7;
                        f9.x = f5 + 0.5;
                        vec2 f10 = f9;
                        f10.y = f6 + 0.666666686534881591796875;
                        f0 = vec4((vec4(texture2D(DiffuseMapTexture, vec2(VARYING0.x, VARYING0.y * 0.666666686534881591796875)).x, texture2D(DiffuseMapTexture, f8).x, texture2D(DiffuseMapTexture, f10).x, 1.0) * mat4(vec4(1.16429996490478515625, 0.0, 1.59580004215240478515625, -0.8705999851226806640625), vec4(1.16429996490478515625, -0.391730010509490966796875, -0.812900006771087646484375, 0.52960002422332763671875), vec4(1.16429996490478515625, 2.0169999599456787109375, 0.0, -1.0813000202178955078125), vec4(0.0, 0.0, 0.0, 1.0))).xyz, 1.0);
                        break;
                    }
                    else
                    {
                        f0 = texture2D(DiffuseMapTexture, VARYING0);
                        break;
                    }
                }
            }
        }
    } while(false);
    vec4 f11 = VARYING1 * f0;
    vec2 f12 = abs(vec2((VARYING0.x * CB3[0].x) + CB3[0].y, (VARYING0.y * CB3[0].z) + CB3[0].w)) - CB3[1].xy;
    float f13 = length(max(f12, vec2(0.0))) + min(max(f12.x, f12.y), 0.0);
    vec4 f14 = f11;
    f14.w = (f11.w * clamp(CB3[1].z - f13, 0.0, 1.0)) * clamp(f13 - CB3[1].w, 0.0, 1.0);
    vec3 f15 = sqrt(clamp((f14.xyz * f14.xyz) * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f16 = f14;
    f16.x = f15.x;
    vec4 f17 = f16;
    f17.y = f15.y;
    vec4 f18 = f17;
    f18.z = f15.z;
    gl_FragData[0] = f18;
}

//$$DiffuseMapTexture=s0
