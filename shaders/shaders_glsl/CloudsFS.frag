#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <RayFrame.h>
#include <CloudsParams.h>
uniform vec4 CB0[53];
uniform vec4 CB4[1];
uniform vec4 CB5[5];
uniform sampler3D NoiseTexTexture;
uniform sampler3D CloudsDistanceFieldTexture;
uniform sampler2D AdvectionTexTexture;
uniform sampler3D DetailTex3DTexture;
uniform sampler2D BeerShadowMapTexture;

void main()
{
    vec2 f0 = CB4[0].zw * ((gl_FragCoord.xy * CB4[0].xy) - vec2(1.0));
    vec3 f1 = normalize(((CB0[4].xyz * f0.x) + (CB0[5].xyz * f0.y)) - CB0[6].xyz);
    float f2 = f1.y;
    if (f2 < 0.0)
    {
        discard;
    }
    vec3 f3 = f1;
    f3.y = f2 * 0.5;
    vec3 f4 = normalize(f3);
    vec3 f5 = CB0[7].xyz * 0.00028000000747852027416229248046875;
    vec3 f6 = f5;
    f6.y = f5.y + 971.0;
    float f7 = dot(f4, f6);
    float f8 = 2.0 * f7;
    vec2 f9 = (vec2(f7 * (-2.0)) + sqrt(vec2(f8 * f8) - ((vec2(dot(f6, f6)) - vec2(946729.0, 951600.25)) * 4.0))) * 0.5;
    float f10 = f9.x;
    float f11 = f9.y - f10;
    float f12 = max(0.0, dot(CB0[11].xyz, -f4));
    float f13 = f12 + 0.819406807422637939453125;
    float f14 = dot(exp2(vec4(((-93.775177001953125) * f12) + (-79.34822845458984375), ((-83.703338623046875) * f13) * f13, 7.810082912445068359375 * f12, (-4.5521251698654729977988608879969e-12) * f12)), vec4(9.8052332759834825992584228515625e-06, 0.13881979882717132568359375, 0.00205474696122109889984130859375, 0.0260056294500827789306640625));
    vec3 f15 = f5 + (f4 * f10);
    f15.y = 0.0;
    int f16 = int(CB5[2].z);
    float f17 = float(f16);
    float f18 = (1.0 / f17) * f11;
    vec3 f19 = f15 * 2.5;
    float f20 = (1.0 / max(f4.y, 9.9999997473787516355514526367188e-05)) / f17;
    vec3 f21 = f15 + ((f4 * f11) * (0.1500000059604644775390625 + (0.009499999694526195526123046875 * (texture3DLod(NoiseTexTexture, vec4(fract(f19), 0.0).xyz, 0.0).x + (0.25 * texture3DLod(NoiseTexTexture, vec4(fract((f19 * mat3(vec3(0.0, 0.800000011920928955078125, 0.60000002384185791015625), vec3(-0.800000011920928955078125, 0.36000001430511474609375, -0.4799999892711639404296875), vec3(-0.60000002384185791015625, -0.4799999892711639404296875, 0.63999998569488525390625))) * 2.019999980926513671875), 0.0).xyz, 0.0).x)))));
    f21.y = 0.0;
    vec3 f22;
    vec4 f23;
    f23 = vec4(0.0);
    f22 = f21 + ((CB5[0].xyz * CB5[0].w) * 50.0);
    float f24;
    vec3 f25;
    bool f26;
    bool f27;
    float f28;
    float f29;
    vec4 f30;
    vec4 f31;
    int f32 = 0;
    float f33 = f10;
    float f34 = 1.0;
    bool f35 = false;
    for (;;)
    {
        if (f32 < f16)
        {
            float f36 = float(int(CB5[2].z <= 9.0)) + (pow(f33, 3.0) * 2.6315789000364020466804504394531e-05);
            vec2 f37 = (texture2DLod(AdvectionTexTexture, vec4((f22.xz * 0.125) + vec2(0.0, CB5[0].w * (-17.5)), 0.0, f36).xy, f36).xy * 2.0) - vec2(1.0);
            vec3 f38 = vec3(f37.x, 0.0, f37.y);
            vec3 f39 = f22;
            f39.x = f22.x + (CB5[0].w * 39.0625);
            float f40 = clamp(1.0 + (0.001000000047497451305389404296875 * (6000.0 - CB0[7].y)), 0.0, 1.0);
            float f41 = CB5[2].y * f40;
            vec2 f42 = mix(vec2(0.1500000059604644775390625, 0.070000000298023223876953125), vec2(0.07500000298023223876953125, 0.0500000007450580596923828125), vec2(f41));
            vec2 f43 = vec2(CB5[4].x, 0.3499999940395355224609375 * CB5[4].x) * ((vec2(texture3DLod(DetailTex3DTexture, vec4((f39 * (0.5 * CB5[4].y)) + (f38 * f42.x), f36).xyz, f36).x, texture3DLod(DetailTex3DTexture, vec4((f39 * (2.0 * CB5[4].y)) + (f38 * f42.y), f36).xyz, f36).x) * 2.0) - vec2(1.0));
            float f44 = texture3DLod(CloudsDistanceFieldTexture, vec4(((f22 + (f38 * 0.75)) * vec3(0.03125, 1.0, 0.03125)).xzy, f36).xyz, f36).x + (f43.x + f43.y);
            bool f45 = f44 < CB5[2].x;
            if (f45)
            {
                float f46 = (f41 * 50.0) * (CB5[2].x - f44);
                vec3 f47 = -CB0[11].xyz;
                vec4 f48 = texture2DLod(BeerShadowMapTexture, vec4((f22 - (f47 * (f22.y * (1.0 / max(f47.y, 9.9999997473787516355514526367188e-05))))).xz * vec2(0.03125), 0.0, 0.0).xy, 0.0);
                float f49 = f48.x;
                float f50 = mix(0.07999999821186065673828125, 1.0, smoothstep(0.959999978542327880859375, 0.0, f12));
                vec3 f51 = f4 * f4;
                bvec3 f52 = lessThan(f4, vec3(0.0));
                vec3 f53 = vec3(f52.x ? f51.x : vec3(0.0).x, f52.y ? f51.y : vec3(0.0).y, f52.z ? f51.z : vec3(0.0).z);
                vec3 f54 = f51 - f53;
                float f55 = f54.x;
                float f56 = f54.y;
                float f57 = f54.z;
                float f58 = f53.x;
                float f59 = f53.y;
                float f60 = f53.z;
                vec3 f61 = (max(mix(vec3(0.1500000059604644775390625 + (0.300000011920928955078125 * f22.y)), mix(CB0[26].xyz, CB0[25].xyz, vec3(f22.y)), vec3(clamp(exp2(CB0[11].y), 0.0, 1.0))) * (((((((CB0[35].xyz * f55) + (CB0[37].xyz * f56)) + (CB0[39].xyz * f57)) + (CB0[36].xyz * f58)) + (CB0[38].xyz * f59)) + (CB0[40].xyz * f60)) + (((((((CB0[29].xyz * f55) + (CB0[31].xyz * f56)) + (CB0[33].xyz * f57)) + (CB0[30].xyz * f58)) + (CB0[32].xyz * f59)) + (CB0[34].xyz * f60)) * 1.0)), CB0[28].xyz + CB0[27].xyz) + ((CB0[10].xyz * clamp((((exp2(-f49) + ((0.1500000059604644775390625 * f50) * exp2((-0.100000001490116119384765625) * f49))) + ((f50 * 2.0) * exp2((-0.0199999995529651641845703125) * f49))) * f14) * mix(0.100000001490116119384765625 + pow(clamp(f46, 9.9999997473787516355514526367188e-06, 1.0), 0.300000011920928955078125 + (5.5 * f22.y)), 1.0, f49), 0.0, 1.0)) * 2.099999904632568359375)) * CB5[3].xyz;
                float f62 = exp2(((-1.44269502162933349609375) / f17) * f46);
                vec3 f63 = f23.xyz + (((f61 - (f61 * f62)) * f34) * ((f62 + ((f46 * 0.07999999821186065673828125) / f17)) * (1.75 - ((f41 * CB5[2].y) * f40))));
                vec4 f64 = vec4(f63.x, f63.y, f63.z, f23.w);
                float f65 = f34 * f62;
                if (f65 <= 9.9999997473787516355514526367188e-06)
                {
                    f30 = f64;
                    f28 = 0.0;
                    f27 = true;
                    break;
                }
                f31 = f64;
                f29 = f65;
            }
            else
            {
                f31 = f23;
                f29 = f34;
            }
            f26 = f45 ? true : f35;
            f24 = f33 + f18;
            f25 = f22 + (f4 * f20);
            f23 = f31;
            f22 = f25;
            f34 = f29;
            f33 = f24;
            f32++;
            f35 = f26;
            continue;
        }
        else
        {
            f30 = f23;
            f28 = f34;
            f27 = f35;
            break;
        }
    }
    if (!f27)
    {
        discard;
    }
    float f66 = pow(max(exp2((CB0[13].z * 3.5714285373687744140625) * (f10 * f10)), 9.9999997473787516355514526367188e-05), 0.125);
    vec3 f67 = mix(CB0[14].xyz, (f30.xyz * (1.6480000019073486328125 - ((0.00200000009499490261077880859375 * f17) * f17))).xyz, vec3(f66));
    float f68 = 1.0 - f28;
    vec4 f69 = vec4(f67.x, f67.y, f67.z, f30.w);
    f69.w = f68;
    vec4 f70 = f69;
    f70.w = f68 * max(f66, CB0[13].y);
    gl_FragData[0] = f70;
}

//$$NoiseTexTexture=s1
//$$CloudsDistanceFieldTexture=s0
//$$AdvectionTexTexture=s6
//$$DetailTex3DTexture=s5
//$$BeerShadowMapTexture=s3
