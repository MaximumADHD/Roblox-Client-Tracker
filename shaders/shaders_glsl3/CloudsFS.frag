#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <RayFrame.h>
const float f0[48] = float[](15.71790981292724609375, 12.89408969879150390625, 7.7199840545654296875, 5.107762813568115234375, 3.9570920467376708984375, 3.1285419464111328125, 2.467976093292236328125, 1.94060599803924560546875, 1.519268035888671875, 1.1720600128173828125, 0.9068109989166259765625, 0.696639001369476318359375, 0.53097999095916748046875, 0.4037419855594635009765625, 0.3046739995479583740234375, 0.230042994022369384765625, 0.1724649965763092041015625, 0.12898500263690948486328125, 0.096061997115612030029296875, 0.07203499972820281982421875, 0.0546710006892681121826171875, 0.0418930016458034515380859375, 0.0329019986093044281005859375, 0.0265490002930164337158203125, 0.022500999271869659423828125, 0.02016899921000003814697265625, 0.01880300045013427734375, 0.01828599907457828521728515625, 0.01808599941432476043701171875, 0.02294900082051753997802734375, 0.02805699966847896575927734375, 0.0330980010330677032470703125, 0.033073000609874725341796875, 0.03599999845027923583984375, 0.051086999475955963134765625, 0.108067996799945831298828125, 0.17280800640583038330078125, 0.2078000009059906005859375, 0.13236899673938751220703125, 0.111766003072261810302734375, 0.110400997102260589599609375, 0.10523100197315216064453125, 0.104189001023769378662109375, 0.108497999608516693115234375, 0.12747399508953094482421875, 0.2075670063495635986328125, 0.3197790086269378662109375, 0.4679400026798248291015625);

#include <CloudsParams.h>
uniform vec4 CB0[53];
uniform vec4 CB4[2];
uniform vec4 CB5[5];
uniform samplerCube PrefilteredEnvTexture;
uniform sampler3D CloudsDistanceFieldTexture;
uniform sampler2D AdvectionTexTexture;
uniform sampler3D DetailTex3DTexture;
uniform sampler2D BlueNoiseTexTexture;
uniform sampler2D BeerShadowMapTexture;

out vec4 _entryPointOutput_color;

