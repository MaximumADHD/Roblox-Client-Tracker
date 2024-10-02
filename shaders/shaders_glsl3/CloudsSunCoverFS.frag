#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <CloudsParams.h>
#include <Params.h>
uniform vec4 CB0[58];
uniform vec4 CB5[5];
uniform vec4 CB1[15];
uniform sampler2D BeerShadowMapTexture;

out float _entryPointOutput;

void main()
{
    vec3 f0 = CB0[11].xyz * 0.00028000000747852027416229248046875;
    vec3 f1 = -CB0[16].xyz;
    vec3 f2 = f0;
    f2.y = f0.y + 971.0;
    float f3 = dot(f1, f2);
    float f4 = 2.0 * f3;
    vec2 f5 = (vec2(f3 * (-2.0)) + sqrt(vec2(f4 * f4) - ((vec2(dot(f2, f2)) - vec2(946729.0, 951600.25)) * 4.0))) * 0.5;
    float f6 = f5.x;
    vec2 f7 = (((f0 + (f1 * f6)) + (f1 * (f5.y - f6))) + ((CB5[0].xyz * CB5[0].w) * 50.0)).xz * vec2(0.03125);
    float f8 = (((((((((((((((((((((((((((textureLod(BeerShadowMapTexture, vec4(f7, 0.0, 0.0).xy, 0.0).y + textureLod(BeerShadowMapTexture, vec4(f7 + ((vec2(0.540000021457672119140625, 0.0) * CB1[2].y) * CB1[0].zw), 0.0, 0.0).xy, 0.0).y) + textureLod(BeerShadowMapTexture, vec4(f7 + ((vec2(0.436869204044342041015625, 0.3174040615558624267578125) * CB1[2].y) * CB1[0].zw), 0.0, 0.0).xy, 0.0).y) + textureLod(BeerShadowMapTexture, vec4(f7 + ((vec2(0.16686917841434478759765625, 0.5135705471038818359375) * CB1[2].y) * CB1[0].zw), 0.0, 0.0).xy, 0.0).y) + textureLod(BeerShadowMapTexture, vec4(f7 + ((vec2(-0.16686917841434478759765625, 0.5135705471038818359375) * CB1[2].y) * CB1[0].zw), 0.0, 0.0).xy, 0.0).y) + textureLod(BeerShadowMapTexture, vec4(f7 + ((vec2(-0.436869204044342041015625, 0.3174040615558624267578125) * CB1[2].y) * CB1[0].zw), 0.0, 0.0).xy, 0.0).y) + textureLod(BeerShadowMapTexture, vec4(f7 + ((vec2(-0.540000021457672119140625, 6.6128748929759884316731399778178e-17) * CB1[2].y) * CB1[0].zw), 0.0, 0.0).xy, 0.0).y) + textureLod(BeerShadowMapTexture, vec4(f7 + ((vec2(-0.436869204044342041015625, -0.3174040615558624267578125) * CB1[2].y) * CB1[0].zw), 0.0, 0.0).xy, 0.0).y) + textureLod(BeerShadowMapTexture, vec4(f7 + ((vec2(-0.16686917841434478759765625, -0.5135705471038818359375) * CB1[2].y) * CB1[0].zw), 0.0, 0.0).xy, 0.0).y) + textureLod(BeerShadowMapTexture, vec4(f7 + ((vec2(0.16686917841434478759765625, -0.5135705471038818359375) * CB1[2].y) * CB1[0].zw), 0.0, 0.0).xy, 0.0).y) + textureLod(BeerShadowMapTexture, vec4(f7 + ((vec2(0.436869204044342041015625, -0.3174040615558624267578125) * CB1[2].y) * CB1[0].zw), 0.0, 0.0).xy, 0.0).y) + textureLod(BeerShadowMapTexture, vec4(f7 + ((vec2(1.0, 0.0) * CB1[2].y) * CB1[0].zw), 0.0, 0.0).xy, 0.0).y) + textureLod(BeerShadowMapTexture, vec4(f7 + ((vec2(0.93247222900390625, 0.3612416684627532958984375) * CB1[2].y) * CB1[0].zw), 0.0, 0.0).xy, 0.0).y) + textureLod(BeerShadowMapTexture, vec4(f7 + ((vec2(0.73900890350341796875, 0.673695623874664306640625) * CB1[2].y) * CB1[0].zw), 0.0, 0.0).xy, 0.0).y) + textureLod(BeerShadowMapTexture, vec4(f7 + ((vec2(0.4457383453845977783203125, 0.8951632976531982421875) * CB1[2].y) * CB1[0].zw), 0.0, 0.0).xy, 0.0).y) + textureLod(BeerShadowMapTexture, vec4(f7 + ((vec2(0.09226836264133453369140625, 0.995734155178070068359375) * CB1[2].y) * CB1[0].zw), 0.0, 0.0).xy, 0.0).y) + textureLod(BeerShadowMapTexture, vec4(f7 + ((vec2(-0.273662984371185302734375, 0.961825668811798095703125) * CB1[2].y) * CB1[0].zw), 0.0, 0.0).xy, 0.0).y) + textureLod(BeerShadowMapTexture, vec4(f7 + ((vec2(-0.602634608745574951171875, 0.798017203807830810546875) * CB1[2].y) * CB1[0].zw), 0.0, 0.0).xy, 0.0).y) + textureLod(BeerShadowMapTexture, vec4(f7 + ((vec2(-0.850217163562774658203125, 0.52643215656280517578125) * CB1[2].y) * CB1[0].zw), 0.0, 0.0).xy, 0.0).y) + textureLod(BeerShadowMapTexture, vec4(f7 + ((vec2(-0.9829730987548828125, 0.18374951183795928955078125) * CB1[2].y) * CB1[0].zw), 0.0, 0.0).xy, 0.0).y) + textureLod(BeerShadowMapTexture, vec4(f7 + ((vec2(-0.9829730987548828125, -0.18374951183795928955078125) * CB1[2].y) * CB1[0].zw), 0.0, 0.0).xy, 0.0).y) + textureLod(BeerShadowMapTexture, vec4(f7 + ((vec2(-0.850217163562774658203125, -0.52643215656280517578125) * CB1[2].y) * CB1[0].zw), 0.0, 0.0).xy, 0.0).y) + textureLod(BeerShadowMapTexture, vec4(f7 + ((vec2(-0.602634608745574951171875, -0.798017203807830810546875) * CB1[2].y) * CB1[0].zw), 0.0, 0.0).xy, 0.0).y) + textureLod(BeerShadowMapTexture, vec4(f7 + ((vec2(-0.273662984371185302734375, -0.961825668811798095703125) * CB1[2].y) * CB1[0].zw), 0.0, 0.0).xy, 0.0).y) + textureLod(BeerShadowMapTexture, vec4(f7 + ((vec2(0.09226836264133453369140625, -0.995734155178070068359375) * CB1[2].y) * CB1[0].zw), 0.0, 0.0).xy, 0.0).y) + textureLod(BeerShadowMapTexture, vec4(f7 + ((vec2(0.4457383453845977783203125, -0.8951632976531982421875) * CB1[2].y) * CB1[0].zw), 0.0, 0.0).xy, 0.0).y) + textureLod(BeerShadowMapTexture, vec4(f7 + ((vec2(0.73900890350341796875, -0.673695623874664306640625) * CB1[2].y) * CB1[0].zw), 0.0, 0.0).xy, 0.0).y) + textureLod(BeerShadowMapTexture, vec4(f7 + ((vec2(0.93247222900390625, -0.3612416684627532958984375) * CB1[2].y) * CB1[0].zw), 0.0, 0.0).xy, 0.0).y) * 0.0357142873108386993408203125;
    _entryPointOutput = max(0.0, 1.0 - (CB1[2].x * (f8 * f8)));
}

//$$BeerShadowMapTexture=s3
