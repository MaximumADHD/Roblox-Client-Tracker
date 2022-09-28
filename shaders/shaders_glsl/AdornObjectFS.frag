#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;

varying vec4 VARYING1;
varying vec3 VARYING2;
varying vec3 VARYING3;
varying vec3 VARYING4;

void main()
{
    float f0 = clamp(dot(step(CB0[24].xyz, abs(VARYING3 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f1 = VARYING3.yzx - (VARYING3.yzx * f0);
    vec4 f2 = vec4(clamp(f0, 0.0, 1.0));
    vec4 f3 = mix(texture3D(LightMapTexture, f1), vec4(0.0), f2);
    vec3 f4 = (min((f3.xyz * (f3.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * mix(texture3D(LightGridSkylightTexture, f1), vec4(1.0), f2).x)), vec3(CB0[21].w)) + VARYING2) * (VARYING1.xyz * VARYING1.xyz);
    vec4 f5 = vec4(0.0);
    f5.x = f4.x;
    vec4 f6 = f5;
    f6.y = f4.y;
    vec4 f7 = f6;
    f7.z = f4.z;
    vec4 f8 = f7;
    f8.w = VARYING1.w;
    vec3 f9 = sqrt(clamp(mix(CB0[19].xyz, f8.xyz, vec3(clamp(exp2((CB0[18].z * length(VARYING4)) + CB0[18].x) - CB0[18].w, 0.0, 1.0))) * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f10 = f8;
    f10.x = f9.x;
    vec4 f11 = f10;
    f11.y = f9.y;
    vec4 f12 = f11;
    f12.z = f9.z;
    gl_FragData[0] = f12;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
