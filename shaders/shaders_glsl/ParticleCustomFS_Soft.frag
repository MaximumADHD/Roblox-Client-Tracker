#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <EmitterParams.h>
uniform vec4 CB0[53];
uniform vec4 CB1[4];
uniform sampler2D LightingAtlasTexture;
uniform sampler2D depthTexTexture;
uniform sampler2D texTexture;

varying vec3 VARYING0;
varying vec4 VARYING1;
varying vec2 VARYING2;
varying vec4 VARYING3;
varying vec2 VARYING4;
varying float VARYING5;

void main()
{
    vec4 f0 = texture2D(texTexture, VARYING0.xy);
    vec4 f1 = texture2D(texTexture, VARYING4);
    vec4 f2 = mix(f0, f1, vec4(VARYING5));
    float f3;
    do
    {
        if (0.0 == CB1[3].x)
        {
            f3 = clamp(VARYING3.w * abs((texture2D(depthTexTexture, VARYING3.xy).x * 500.0) - VARYING3.z), 0.0, 1.0);
            break;
        }
        else
        {
            f3 = clamp(VARYING3.w * abs((texture2D(depthTexTexture, gl_FragCoord.xy * CB0[45].xy).x * 500.0) - gl_FragCoord.w), 0.0, 1.0);
            break;
        }
    } while(false);
    vec3 f4 = f2.xyz * VARYING1.xyz;
    vec4 f5 = vec4(0.0);
    f5.x = f4.x;
    vec4 f6 = f5;
    f6.y = f4.y;
    vec4 f7 = f6;
    f7.z = f4.z;
    vec3 f8 = f7.xyz * f7.xyz;
    vec4 f9 = f7;
    f9.x = f8.x;
    vec4 f10 = f9;
    f10.y = f8.y;
    vec4 f11 = f10;
    f11.z = f8.z;
    vec4 f12 = texture2D(LightingAtlasTexture, VARYING2);
    vec3 f13 = mix(f11.xyz * CB1[3].y, (f12.xyz * (f12.w * 120.0)) * f11.xyz, vec3(CB1[2].w));
    vec4 f14 = f11;
    f14.x = f13.x;
    vec4 f15 = f14;
    f15.y = f13.y;
    vec4 f16 = f15;
    f16.z = f13.z;
    vec3 f17 = sqrt(clamp(f16.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f18 = f16;
    f18.x = f17.x;
    vec4 f19 = f18;
    f19.y = f17.y;
    vec4 f20 = f19;
    f20.z = f17.z;
    float f21 = (VARYING1.w * f2.w) * (f3 * clamp(exp2((CB0[13].z * VARYING0.z) + CB0[13].x) - CB0[13].w, 0.0, 1.0));
    vec4 f22 = f20;
    f22.w = f21;
    vec3 f23 = f22.xyz * f21;
    vec4 f24 = f22;
    f24.x = f23.x;
    vec4 f25 = f24;
    f25.y = f23.y;
    vec4 f26 = f25;
    f26.z = f23.z;
    vec4 f27 = f26;
    f27.w = f21 * CB1[1].y;
    gl_FragData[0] = f27;
}

//$$LightingAtlasTexture=s2
//$$depthTexTexture=s3
//$$texTexture=s0
