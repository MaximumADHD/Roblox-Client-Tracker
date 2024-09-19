#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
#include <Globals.h>
uniform vec4 CB1[22];
uniform vec4 CB0[58];
uniform sampler2D DiffuseMapTexture;

varying vec3 VARYING0;
varying vec2 VARYING1;
varying vec4 VARYING2;

void main()
{
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING1);
    float f1 = f0.w;
    vec3 f2 = (f0.xyz + vec3(0.00196078442968428134918212890625)) * exp2((floor(f1 * 255.0) * 0.125) - 16.0);
    bvec3 f3 = bvec3(f1 > 0.0);
    vec4 f4 = vec4(vec3(f3.x ? f2.x : vec3(0.0).x, f3.y ? f2.y : vec3(0.0).y, f3.z ? f2.z : vec3(0.0).z), 1.0) * VARYING2;
    vec3 f5 = normalize(VARYING0);
    float f6 = exp2(CB1[14].x / (0.001000000047497451305389404296875 + pow(max(f5.y, 9.9999997473787516355514526367188e-06), CB1[14].y)));
    vec3 f7 = clamp(f5, vec3(0.0), vec3(1.0));
    vec3 f8 = f7 * f7;
    vec3 f9 = clamp(-f5, vec3(0.0), vec3(1.0));
    vec3 f10 = f9 * f9;
    float f11 = clamp(f6, 0.0, 1.0);
    vec3 f12 = mix(vec4((((((((CB1[16] * f8.x) + (CB1[17] * f10.x)) + (CB1[18] * f8.y)) + (CB1[19] * f10.y)) + (CB1[20] * f8.z)) + (CB1[21] * f10.z)).xyz * CB0[19].xyz) + (CB0[15].xyz * (clamp(pow(vec3(0.5 + (dot(f5, -CB0[16].xyz) * 0.5)), CB1[15].xyz) * (1.0 - f6), vec3(0.0), vec3(1.0)) * CB1[15].w)), f11).xyz, f4.xyz, vec3(clamp(f11, 0.0, 1.0)));
    vec4 f13 = f4;
    f13.x = f12.x;
    vec4 f14 = f13;
    f14.y = f12.y;
    vec4 f15 = f14;
    f15.z = f12.z;
    gl_FragData[0] = vec4(sqrt(clamp(f15.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) * f4.w, max(1.0 - f11, step(0.5, min(f0.x, f1))));
}

//$$DiffuseMapTexture=s0
