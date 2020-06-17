#version 150
#extension GL_ARB_arrays_of_arrays : require
#extension GL_ARB_shader_bit_encoding : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <IBLDebugParams.h>
uniform vec4 CB0[52];
uniform vec4 CB1[109];
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvTexture;

in vec3 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = normalize(VARYING0);
    vec4 f1;
    switch (floatBitsToUint(CB1[4].x))
    {
        case 1u:
        {
            vec3 f2 = f0 * f0;
            bvec3 f3 = lessThan(f0, vec3(0.0));
            vec3 f4 = vec3(f3.x ? f2.x : vec3(0.0).x, f3.y ? f2.y : vec3(0.0).y, f3.z ? f2.z : vec3(0.0).z);
            vec3 f5 = f2 - f4;
            vec3 f6 = (((((CB0[35].xyz * f5.x) + (CB0[37].xyz * f5.y)) + (CB0[39].xyz * f5.z)) + (CB0[36].xyz * f4.x)) + (CB0[38].xyz * f4.y)) + (CB0[40].xyz * f4.z);
            f1 = vec4(f6.x, f6.y, f6.z, vec4(1.0, 0.0, 0.0, 1.0).w);
            break;
        }
        case 2u:
        {
            vec3 f7 = f0 * f0;
            bvec3 f8 = lessThan(f0, vec3(0.0));
            vec3 f9 = vec3(f8.x ? f7.x : vec3(0.0).x, f8.y ? f7.y : vec3(0.0).y, f8.z ? f7.z : vec3(0.0).z);
            vec3 f10 = f7 - f9;
            vec3 f11 = (((((CB0[29].xyz * f10.x) + (CB0[31].xyz * f10.y)) + (CB0[33].xyz * f10.z)) + (CB0[30].xyz * f9.x)) + (CB0[32].xyz * f9.y)) + (CB0[34].xyz * f9.z);
            f1 = vec4(f11.x, f11.y, f11.z, vec4(1.0, 0.0, 0.0, 1.0).w);
            break;
        }
        case 3u:
        {
            vec4 f12 = textureLod(PrefilteredEnvIndoorTexture, vec4(f0, 0.0).xyz, 0.0);
            f1 = vec4(f12.x, f12.y, f12.z, vec4(1.0, 0.0, 0.0, 1.0).w);
            break;
        }
        case 4u:
        {
            vec4 f13 = textureLod(PrefilteredEnvTexture, vec4(f0, 0.0).xyz, 0.0);
            f1 = vec4(f13.x, f13.y, f13.z, vec4(1.0, 0.0, 0.0, 1.0).w);
            break;
        }
        case 5u:
        {
            f1 = vec4(CB1[5].x, CB1[5].y, CB1[5].z, vec4(1.0, 0.0, 0.0, 1.0).w);
            break;
        }
        case 6u:
        {
            f1 = vec4(CB1[6].x, CB1[6].y, CB1[6].z, vec4(1.0, 0.0, 0.0, 1.0).w);
            break;
        }
        case 7u:
        {
            vec3 f14 = mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f0.y * 1.58823525905609130859375, 0.0, 1.0)));
            f1 = vec4(f14.x, f14.y, f14.z, vec4(1.0, 0.0, 0.0, 1.0).w);
            break;
        }
        case 8u:
        {
            float f15 = f0.z;
            float f16 = abs(f15);
            float f17 = f0.x;
            float f18 = abs(f17);
            float f19 = f0.y;
            float f20 = abs(f19);
            vec3 f21;
            if ((f16 >= f18) && (f16 >= f20))
            {
                vec3 f22;
                if (f15 > 0.0)
                {
                    vec2 f23 = vec2(-f17, -f19) / vec2(f15);
                    vec3 f24 = vec3(f23.x, f23.y, vec3(0.0).z);
                    f24.z = 4.0;
                    f22 = f24;
                }
                else
                {
                    vec2 f25 = vec2(-f17, f19) / vec2(f15);
                    vec3 f26 = vec3(f25.x, f25.y, vec3(0.0).z);
                    f26.z = 5.0;
                    f22 = f26;
                }
                f21 = f22;
            }
            else
            {
                vec3 f27;
                if (f20 >= f18)
                {
                    vec3 f28;
                    if (f19 > 0.0)
                    {
                        vec2 f29 = vec2(-f15, -f17) / vec2(f19);
                        vec3 f30 = vec3(f29.x, f29.y, vec3(0.0).z);
                        f30.z = 2.0;
                        f28 = f30;
                    }
                    else
                    {
                        vec2 f31 = vec2(f15, -f17) / vec2(f19);
                        vec3 f32 = vec3(f31.x, f31.y, vec3(0.0).z);
                        f32.z = 3.0;
                        f28 = f32;
                    }
                    f27 = f28;
                }
                else
                {
                    vec3 f33;
                    if (f17 > 0.0)
                    {
                        vec2 f34 = vec2(f15, -f19) / vec2(f17);
                        vec3 f35 = vec3(f34.x, f34.y, vec3(0.0).z);
                        f35.z = 0.0;
                        f33 = f35;
                    }
                    else
                    {
                        vec2 f36 = vec2(f15, f19) / vec2(f17);
                        vec3 f37 = vec3(f36.x, f36.y, vec3(0.0).z);
                        f37.z = 1.0;
                        f33 = f37;
                    }
                    f27 = f33;
                }
                f21 = f27;
            }
            vec2 f38 = clamp((f21.xy * 0.5) + vec2(0.5), vec2(0.0), vec2(1.0));
            int f39 = int(f21.z);
            int f40 = floatBitsToInt(CB1[f39 * 1 + 7].x);
            int f41 = floatBitsToInt(CB1[f39 * 1 + 7].y);
            int f42 = (clamp(int(f38.y * float(f41)), 0, f41 - 1) * f40) + clamp(int(f38.x * float(f40)), 0, f40 - 1);
            f1 = vec4(CB1[f39 * 16 + f42 * 1 + 13].x, CB1[f39 * 16 + f42 * 1 + 13].y, CB1[f39 * 16 + f42 * 1 + 13].z, vec4(1.0, 0.0, 0.0, 1.0).w);
            break;
        }
        default:
        {
            f1 = vec4(1.0, 0.0, 0.0, 1.0);
            break;
        }
    }
    vec3 f43 = sqrt(clamp(f1.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f43.x, f43.y, f43.z, f1.w);
}

//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvTexture=s15
