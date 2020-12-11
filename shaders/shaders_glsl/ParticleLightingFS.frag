#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;

varying vec3 VARYING0;

void main()
{
    float f0 = clamp(dot(step(CB0[19].xyz, abs(VARYING0 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f1 = VARYING0.yzx - (VARYING0.yzx * f0);
    vec4 f2 = vec4(clamp(f0, 0.0, 1.0));
    vec4 f3 = mix(texture3D(LightMapTexture, f1), vec4(0.0), f2);
    vec4 f4 = mix(texture3D(LightGridSkylightTexture, f1), vec4(1.0), f2);
    vec3 f5 = (min((f3.xyz * (f3.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f4.x)), vec3(CB0[16].w)) + (CB0[10].xyz * f4.y)) * 0.008333333767950534820556640625;
    float f6 = ceil(clamp(max(max(f5.x, f5.y), max(f5.z, 0.0500000007450580596923828125)), 0.0, 1.0) * 255.0) * 0.0039215688593685626983642578125;
    vec4 f7 = vec4(0.0);
    f7.w = f6;
    vec3 f8 = f5 / vec3(f6);
    gl_FragData[0] = vec4(f8.x, f8.y, f8.z, f7.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
