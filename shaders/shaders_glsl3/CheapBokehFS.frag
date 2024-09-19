#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <Params.h>
const vec2 f0[27] = vec2[](vec2(0.540000021457672119140625, 0.0), vec2(0.436869204044342041015625, 0.3174040615558624267578125), vec2(0.16686917841434478759765625, 0.5135705471038818359375), vec2(-0.16686917841434478759765625, 0.5135705471038818359375), vec2(-0.436869204044342041015625, 0.3174040615558624267578125), vec2(-0.540000021457672119140625, 6.6128748929759884316731399778178e-17), vec2(-0.436869204044342041015625, -0.3174040615558624267578125), vec2(-0.16686917841434478759765625, -0.5135705471038818359375), vec2(0.16686917841434478759765625, -0.5135705471038818359375), vec2(0.436869204044342041015625, -0.3174040615558624267578125), vec2(1.0, 0.0), vec2(0.93247222900390625, 0.3612416684627532958984375), vec2(0.73900890350341796875, 0.673695623874664306640625), vec2(0.4457383453845977783203125, 0.8951632976531982421875), vec2(0.09226836264133453369140625, 0.995734155178070068359375), vec2(-0.273662984371185302734375, 0.961825668811798095703125), vec2(-0.602634608745574951171875, 0.798017203807830810546875), vec2(-0.850217163562774658203125, 0.52643215656280517578125), vec2(-0.9829730987548828125, 0.18374951183795928955078125), vec2(-0.9829730987548828125, -0.18374951183795928955078125), vec2(-0.850217163562774658203125, -0.52643215656280517578125), vec2(-0.602634608745574951171875, -0.798017203807830810546875), vec2(-0.273662984371185302734375, -0.961825668811798095703125), vec2(0.09226836264133453369140625, -0.995734155178070068359375), vec2(0.4457383453845977783203125, -0.8951632976531982421875), vec2(0.73900890350341796875, -0.673695623874664306640625), vec2(0.93247222900390625, -0.3612416684627532958984375));

uniform vec4 CB0[58];
uniform vec4 CB1[15];
uniform sampler2D iChannel0Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 f1 = texture(iChannel0Texture, VARYING0);
    float f2 = f1.w;
    float f3 = f2 * f2;
    float f4 = f3 * CB1[2].y;
    vec2 f5 = vec2(CB1[0].y * CB1[0].z, 1.0) * 0.01400000043213367462158203125;
    float f6;
    vec4 f7;
    f7 = f1 * f3;
    f6 = f3;
    float f8;
    vec4 f9;
    for (int f10 = 0; f10 < 27; f7 = f9, f6 = f8, f10++)
    {
        vec2 f11 = ((f0[f10] * f4) * f5) + VARYING0;
        vec4 f12 = texture(iChannel0Texture, f11);
        float f13 = f12.w;
        float f14 = f11.x;
        float f15 = f11.y;
        if ((((f14 >= 0.0) && (f14 <= 1.0)) && (f15 >= 0.0)) && (f15 <= 1.0))
        {
            f9 = f7 + (f12 * f13);
            f8 = f6 + f13;
        }
        else
        {
            f9 = f7;
            f8 = f6;
        }
    }
    vec4 f16 = mix(f1 * (1.0 + f2), (f7 * clamp(1.0 / (f6 + 0.001000000047497451305389404296875), 0.0, 1.0)) * f2, vec4(f2));
    vec3 f17 = sqrt(clamp(f16.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f18 = f16;
    f18.x = f17.x;
    vec4 f19 = f18;
    f19.y = f17.y;
    vec4 f20 = f19;
    f20.z = f17.z;
    _entryPointOutput = f20;
}

//$$iChannel0Texture=s0
