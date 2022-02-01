#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <ImGuiExtShaderData.h>
uniform vec4 CB1[2];
uniform samplerCube DiffuseMapTexture;

varying vec2 VARYING0;

void main()
{
    float f0 = VARYING0.x * 4.0;
    float f1 = (1.0 - VARYING0.y) * 3.0;
    float f2 = floor(f0) + (floor(f1) * 4.0);
    vec2 f3 = (fract(vec2(f0, f1)) * 2.0) - vec2(1.0);
    vec4 f4 = vec4(0.0, 0.0, 0.0, CB1[1].z);
    vec4 f5;
    if (f2 == 1.0)
    {
        vec3 f6 = vec3(f3.x, -1.0, f3.y);
        f5 = vec4(f6.x, f6.y, f6.z, f4.w);
    }
    else
    {
        vec4 f7;
        if (f2 == 4.0)
        {
            vec3 f8 = vec3(-1.0, f3.yx);
            f7 = vec4(f8.x, f8.y, f8.z, f4.w);
        }
        else
        {
            vec4 f9;
            if (f2 == 5.0)
            {
                vec3 f10 = vec3(f3, 1.0);
                f9 = vec4(f10.x, f10.y, f10.z, f4.w);
            }
            else
            {
                vec4 f11;
                if (f2 == 6.0)
                {
                    vec3 f12 = vec3(1.0, f3.y, -f3.x);
                    f11 = vec4(f12.x, f12.y, f12.z, f4.w);
                }
                else
                {
                    vec4 f13;
                    if (f2 == 7.0)
                    {
                        vec3 f14 = vec3(-f3.x, f3.y, -1.0);
                        f13 = vec4(f14.x, f14.y, f14.z, f4.w);
                    }
                    else
                    {
                        if (!(f2 == 9.0))
                        {
                            discard;
                        }
                        vec3 f15 = vec3(f3.x, 1.0, -f3.y);
                        f13 = vec4(f15.x, f15.y, f15.z, f4.w);
                    }
                    f11 = f13;
                }
                f9 = f11;
            }
            f7 = f9;
        }
        f5 = f7;
    }
    vec4 f16 = textureCubeLod(DiffuseMapTexture, f5.xyz, f5.w);
    f16.w = 1.0;
    gl_FragData[0] = f16;
}

//$$DiffuseMapTexture=s0
