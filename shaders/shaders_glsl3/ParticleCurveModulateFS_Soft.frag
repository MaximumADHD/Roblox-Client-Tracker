#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <EmitterParams.h>
uniform vec4 CB0[53];
uniform vec4 CB1[4];
uniform sampler2D LightingAtlasTexture;
uniform sampler2D depthTexTexture;
uniform sampler2D texTexture;

in vec3 VARYING0;
in vec4 VARYING1;
in vec2 VARYING2;
in vec4 VARYING3;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(texTexture, VARYING0.xy);
    vec4 f1 = VARYING1 * CB1[0];
    float f2;
    do
    {
        if (0.0 == CB1[3].x)
        {
            f2 = clamp(VARYING3.w * abs((texture(depthTexTexture, VARYING3.xy).x * 500.0) - VARYING3.z), 0.0, 1.0);
            break;
        }
        else
        {
            f2 = 1.0;
            break;
        }
    } while(false);
    vec3 f3 = f0.xyz * f1.xyz;
    vec4 f4 = vec4(0.0);
    f4.x = f3.x;
    vec4 f5 = f4;
    f5.y = f3.y;
    vec4 f6 = f5;
    f6.z = f3.z;
    float f7 = (f0.w * f1.w) * (f2 * clamp(exp2((CB0[13].z * VARYING0.z) + CB0[13].x) - CB0[13].w, 0.0, 1.0));
    vec4 f8 = f6;
    f8.w = f7;
    vec4 f9 = f8;
    f9.w = f7;
    vec3 f10 = f9.xyz * f9.xyz;
    vec4 f11 = f9;
    f11.x = f10.x;
    vec4 f12 = f11;
    f12.y = f10.y;
    vec4 f13 = f12;
    f13.z = f10.z;
    vec4 f14 = texture(LightingAtlasTexture, VARYING2);
    vec3 f15 = mix(f13.xyz, (f14.xyz * (f14.w * 120.0)) * f13.xyz, vec3(CB1[2].w));
    vec4 f16 = f13;
    f16.x = f15.x;
    vec4 f17 = f16;
    f17.y = f15.y;
    vec4 f18 = f17;
    f18.z = f15.z;
    vec3 f19 = sqrt(clamp(f18.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f20 = f18;
    f20.x = f19.x;
    vec4 f21 = f20;
    f21.y = f19.y;
    vec4 f22 = f21;
    f22.z = f19.z;
    _entryPointOutput = f22;
}

//$$LightingAtlasTexture=s2
//$$depthTexTexture=s3
//$$texTexture=s0
