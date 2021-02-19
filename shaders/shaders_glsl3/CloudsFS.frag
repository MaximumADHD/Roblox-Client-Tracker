#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <RayFrame.h>
#include <CloudsParams.h>
uniform vec4 CB0[53];
uniform vec4 CB1[1];
uniform vec4 CB2[3];
uniform samplerCube PrefilteredEnvTexture;
uniform sampler3D NoiseTexTexture;
uniform sampler3D CloudsDistanceFieldTexture;

out vec4 _entryPointOutput_color;

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
    float f14 = 0.0625 + (CB2[2].x * 0.5);
    float f15 = (f14 * 0.125) * f9;
    float f16 = 0.125 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))));
    float f17 = f14 * f9;
    vec3 f18;
    float f19;
    vec3 f20;
    vec4 f21;
    f21 = vec4(0.0);
    f20 = (f13 + ((f12 * f17) * f16)) + ((CB2[0].xyz * CB2[0].w) * 50.0);
    f19 = f8 + (f17 * f16);
    f18 = f13;
    float f22;
    vec3 f23;
    vec3 f24;
    bool f25;
    bool f26;
    float f27;
    float f28;
    vec4 f29;
    vec4 f30;
    int f31 = 0;
    float f32 = 1.0;
    bool f33 = false;
    for (;;)
    {
        if (f31 < 8)
        {
            vec4 f34 = texture(CloudsDistanceFieldTexture, (f20 * vec3(0.03125, 1.0, 0.03125)).xzy);
            float f35 = CB2[0].w * 1.5625;
            vec3 f36 = f18;
            f36.x = f18.x + f35;
            vec3 f37 = f36 * vec3(0.5, 2.0, 0.5);
            vec4 f38 = texture(NoiseTexTexture, fract(f37));
            vec4 f39 = texture(NoiseTexTexture, fract((f37 * mat3(vec3(0.0, 0.800000011920928955078125, 0.60000002384185791015625), vec3(-0.800000011920928955078125, 0.36000001430511474609375, -0.4799999892711639404296875), vec3(-0.60000002384185791015625, -0.4799999892711639404296875, 0.63999998569488525390625))) * 2.019999980926513671875));
            float f40 = 0.03125 + (CB2[2].x * 0.125);
            float f41 = f34.x - (f40 * (f38.x + (0.25 * f39.x)));
            bool f42 = f41 < CB2[2].x;
            if (f42)
            {
                float f43 = (CB2[2].y * 128.0) * (CB2[2].x - f41);
                vec3 f44 = -CB0[11].xyz;
                float f45;
                f45 = 0.0;
                float f46;
                for (int f47 = 0; f47 < 7; f45 = f46, f47++)
                {
                    vec3 f48 = (f44 * float(f47)) * 0.571428596973419189453125;
                    vec3 f49 = (f20 + ((f44 * 0.571428596973419189453125) * fract(52.98291778564453125 * fract(dot(vec2(0.300000011920928955078125) + gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125)))))) + f48;
                    vec3 f50 = f20 + f48;
                    if (f49.y > 1.0)
                    {
                        break;
                    }
                    vec4 f51 = texture(CloudsDistanceFieldTexture, (f49 * vec3(0.03125, 1.0, 0.03125)).xzy);
                    vec3 f52 = f50;
                    f52.x = f50.x + f35;
                    vec3 f53 = f52 * vec3(0.5, 2.0, 0.5);
                    vec4 f54 = texture(NoiseTexTexture, fract(f53));
                    vec4 f55 = texture(NoiseTexTexture, fract((f53 * mat3(vec3(0.0, 0.800000011920928955078125, 0.60000002384185791015625), vec3(-0.800000011920928955078125, 0.36000001430511474609375, -0.4799999892711639404296875), vec3(-0.60000002384185791015625, -0.4799999892711639404296875, 0.63999998569488525390625))) * 2.019999980926513671875));
                    float f56 = f51.x - (f40 * (f54.x + (0.25 * f55.x)));
                    if (f56 > 0.5)
                    {
                        f46 = f45;
                        continue;
                    }
                    f46 = f45 + (0.5 * (1.0 - (2.0 * f56)));
                }
                float f57 = mix(0.07999999821186065673828125, 1.0, smoothstep(0.959999978542327880859375, 0.0, f10));
                vec3 f58 = mix(vec3(0.1500000059604644775390625 + (0.300000011920928955078125 * f20.y)), mix(CB0[26].xyz, CB0[25].xyz, vec3(f20.y)), vec3(clamp(exp2(CB0[11].y), 0.0, 1.0))) + ((CB0[10].xyz * ((((exp2(f45 * (-0.571428596973419189453125)) + ((0.5 * f57) * exp2(f45 * (-0.057142861187458038330078125)))) + ((f57 * 2.0) * exp2(f45 * (-0.011428571306169033050537109375)))) * dot(exp2(vec4(((-93.775177001953125) * f10) + (-79.34822845458984375), ((-83.703338623046875) * f11) * f11, 7.810082912445068359375 * f10, (-4.5521251698654729977988608879969e-12) * f10)), vec4(9.8052332759834825992584228515625e-06, 0.13881979882717132568359375, 0.00205474696122109889984130859375, 0.0260056294500827789306640625))) * mix(0.0500000007450580596923828125 + (2.0 * pow(clamp(f43, 9.9999997473787516355514526367188e-06, 1.0), 0.300000011920928955078125 + (5.5 * f20.y))), 1.0, f45 * 0.571428596973419189453125))) * 2.099999904632568359375);
                float f59 = exp2((-0.18033687770366668701171875) * f43);
                vec3 f60 = f21.xyz + (((f58 - (f58 * f59)) * f32) / vec3(f43));
                vec4 f61 = vec4(f60.x, f60.y, f60.z, f21.w);
                float f62 = f32 * f59;
                if (f62 < 0.001000000047497451305389404296875)
                {
                    f29 = f61;
                    f27 = f62;
                    f26 = true;
                    break;
                }
                f30 = f61;
                f28 = f62;
            }
            else
            {
                f30 = f21;
                f28 = f32;
            }
            f25 = f42 ? true : f33;
            f22 = f19 + f15;
            vec3 f63 = f12 * vec3(f15, 0.125, f15);
            f23 = f20 + f63;
            f24 = f18 + f63;
            f21 = f30;
            f20 = f23;
            f19 = f22;
            f32 = f28;
            f18 = f24;
            f31++;
            f33 = f25;
            continue;
        }
        else
        {
            f29 = f21;
            f27 = f32;
            f26 = f33;
            break;
        }
    }
    if (!f26)
    {
        discard;
    }
    float f64 = exp2((CB0[13].z * 3.5714285373687744140625) * (f19 * f19));
    vec3 f65 = textureLod(PrefilteredEnvTexture, vec4(f1.x, f2, f1.z, 0.0).xyz, max(CB0[13].y, f64) * 5.0).xyz;
    bvec3 f66 = bvec3(CB0[13].w != 0.0);
    vec3 f67 = mix(vec3(f66.x ? CB0[14].xyz.x : f65.x, f66.y ? CB0[14].xyz.y : f65.y, f66.z ? CB0[14].xyz.z : f65.z), f29.xyz, vec3(f64));
    vec4 f68 = vec4(f67.x, f67.y, f67.z, f29.w);
    f68.w = 1.0 - f27;
    _entryPointOutput_color = f68;
}

//$$PrefilteredEnvTexture=s15
//$$NoiseTexTexture=s1
//$$CloudsDistanceFieldTexture=s0
