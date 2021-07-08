#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <RayFrame.h>
#include <Params.h>
#include <Globals.h>
#include <CBMatrix.h>
uniform vec4 CB4[1];
uniform vec4 CB1[8];
uniform vec4 CB0[53];
uniform vec4 CB3[4];
uniform sampler2D dist;
uniform sampler2D distLastFrame;
uniform sampler2D cloudColor;
uniform sampler2D oldCloudColor;

varying vec2 VARYING0;

void main()
{
    vec4 f0 = texture2DLod(dist, VARYING0, 0.0);
    float f1 = f0.x;
    float f2 = f1 * 500.0;
    vec2 f3 = CB4[0].zw * (((VARYING0 * CB1[0].xy) * CB4[0].xy) - vec2(1.0));
    float f4 = f3.x;
    float f5 = f3.y;
    if (normalize(((CB0[4].xyz * f4) + (CB0[5].xyz * f5)) - CB0[6].xyz).y < (-0.5))
    {
        discard;
    }
    vec4 f6 = vec4((normalize(((vec3(1.0, 0.0, 0.0) * f4) + (vec3(0.0, 1.0, 0.0) * f5)) - vec3(0.0, 0.0, 1.0)) * 3571.428466796875) * f2, 1.0);
    vec4 f7 = f6 * mat4(CB3[0], CB3[1], CB3[2], CB3[3]);
    vec4 f8 = f7 / vec4(f7.w);
    vec4 f9 = f8;
    f9.y = f8.y * (-1.0);
    vec2 f10 = ((f9.xy + vec2(1.0)) * 0.5).xy;
    vec4 f11 = texture2DLod(distLastFrame, f10, 0.0);
    float f12 = f11.y * 7.0;
    vec2 f13 = CB4[0].zw * (((f10 * CB1[0].xy) * CB4[0].xy) - vec2(1.0));
    vec3 f14 = normalize(((CB1[1].xyz * f13.x) + (CB1[2].xyz * f13.y)) - CB1[3].xyz);
    vec3 f15 = normalize(vec3(dot(f14, CB0[4].xyz), dot(f14, CB0[5].xyz), -dot(f14, CB0[6].xyz))) * (f11.x * 500.0);
    vec4 f16 = texture2DLod(oldCloudColor, f10, 0.0);
    vec4 f17 = vec4(1.0, 1.0, -1.0, 0.0) * CB1[0].zwzw;
    vec2 f18 = f17.xy;
    vec2 f19 = f17.wy;
    vec2 f20 = f17.zy;
    vec4 f21 = (((((((((texture2DLod(cloudColor, VARYING0, 0.0) * 4.0) + texture2DLod(cloudColor, VARYING0 - f18, 0.0)) + (texture2DLod(cloudColor, VARYING0 - f19, 0.0) * 2.0)) + texture2DLod(cloudColor, VARYING0 - f20, 0.0)) + (texture2DLod(cloudColor, VARYING0 + f17.zw, 0.0) * 2.0)) + (texture2DLod(cloudColor, VARYING0 + f17.xw, 0.0) * 2.0)) + texture2DLod(cloudColor, VARYING0 + f20, 0.0)) + (texture2DLod(cloudColor, VARYING0 + f19, 0.0) * 2.0)) + texture2DLod(cloudColor, VARYING0 + f18, 0.0)) * vec4(0.0625);
    float f22 = clamp((f2 - 227.4499969482421875) * 0.0975609719753265380859375, 0.0, 1.0);
    float f23 = f22 * f22;
    vec2 f24;
    vec4 f25;
    if (((((dot(f15, f15) > 0.0) ? abs(1.0 - (length(f6.xyz * 0.00028000000747852027416229248046875) / (9.9999997473787516355514526367188e-06 + length(f15)))) : 0.0) >= 0.001000000047497451305389404296875) || (CB1[4].w > 0.5)) || (abs(dot(f21, vec4(1.0)) - dot(f16, vec4(1.0))) > 0.15299999713897705078125))
    {
        vec4 f26 = f21;
        f26.w = mix(f21.w, 0.0, f23);
        f25 = f26;
        f24 = vec2(f1, 0.14285714924335479736328125);
    }
    else
    {
        float f27 = f12 + 1.0;
        vec4 f28 = ((f16 * f12) + f21) / vec4(f27);
        float f29 = (0.75 * f21.w) + (0.25 * f28.w);
        vec4 f30 = f28;
        f30.w = f29;
        vec4 f31 = f30;
        f31.w = mix(f29, 0.0, f23);
        f25 = f31;
        f24 = vec2(f1, min(f27, 7.0) * 0.14285714924335479736328125);
    }
    gl_FragData[0] = f25;
    gl_FragData[1] = f24;
}

//$$dist=s3
//$$distLastFrame=s4
//$$cloudColor=s0
//$$oldCloudColor=s1
