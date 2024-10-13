#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D StudsMapTexture;

varying vec3 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;

void main()
{
    vec2 f0 = VARYING1.xy;
    f0.y = (fract(VARYING1.y) + VARYING1.z) * 0.25;
    vec4 f1 = vec4((VARYING2.xyz * texture2D(StudsMapTexture, f0).x) * 2.0, VARYING2.w);
    vec3 f2 = f1.xyz;
    vec3 f3 = f2 * f2;
    vec4 f4 = f1;
    f4.x = f3.x;
    vec4 f5 = f4;
    f5.y = f3.y;
    vec4 f6 = f5;
    f6.z = f3.z;
    float f7 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f8 = VARYING3.yzx - (VARYING3.yzx * f7);
    vec4 f9 = vec4(clamp(f7, 0.0, 1.0));
    vec4 f10 = mix(texture3D(LightMapTexture, f8), vec4(0.0), f9);
    vec4 f11 = mix(texture3D(LightGridSkylightTexture, f8), vec4(1.0), f9);
    float f12 = f11.y;
    vec3 f13 = (((VARYING5.xyz * f12) + min((f10.xyz * (f10.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f11.x)), vec3(CB0[21].w))) * f6.xyz) + ((CB0[15].xyz * mix(vec3(0.100000001490116119384765625), f6.xyz, vec3(VARYING6.w * CB0[31].w))) * (VARYING5.w * f12));
    vec4 f14 = vec4(0.0);
    f14.x = f13.x;
    vec4 f15 = f14;
    f15.y = f13.y;
    vec4 f16 = f15;
    f16.z = f13.z;
    vec4 f17 = f16;
    f17.w = VARYING2.w;
    vec3 f18 = mix(CB0[19].xyz, f17.xyz, vec3(clamp(exp2((CB0[18].z * length(VARYING4.xyz)) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f19 = f17;
    f19.x = f18.x;
    vec4 f20 = f19;
    f20.y = f18.y;
    vec4 f21 = f20;
    f21.z = f18.z;
    vec3 f22 = sqrt(clamp(f21.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f23 = f21;
    f23.x = f22.x;
    vec4 f24 = f23;
    f24.y = f22.y;
    vec4 f25 = f24;
    f25.z = f22.z;
    vec4 f26 = f25;
    f26.w = VARYING2.w;
    gl_FragData[0] = f26;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$StudsMapTexture=s0
