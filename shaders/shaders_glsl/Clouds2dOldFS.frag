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
    if (f1.y < 0.0)
    {
        discard;
    }
    vec3 f2 = CB0[7].xyz * 0.00028000000747852027416229248046875;
    vec3 f3 = f2;
    f3.y = f2.y + 971.0;
    float f4 = dot(f1, f3);
    float f5 = 2.0 * f4;
    vec2 f6 = (vec2(f4 * (-2.0)) + sqrt(vec2(f5 * f5) - ((vec2(dot(f3, f3)) - vec2(948676.0, 953552.25)) * 4.0))) * 0.5;
    float f7 = f6.x;
    float f8 = max(0.0, dot(CB0[11].xyz, -f1));
    float f9 = f8 + 0.819406807422637939453125;
    vec3 f10 = f2 + (f1 * f7);
    f10.y = 0.0;
    vec2 f11 = (f10 + ((CB5[0].xyz * CB5[0].w) * 50.0)).xz;
    float f12 = f7 * 0.0588235296308994293212890625;
    vec4 f13 = texture2DLod(CloudsDistanceFieldTexture, vec4(f11 * vec2(0.03125), 0.0, f12).xy, f12);
    float f14 = f13.x;
    float f15 = 0.001000000047497451305389404296875 + CB5[4].y;
    float f16 = 0.550000011920928955078125 * CB5[2].x;
    float f17 = 0.180000007152557373046875 * CB5[4].x;
    float f18 = f14 + ((((15.0 * (f14 - f16)) * CB5[4].x) + f17) * texture2DLod(DetailTexTexture, vec4(f11 * f15, 0.0, f12).xy, f12).x);
    bool f19 = f18 < CB5[2].x;
    float f20;
    vec4 f21;
    if (f19)
    {
        float f22 = clamp(1.0 + (0.001000000047497451305389404296875 * (6000.0 - CB0[7].y)), 0.0, 1.0);
        vec2 f23 = f11 - (CB0[11].xyz.xz * 0.5);
        float f24 = f6.y * 0.0588235296308994293212890625;
        vec4 f25 = texture2DLod(CloudsDistanceFieldTexture, vec4(f23 * vec2(0.03125), 0.0, f24).xy, f24);
        float f26 = f25.x;
        float f27 = clamp(f26 + ((((15.0 * (f26 - f16)) * CB5[4].x) + f17) * texture2DLod(DetailTexTexture, vec4(f23 * f15, 0.0, f24).xy, f24).x), 0.0, 1.0);
        float f28 = CB5[2].x - f27;
        float f29 = mix(0.4000000059604644775390625, 1.0, smoothstep(0.959999978542327880859375, 0.0, f8));
        vec3 f30 = f1 * f1;
        bvec3 f31 = lessThan(f1, vec3(0.0));
        vec3 f32 = vec3(f31.x ? f30.x : vec3(0.0).x, f31.y ? f30.y : vec3(0.0).y, f31.z ? f30.z : vec3(0.0).z);
        vec3 f33 = f30 - f32;
        float f34 = f33.x;
        float f35 = f33.y;
        float f36 = f33.z;
        float f37 = f32.x;
        float f38 = f32.y;
        float f39 = f32.z;
        vec3 f40 = ((max(mix(vec3(0.300000011920928955078125), mix(CB0[26].xyz, CB0[25].xyz, vec3(0.5)), vec3(clamp(exp2(CB0[11].y), 0.0, 1.0))) * (((((((CB0[35].xyz * f34) + (CB0[37].xyz * f35)) + (CB0[39].xyz * f36)) + (CB0[36].xyz * f37)) + (CB0[38].xyz * f38)) + (CB0[40].xyz * f39)) + (((((((CB0[29].xyz * f34) + (CB0[31].xyz * f35)) + (CB0[33].xyz * f36)) + (CB0[30].xyz * f37)) + (CB0[32].xyz * f38)) + (CB0[34].xyz * f39)) * 1.0)), CB0[28].xyz + CB0[27].xyz) + ((CB0[10].xyz * (((((exp2(-f28) + ((0.25 * f29) * exp2((-0.100000001490116119384765625) * f28))) + ((2.0 * f29) * exp2((-0.0199999995529651641845703125) * f28))) * dot(exp2(vec4(((-93.775177001953125) * f8) + (-79.34822845458984375), ((-83.703338623046875) * f9) * f9, 7.810082912445068359375 * f8, (-4.5521251698654729977988608879969e-12) * f8)), vec4(9.8052332759834825992584228515625e-06, 0.13881979882717132568359375, 0.00205474696122109889984130859375, 0.0260056294500827789306640625))) * mix(0.0500000007450580596923828125 + (2.0 * pow(clamp(f27, 9.9999997473787516355514526367188e-06, 1.0), 3.0499999523162841796875)), 1.0, f28)) * mix(1.0, 0.4000000059604644775390625, f28))) * 2.099999904632568359375)) * CB5[3].xyz) * (2.400000095367431640625 - ((((1.5 * CB5[2].y) * f22) * CB5[2].y) * f22));
        f21 = vec4(f40.x, f40.y, f40.z, vec4(0.0).w);
        f20 = pow(exp2((-1.44269502162933349609375) * (((50.0 * CB5[2].y) * f22) * (CB5[2].x - f18))), 0.3300000131130218505859375);
    }
    else
    {
        f21 = vec4(0.0);
        f20 = 1.0;
    }
    if (!(f19 ? true : false))
    {
        discard;
    }
    float f41 = pow(max(exp2((CB0[13].z * 3.5714285373687744140625) * (f7 * f7)), 9.9999997473787516355514526367188e-05), 0.125);
    vec3 f42 = mix(CB0[14].xyz, f21.xyz, vec3(f41));
    float f43 = 1.0 - f20;
    vec4 f44 = vec4(f42.x, f42.y, f42.z, f21.w);
    f44.w = f43;
    vec4 f45 = f44;
    f45.w = f43 * max(f41, CB0[13].y);
    gl_FragData[0] = f45;
}

//$$CloudsDistanceFieldTexture=s0
//$$DetailTexTexture=s2
