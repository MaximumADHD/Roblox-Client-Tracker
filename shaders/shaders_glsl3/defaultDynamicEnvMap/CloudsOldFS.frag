#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <RayFrame.h>
#include <CloudsParams.h>
uniform vec4 CB0[53];
uniform vec4 CB4[1];
uniform vec4 CB5[5];
uniform samplerCube PrefilteredEnvTexture;
uniform sampler3D CloudsDistanceFieldTexture;
uniform sampler2D AdvectionTexTexture;
uniform sampler3D DetailTex3DTexture;
uniform sampler2D BeerShadowMapTexture;
uniform sampler2D BlueNoiseTexTexture;

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
    vec3 f3 = CB0[7].xyz * 0.00028000000747852027416229248046875;
    vec3 f4 = f3;
    f4.y = f3.y + 971.0;
    float f5 = dot(f1, f4);
    float f6 = 2.0 * f5;
    vec2 f7 = (vec2(f5 * (-2.0)) + sqrt(vec2(f6 * f6) - ((vec2(dot(f4, f4)) - vec2(946729.0, 951600.25)) * 4.0))) * 0.5;
    float f8 = f7.x;
    float f9 = f7.y - f8;
    float f10 = max(0.0, dot(CB0[11].xyz, -f1));
    float f11 = f10 + 0.819406807422637939453125;
    float f12 = dot(exp2(vec4(((-93.775177001953125) * f10) + (-79.34822845458984375), ((-83.703338623046875) * f11) * f11, 7.810082912445068359375 * f10, (-4.5521251698654729977988608879969e-12) * f10)), vec4(9.8052332759834825992584228515625e-06, 0.13881979882717132568359375, 0.00205474696122109889984130859375, 0.0260056294500827789306640625));
    vec3 f13 = f3 + (f1 * f8);
    f13.y = 0.0;
    int f14 = int(CB5[2].z);
    float f15 = float(f14);
    float f16 = (1.0 / f15) * f9;
    float f17 = (1.0 / max(f2, 9.9999997473787516355514526367188e-05)) / f15;
    vec3 f18 = f13 + ((f1 * f9) * (0.1500000059604644775390625 + (0.949999988079071044921875 * textureLod(BlueNoiseTexTexture, vec4(gl_FragCoord.xy, 0.0, 0.0).xy, 0.0).x)));
    f18.y = 0.0;
    bool f19;
    float f20;
    vec4 f21;
    vec3 f22;
    f22 = f18 + ((CB5[0].xyz * CB5[0].w) * 50.0);
    f21 = vec4(0.0);
    f20 = 1.0;
    f19 = false;
    float f23;
    vec3 f24;
    bool f25;
    float f26;
    vec4 f27;
    int f28 = 0;
    float f29 = f8;
    for (; f28 < f14; f22 = f24, f21 = f27, f29 = f23, f20 = f26, f19 = f25, f28++)
    {
        float f30 = float(int(CB5[2].z <= 9.0)) + (pow(f29, 3.0) * 2.6315789000364020466804504394531e-05);
        vec2 f31 = (textureLod(AdvectionTexTexture, vec4((f22.xz * 0.125) + vec2(0.0, CB5[0].w * (-17.5)), 0.0, f30).xy, f30).xy * 2.0) - vec2(1.0);
        vec3 f32 = vec3(f31.x, 0.0, f31.y);
        vec3 f33 = f22;
        f33.x = f22.x + (CB5[0].w * 39.0625);
        float f34 = clamp(1.0 + (0.001000000047497451305389404296875 * (6000.0 - CB0[7].y)), 0.0, 1.0);
        float f35 = CB5[2].y * f34;
        vec2 f36 = mix(vec2(0.1500000059604644775390625, 0.070000000298023223876953125), vec2(0.07500000298023223876953125, 0.0500000007450580596923828125), vec2(f35));
        vec2 f37 = vec2(CB5[4].x, 0.3499999940395355224609375 * CB5[4].x) * ((vec2(textureLod(DetailTex3DTexture, vec4((f33 * (0.5 * CB5[4].y)) + (f32 * f36.x), f30).xyz, f30).x, textureLod(DetailTex3DTexture, vec4((f33 * (2.0 * CB5[4].y)) + (f32 * f36.y), f30).xyz, f30).x) * 2.0) - vec2(1.0));
        float f38 = textureLod(CloudsDistanceFieldTexture, vec4(((f22 + (f32 * 0.75)) * vec3(0.03125, 1.0, 0.03125)).xzy, f30).xyz, f30).x + (f37.x + f37.y);
        float f39 = (f35 * 50.0) * (CB5[2].x - f38);
        bool f40 = f38 < CB5[2].x;
        if (f40)
        {
            vec3 f41 = -CB0[11].xyz;
            vec4 f42 = textureLod(BeerShadowMapTexture, vec4((f22 - (f41 * (f22.y * (1.0 / max(f41.y, 9.9999997473787516355514526367188e-05))))).xz * vec2(0.03125), 0.0, 0.0).xy, 0.0);
            float f43 = f42.x;
            float f44 = mix(0.07999999821186065673828125, 1.0, smoothstep(0.959999978542327880859375, 0.0, f10));
            vec3 f45 = f1 * f1;
            bvec3 f46 = lessThan(f1, vec3(0.0));
            vec3 f47 = vec3(f46.x ? f45.x : vec3(0.0).x, f46.y ? f45.y : vec3(0.0).y, f46.z ? f45.z : vec3(0.0).z);
            vec3 f48 = f45 - f47;
            float f49 = f48.x;
            float f50 = f48.y;
            float f51 = f48.z;
            float f52 = f47.x;
            float f53 = f47.y;
            float f54 = f47.z;
            vec3 f55 = (max(mix(vec3(0.1500000059604644775390625 + (0.300000011920928955078125 * f22.y)), mix(CB0[26].xyz, CB0[25].xyz, vec3(f22.y)), vec3(clamp(exp2(CB0[11].y), 0.0, 1.0))) * (((((((CB0[35].xyz * f49) + (CB0[37].xyz * f50)) + (CB0[39].xyz * f51)) + (CB0[36].xyz * f52)) + (CB0[38].xyz * f53)) + (CB0[40].xyz * f54)) + (((((((CB0[29].xyz * f49) + (CB0[31].xyz * f50)) + (CB0[33].xyz * f51)) + (CB0[30].xyz * f52)) + (CB0[32].xyz * f53)) + (CB0[34].xyz * f54)) * 1.0)), CB0[28].xyz + CB0[27].xyz) + ((CB0[10].xyz * clamp((((exp2(-f43) + ((0.1500000059604644775390625 * f44) * exp2((-0.100000001490116119384765625) * f43))) + ((f44 * 2.0) * exp2((-0.0199999995529651641845703125) * f43))) * f12) * mix(0.100000001490116119384765625 + pow(clamp(f39, 9.9999997473787516355514526367188e-06, 1.0), 0.300000011920928955078125 + (5.5 * f22.y)), 1.0, f43), 0.0, 1.0)) * 2.099999904632568359375)) * CB5[3].xyz;
            float f56 = exp2(((-1.44269502162933349609375) / f15) * f39);
            vec3 f57 = f21.xyz + (((f55 - (f55 * f56)) * f20) * ((f56 + ((f39 * 0.07999999821186065673828125) / f15)) * (1.75 - ((f35 * CB5[2].y) * f34))));
            f27 = vec4(f57.x, f57.y, f57.z, f21.w);
            f26 = f20 * f56;
        }
        else
        {
            f27 = f21;
            f26 = f20;
        }
        f25 = f40 ? true : f19;
        f23 = f29 + f16;
        f24 = f22 + (f1 * f17);
    }
    if (!f19)
    {
        discard;
    }
    float f58 = pow(max(exp2((CB0[13].z * 3.5714285373687744140625) * (f8 * f8)), 9.9999997473787516355514526367188e-05), 0.125);
    vec3 f59 = textureLod(PrefilteredEnvTexture, vec4(f1.x, f2, f1.z, 0.0).xyz, max(CB0[13].y, f58) * 5.0).xyz;
    bvec3 f60 = bvec3(!(CB0[13].w == 0.0));
    vec3 f61 = mix(vec3(f60.x ? CB0[14].xyz.x : f59.x, f60.y ? CB0[14].xyz.y : f59.y, f60.z ? CB0[14].xyz.z : f59.z), (f21.xyz * (1.6480000019073486328125 - ((0.00200000009499490261077880859375 * f15) * f15))).xyz, vec3(f58));
    float f62 = 1.0 - f20;
    vec4 f63 = vec4(f61.x, f61.y, f61.z, f21.w);
    f63.w = f62;
    vec4 f64 = f63;
    f64.w = f62 * max(f58, CB0[13].y);
    _entryPointOutput_color = f64;
}

//$$PrefilteredEnvTexture=s15
//$$CloudsDistanceFieldTexture=s0
//$$AdvectionTexTexture=s6
//$$DetailTex3DTexture=s5
//$$BeerShadowMapTexture=s3
//$$BlueNoiseTexTexture=s7
