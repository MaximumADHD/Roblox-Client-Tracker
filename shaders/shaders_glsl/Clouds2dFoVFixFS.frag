#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <RayFrame.h>
#include <CloudsParams.h>
uniform vec4 CB0[53];
uniform vec4 CB1[1];
uniform vec4 CB2[3];
uniform sampler2D NoiseTexTexture;
uniform sampler2D CloudsDistanceFieldTexture;

void main()
{
    vec2 f0 = CB1[0].zw * ((gl_FragCoord.xy * CB1[0].xy) - vec2(1.0));
    vec3 f1 = normalize(((CB0[4].xyz * f0.x) + (CB0[5].xyz * f0.y)) - CB0[6].xyz);
    if (f1.y < 0.0)
    {
        discard;
    }
    vec3 f2 = CB0[7].xyz * 0.00028000000747852027416229248046875;
    vec3 f3 = f2;
    f3.y = f2.y + 6371.0;
    float f4 = dot(f1, f3);
    float f5 = 2.0 * f4;
    vec2 f6 = (vec2(f4 * (-2.0)) + sqrt(vec2(f5 * f5) - ((vec2(dot(f3, f3)) - vec2(40615128.0, 40647000.0)) * 4.0))) * 0.5;
    float f7 = f6.x;
    vec3 f8 = f2 + (f1 * f7);
    f8.y = 0.0;
    vec3 f9 = f8 + ((CB2[0].xyz * CB2[0].w) * 50.0);
    vec2 f10 = f9.xz;
    vec4 f11 = texture2D(CloudsDistanceFieldTexture, f10 * vec2(0.03125));
    vec2 f12 = f10;
    f12.x = f9.x + (CB2[0].w * 100.0);
    vec4 f13 = texture2D(NoiseTexTexture, fract(f12));
    vec4 f14 = texture2D(NoiseTexTexture, fract(f12 * 4.0));
    float f15 = f11.x - ((0.03125 + (CB2[2].x * 0.125)) * (f13.x + (0.25 * f14.x)));
    bool f16 = f15 < CB2[2].x;
    float f17;
    vec4 f18;
    if (f16)
    {
        float f19 = (CB2[2].y * 128.0) * (CB2[2].x - f15);
        float f20 = exp2((-1.44269502162933349609375) * f19);
        float f21 = f9.y;
        vec3 f22 = mix(vec3(0.1500000059604644775390625 + (0.300000011920928955078125 * f21)), mix(CB0[26].xyz, CB0[25].xyz, vec3(f21)), vec3(clamp(exp2(CB0[11].y), 0.0, 1.0))) + ((CB0[10].xyz * mix(1.0, 0.300000011920928955078125, (CB2[2].x - texture2D(CloudsDistanceFieldTexture, (f10 - (CB0[11].xyz.xz * 0.5)) * 0.03125).x) / CB2[2].x)) * 2.099999904632568359375);
        vec3 f23 = (f22 - (f22 * f20)) / vec3(f19);
        f18 = vec4(f23.x, f23.y, f23.z, vec4(0.0).w);
        f17 = f20;
    }
    else
    {
        f18 = vec4(0.0);
        f17 = 1.0;
    }
    if (!(f16 ? true : false))
    {
        discard;
    }
    vec3 f24 = mix(CB0[14].xyz, f18.xyz, vec3(exp2((CB0[13].z * 3.5714285373687744140625) * (f7 * f7))));
    vec4 f25 = vec4(f24.x, f24.y, f24.z, f18.w);
    f25.w = 1.0 - f17;
    gl_FragData[0] = f25;
}

//$$NoiseTexTexture=s1
//$$CloudsDistanceFieldTexture=s0
