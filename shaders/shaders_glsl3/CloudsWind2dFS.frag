#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <RayFrame.h>
const float f0[48] = float[](15.71790981292724609375, 12.89408969879150390625, 7.7199840545654296875, 5.107762813568115234375, 3.9570920467376708984375, 3.1285419464111328125, 2.467976093292236328125, 1.94060599803924560546875, 1.519268035888671875, 1.1720600128173828125, 0.9068109989166259765625, 0.696639001369476318359375, 0.53097999095916748046875, 0.4037419855594635009765625, 0.3046739995479583740234375, 0.230042994022369384765625, 0.1724649965763092041015625, 0.12898500263690948486328125, 0.096061997115612030029296875, 0.07203499972820281982421875, 0.0546710006892681121826171875, 0.0418930016458034515380859375, 0.0329019986093044281005859375, 0.0265490002930164337158203125, 0.022500999271869659423828125, 0.02016899921000003814697265625, 0.01880300045013427734375, 0.01828599907457828521728515625, 0.01808599941432476043701171875, 0.02294900082051753997802734375, 0.02805699966847896575927734375, 0.0330980010330677032470703125, 0.033073000609874725341796875, 0.03599999845027923583984375, 0.051086999475955963134765625, 0.108067996799945831298828125, 0.17280800640583038330078125, 0.2078000009059906005859375, 0.13236899673938751220703125, 0.111766003072261810302734375, 0.110400997102260589599609375, 0.10523100197315216064453125, 0.104189001023769378662109375, 0.108497999608516693115234375, 0.12747399508953094482421875, 0.2075670063495635986328125, 0.3197790086269378662109375, 0.4679400026798248291015625);

#include <CloudsParams.h>
uniform vec4 CB0[58];
uniform vec4 CB4[2];
uniform vec4 CB5[5];
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D CloudsDistanceFieldTexture;
uniform sampler2D DetailTexTexture;

out vec4 _entryPointOutput_color;

