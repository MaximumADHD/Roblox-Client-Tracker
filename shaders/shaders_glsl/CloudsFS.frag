#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <RayFrame.h>
#include <CloudsParams.h>
uniform vec4 CB0[52];
uniform vec4 CB1[1];
uniform vec4 CB2[3];
uniform sampler3D CloudsDistanceFieldTexture;

void main()
{
    vec2 f0 = (gl_FragCoord.xy * CB1[0].xy) + CB1[0].zw;
    vec3 f1 = -normalize(((CB0[4].xyz * f0.x) - (CB0[5].xyz * f0.y)) + CB0[6].xyz);
    float f2 = f1.y;
    if (f2 < 0.0)
    {
        discard;
    }
    vec3 f3 = CB0[7].xyz * 0.00028000000747852027416229248046875;
    vec3 f4 = f3;
    f4.y = f3.y + 6371.0;
    float f5 = dot(f1, f4);
    float f6 = 2.0 * f5;
    vec2 f7 = (vec2(f5 * (-2.0)) + sqrt(vec2(f6 * f6) - ((vec2(dot(f4, f4)) - vec2(40615128.0, 40647000.0)) * 4.0))) * 0.5;
    float f8 = f7.x;
    float f9 = f7.y - f8;
    vec3 f10 = f1;
    f10.y = 0.0375653542578220367431640625 + (0.96243464946746826171875 * f2);
    vec3 f11 = f3 + (f10 * f8);
    f11.y = 0.0;
    float f12 = 0.0625 + (CB2[2].x * 0.5);
    float f13 = (f12 * 0.3333333432674407958984375) * f9;
    float f14 = 0.3333333432674407958984375 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))));
    float f15 = f12 * f9;
    vec3 f16;
    vec4 f17;
    f17 = vec4(0.0);
    f16 = (f11 + ((f10 * f15) * f14)) + ((CB2[0].xyz * CB2[0].w) * 64.0);
    float f18;
    vec3 f19;
    bool f20;
    bool f21;
    float f22;
    float f23;
    float f24;
    vec4 f25;
    vec4 f26;
    int f27 = 0;
    float f28 = 1.0;
    float f29 = f8 + (f15 * f14);
    bool f30 = false;
    for (;;)
    {
        if (f27 < 3)
        {
            vec4 f31 = texture3D(CloudsDistanceFieldTexture, (f16 * vec3(0.03125, 1.0, 0.03125)).xzy);
            float f32 = f31.x;
            bool f33 = f32 < CB2[2].x;
            if (f33)
            {
                float f34 = ((2.5 / f9) * (exp2(8.0 * CB2[2].y) - 1.0)) * (CB2[2].x - f32);
                vec3 f35 = normalize(-CB0[11].xyz);
                float f36;
                float f37;
                int f38 = 0;
                float f39 = 0.0;
                for (;;)
                {
                    if (f38 < 3)
                    {
                        float f40 = float(f38);
                        vec3 f41 = (f16 + ((f35 * 5.333333492279052734375) * fract(52.98291778564453125 * fract(dot(vec2(0.300000011920928955078125) + gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125)))))) + ((f35 * f40) * 5.333333492279052734375);
                        float f42 = f41.y;
                        if ((f42 < 0.0) || (f42 > 1.0))
                        {
                            f36 = f39;
                            break;
                        }
                        vec4 f43 = texture3D(CloudsDistanceFieldTexture, (f41 * vec3(0.03125, 1.0, 0.03125)).xzy);
                        float f44 = f43.x;
                        if (f44 > 0.5)
                        {
                            f37 = f39;
                            int f45 = f38 + 1;
                            f39 = f37;
                            f38 = f45;
                            continue;
                        }
                        float f46 = f39 + (0.125 * (1.0 - (2.0 * f44)));
                        if (f46 >= 1.0)
                        {
                            f36 = f46;
                            break;
                        }
                        f37 = f46;
                        int f45 = f38 + 1;
                        f39 = f37;
                        f38 = f45;
                        continue;
                    }
                    else
                    {
                        f36 = f39;
                        break;
                    }
                }
                float f47;
                if (f36 > 1.0)
                {
                    f47 = 0.0;
                }
                else
                {
                    f47 = 2.5 * exp2((-5.333333492279052734375) * f36);
                }
                vec3 f48 = mix(vec3(0.1500000059604644775390625 + (0.300000011920928955078125 * f16.y)), mix(CB0[26].xyz, CB0[25].xyz, vec3(f16.y)), vec3(clamp(exp2(CB0[11].y * 32.0), 0.0, 1.0))) + ((CB0[10].xyz * f47) * 2.099999904632568359375);
                float f49 = exp2((-0.4808983504772186279296875) * f34);
                vec3 f50 = f17.xyz + (((f48 - (f48 * f49)) * f28) / vec3(f34));
                vec4 f51 = vec4(f50.x, f50.y, f50.z, f17.w);
                float f52 = f28 * f49;
                if (f52 < 0.001000000047497451305389404296875)
                {
                    f25 = f51;
                    f23 = f52;
                    f22 = f29;
                    f21 = true;
                    break;
                }
                f26 = f51;
                f24 = f52;
            }
            else
            {
                f26 = f17;
                f24 = f28;
            }
            f20 = f33 ? true : f30;
            f18 = f29 + f13;
            f19 = f16 + (f10 * vec3(f13, 0.3333333432674407958984375, f13));
            if (f19.y >= 1.0)
            {
                f25 = f26;
                f23 = f24;
                f22 = f18;
                f21 = f20;
                break;
            }
            f17 = f26;
            f16 = f19;
            f29 = f18;
            f28 = f24;
            f27++;
            f30 = f20;
            continue;
        }
        else
        {
            f25 = f17;
            f23 = f28;
            f22 = f29;
            f21 = f30;
            break;
        }
    }
    if (!f21)
    {
        discard;
    }
    vec3 f53 = mix(CB0[14].xyz, f25.xyz, vec3(exp2((CB0[13].z * 3.5714285373687744140625) * (f22 * f22))));
    vec4 f54 = vec4(f53.x, f53.y, f53.z, f25.w);
    f54.w = 1.0 - f23;
    gl_FragData[0] = f54;
}

//$$CloudsDistanceFieldTexture=s0