void main()
{
    vec2 f1 = (CB4[0].zw * ((gl_FragCoord.xy * CB4[0].xy) - vec2(1.0))) + CB4[1].xy;
    vec3 f2 = normalize(((CB0[4].xyz * f1.x) + (CB0[5].xyz * f1.y)) - CB0[6].xyz);
    float f3 = f2.y;
    if (f3 < 0.0)
    {
        discard;
    }
    vec3 f4 = CB0[7].xyz * 0.00028000000747852027416229248046875;
    vec3 f5 = f4;
    f5.y = f4.y + 971.0;
    float f6 = dot(f2, f5);
    float f7 = 2.0 * f6;
    vec2 f8 = (vec2(f6 * (-2.0)) + sqrt(vec2(f7 * f7) - ((vec2(dot(f5, f5)) - vec2(946729.0, 951600.25)) * 4.0))) * 0.5;
    float f9 = f8.x;
    float f10 = f8.y - f9;
    float f11 = dot(CB0[11].xyz, f2);
    float f12 = (0.5 + (0.5 * f11)) * 46.5;
    int f13 = int(f12);
    float f14 = mix(f0[f13], f0[f13 + 1], fract(f12));
    float f15 = f14 * 0.125;
    vec3 f16 = f4 + (f2 * f9);
    f16.y = 0.0;
    int f17 = int(CB5[2].z);
    float f18 = float(f17);
    float f19 = (1.0 / f18) * f10;
    float f20 = (1.0 / max(f3, 9.9999997473787516355514526367188e-05)) / f18;
    vec3 f21 = f16 + ((f2 * f10) * (0.1500000059604644775390625 + (0.949999988079071044921875 * textureLod(BlueNoiseTexTexture, vec4(gl_FragCoord.xy, 0.0, 0.0).xy, 0.0).x)));
    f21.y = 0.0;
    bool f22;
    vec3 f23;
    vec4 f24;
    f24 = vec4(0.0);
    f23 = f21 + ((CB5[0].xyz * CB5[0].w) * 50.0);
    f22 = false;
    float f25;
    vec3 f26;
    bool f27;
    float f28;
    float f29;
    float f30;
    float f31;
    vec4 f32;
    vec4 f33;
    int f34 = 0;
    float f35 = f9;
    float f36 = 0.0;
    float f37 = 1.0;
    for (;;)
    {
        if (f34 < f17)
        {
            float f38 = float(int(CB5[2].z <= 9.0)) + (pow(f35, 3.0) * 2.6315789000364020466804504394531e-05);
            vec2 f39 = (textureLod(AdvectionTexTexture, vec4((f23.xz * 0.125) + vec2(0.0, CB5[0].w * (-17.5)), 0.0, f38).xy, f38).xy * 2.0) - vec2(1.0);
            vec3 f40 = vec3(f39.x, 0.0, f39.y);
            vec3 f41 = f23;
            f41.x = f23.x + (CB5[0].w * 39.0625);
            float f42 = CB5[2].y * clamp(1.0 + (0.001000000047497451305389404296875 * (6000.0 - CB0[7].y)), 0.0, 1.0);
            vec2 f43 = mix(vec2(0.1500000059604644775390625, 0.070000000298023223876953125), vec2(0.07500000298023223876953125, 0.0500000007450580596923828125), vec2(f42));
            vec2 f44 = vec2(CB5[4].x, 0.3499999940395355224609375 * CB5[4].x) * ((vec2(textureLod(DetailTex3DTexture, vec4((f41 * (0.5 * CB5[4].y)) + (f40 * f43.x), f38).xyz, f38).x, textureLod(DetailTex3DTexture, vec4((f41 * (2.0 * CB5[4].y)) + (f40 * f43.y), f38).xyz, f38).x) * 2.0) - vec2(1.0));
            float f45 = textureLod(CloudsDistanceFieldTexture, vec4(((f23 + (f40 * 0.75)) * vec3(0.03125, 1.0, 0.03125)).xzy, f38).xyz, f38).x + (f44.x + f44.y);
            float f46 = (f42 * 50.0) * (CB5[2].x - f45);
            bool f47 = f45 < CB5[2].x;
            if (f47)
            {
                vec4 f48 = textureLod(BeerShadowMapTexture, vec4(f23.xz * vec2(0.03125), 0.0, 0.0).xy, 0.0);
                float f49 = min(f48.z * 0.5, (f48.y + (0.3499999940395355224609375 * textureLod(BlueNoiseTexTexture, vec4(gl_FragCoord.xy, 0.0, 0.0).xy, 0.0).x)) * max(0.0, (1.0 - ((float(f34) / f18) + (f45 / f18))) - f48.x));
                float f50 = f36 + f46;
                vec3 f51 = f2 * f2;
                bvec3 f52 = lessThan(f2, vec3(0.0));
                vec3 f53 = vec3(f52.x ? f51.x : vec3(0.0).x, f52.y ? f51.y : vec3(0.0).y, f52.z ? f51.z : vec3(0.0).z);
                vec3 f54 = f51 - f53;
                float f55 = f54.x;
                float f56 = f54.y;
                float f57 = f54.z;
                float f58 = f53.x;
                float f59 = f53.y;
                float f60 = f53.z;
                float f61 = (1.44269502162933349609375 / f18) * f46;
                vec3 f62 = ((max(mix(vec3(0.1500000059604644775390625 + (0.300000011920928955078125 * f23.y)), mix(CB0[26].xyz, CB0[25].xyz, vec3(f23.y)), vec3(clamp(exp2(CB0[11].y), 0.0, 1.0))) * (((((((CB0[35].xyz * f55) + (CB0[37].xyz * f56)) + (CB0[39].xyz * f57)) + (CB0[36].xyz * f58)) + (CB0[38].xyz * f59)) + (CB0[40].xyz * f60)) + (((((((CB0[29].xyz * f55) + (CB0[31].xyz * f56)) + (CB0[33].xyz * f57)) + (CB0[30].xyz * f58)) + (CB0[32].xyz * f59)) + (CB0[34].xyz * f60)) * 1.0)), CB0[28].xyz + CB0[27].xyz) + ((CB0[10].xyz * ((4.0 * (((((0.2899999916553497314453125 * exp2(f49 * (-23.701419830322265625))) + ((0.1689999997615814208984375 * mix(0.07999999821186065673828125, 1.0, smoothstep(0.0, 1.5, abs(f11)))) * exp2(f49 * (-659.51776123046875)))) + ((((1.0 - f42) * 320.0) * clamp(f11 * f15, 0.0, 1.0)) * exp2(f49 * (-10.0)))) * (f14 * 0.0292499996721744537353515625)) + (0.092000000178813934326171875 * exp2(f48.w * (-2.3250000476837158203125))))) + (0.0425000004470348358154296875 + (((f46 / f18) * 0.13500000536441802978515625) * f23.y)))) * 2.099999904632568359375)) * CB5[3].xyz) * f61;
                float f63 = exp2(-f61);
                vec3 f64 = f24.xyz + (((f62 - (f62 * f63)) * f37) / vec3((f61 < 9.9999997473787516355514526367188e-05) ? 9.9999997473787516355514526367188e-05 : f61));
                vec4 f65 = f24;
                f65.x = f64.x;
                vec4 f66 = f65;
                f66.y = f64.y;
                vec4 f67 = f66;
                f67.z = f64.z;
                float f68 = f37 * f63;
                if (f68 <= 9.9999997473787516355514526367188e-06)
                {
                    f32 = f67;
                    f29 = 0.0;
                    f28 = f50;
                    break;
                }
                f33 = f67;
                f31 = f68;
                f30 = f50;
            }
            else
            {
                f33 = f24;
                f31 = f37;
                f30 = f36;
            }
            f27 = f47 ? true : f22;
            f25 = f35 + f19;
            f26 = f23 + (f2 * f20);
            f24 = f33;
            f23 = f26;
            f37 = f31;
            f36 = f30;
            f35 = f25;
            f34++;
            f22 = f27;
            continue;
        }
        else
        {
            f32 = f24;
            f29 = f37;
            f28 = f36;
            break;
        }
    }
    float f69 = 1.0 - f29;
    vec3 f70 = f32.xyz + (((((((CB0[10].xyz * clamp(1.0 - ((0.07999999821186065673828125 * f28) / f18), 0.0, 1.0)) * 2.0) * clamp(-f11, 0.0, 1.0)) * f15) * f69) * exp2(0.10999999940395355224609375 - (0.0350000001490116119384765625 * f28))) * CB5[3].xyz);
    vec4 f71 = f32;
    f71.x = f70.x;
    vec4 f72 = f71;
    f72.y = f70.y;
    vec4 f73 = f72;
    f73.z = f70.z;
    if (!f22)
    {
        discard;
    }
    float f74 = pow(max(exp2((CB0[13].z * 3.5714285373687744140625) * (f9 * f9)), 9.9999997473787516355514526367188e-05), 0.125);
    vec3 f75 = textureLod(PrefilteredEnvTexture, vec4(f2.x, f3, f2.z, 0.0).xyz, max(CB0[13].y, f74) * 5.0).xyz;
    bvec3 f76 = bvec3(!(CB0[13].w == 0.0));
    vec3 f77 = mix(vec3(f76.x ? CB0[14].xyz.x : f75.x, f76.y ? CB0[14].xyz.y : f75.y, f76.z ? CB0[14].xyz.z : f75.z), f73.xyz, vec3(f74));
    vec4 f78 = f73;
    f78.x = f77.x;
    vec4 f79 = f78;
    f79.y = f77.y;
    vec4 f80 = f79;
    f80.z = f77.z;
    vec4 f81 = f80;
    f81.w = f69;
    vec4 f82 = f81;
    f82.w = f69 * max(f74, CB0[13].y);
    _entryPointOutput_color = f82;
}

//$$PrefilteredEnvTexture=s15
//$$CloudsDistanceFieldTexture=s0
//$$AdvectionTexTexture=s6
//$$DetailTex3DTexture=s5
//$$BlueNoiseTexTexture=s7
//$$BeerShadowMapTexture=s3
