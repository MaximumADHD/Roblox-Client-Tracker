#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <RayFrame.h>
#include <CloudsParams.h>
uniform vec4 CB0[53];
uniform vec4 CB1[1];
uniform vec4 CB2[3];
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D NoiseTexTexture;
uniform sampler2D CloudsDistanceFieldTexture;

out vec4 _entryPointOutput_color;

void main()
{
    vec2 f0 = CB1[0].zw * ((gl_FragCoord.xy * CB1[0].xy) - vec2(1.0));
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
    vec3 f11 = f10 + (((CB2[0].xyz * CB2[0].w) * 50.0) + (f9 * 0.5));
    vec2 f12 = f11.xz;
    vec4 f13 = texture(CloudsDistanceFieldTexture, f12 * vec2(0.03125));
    vec2 f14 = f12;
    f14.x = f11.x + (CB2[0].w * 100.0);
    vec4 f15 = texture(NoiseTexTexture, fract(f14));
    vec4 f16 = texture(NoiseTexTexture, fract(f14 * 4.0));
    float f17 = f13.x - ((0.03125 + (CB2[2].x * 0.03125)) * (f15.x + (0.25 * f16.x)));
    bool f18 = f17 < CB2[2].x;
    float f19;
    vec4 f20;
    if (f18)
    {
        float f21 = (CB2[2].y * 128.0) * (CB2[2].x - f17);
        float f22 = exp2((-1.44269502162933349609375) * f21);
        float f23 = f11.y;
        vec3 f24 = (mix(vec3(0.1500000059604644775390625 + (0.300000011920928955078125 * f23)), mix(CB0[26].xyz, CB0[25].xyz, vec3(f23)), vec3(clamp(exp2(CB0[11].y), 0.0, 1.0))) * 0.60000002384185791015625) + ((CB0[10].xyz * mix(1.0, 0.300000011920928955078125, (CB2[2].x - texture(CloudsDistanceFieldTexture, ((f12 - (CB0[11].xyz.xz * 0.5)) * 0.5) * 0.03125).x) / CB2[2].x)) * 0.5);
        vec3 f25 = (f24 - (f24 * f22)) / vec3(f21);
        f20 = vec4(f25.x, f25.y, f25.z, vec4(0.0).w);
        f19 = f22;
    }
    else
    {
        f20 = vec4(0.0);
        f19 = 1.0;
    }
    if (!(f18 ? true : false))
    {
        discard;
    }
    float f26 = exp2((CB0[13].z * 3.5714285373687744140625) * (f8 * f8));
    vec3 f27 = textureLod(PrefilteredEnvTexture, vec4(f1.x, f2, f1.z, 0.0).xyz, max(CB0[13].y, f26) * 5.0).xyz;
    bvec3 f28 = bvec3(CB0[13].w != 0.0);
    vec3 f29 = mix(vec3(f28.x ? CB0[14].xyz.x : f27.x, f28.y ? CB0[14].xyz.y : f27.y, f28.z ? CB0[14].xyz.z : f27.z), f20.xyz, vec3(f26));
    vec4 f30 = vec4(f29.x, f29.y, f29.z, f20.w);
    f30.w = 1.0 - f19;
    _entryPointOutput_color = f30;
}

//$$PrefilteredEnvTexture=s15
//$$NoiseTexTexture=s1
//$$CloudsDistanceFieldTexture=s0