void main()
{
    vec2 f1 = CB4[1].xy;
    f1.x = CB4[1].xy.x;
    vec2 f2 = (CB4[0].zw * ((gl_FragCoord.xy * CB4[0].xy) - vec2(1.0))) + f1;
    vec3 f3 = normalize(((CB0[8].xyz * f2.x) + (CB0[9].xyz * f2.y)) - CB0[10].xyz);
    if (f3.y < 0.0)
    {
        discard;
    }
    vec3 f4 = CB0[11].xyz * 0.00028000000747852027416229248046875;
    vec3 f5 = f4;
    f5.y = f4.y + 971.0;
    float f6 = dot(f3, f5);
    float f7 = 2.0 * f6;
    vec2 f8 = (vec2(f6 * (-2.0)) + sqrt(vec2(f7 * f7) - ((vec2(dot(f5, f5)) - vec2(948676.0, 953552.25)) * 4.0))) * 0.5;
    float f9 = f8.x;
    float f10 = dot(CB0[16].xyz, f3);
    float f11 = (0.5 + (0.5 * f10)) * 46.5;
    int f12 = int(f11);
    vec3 f13 = f4 + (f3 * f9);
    f13.y = 0.0;
    vec2 f14 = (f13 + CB5[0].xyz).xz;
    float f15 = f9 * 0.0588235296308994293212890625;
    vec4 f16 = textureLod(CloudsDistanceFieldTexture, vec4(f14 * vec2(0.03125), 0.0, f15).xy, f15);
    float f17 = f16.x;
    float f18 = 0.001000000047497451305389404296875 + CB5[4].y;
    float f19 = 0.550000011920928955078125 * CB5[2].x;
    float f20 = 0.180000007152557373046875 * CB5[4].x;
    float f21 = f17 + ((((15.0 * (f17 - f19)) * CB5[4].x) + f20) * textureLod(DetailTexTexture, vec4(f14 * f18, 0.0, f15).xy, f15).x);
    bool f22 = f21 < CB5[2].x;
    float f23;
    vec4 f24;
    if (f22)
    {
        float f25 = CB5[2].x - f21;
        vec2 f26 = f14 - (CB0[16].xyz.xz * 0.5);
        float f27 = f8.y * 0.0588235296308994293212890625;
        vec4 f28 = textureLod(CloudsDistanceFieldTexture, vec4(f26 * vec2(0.03125), 0.0, f27).xy, f27);
        float f29 = f28.x;
        float f30 = clamp(CB5[2].x - clamp(f29 + ((((15.0 * (f29 - f19)) * CB5[4].x) + f20) * textureLod(DetailTexTexture, vec4(f26 * f18, 0.0, f27).xy, f27).x), 0.0, 1.0), 0.0, 1.0);
        float f31 = 0.5 * f25;
        vec3 f32 = f3 * f3;
        bvec3 f33 = lessThan(f3, vec3(0.0));
        vec3 f34 = vec3(f33.x ? f32.x : vec3(0.0).x, f33.y ? f32.y : vec3(0.0).y, f33.z ? f32.z : vec3(0.0).z);
        vec3 f35 = f32 - f34;
        float f36 = f35.x;
        float f37 = f35.y;
        float f38 = f35.z;
        float f39 = f34.x;
        float f40 = f34.y;
        float f41 = f34.z;
        vec3 f42 = (max(mix(vec3(0.1500000059604644775390625 + (f25 * 0.1500000059604644775390625)), mix(CB0[31].xyz, CB0[30].xyz, vec3(f31)), vec3(clamp(exp2(CB0[16].y), 0.0, 1.0))) * (((((((CB0[40].xyz * f36) + (CB0[42].xyz * f37)) + (CB0[44].xyz * f38)) + (CB0[41].xyz * f39)) + (CB0[43].xyz * f40)) + (CB0[45].xyz * f41)) + (((((((CB0[34].xyz * f36) + (CB0[36].xyz * f37)) + (CB0[38].xyz * f38)) + (CB0[35].xyz * f39)) + (CB0[37].xyz * f40)) + (CB0[39].xyz * f41)) * 1.0)), CB0[33].xyz + CB0[32].xyz) + ((CB0[15].xyz * (((((0.2899999916553497314453125 * exp2(f30 * (-9.19999980926513671875))) + (f25 * 0.1689999997615814208984375)) * 0.93599998950958251953125) + ((f30 * 2.400000095367431640625) * f31)) * (0.100000001490116119384765625 + clamp(1.0 - (2.125 * f30), 0.0, 1.0)))) * 2.099999904632568359375)) * CB5[3].xyz;
        float f43 = pow(exp2((-1.44269502162933349609375) * (((50.0 * CB5[2].y) * clamp(1.0 + (0.001000000047497451305389404296875 * (6000.0 - CB0[11].y)), 0.0, 1.0)) * f25)), 0.3300000131130218505859375);
        vec4 f44 = vec4(0.0);
        f44.x = f42.x;
        vec4 f45 = f44;
        f45.y = f42.y;
        vec4 f46 = f45;
        f46.z = f42.z;
        vec3 f47 = f46.xyz + (((((((CB0[15].xyz * clamp(1.0 - (f30 * 1.2799999713897705078125), 0.0, 1.0)) * 2.0) * clamp(-f10, 0.0, 1.0)) * (mix(f0[f12], f0[f12 + 1], fract(f11)) * 0.125)) * (1.0 - f43)) * exp2(0.10999999940395355224609375 - (f30 * 2.2400000095367431640625))) * CB5[3].xyz);
        vec4 f48 = f46;
        f48.x = f47.x;
        vec4 f49 = f48;
        f49.y = f47.y;
        vec4 f50 = f49;
        f50.z = f47.z;
        f24 = f50;
        f23 = f43;
    }
    else
    {
        f24 = vec4(0.0);
        f23 = 1.0;
    }
    if (!(f22 ? true : false))
    {
        discard;
    }
    float f51 = pow(max(exp2((CB0[18].z * 3.5714285373687744140625) * (f9 * f9)), 9.9999997473787516355514526367188e-05), 0.125);
    vec3 f52 = textureLod(PrefilteredEnvTexture, vec4(f3, 0.0).xyz, max(CB0[18].y, f51) * 5.0).xyz;
    bvec3 f53 = bvec3(!(CB0[18].w == 0.0));
    vec3 f54 = mix(vec3(f53.x ? CB0[19].xyz.x : f52.x, f53.y ? CB0[19].xyz.y : f52.y, f53.z ? CB0[19].xyz.z : f52.z), f24.xyz, vec3(f51));
    vec4 f55 = f24;
    f55.x = f54.x;
    vec4 f56 = f55;
    f56.y = f54.y;
    vec4 f57 = f56;
    f57.z = f54.z;
    float f58 = 1.0 - f23;
    vec4 f59 = f57;
    f59.w = f58;
    vec4 f60 = f59;
    f60.w = f58 * max(f51, CB0[18].y);
    _entryPointOutput_color = f60;
}

//$$PrefilteredEnvTexture=s15
//$$CloudsDistanceFieldTexture=s0
//$$DetailTexTexture=s2
