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
        vec4 f6 = f4;
        f6.x = f3.x;
        vec4 f7 = f6;
        f7.y = -1.0;
        vec4 f8 = f7;
        f8.z = f3.y;
        f5 = f8;
    }
    else
    {
        vec4 f9;
        if (f2 == 4.0)
        {
            vec4 f10 = f4;
            f10.x = -1.0;
            vec4 f11 = f10;
            f11.y = f3.y;
            vec4 f12 = f11;
            f12.z = f3.x;
            f9 = f12;
        }
        else
        {
            vec4 f13;
            if (f2 == 5.0)
            {
                vec4 f14 = f4;
                f14.x = f3.x;
                vec4 f15 = f14;
                f15.y = f3.y;
                vec4 f16 = f15;
                f16.z = 1.0;
                f13 = f16;
            }
            else
            {
                vec4 f17;
                if (f2 == 6.0)
                {
                    vec4 f18 = f4;
                    f18.x = 1.0;
                    vec4 f19 = f18;
                    f19.y = f3.y;
                    vec4 f20 = f19;
                    f20.z = -f3.x;
                    f17 = f20;
                }
                else
                {
                    vec4 f21;
                    if (f2 == 7.0)
                    {
                        vec4 f22 = f4;
                        f22.x = -f3.x;
                        vec4 f23 = f22;
                        f23.y = f3.y;
                        vec4 f24 = f23;
                        f24.z = -1.0;
                        f21 = f24;
                    }
                    else
                    {
                        if (!(f2 == 9.0))
                        {
                            discard;
                        }
                        vec4 f25 = f4;
                        f25.x = f3.x;
                        vec4 f26 = f25;
                        f26.y = 1.0;
                        vec4 f27 = f26;
                        f27.z = -f3.y;
                        f21 = f27;
                    }
                    f17 = f21;
                }
                f13 = f17;
            }
            f9 = f13;
        }
        f5 = f9;
    }
    vec4 f28 = textureCubeLod(DiffuseMapTexture, f5.xyz, f5.w);
    f28.w = 1.0;
    gl_FragData[0] = f28;
}

//$$DiffuseMapTexture=s0
