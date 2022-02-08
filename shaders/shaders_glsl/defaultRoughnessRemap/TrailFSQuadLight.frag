#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <TrailParams.h>
uniform vec4 CB0[53];
uniform vec4 CB1[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D texTexture;

varying vec3 VARYING0;
varying vec4 VARYING1;
varying vec3 VARYING2;
varying vec3 VARYING3;
varying vec3 VARYING4;

void main()
{
    vec4 f0 = texture2D(texTexture, VARYING0.xy / vec2(VARYING0.z));
    vec3 f1 = (f0.xyz * VARYING1.xyz).xyz;
    float f2 = clamp(dot(step(CB0[19].xyz, abs(VARYING2 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f3 = VARYING2.yzx - (VARYING2.yzx * f2);
    vec4 f4 = vec4(clamp(f2, 0.0, 1.0));
    vec4 f5 = mix(texture3D(LightMapTexture, f3), vec4(0.0), f4);
    vec4 f6 = mix(texture3D(LightGridSkylightTexture, f3), vec4(1.0), f4);
    vec4 f7 = texture2D(ShadowMapTexture, VARYING3.xy);
    vec3 f8 = (f1 * f1).xyz;
    float f9 = clamp(exp2((CB0[13].z * length(VARYING4)) + CB0[13].x) - CB0[13].w, 0.0, 1.0) * (VARYING1.w * f0.w);
    vec3 f10 = sqrt(clamp(mix(f8 * CB1[0].w, (min((f5.xyz * (f5.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f6.x)), vec3(CB0[16].w)) + (CB0[10].xyz * ((1.0 - ((step(f7.x, VARYING3.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING3.z - 0.5)), 0.0, 1.0)) * f7.y)) * f6.y))) * f8, vec3(CB1[0].z)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz * f9;
    vec4 f11 = vec4(f10.x, f10.y, f10.z, vec4(0.0).w);
    f11.w = f9 * CB1[0].y;
    gl_FragData[0] = f11;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$texTexture=s0
