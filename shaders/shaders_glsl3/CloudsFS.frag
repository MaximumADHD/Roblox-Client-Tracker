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
    vec2 f0 = (gl_FragCoord.xy * CB1[0].xy) + CB1[0].zw;
    vec3 f1 = normalize(((CB0[4].xyz * f0.x) - (CB0[5].xyz * f0.y)) + CB0[6].xyz);
    vec3 f2 = -f1;
    float f3 = f2.y;
    if (f3 < 0.0)
    {
        discard;
    }
    vec3 f4 = CB0[7].xyz * 0.00028000000747852027416229248046875;
    vec3 f5 = f4;
    f5.y = f4.y + 6371.0;
    float f6 = dot(f2, f5);
    float f7 = 2.0 * f6;
    vec2 f8 = (vec2(f6 * (-2.0)) + sqrt(vec2(f7 * f7) - ((vec2(dot(f5, f5)) - vec2(40615128.0, 40647000.0)) * 4.0))) * 0.5;
    float f9 = f8.x;
    float f10 = f8.y - f9;
    float f11 = dot(CB0[11].xyz, f1);
    float f12 = f11 + 0.819406807422637939453125;
    vec3 f13 = f2;
    f13.y = 0.0375653542578220367431640625 + (0.96243464946746826171875 * f3);
    vec3 f14 = f4 + (f13 * f9);
    f14.y = 0.0;
    float f15 = 0.0625 + (CB2[2].x * 0.5);
    float f16 = (f15 * 0.125) * f10;
    float f17 = 0.125 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))));
    float f18 = f15 * f10;
    vec3 f19;
    float f20;
    vec3 f21;
    vec4 f22;
    f22 = vec4(0.0);
    f21 = (f14 + ((f13 * f18) * f17)) + ((CB2[0].xyz * CB2[0].w) * 50.0);
    f20 = f9 + (f18 * f17);
    f19 = f14;
    float f23;
    vec3 f24;
    vec3 f25;
    bool f26;
    bool f27;
    float f28;
    float f29;
    vec4 f30;
    vec4 f31;
    int f32 = 0;
    float f33 = 1.0;
    bool f34 = false;
    for (;;)
    {
        if (f32 < 8)
        {
            vec4 f35 = texture(CloudsDistanceFieldTexture, (f21 * vec3(0.03125, 1.0, 0.03125)).xzy);
            float f36 = CB2[0].w * 1.5625;
            vec3 f37 = f19;
            f37.x = f19.x + f36;
            vec3 f38 = f37 * vec3(0.5, 2.0, 0.5);
            vec4 f39 = texture(NoiseTexTexture, fract(f38));
            vec4 f40 = texture(NoiseTexTexture, fract((f38 * mat3(vec3(0.0, 0.800000011920928955078125, 0.60000002384185791015625), vec3(-0.800000011920928955078125, 0.36000001430511474609375, -0.4799999892711639404296875), vec3(-0.60000002384185791015625, -0.4799999892711639404296875, 0.63999998569488525390625))) * 2.019999980926513671875));
            float f41 = 0.03125 + (CB2[2].x * 0.125);
            float f42 = f35.x - (f41 * (f39.x + (0.25 * f40.x)));
            bool f43 = f42 < CB2[2].x;
            if (f43)
            {
                float f44 = ((2.5 / f10) * (CB2[2].y * 128.0)) * (CB2[2].x - f42);
                vec3 f45 = -CB0[11].xyz;
                float f46;
                f46 = 0.0;
                float f47;
                for (int f48 = 0; f48 < 7; f46 = f47, f48++)
                {
                    vec3 f49 = (f45 * float(f48)) * 0.571428596973419189453125;
                    vec3 f50 = (f21 + ((f45 * 0.571428596973419189453125) * fract(52.98291778564453125 * fract(dot(vec2(0.300000011920928955078125) + gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125)))))) + f49;
                    vec3 f51 = f21 + f49;
                    if (f50.y > 1.0)
                    {
                        break;
                    }
                    vec4 f52 = texture(CloudsDistanceFieldTexture, (f50 * vec3(0.03125, 1.0, 0.03125)).xzy);
                    vec3 f53 = f51;
                    f53.x = f51.x + f36;
                    vec3 f54 = f53 * vec3(0.5, 2.0, 0.5);
                    vec4 f55 = texture(NoiseTexTexture, fract(f54));
                    vec4 f56 = texture(NoiseTexTexture, fract((f54 * mat3(vec3(0.0, 0.800000011920928955078125, 0.60000002384185791015625), vec3(-0.800000011920928955078125, 0.36000001430511474609375, -0.4799999892711639404296875), vec3(-0.60000002384185791015625, -0.4799999892711639404296875, 0.63999998569488525390625))) * 2.019999980926513671875));
                    float f57 = f52.x - (f41 * (f55.x + (0.25 * f56.x)));
                    if (f57 > 0.5)
                    {
                        f47 = f46;
                        continue;
                    }
                    f47 = f46 + (0.5 * (1.0 - (2.0 * f57)));
                }
                float f58 = mix(0.07999999821186065673828125, 1.0, smoothstep(0.959999978542327880859375, 0.0, f11));
                vec3 f59 = mix(vec3(0.1500000059604644775390625 + (0.300000011920928955078125 * f21.y)), mix(CB0[26].xyz, CB0[25].xyz, vec3(f21.y)), vec3(clamp(exp2(CB0[11].y), 0.0, 1.0))) + ((CB0[10].xyz * ((((exp2((-0.571428596973419189453125) * f46) + ((0.5 * f58) * exp2((-0.057142861187458038330078125) * f46))) + ((f58 * 2.0) * exp2((-0.011428571306169033050537109375) * f46))) * dot(exp2(vec4(((-93.775177001953125) * f11) + (-79.34822845458984375), ((-83.703338623046875) * f12) * f12, 7.810082912445068359375 * f11, (-4.5521251698654729977988608879969e-12) * f11)), vec4(9.8052332759834825992584228515625e-06, 0.13881979882717132568359375, 0.00205474696122109889984130859375, 0.0260056294500827789306640625))) * mix(0.0500000007450580596923828125 + (2.0 * pow(clamp(f44, 9.9999997473787516355514526367188e-06, 1.0), 0.300000011920928955078125 + (5.5 * f21.y))), 1.0, f46))) * 2.099999904632568359375);
                float f60 = exp2((-0.18033687770366668701171875) * f44);
                vec3 f61 = f22.xyz + (((f59 - (f59 * f60)) * f33) / vec3(f44));
                vec4 f62 = vec4(f61.x, f61.y, f61.z, f22.w);
                float f63 = f33 * f60;
                if (f63 < 0.001000000047497451305389404296875)
                {
                    f30 = f62;
                    f28 = f63;
                    f27 = true;
                    break;
                }
                f31 = f62;
                f29 = f63;
            }
            else
            {
                f31 = f22;
                f29 = f33;
            }
            f26 = f43 ? true : f34;
            f23 = f20 + f16;
            vec3 f64 = f13 * vec3(f16, 0.125, f16);
            f24 = f21 + f64;
            f25 = f19 + f64;
            f22 = f31;
            f21 = f24;
            f20 = f23;
            f33 = f29;
            f19 = f25;
            f32++;
            f34 = f26;
            continue;
        }
        else
        {
            f30 = f22;
            f28 = f33;
            f27 = f34;
            break;
        }
    }
    if (!f27)
    {
        discard;
    }
    float f65 = exp2((CB0[13].z * 3.5714285373687744140625) * (f20 * f20));
    vec3 f66 = textureLod(PrefilteredEnvTexture, vec4(f2.x, f3, f2.z, 0.0).xyz, max(CB0[13].y, f65) * 5.0).xyz;
    bvec3 f67 = bvec3(CB0[13].w != 0.0);
    vec3 f68 = mix(vec3(f67.x ? CB0[14].xyz.x : f66.x, f67.y ? CB0[14].xyz.y : f66.y, f67.z ? CB0[14].xyz.z : f66.z), f30.xyz, vec3(f65));
    vec4 f69 = vec4(f68.x, f68.y, f68.z, f30.w);
    f69.w = 1.0 - f28;
    _entryPointOutput_color = f69;
}

//$$PrefilteredEnvTexture=s15
//$$NoiseTexTexture=s1
//$$CloudsDistanceFieldTexture=s0
