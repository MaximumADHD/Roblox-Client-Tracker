#version 150

#extension GL_ARB_shading_language_include : require
#include <RayFrame.h>
#include <Params.h>
#include <Globals.h>
#include <CBMatrix.h>
uniform vec4 CB4[2];
uniform vec4 CB1[15];
uniform vec4 CB0[58];
uniform vec4 CB3[8];
uniform sampler2D distTexture;
uniform sampler2D cloudColorTexture;
uniform sampler2D distLastFrameTexture;
uniform sampler2D oldCloudColorTexture;

in vec2 VARYING0;
out vec4 _entryPointOutput_cloudColor;
out vec2 _entryPointOutput_dist;

void main()
{
    vec4 f0 = textureLod(distTexture, VARYING0, 0.0);
    float f1 = f0.x;
    float f2 = f1 * 500.0;
    vec2 f3 = CB4[1].xy;
    f3.x = CB4[1].xy.x;
    vec2 f4 = (CB4[0].zw * (((VARYING0 * CB1[0].xy) * CB4[0].xy) - vec2(1.0))) + f3;
    float f5 = f4.x;
    float f6 = f4.y;
    if (normalize(((CB0[8].xyz * f5) + (CB0[9].xyz * f6)) - CB0[10].xyz).y < (-0.5))
    {
        discard;
    }
    vec4 f7 = vec4(1.0, 1.0, -1.0, 0.0) * CB1[0].zwzw;
    vec2 f8 = f7.xy;
    vec2 f9 = f7.wy;
    vec2 f10 = f7.zy;
    vec4 f11 = (((((((((textureLod(cloudColorTexture, VARYING0, 0.0) * 4.0) + textureLod(cloudColorTexture, VARYING0 - f8, 0.0)) + (textureLod(cloudColorTexture, VARYING0 - f9, 0.0) * 2.0)) + textureLod(cloudColorTexture, VARYING0 - f10, 0.0)) + (textureLod(cloudColorTexture, VARYING0 + f7.zw, 0.0) * 2.0)) + (textureLod(cloudColorTexture, VARYING0 + f7.xw, 0.0) * 2.0)) + textureLod(cloudColorTexture, VARYING0 + f10, 0.0)) + (textureLod(cloudColorTexture, VARYING0 + f9, 0.0) * 2.0)) + textureLod(cloudColorTexture, VARYING0 + f8, 0.0)) * vec4(0.0625);
    float f12 = clamp((f2 - 227.4499969482421875) * 0.0975609719753265380859375, 0.0, 1.0);
    float f13 = f12 * f12;
    vec4 f14 = vec4((normalize(((vec3(1.0, 0.0, 0.0) * f5) + (vec3(0.0, 1.0, 0.0) * f6)) - vec3(0.0, 0.0, 1.0)) * 3571.428466796875) * f2, 1.0);
    vec4 f15 = f14 * mat4(CB3[0], CB3[1], CB3[2], CB3[3]);
    vec4 f16 = f15 / vec4(f15.w);
    vec4 f17 = f16;
    f17.y = f16.y * (-1.0);
    vec2 f18 = (f17.xy + vec2(1.0)) * 0.5;
    vec4 f19 = vec4(0.0);
    f19.x = f18.x;
    vec4 f20 = f19;
    f20.y = f18.y;
    vec4 f21 = textureLod(distLastFrameTexture, f20.xy, 0.0);
    float f22 = f21.y * 7.0;
    vec2 f23 = (CB4[0].zw * (((f20.xy * CB1[0].xy) * CB4[0].xy) - vec2(1.0))) + f3;
    vec3 f24 = normalize(((CB1[2].xyz * f23.x) + (CB1[3].xyz * f23.y)) - CB1[4].xyz);
    vec3 f25 = normalize(vec3(dot(f24, CB0[8].xyz), dot(f24, CB0[9].xyz), -dot(f24, CB0[10].xyz))) * (f21.x * 500.0);
    vec4 f26 = textureLod(oldCloudColorTexture, f20.xy, 0.0);
    vec2 f27;
    vec4 f28;
    if (((((dot(f25, f25) > 0.0) ? abs(1.0 - (length(f14.xyz * 0.00028000000747852027416229248046875) / (9.9999997473787516355514526367188e-06 + length(f25)))) : 0.0) >= 0.001000000047497451305389404296875) || (CB1[5].w > 0.5)) || (abs(dot(f11, vec4(1.0)) - dot(f26, vec4(1.0))) > 0.15299999713897705078125))
    {
        vec4 f29 = f11;
        f29.w = mix(f11.w, 0.0, f13);
        f28 = f29;
        f27 = vec2(f1, 0.14285714924335479736328125);
    }
    else
    {
        float f30 = f22 + 1.0;
        vec4 f31 = ((f26 * f22) + f11) / vec4(f30);
        float f32 = (0.75 * f11.w) + (0.25 * f31.w);
        vec4 f33 = f31;
        f33.w = f32;
        vec4 f34 = f33;
        f34.w = mix(f32, 0.0, f13);
        f28 = f34;
        f27 = vec2(f1, min(f30, 7.0) * 0.14285714924335479736328125);
    }
    _entryPointOutput_cloudColor = f28;
    _entryPointOutput_dist = f27;
}

//$$distTexture=s3
//$$cloudColorTexture=s0
//$$distLastFrameTexture=s4
//$$oldCloudColorTexture=s1
