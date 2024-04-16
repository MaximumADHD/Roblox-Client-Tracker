#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[57];
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
    vec3 f9 = -VARYING4;
    vec3 f10 = f9 * f9;
    bvec3 f11 = lessThan(f9, vec3(0.0));
    vec3 f12 = vec3(f11.x ? f10.x : vec3(0.0).x, f11.y ? f10.y : vec3(0.0).y, f11.z ? f10.z : vec3(0.0).z);
    vec3 f13 = f10 - f12;
    vec3 f14 = (((((CB0[34].xyz * f13.x) + (CB0[36].xyz * f13.y)) + (CB0[38].xyz * f13.z)) + (CB0[35].xyz * f12.x)) + (CB0[37].xyz * f12.y)) + (CB0[39].xyz * f12.z);
    bvec3 f15 = bvec3(!(CB0[18].w == 0.0));
    vec3 f16 = sqrt(clamp(mix(vec3(f15.x ? CB0[19].xyz.x : f14.x, f15.y ? CB0[19].xyz.y : f14.y, f15.z ? CB0[19].xyz.z : f14.z), f8.xyz, vec3(clamp(exp2((CB0[18].z * length(VARYING4)) + CB0[18].x) - CB0[18].w, 0.0, 1.0))) * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f17 = f8;
    f17.x = f16.x;
    vec4 f18 = f17;
    f18.y = f16.y;
    vec4 f19 = f18;
    f19.z = f16.z;
    gl_FragData[0] = f19;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
