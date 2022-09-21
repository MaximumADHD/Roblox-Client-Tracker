#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <EmitterParams.h>
uniform vec4 CB0[58];
uniform vec4 CB1[4];
uniform sampler2D LightingAtlasTexture;
uniform sampler2D texTexture;

varying vec3 VARYING0;
varying vec4 VARYING1;
varying vec2 VARYING2;
varying vec2 VARYING3;
varying float VARYING4;

void main()
{
    vec4 f0 = mix(texture2D(texTexture, VARYING0.xy), texture2D(texTexture, VARYING3), vec4(VARYING4));
    vec3 f1 = f0.xyz * VARYING1.xyz;
    vec4 f2 = vec4(0.0);
    f2.x = f1.x;
    vec4 f3 = f2;
    f3.y = f1.y;
    vec4 f4 = f3;
    f4.z = f1.z;
    vec3 f5 = f4.xyz * f4.xyz;
    vec4 f6 = f4;
    f6.x = f5.x;
    vec4 f7 = f6;
    f7.y = f5.y;
    vec4 f8 = f7;
    f8.z = f5.z;
    vec4 f9 = texture2D(LightingAtlasTexture, VARYING2);
    vec3 f10 = mix(f8.xyz * CB1[3].y, (f9.xyz * (f9.w * 120.0)) * f8.xyz, vec3(CB1[2].w));
    vec4 f11 = f8;
    f11.x = f10.x;
    vec4 f12 = f11;
    f12.y = f10.y;
    vec4 f13 = f12;
    f13.z = f10.z;
    vec3 f14 = sqrt(clamp(f13.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f15 = f13;
    f15.x = f14.x;
    vec4 f16 = f15;
    f16.y = f14.y;
    vec4 f17 = f16;
    f17.z = f14.z;
    float f18 = (VARYING1.w * f0.w) * clamp(exp2((CB0[18].z * VARYING0.z) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec4 f19 = f17;
    f19.w = f18;
    vec3 f20 = f19.xyz * f18;
    vec4 f21 = f19;
    f21.x = f20.x;
    vec4 f22 = f21;
    f22.y = f20.y;
    vec4 f23 = f22;
    f23.z = f20.z;
    vec4 f24 = f23;
    f24.w = f18 * CB1[1].y;
    gl_FragData[0] = f24;
}

//$$LightingAtlasTexture=s2
//$$texTexture=s0
