#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <AdvancedUIShadingParams.h>
uniform vec4 CB0[53];
uniform vec4 CB2[1];
uniform vec4 CB3[2];
uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING1;
varying vec3 VARYING2;

void main()
{
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING0);
    vec4 f1 = vec4(1.0, 1.0, 1.0, f0.x);
    bvec4 f2 = bvec4(CB2[0].y > 0.5);
    vec4 f3 = VARYING1 * vec4(f2.x ? f1.x : f0.x, f2.y ? f1.y : f0.y, f2.z ? f1.z : f0.z, f2.w ? f1.w : f0.w);
    vec2 f4 = abs(vec2((VARYING0.x * CB3[0].x) + CB3[0].y, (VARYING0.y * CB3[0].z) + CB3[0].w)) - CB3[1].xy;
    float f5 = length(max(f4, vec2(0.0))) + min(max(f4.x, f4.y), 0.0);
    float f6 = (f3.w * clamp(CB3[1].z - f5, 0.0, 1.0)) * clamp(f5 - CB3[1].w, 0.0, 1.0);
    vec4 f7 = f3;
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
    vec3 f13 = mix(CB0[14].xyz, f12.xyz, vec3(clamp(exp2((CB0[13].z * length(VARYING2)) + CB0[13].x) - CB0[13].w, 0.0, 1.0)));
    vec4 f14 = f12;
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
    gl_FragData[0] = f20;
}

//$$DiffuseMapTexture=s0
