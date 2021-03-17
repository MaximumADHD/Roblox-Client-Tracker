#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <RayFrame.h>
#include <CloudsParams.h>
uniform vec4 CB0[53];
uniform vec4 CB1[1];
uniform vec4 CB2[3];
uniform sampler3D NoiseTexTexture;
uniform sampler3D CloudsDistanceFieldTexture;

void main()
{
    vec2 f0 = CB1[0].zw * ((gl_FragCoord.xy * CB1[0].xy) - vec2(1.0));
    vec3 f1 = normalize(((CB0[4].xyz * f0.x) + (CB0[5].xyz * f0.y)) - CB0[6].xyz);
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
    float f10 = dot(CB0[11].xyz, -f1);
    float f11 = f10 + 0.819406807422637939453125;
    vec3 f12 = f1;
    f12.y = 0.0375653542578220367431640625 + (0.96243464946746826171875 * f2);
    vec3 f13 = f3 + (f12 * f8);
    f13.y = 0.0;
    int f14 = int(CB2[2].z);
    float f15 = float(f14);
    float f16 = 1.0 / f15;
    float f17 = 0.0625 + (CB2[2].x * 0.5);
    float f18 = (f17 * f16) * f9;
    float f19 = f16 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))));
    float f20 = f17 * f9;
    vec3 f21;
    float f22;
    vec3 f23;
    vec4 f24;
    f24 = vec4(0.0);
    f23 = (f13 + ((f12 * f20) * f19)) + ((CB2[0].xyz * CB2[0].w) * 50.0);
    f22 = f8 + (f20 * f19);
    f21 = f13;
    float f25;
    vec3 f26;
    vec3 f27;
    bool f28;
    bool f29;
    float f30;
    float f31;
    vec4 f32;
    vec4 f33;
    int f34 = 0;
    float f35 = 1.0;
    bool f36 = false;
    for (;;)
    {
        if (f34 < f14)
        {
            vec4 f37 = texture3D(CloudsDistanceFieldTexture, (f23 * vec3(0.03125, 1.0, 0.03125)).xzy);
            float f38 = CB2[0].w * 1.5625;
            vec3 f39 = f21;
            f39.x = f21.x + f38;
            vec3 f40 = f39 * vec3(0.5, 2.0, 0.5);
            vec4 f41 = texture3D(NoiseTexTexture, fract(f40));
            vec4 f42 = texture3D(NoiseTexTexture, fract((f40 * mat3(vec3(0.0, 0.800000011920928955078125, 0.60000002384185791015625), vec3(-0.800000011920928955078125, 0.36000001430511474609375, -0.4799999892711639404296875), vec3(-0.60000002384185791015625, -0.4799999892711639404296875, 0.63999998569488525390625))) * 2.019999980926513671875));
            float f43 = 0.03125 + (CB2[2].x * 0.125);
            float f44 = f37.x - (f43 * (f41.x + (0.25 * f42.x)));
            bool f45 = f44 < CB2[2].x;
            if (f45)
            {
                float f46 = (CB2[2].y * 128.0) * (CB2[2].x - f44);
                vec3 f47 = -CB0[11].xyz;
                int f48 = int(CB2[2].w);
                float f49 = 4.0 / float(f48);
                float f50;
                f50 = 0.0;
                float f51;
                for (int f52 = 0; f52 < f48; f50 = f51, f52++)
                {
                    vec3 f53 = (f47 * float(f52)) * f49;
                    vec3 f54 = (f23 + ((f47 * f49) * fract(52.98291778564453125 * fract(dot(vec2(0.300000011920928955078125) + gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125)))))) + f53;
                    vec3 f55 = f23 + f53;
                    if (f54.y > 1.0)
                    {
                        break;
                    }
                    vec4 f56 = texture3D(CloudsDistanceFieldTexture, (f54 * vec3(0.03125, 1.0, 0.03125)).xzy);
                    vec3 f57 = f55;
                    f57.x = f55.x + f38;
                    vec3 f58 = f57 * vec3(0.5, 2.0, 0.5);
                    vec4 f59 = texture3D(NoiseTexTexture, fract(f58));
                    vec4 f60 = texture3D(NoiseTexTexture, fract((f58 * mat3(vec3(0.0, 0.800000011920928955078125, 0.60000002384185791015625), vec3(-0.800000011920928955078125, 0.36000001430511474609375, -0.4799999892711639404296875), vec3(-0.60000002384185791015625, -0.4799999892711639404296875, 0.63999998569488525390625))) * 2.019999980926513671875));
                    float f61 = f56.x - (f43 * (f59.x + (0.25 * f60.x)));
                    if (f61 < 0.5)
                    {
                        f51 = f50 + (0.5 * (1.0 - (2.0 * f61)));
                    }
                    else
                    {
                        f51 = f50;
                    }
                }
                float f62 = f50 * f49;
                float f63 = mix(0.07999999821186065673828125, 1.0, smoothstep(0.959999978542327880859375, 0.0, f10));
                vec3 f64 = mix(vec3(0.1500000059604644775390625 + (0.300000011920928955078125 * f23.y)), mix(CB0[26].xyz, CB0[25].xyz, vec3(f23.y)), vec3(clamp(exp2(CB0[11].y), 0.0, 1.0))) + ((CB0[10].xyz * ((((exp2(-f62) + ((0.5 * f63) * exp2((-0.100000001490116119384765625) * f62))) + ((f63 * 2.0) * exp2((-0.0199999995529651641845703125) * f62))) * dot(exp2(vec4(((-93.775177001953125) * f10) + (-79.34822845458984375), ((-83.703338623046875) * f11) * f11, 7.810082912445068359375 * f10, (-4.5521251698654729977988608879969e-12) * f10)), vec4(9.8052332759834825992584228515625e-06, 0.13881979882717132568359375, 0.00205474696122109889984130859375, 0.0260056294500827789306640625))) * mix(0.0500000007450580596923828125 + (2.0 * pow(clamp(f46, 9.9999997473787516355514526367188e-06, 1.0), 0.300000011920928955078125 + (5.5 * f23.y))), 1.0, f62))) * 2.099999904632568359375);
                float f65 = exp2(((-1.44269502162933349609375) / f15) * f46);
                vec3 f66 = f24.xyz + (((f64 - (f64 * f65)) * f35) / vec3(f46));
                vec4 f67 = vec4(f66.x, f66.y, f66.z, f24.w);
                float f68 = f35 * f65;
                if (f68 < 0.001000000047497451305389404296875)
                {
                    f32 = f67;
                    f30 = f68;
                    f29 = true;
                    break;
                }
                f33 = f67;
                f31 = f68;
            }
            else
            {
                f33 = f24;
                f31 = f35;
            }
            f28 = f45 ? true : f36;
            f25 = f22 + f18;
            vec3 f69 = f12 * vec3(f18, f16, f18);
            f26 = f23 + f69;
            f27 = f21 + f69;
            f24 = f33;
            f23 = f26;
            f22 = f25;
            f35 = f31;
            f21 = f27;
            f34++;
            f36 = f28;
            continue;
        }
        else
        {
            f32 = f24;
            f30 = f35;
            f29 = f36;
            break;
        }
    }
    if (!f29)
    {
        discard;
    }
    vec3 f70 = mix(CB0[14].xyz, f32.xyz, vec3(exp2((CB0[13].z * 3.5714285373687744140625) * (f22 * f22))));
    vec4 f71 = vec4(f70.x, f70.y, f70.z, f32.w);
    f71.w = 1.0 - f30;
    gl_FragData[0] = f71;
}

//$$NoiseTexTexture=s1
//$$CloudsDistanceFieldTexture=s0
