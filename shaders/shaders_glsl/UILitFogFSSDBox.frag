#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <AdvancedUIShadingParams.h>
uniform vec4 CB0[53];
uniform vec4 CB2[1];
uniform vec4 CB3[2];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING1;
varying vec3 VARYING2;
varying vec3 VARYING3;
varying vec4 VARYING4;
varying vec3 VARYING5;

void main()
{
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING0);
    vec4 f1 = vec4(1.0, 1.0, 1.0, f0.x);
    bvec4 f2 = bvec4(CB2[0].y > 0.5);
    vec4 f3 = vec4(f2.x ? f1.x : f0.x, f2.y ? f1.y : f0.y, f2.z ? f1.z : f0.z, f2.w ? f1.w : f0.w);
    float f4 = f0.w;
    vec4 f5 = vec4(f0.xyz / vec3(f4), f4);
    bvec4 f6 = bvec4(CB2[0].y > 1.5);
    vec4 f7 = VARYING1 * vec4(f6.x ? f5.x : f3.x, f6.y ? f5.y : f3.y, f6.z ? f5.z : f3.z, f6.w ? f5.w : f3.w);
    vec2 f8 = abs(vec2((VARYING0.x * CB3[0].x) + CB3[0].y, (VARYING0.y * CB3[0].z) + CB3[0].w)) - CB3[1].xy;
    float f9 = length(max(f8, vec2(0.0))) + min(max(f8.x, f8.y), 0.0);
    float f10 = (f7.w * clamp(CB3[1].z - f9, 0.0, 1.0)) * clamp(f9 - CB3[1].w, 0.0, 1.0);
    vec4 f11 = f7;
    f11.w = f10;
    vec4 f12 = f11;
    f12.w = f10;
    vec3 f13 = f12.xyz * f12.xyz;
    vec4 f14 = f12;
    f14.x = f13.x;
    vec4 f15 = f14;
    f15.y = f13.y;
    vec4 f16 = f15;
    f16.z = f13.z;
    float f17 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f18 = VARYING3.yzx - (VARYING3.yzx * f17);
    vec4 f19 = vec4(clamp(f17, 0.0, 1.0));
    vec4 f20 = mix(texture3D(LightMapTexture, f18), vec4(0.0), f19);
    vec4 f21 = mix(texture3D(LightGridSkylightTexture, f18), vec4(1.0), f19);
    vec4 f22 = texture2D(ShadowMapTexture, VARYING4.xy);
    vec3 f23 = mix(f16.xyz * CB2[0].w, (min((f20.xyz * (f20.w * 120.0)) + (CB0[8].xyz + (CB0[9].xyz * f21.x)), vec3(CB0[16].w)) + (VARYING2 * ((1.0 - ((step(f22.x, VARYING4.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING4.z - 0.5)), 0.0, 1.0)) * f22.y)) * f21.y))) * f16.xyz, vec3(CB2[0].z));
    vec4 f24 = f16;
    f24.x = f23.x;
    vec4 f25 = f24;
    f25.y = f23.y;
    vec4 f26 = f25;
    f26.z = f23.z;
    vec3 f27 = mix(CB0[14].xyz, f26.xyz, vec3(clamp(exp2((CB0[13].z * length(VARYING5)) + CB0[13].x) - CB0[13].w, 0.0, 1.0)));
    vec4 f28 = f26;
    f28.x = f27.x;
    vec4 f29 = f28;
    f29.y = f27.y;
    vec4 f30 = f29;
    f30.z = f27.z;
    vec3 f31 = sqrt(clamp(f30.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f32 = f30;
    f32.x = f31.x;
    vec4 f33 = f32;
    f33.y = f31.y;
    vec4 f34 = f33;
    f34.z = f31.z;
    gl_FragData[0] = f34;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s0
