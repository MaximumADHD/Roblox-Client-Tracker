#version 150

#extension GL_ARB_shading_language_include : require
#include <ParamsIBL.h>
uniform vec4 CB2[4];
uniform vec4 CB4[60];
uniform samplerCube envMapTexture;

in vec3 VARYING1;
out vec4 _entryPointOutput;

void main()
{
    int f0 = int(CB2[3].x);
    vec3 f1 = normalize(VARYING1);
    vec3 f2 = abs(VARYING1);
    vec4 f3;
    f3 = vec4(0.0);
    vec4 f4;
    for (int f5 = 0; f5 < 3; f3 = f4, f5++)
    {
        int f6 = f5 >> 1;
        float f7 = (max(f2[(1 - (f5 & 1)) - f6], f2[2 - f6]) - 0.75) * 4.0;
        if (f7 > 0.0)
        {
            vec3 f8;
            switch (f5)
            {
                case 0:
                {
                    f8 = vec3(1.0, 0.0, 0.0);
                    break;
                }
                case 1:
                {
                    f8 = vec3(0.0, 1.0, 0.0);
                    break;
                }
                default:
                {
                    f8 = vec3(0.0, 0.0, 1.0);
                    break;
                }
            }
            vec3 f9 = normalize(cross(f8, f1));
            vec3 f10 = cross(f1, f9);
            vec4 f11;
            f11 = f3;
            vec4 f12;
            for (int f13 = 0; f13 < 2; f11 = f12, f13++)
            {
                int f14 = (2 * f5) + f13;
                int f15 = f0 * 30;
                vec4 f16 = CB4[(f15 + f14) * 1 + 0];
                vec4 f17 = CB4[((f15 + 6) + f14) * 1 + 0];
                vec4 f18 = CB4[((f15 + 12) + f14) * 1 + 0];
                vec4 f19 = CB4[((f15 + 18) + f14) * 1 + 0];
                vec4 f20 = CB4[((f15 + 24) + f14) * 1 + 0];
                f12 = f11;
                for (int f21 = 0; f21 < 4; )
                {
                    vec3 f22 = ((f9 * f16[f21]) + (f10 * f17[f21])) + (f1 * f18[f21]);
                    float f23 = f20[f21] * f7;
                    vec3 f24 = f22 / vec3(max(abs(f22.x), max(abs(f22.y), abs(f22.z))));
                    float f25 = min(5.0, f19[f21] + (0.75 * log2(dot(f24, f24))));
                    vec3 f26 = f12.xyz + (textureLod(envMapTexture, vec4(f24, f25).xyz, f25).xyz * f23);
                    vec4 f27 = f12;
                    f27.x = f26.x;
                    vec4 f28 = f27;
                    f28.y = f26.y;
                    vec4 f29 = f28;
                    f29.z = f26.z;
                    vec4 f30 = f29;
                    f30.w = f12.w + f23;
                    f12 = f30;
                    f21++;
                    continue;
                }
            }
            f4 = f11;
        }
        else
        {
            f4 = f3;
        }
    }
    vec4 f31 = f3 / vec4(f3.w);
    vec4 f32 = f31;
    f32.x = max(0.0, f31.x);
    vec4 f33 = f32;
    f33.y = max(0.0, f31.y);
    vec4 f34 = f33;
    f34.z = max(0.0, f31.z);
    vec4 f35 = f34;
    f35.w = 1.0;
    _entryPointOutput = f35;
}

//$$envMapTexture=s0
