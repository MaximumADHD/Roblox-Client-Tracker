#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <RayFrame.h>
#include <CloudsParams.h>
uniform vec4 CB0[53];
uniform vec4 CB4[1];
uniform vec4 CB5[5];
uniform sampler2D NoiseTexTexture;
uniform sampler2D CloudsDistanceFieldTexture;

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
    f4.y = f3.y + 6371.0;
    float f5 = dot(f1, f4);
    float f6 = 2.0 * f5;
    vec2 f7 = (vec2(f5 * (-2.0)) + sqrt(vec2(f6 * f6) - ((vec2(dot(f4, f4)) - vec2(40615128.0, 40647000.0)) * 4.0))) * 0.5;
    float f8 = f7.x;
    vec3 f9 = f1;
    f9.y = 0.0375653542578220367431640625 + (0.96243464946746826171875 * f2);
    vec3 f10 = f3 + (f9 * f8);
    f10.y = 0.0;
    vec3 f11 = f10 + (((CB5[0].xyz * CB5[0].w) * 50.0) + (f9 * 0.5));
    vec2 f12 = f11.xz;
    vec2 f13 = f12;
    f13.x = f11.x + (CB5[0].w * 100.0);
    vec4 f14 = texture2D(NoiseTexTexture, fract(f13));
    vec4 f15 = texture2D(NoiseTexTexture, fract(f13 * 4.0));
    float f16 = texture2DLod(CloudsDistanceFieldTexture, vec4(f12 * vec2(0.03125), 0.0, 0.0).xy, 0.0).x - ((0.03125 + (CB5[2].x * 0.03125)) * (f14.x + (0.25 * f15.x)));
    bool f17 = f16 < CB5[2].x;
    float f18;
    vec4 f19;
    if (f17)
    {
        float f20 = ((CB5[2].y * clamp(1.0 + (0.001000000047497451305389404296875 * (6000.0 - CB0[7].y)), 0.0, 1.0)) * 128.0) * (CB5[2].x - f16);
        float f21 = exp2((-1.44269502162933349609375) * f20);
        float f22 = f11.y;
        vec3 f23 = (mix(vec3(0.1500000059604644775390625 + (0.300000011920928955078125 * f22)), mix(CB0[26].xyz, CB0[25].xyz, vec3(f22)), vec3(clamp(exp2(CB0[11].y), 0.0, 1.0))) * 0.60000002384185791015625) + ((CB0[10].xyz * mix(1.0, 0.300000011920928955078125, (CB5[2].x - texture2DLod(CloudsDistanceFieldTexture, vec4(((f12 - (CB0[11].xyz.xz * 0.5)) * 0.5) * 0.03125, 0.0, 0.0).xy, 0.0).x) / CB5[2].x)) * 0.5);
        vec3 f24 = (f23 - (f23 * f21)) / vec3(f20);
        f19 = vec4(f24.x, f24.y, f24.z, vec4(0.0).w);
        f18 = f21;
    }
    else
    {
        f19 = vec4(0.0);
        f18 = 1.0;
    }
    if (!(f17 ? true : false))
    {
        discard;
    }
    vec3 f25 = mix(CB0[14].xyz, f19.xyz, vec3(exp2((CB0[13].z * 3.5714285373687744140625) * (f8 * f8))));
    vec4 f26 = vec4(f25.x, f25.y, f25.z, f19.w);
    f26.w = 1.0 - f18;
    gl_FragData[0] = f26;
}

//$$NoiseTexTexture=s1
//$$CloudsDistanceFieldTexture=s0
