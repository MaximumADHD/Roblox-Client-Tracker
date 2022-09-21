#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;

in vec3 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    float f0 = clamp(dot(step(CB0[24].xyz, abs(VARYING0 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f1 = VARYING0.yzx - (VARYING0.yzx * f0);
    vec4 f2 = vec4(clamp(f0, 0.0, 1.0));
    vec4 f3 = mix(texture(LightMapTexture, f1), vec4(0.0), f2);
    vec4 f4 = mix(texture(LightGridSkylightTexture, f1), vec4(1.0), f2);
    vec3 f5 = (min((f3.xyz * (f3.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f4.x)), vec3(CB0[21].w)) + (CB0[15].xyz * f4.y)) * 0.008333333767950534820556640625;
    float f6 = clamp(max(max(f5.x, f5.y), max(f5.z, 0.0500000007450580596923828125)), 0.0, 1.0);
    vec4 f7 = vec4(0.0);
    f7.w = f6;
    float f8 = ceil(f6 * 255.0) * 0.0039215688593685626983642578125;
    vec4 f9 = f7;
    f9.w = f8;
    vec3 f10 = f5 / vec3(f8);
    vec4 f11 = f9;
    f11.x = f10.x;
    vec4 f12 = f11;
    f12.y = f10.y;
    vec4 f13 = f12;
    f13.z = f10.z;
    _entryPointOutput = f13;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
