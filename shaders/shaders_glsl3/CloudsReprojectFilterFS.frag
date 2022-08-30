#version 150

#extension GL_ARB_shading_language_include : require
#include <RayFrame.h>
#include <Params.h>
#include <Globals.h>
#include <CBMatrix.h>
uniform vec4 CB4[2];
uniform vec4 CB1[10];
uniform vec4 CB0[53];
uniform vec4 CB3[4];
uniform sampler2D dist;
uniform sampler2D cloudColor;
uniform sampler2D distLastFrame;
uniform sampler2D oldCloudColor;

in vec2 VARYING0;
out vec4 _entryPointOutput_cloudColor;
out vec2 _entryPointOutput_dist;

void main()
{
    vec4 f0 = textureLod(dist, VARYING0, 0.0);
    float f1 = f0.x;
    float f2 = f1 * 500.0;
    vec2 f3 = (CB4[0].zw * (((VARYING0 * CB1[0].xy) * CB4[0].xy) - vec2(1.0))) + CB4[1].xy;
    float f4 = f3.x;
    float f5 = f3.y;
    if (normalize(((CB0[4].xyz * f4) + (CB0[5].xyz * f5)) - CB0[6].xyz).y < (-0.5))
    {
        discard;
    }
    vec4 f6 = vec4(1.0, 1.0, -1.0, 0.0) * CB1[0].zwzw;
    vec2 f7 = f6.xy;
    vec2 f8 = f6.wy;
    vec2 f9 = f6.zy;
    vec4 f10 = (((((((((textureLod(cloudColor, VARYING0, 0.0) * 4.0) + textureLod(cloudColor, VARYING0 - f7, 0.0)) + (textureLod(cloudColor, VARYING0 - f8, 0.0) * 2.0)) + textureLod(cloudColor, VARYING0 - f9, 0.0)) + (textureLod(cloudColor, VARYING0 + f6.zw, 0.0) * 2.0)) + (textureLod(cloudColor, VARYING0 + f6.xw, 0.0) * 2.0)) + textureLod(cloudColor, VARYING0 + f9, 0.0)) + (textureLod(cloudColor, VARYING0 + f8, 0.0) * 2.0)) + textureLod(cloudColor, VARYING0 + f7, 0.0)) * vec4(0.0625);
    float f11 = clamp((f2 - 227.4499969482421875) * 0.0975609719753265380859375, 0.0, 1.0);
    float f12 = f11 * f11;
    vec4 f13 = vec4((normalize(((vec3(1.0, 0.0, 0.0) * f4) + (vec3(0.0, 1.0, 0.0) * f5)) - vec3(0.0, 0.0, 1.0)) * 3571.428466796875) * f2, 1.0);
    vec4 f14 = f13 * mat4(CB3[0], CB3[1], CB3[2], CB3[3]);
    vec4 f15 = f14 / vec4(f14.w);
    vec4 f16 = f15;
    f16.y = f15.y * (-1.0);
    vec2 f17 = (f16.xy + vec2(1.0)) * 0.5;
    vec4 f18 = vec4(0.0);
    f18.x = f17.x;
    vec4 f19 = f18;
    f19.y = f17.y;
    vec4 f20 = textureLod(distLastFrame, f19.xy, 0.0);
    float f21 = f20.y * 7.0;
    vec2 f22 = (CB4[0].zw * (((f19.xy * CB1[0].xy) * CB4[0].xy) - vec2(1.0))) + CB4[1].xy;
    vec3 f23 = normalize(((CB1[1].xyz * f22.x) + (CB1[2].xyz * f22.y)) - CB1[3].xyz);
    vec3 f24 = normalize(vec3(dot(f23, CB0[4].xyz), dot(f23, CB0[5].xyz), -dot(f23, CB0[6].xyz))) * (f20.x * 500.0);
    vec4 f25 = textureLod(oldCloudColor, f19.xy, 0.0);
    vec2 f26;
    vec4 f27;
    if (((((dot(f24, f24) > 0.0) ? abs(1.0 - (length(f13.xyz * 0.00028000000747852027416229248046875) / (9.9999997473787516355514526367188e-06 + length(f24)))) : 0.0) >= 0.001000000047497451305389404296875) || (CB1[4].w > 0.5)) || (abs(dot(f10, vec4(1.0)) - dot(f25, vec4(1.0))) > 0.15299999713897705078125))
    {
        vec4 f28 = f10;
        f28.w = mix(f10.w, 0.0, f12);
        f27 = f28;
        f26 = vec2(f1, 0.14285714924335479736328125);
    }
    else
    {
        float f29 = f21 + 1.0;
        vec4 f30 = ((f25 * f21) + f10) / vec4(f29);
        float f31 = (0.75 * f10.w) + (0.25 * f30.w);
        vec4 f32 = f30;
        f32.w = f31;
        vec4 f33 = f32;
        f33.w = mix(f31, 0.0, f12);
        f27 = f33;
        f26 = vec2(f1, min(f29, 7.0) * 0.14285714924335479736328125);
    }
    _entryPointOutput_cloudColor = f27;
    _entryPointOutput_dist = f26;
}

//$$dist=s3
//$$cloudColor=s0
//$$distLastFrame=s4
//$$oldCloudColor=s1
