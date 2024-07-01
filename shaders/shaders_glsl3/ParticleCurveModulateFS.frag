#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <EmitterParams.h>
uniform vec4 CB0[58];
uniform vec4 CB1[4];
uniform sampler2D LightingAtlasTexture;
uniform sampler2D texTexture;

in vec3 VARYING0;
in vec4 VARYING1;
in vec2 VARYING2;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(texTexture, VARYING0.xy);
    vec4 f1 = VARYING1 * CB1[0];
    vec3 f2 = f0.xyz * f1.xyz;
    vec4 f3 = vec4(0.0);
    f3.x = f2.x;
    vec4 f4 = f3;
    f4.y = f2.y;
    vec4 f5 = f4;
    f5.z = f2.z;
    float f6 = (f0.w * f1.w) * clamp(exp2((CB0[18].z * VARYING0.z) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec4 f7 = f5;
    f7.w = f6;
    vec4 f8 = f7;
    f8.w = f6;
    vec3 f9 = f8.xyz * f8.xyz;
    vec4 f10 = f8;
    f10.x = f9.x;
    vec4 f11 = f10;
    f11.y = f9.y;
    vec4 f12 = f11;
    f12.z = f9.z;
    vec4 f13 = texture(LightingAtlasTexture, VARYING2);
    vec3 f14 = mix(f12.xyz, (f13.xyz * (f13.w * 120.0)) * f12.xyz, vec3(CB1[2].w));
    vec4 f15 = f12;
    f15.x = f14.x;
    vec4 f16 = f15;
    f16.y = f14.y;
    vec4 f17 = f16;
    f17.z = f14.z;
    vec3 f18 = sqrt(clamp(f17.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f19 = f17;
    f19.x = f18.x;
    vec4 f20 = f19;
    f20.y = f18.y;
    vec4 f21 = f20;
    f21.z = f18.z;
    _entryPointOutput = f21;
}

//$$LightingAtlasTexture=s2
//$$texTexture=s0
