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
    vec4 f0 = texture2D(texTexture, VARYING0.xy);
    vec4 f1 = texture2D(texTexture, VARYING3);
    float f2 = f0.w;
    float f3 = f1.w;
    vec3 f4 = mix(f0.xyz * f2, f1.xyz * f3, vec3(VARYING4));
    vec4 f5 = vec4(0.0);
    f5.x = f4.x;
    vec4 f6 = f5;
    f6.y = f4.y;
    vec4 f7 = f6;
    f7.z = f4.z;
    float f8 = mix(f2, f3, VARYING4);
    vec4 f9 = f7;
    f9.w = f8;
    vec3 f10 = f9.xyz * VARYING1.xyz;
    vec4 f11 = vec4(0.0);
    f11.x = f10.x;
    vec4 f12 = f11;
    f12.y = f10.y;
    vec4 f13 = f12;
    f13.z = f10.z;
    vec3 f14 = f13.xyz * f13.xyz;
    vec4 f15 = f13;
    f15.x = f14.x;
    vec4 f16 = f15;
    f16.y = f14.y;
    vec4 f17 = f16;
    f17.z = f14.z;
    vec4 f18 = texture2D(LightingAtlasTexture, VARYING2);
    vec3 f19 = mix(f17.xyz * CB1[3].y, (f18.xyz * (f18.w * 120.0)) * f17.xyz, vec3(CB1[2].w));
    vec4 f20 = f17;
    f20.x = f19.x;
    vec4 f21 = f20;
    f21.y = f19.y;
    vec4 f22 = f21;
    f22.z = f19.z;
    vec3 f23 = sqrt(clamp(f22.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f24 = f22;
    f24.x = f23.x;
    vec4 f25 = f24;
    f25.y = f23.y;
    vec4 f26 = f25;
    f26.z = f23.z;
    float f27 = VARYING1.w * clamp(exp2((CB0[18].z * VARYING0.z) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec4 f28 = f26;
    f28.w = f27;
    vec3 f29 = f28.xyz * f27;
    vec4 f30 = f28;
    f30.x = f29.x;
    vec4 f31 = f30;
    f31.y = f29.y;
    vec4 f32 = f31;
    f32.z = f29.z;
    float f33 = f27 * f8;
    vec4 f34 = f32;
    f34.w = f33;
    vec4 f35 = f34;
    f35.w = f33 * CB1[1].y;
    gl_FragData[0] = f35;
}

//$$LightingAtlasTexture=s2
//$$texTexture=s0
