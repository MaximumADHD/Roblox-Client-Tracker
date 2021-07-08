#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <RayFrame.h>
#include <CloudsParams.h>
uniform vec4 CB0[53];
uniform vec4 CB4[1];
uniform vec4 CB5[5];
uniform sampler2D CloudsDistanceFieldTexture;
uniform sampler2D DetailTexTexture;

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
    vec2 f9 = (vec2(f7 * (-2.0)) + sqrt(vec2(f8 * f8) - ((vec2(dot(f6, f6)) - vec2(948676.0, 953552.25)) * 4.0))) * 0.5;
    float f10 = f9.x;
    float f11 = max(0.0, dot(CB0[11].xyz, -f4));
    float f12 = f11 + 0.819406807422637939453125;
    vec3 f13 = f5 + (f4 * f10);
    f13.y = 0.0;
    vec2 f14 = (f13 + ((CB5[0].xyz * CB5[0].w) * 50.0)).xz;
    float f15 = f10 * 0.0588235296308994293212890625;
    vec4 f16 = texture2DLod(CloudsDistanceFieldTexture, vec4(f14 * vec2(0.03125), 0.0, f15).xy, f15);
    float f17 = f16.x;
    float f18 = 0.001000000047497451305389404296875 + CB5[4].y;
    float f19 = 0.550000011920928955078125 * CB5[2].x;
    float f20 = 0.180000007152557373046875 * CB5[4].x;
    float f21 = f17 + ((((15.0 * (f17 - f19)) * CB5[4].x) + f20) * texture2DLod(DetailTexTexture, vec4(f14 * f18, 0.0, f15).xy, f15).x);
    bool f22 = f21 < CB5[2].x;
    float f23;
    vec4 f24;
    if (f22)
    {
        float f25 = clamp(1.0 + (0.001000000047497451305389404296875 * (6000.0 - CB0[7].y)), 0.0, 1.0);
        vec2 f26 = f14 - (CB0[11].xyz.xz * 0.5);
        float f27 = f9.y * 0.0588235296308994293212890625;
        vec4 f28 = texture2DLod(CloudsDistanceFieldTexture, vec4(f26 * vec2(0.03125), 0.0, f27).xy, f27);
        float f29 = f28.x;
        float f30 = clamp(f29 + ((((15.0 * (f29 - f19)) * CB5[4].x) + f20) * texture2DLod(DetailTexTexture, vec4(f26 * f18, 0.0, f27).xy, f27).x), 0.0, 1.0);
        float f31 = CB5[2].x - f30;
        float f32 = mix(0.4000000059604644775390625, 1.0, smoothstep(0.959999978542327880859375, 0.0, f11));
        vec3 f33 = f4 * f4;
        bvec3 f34 = lessThan(f4, vec3(0.0));
        vec3 f35 = vec3(f34.x ? f33.x : vec3(0.0).x, f34.y ? f33.y : vec3(0.0).y, f34.z ? f33.z : vec3(0.0).z);
        vec3 f36 = f33 - f35;
        float f37 = f36.x;
        float f38 = f36.y;
        float f39 = f36.z;
        float f40 = f35.x;
        float f41 = f35.y;
        float f42 = f35.z;
        vec3 f43 = ((max(mix(vec3(0.300000011920928955078125), mix(CB0[26].xyz, CB0[25].xyz, vec3(0.5)), vec3(clamp(exp2(CB0[11].y), 0.0, 1.0))) * (((((((CB0[35].xyz * f37) + (CB0[37].xyz * f38)) + (CB0[39].xyz * f39)) + (CB0[36].xyz * f40)) + (CB0[38].xyz * f41)) + (CB0[40].xyz * f42)) + (((((((CB0[29].xyz * f37) + (CB0[31].xyz * f38)) + (CB0[33].xyz * f39)) + (CB0[30].xyz * f40)) + (CB0[32].xyz * f41)) + (CB0[34].xyz * f42)) * 1.0)), CB0[28].xyz + CB0[27].xyz) + ((CB0[10].xyz * (((((exp2(-f31) + ((0.25 * f32) * exp2((-0.100000001490116119384765625) * f31))) + ((2.0 * f32) * exp2((-0.0199999995529651641845703125) * f31))) * dot(exp2(vec4(((-93.775177001953125) * f11) + (-79.34822845458984375), ((-83.703338623046875) * f12) * f12, 7.810082912445068359375 * f11, (-4.5521251698654729977988608879969e-12) * f11)), vec4(9.8052332759834825992584228515625e-06, 0.13881979882717132568359375, 0.00205474696122109889984130859375, 0.0260056294500827789306640625))) * mix(0.0500000007450580596923828125 + (2.0 * pow(clamp(f30, 9.9999997473787516355514526367188e-06, 1.0), 3.0499999523162841796875)), 1.0, f31)) * mix(1.0, 0.4000000059604644775390625, f31))) * 2.099999904632568359375)) * CB5[3].xyz) * (2.400000095367431640625 - ((((1.5 * CB5[2].y) * f25) * CB5[2].y) * f25));
        f24 = vec4(f43.x, f43.y, f43.z, vec4(0.0).w);
        f23 = pow(exp2((-1.44269502162933349609375) * (((50.0 * CB5[2].y) * f25) * (CB5[2].x - f21))), 0.333000004291534423828125);
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
    float f44 = pow(max(exp2((CB0[13].z * 3.5714285373687744140625) * (f10 * f10)), 9.9999997473787516355514526367188e-05), 0.125);
    vec3 f45 = mix(CB0[14].xyz, f24.xyz, vec3(f44));
    float f46 = 1.0 - f23;
    vec4 f47 = vec4(f45.x, f45.y, f45.z, f24.w);
    f47.w = f46;
    vec4 f48 = f47;
    f48.w = f46 * max(f44, CB0[13].y);
    gl_FragData[0] = f48;
}

//$$CloudsDistanceFieldTexture=s0
//$$DetailTexTexture=s2
