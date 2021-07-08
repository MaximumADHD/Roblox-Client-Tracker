#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <RayFrame.h>
#include <CloudsParams.h>
uniform vec4 CB0[53];
uniform vec4 CB4[1];
uniform vec4 CB5[5];
uniform samplerCube PrefilteredEnvTexture;
uniform sampler3D NoiseTexTexture;
uniform sampler3D CloudsDistanceFieldTexture;
uniform sampler2D AdvectionTexTexture;
uniform sampler3D DetailTex3DTexture;
uniform sampler2D BeerShadowMapTexture;

out vec4 _entryPointOutput_color;

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
    vec3 f14 = f5 + (f4 * f10);
    f14.y = 0.0;
    int f15 = int(CB5[2].z);
    float f16 = float(f15);
    vec3 f17 = f14 * 2.5;
    vec3 f18 = f14 + ((f4 * f11) * (0.1500000059604644775390625 + (0.009499999694526195526123046875 * (textureLod(NoiseTexTexture, vec4(fract(f17), 0.0).xyz, 0.0).x + (0.25 * textureLod(NoiseTexTexture, vec4(fract((f17 * mat3(vec3(0.0, 0.800000011920928955078125, 0.60000002384185791015625), vec3(-0.800000011920928955078125, 0.36000001430511474609375, -0.4799999892711639404296875), vec3(-0.60000002384185791015625, -0.4799999892711639404296875, 0.63999998569488525390625))) * 2.019999980926513671875), 0.0).xyz, 0.0).x)))));
    f18.y = 0.0;
    vec3 f19;
    vec4 f20;
    f20 = vec4(0.0);
    f19 = f18 + ((CB5[0].xyz * CB5[0].w) * 50.0);
    float f21;
    vec3 f22;
    bool f23;
    bool f24;
    float f25;
    float f26;
    vec4 f27;
    vec4 f28;
    int f29 = 0;
    float f30 = f10;
    float f31 = 1.0;
    bool f32 = false;
    for (;;)
    {
        if (f29 < f15)
        {
            float f33 = float(int(CB5[2].z <= 9.0)) + (pow(f30, 3.0) * 2.6315789000364020466804504394531e-05);
            vec2 f34 = (textureLod(AdvectionTexTexture, vec4((f19.xz * 0.125) + vec2(0.0, CB5[0].w * (-17.5)), 0.0, f33).xy, f33).xy * 2.0) - vec2(1.0);
            vec3 f35 = vec3(f34.x, 0.0, f34.y);
            vec3 f36 = f19;
            f36.x = f19.x + (CB5[0].w * 39.0625);
            float f37 = clamp(1.0 + (0.001000000047497451305389404296875 * (6000.0 - CB0[7].y)), 0.0, 1.0);
            float f38 = CB5[2].y * f37;
            vec2 f39 = mix(vec2(0.1500000059604644775390625, 0.070000000298023223876953125), vec2(0.07500000298023223876953125, 0.0500000007450580596923828125), vec2(f38));
            vec2 f40 = vec2(CB5[4].x, 0.3499999940395355224609375 * CB5[4].x) * ((vec2(textureLod(DetailTex3DTexture, vec4((f36 * (0.5 * CB5[4].y)) + (f35 * f39.x), f33).xyz, f33).x, textureLod(DetailTex3DTexture, vec4((f36 * (2.0 * CB5[4].y)) + (f35 * f39.y), f33).xyz, f33).x) * 2.0) - vec2(1.0));
            float f41 = textureLod(CloudsDistanceFieldTexture, vec4(((f19 + (f35 * 0.75)) * vec3(0.03125, 1.0, 0.03125)).xzy, f33).xyz, f33).x + (f40.x + f40.y);
            bool f42 = f41 < CB5[2].x;
            if (f42)
            {
                float f43 = (f38 * 50.0) * (CB5[2].x - f41);
                vec3 f44 = -CB0[11].xyz;
                vec4 f45 = textureLod(BeerShadowMapTexture, vec4((f19 - (f44 * (f19.y * (1.0 / max(f44.y, 9.9999997473787516355514526367188e-05))))).xz * vec2(0.03125), 0.0, 0.0).xy, 0.0);
                float f46 = f45.x;
                float f47 = mix(0.07999999821186065673828125, 1.0, smoothstep(0.959999978542327880859375, 0.0, f12));
                vec3 f48 = f4 * f4;
                bvec3 f49 = lessThan(f4, vec3(0.0));
                vec3 f50 = vec3(f49.x ? f48.x : vec3(0.0).x, f49.y ? f48.y : vec3(0.0).y, f49.z ? f48.z : vec3(0.0).z);
                vec3 f51 = f48 - f50;
                float f52 = f51.x;
                float f53 = f51.y;
                float f54 = f51.z;
                float f55 = f50.x;
                float f56 = f50.y;
                float f57 = f50.z;
                vec3 f58 = (max(mix(vec3(0.1500000059604644775390625 + (0.300000011920928955078125 * f19.y)), mix(CB0[26].xyz, CB0[25].xyz, vec3(f19.y)), vec3(clamp(exp2(CB0[11].y), 0.0, 1.0))) * (((((((CB0[35].xyz * f52) + (CB0[37].xyz * f53)) + (CB0[39].xyz * f54)) + (CB0[36].xyz * f55)) + (CB0[38].xyz * f56)) + (CB0[40].xyz * f57)) + (((((((CB0[29].xyz * f52) + (CB0[31].xyz * f53)) + (CB0[33].xyz * f54)) + (CB0[30].xyz * f55)) + (CB0[32].xyz * f56)) + (CB0[34].xyz * f57)) * 1.0)), CB0[28].xyz + CB0[27].xyz) + ((CB0[10].xyz * clamp((((exp2(-f46) + ((0.1500000059604644775390625 * f47) * exp2((-0.100000001490116119384765625) * f46))) + ((f47 * 2.0) * exp2((-0.0199999995529651641845703125) * f46))) * dot(exp2(vec4(((-93.775177001953125) * f12) + (-79.34822845458984375), ((-83.703338623046875) * f13) * f13, 7.810082912445068359375 * f12, (-4.5521251698654729977988608879969e-12) * f12)), vec4(9.8052332759834825992584228515625e-06, 0.13881979882717132568359375, 0.00205474696122109889984130859375, 0.0260056294500827789306640625))) * mix(0.100000001490116119384765625 + pow(clamp(f43, 9.9999997473787516355514526367188e-06, 1.0), 0.300000011920928955078125 + (5.5 * f19.y)), 1.0, f46), 0.0, 1.0)) * 2.099999904632568359375)) * CB5[3].xyz;
                float f59 = exp2(((-1.44269502162933349609375) / f16) * f43);
                vec3 f60 = f20.xyz + (((f58 - (f58 * f59)) * f31) * ((f59 + ((f43 * 0.07999999821186065673828125) / f16)) * (1.75 - ((f38 * CB5[2].y) * f37))));
                vec4 f61 = vec4(f60.x, f60.y, f60.z, f20.w);
                float f62 = f31 * f59;
                if (f62 <= 9.9999997473787516355514526367188e-06)
                {
                    f27 = f61;
                    f25 = 0.0;
                    f24 = true;
                    break;
                }
                f28 = f61;
                f26 = f62;
            }
            else
            {
                f28 = f20;
                f26 = f31;
            }
            f23 = f42 ? true : f32;
            f21 = f30 + ((1.0 / f16) * f11);
            f22 = f19 + (f4 * ((1.0 / max(f4.y, 9.9999997473787516355514526367188e-05)) / f16));
            f20 = f28;
            f19 = f22;
            f31 = f26;
            f30 = f21;
            f29++;
            f32 = f23;
            continue;
        }
        else
        {
            f27 = f20;
            f25 = f31;
            f24 = f32;
            break;
        }
    }
    if (!f24)
    {
        discard;
    }
    float f63 = pow(max(exp2((CB0[13].z * 3.5714285373687744140625) * (f10 * f10)), 9.9999997473787516355514526367188e-05), 0.125);
    vec3 f64 = textureLod(PrefilteredEnvTexture, vec4(f4, 0.0).xyz, max(CB0[13].y, f63) * 5.0).xyz;
    bvec3 f65 = bvec3(CB0[13].w != 0.0);
    vec3 f66 = mix(vec3(f65.x ? CB0[14].xyz.x : f64.x, f65.y ? CB0[14].xyz.y : f64.y, f65.z ? CB0[14].xyz.z : f64.z), (f27.xyz * (1.6480000019073486328125 - ((0.00200000009499490261077880859375 * f16) * f16))).xyz, vec3(f63));
    float f67 = 1.0 - f25;
    vec4 f68 = vec4(f66.x, f66.y, f66.z, f27.w);
    f68.w = f67;
    vec4 f69 = f68;
    f69.w = f67 * max(f63, CB0[13].y);
    _entryPointOutput_color = f69;
}

//$$PrefilteredEnvTexture=s15
//$$NoiseTexTexture=s1
//$$CloudsDistanceFieldTexture=s0
//$$AdvectionTexTexture=s6
//$$DetailTex3DTexture=s5
//$$BeerShadowMapTexture=s3
