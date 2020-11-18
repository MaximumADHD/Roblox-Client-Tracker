#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <RayFrame.h>
#include <CloudsParams.h>
uniform vec4 CB0[52];
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
    vec3 f19 = f14 + ((f13 * f18) * f17);
    vec3 f20;
    vec3 f21;
    vec4 f22;
    f22 = vec4(0.0);
    f21 = f19 + ((CB2[0].xyz * CB2[0].w) * 64.0);
    f20 = f19;
    float f23;
    vec3 f24;
    vec3 f25;
    bool f26;
    bool f27;
    float f28;
    float f29;
    float f30;
    vec4 f31;
    vec4 f32;
    int f33 = 0;
    float f34 = 1.0;
    float f35 = f9 + (f18 * f17);
    bool f36 = false;
    for (;;)
    {
        if (f33 < 8)
        {
            vec4 f37 = texture(CloudsDistanceFieldTexture, (f21 * vec3(0.03125, 1.0, 0.03125)).xzy);
            float f38 = CB2[0].w * 2.0;
            vec3 f39 = f20;
            f39.x = f20.x + f38;
            vec3 f40 = f39 * vec3(0.5, 2.0, 0.5);
            vec4 f41 = texture(NoiseTexTexture, fract(f40));
            vec4 f42 = texture(NoiseTexTexture, fract((f40 * mat3(vec3(0.0, 0.800000011920928955078125, 0.60000002384185791015625), vec3(-0.800000011920928955078125, 0.36000001430511474609375, -0.4799999892711639404296875), vec3(-0.60000002384185791015625, -0.4799999892711639404296875, 0.63999998569488525390625))) * 2.019999980926513671875));
            float f43 = 0.03125 + (CB2[2].x * 0.125);
            float f44 = f37.x - (f43 * (f41.x + (0.25 * f42.x)));
            bool f45 = f44 < CB2[2].x;
            if (f45)
            {
                float f46 = ((2.5 / f10) * (exp2(8.0 * CB2[2].y) - 1.0)) * (CB2[2].x - f44);
                vec3 f47 = normalize(-CB0[11].xyz);
                float f48;
                float f49;
                int f50 = 0;
                float f51 = 0.0;
                for (;;)
                {
                    if (f50 < 7)
                    {
                        float f52 = float(f50);
                        vec3 f53 = (f21 + ((f47 * 2.2857143878936767578125) * fract(52.98291778564453125 * fract(dot(vec2(0.300000011920928955078125) + gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125)))))) + ((f47 * f52) * 2.2857143878936767578125);
                        float f54 = f53.y;
                        if ((f54 < 0.0) || (f54 > 1.0))
                        {
                            f48 = f51;
                            break;
                        }
                        vec4 f55 = texture(CloudsDistanceFieldTexture, (f53 * vec3(0.03125, 1.0, 0.03125)).xzy);
                        vec3 f56 = f53;
                        f56.x = f53.x + f38;
                        vec3 f57 = f56 * vec3(0.5, 2.0, 0.5);
                        vec4 f58 = texture(NoiseTexTexture, fract(f57));
                        vec4 f59 = texture(NoiseTexTexture, fract((f57 * mat3(vec3(0.0, 0.800000011920928955078125, 0.60000002384185791015625), vec3(-0.800000011920928955078125, 0.36000001430511474609375, -0.4799999892711639404296875), vec3(-0.60000002384185791015625, -0.4799999892711639404296875, 0.63999998569488525390625))) * 2.019999980926513671875));
                        float f60 = f55.x - (f43 * (f58.x + (0.25 * f59.x)));
                        if (f60 > 0.5)
                        {
                            f49 = f51;
                            int f61 = f50 + 1;
                            f51 = f49;
                            f50 = f61;
                            continue;
                        }
                        float f62 = f51 + (0.125 * (1.0 - (2.0 * f60)));
                        if (f62 >= 1.0)
                        {
                            f48 = f62;
                            break;
                        }
                        f49 = f62;
                        int f61 = f50 + 1;
                        f51 = f49;
                        f50 = f61;
                        continue;
                    }
                    else
                    {
                        f48 = f51;
                        break;
                    }
                }
                float f63;
                if (f48 > 1.0)
                {
                    f63 = 0.0;
                }
                else
                {
                    float f64 = mix(0.008000000379979610443115234375, 1.0, smoothstep(0.959999978542327880859375, 0.0, 8.0 * f11));
                    f63 = (((exp2((-2.2857143878936767578125) * f48) + ((0.5 * f64) * exp2((-0.2285714447498321533203125) * f48))) + ((f64 * 0.4000000059604644775390625) * exp2((-0.0457142852246761322021484375) * f48))) * dot(exp2(vec4(((-93.775177001953125) * f11) + (-79.34822845458984375), ((-83.703338623046875) * f12) * f12, 7.810082912445068359375 * f11, (-4.5521251698654729977988608879969e-12) * f11)), vec4(9.8052332759834825992584228515625e-06, 0.13881979882717132568359375, 0.00205474696122109889984130859375, 0.0260056294500827789306640625))) * mix(0.0500000007450580596923828125 + (1.5 * pow(clamp(f46 * 8.5, 0.0, 1.0), 0.300000011920928955078125 + (5.5 * f21.y))), 1.0, clamp(f48 * 0.100000001490116119384765625, 0.0, 1.0));
                }
                vec3 f65 = mix(vec3(0.1500000059604644775390625 + (0.300000011920928955078125 * f21.y)), mix(CB0[26].xyz, CB0[25].xyz, vec3(f21.y)), vec3(clamp(exp2(CB0[11].y * 32.0), 0.0, 1.0))) + ((CB0[10].xyz * f63) * 2.099999904632568359375);
                float f66 = exp2((-0.18033687770366668701171875) * f46);
                vec3 f67 = f22.xyz + (((f65 - (f65 * f66)) * f34) / vec3(f46));
                vec4 f68 = vec4(f67.x, f67.y, f67.z, f22.w);
                float f69 = f34 * f66;
                if (f69 < 0.001000000047497451305389404296875)
                {
                    f31 = f68;
                    f29 = f69;
                    f28 = f35;
                    f27 = true;
                    break;
                }
                f32 = f68;
                f30 = f69;
            }
            else
            {
                f32 = f22;
                f30 = f34;
            }
            f26 = f45 ? true : f36;
            f23 = f35 + f16;
            vec3 f70 = f13 * vec3(f16, 0.125, f16);
            f24 = f21 + f70;
            f25 = f20 + f70;
            if (f24.y >= 1.0)
            {
                f31 = f32;
                f29 = f30;
                f28 = f23;
                f27 = f26;
                break;
            }
            f22 = f32;
            f21 = f24;
            f35 = f23;
            f34 = f30;
            f20 = f25;
            f33++;
            f36 = f26;
            continue;
        }
        else
        {
            f31 = f22;
            f29 = f34;
            f28 = f35;
            f27 = f36;
            break;
        }
    }
    if (!f27)
    {
        discard;
    }
    float f71 = exp2((CB0[13].z * 3.5714285373687744140625) * (f28 * f28));
    vec3 f72 = textureLod(PrefilteredEnvTexture, vec4(f2.x, f3, f2.z, 0.0).xyz, max(CB0[13].y, f71) * 5.0).xyz;
    bvec3 f73 = bvec3(CB0[13].w != 0.0);
    vec3 f74 = mix(vec3(f73.x ? CB0[14].xyz.x : f72.x, f73.y ? CB0[14].xyz.y : f72.y, f73.z ? CB0[14].xyz.z : f72.z), f31.xyz, vec3(f71));
    vec4 f75 = vec4(f74.x, f74.y, f74.z, f31.w);
    f75.w = 1.0 - f29;
    _entryPointOutput_color = f75;
}

//$$PrefilteredEnvTexture=s15
//$$NoiseTexTexture=s1
//$$CloudsDistanceFieldTexture=s0
