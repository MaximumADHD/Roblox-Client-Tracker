#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <AdvancedUIShadingParams.h>
uniform vec4 CB0[57];
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
    vec3 f5 = f0.xyz / vec3(f4);
    bvec3 f6 = bvec3(f4 == 0.0);
    vec4 f7 = vec4(vec3(f6.x ? vec3(0.0).x : f5.x, f6.y ? vec3(0.0).y : f5.y, f6.z ? vec3(0.0).z : f5.z), f4);
    bvec4 f8 = bvec4(CB2[0].y > 1.5);
    vec4 f9 = VARYING1 * vec4(f8.x ? f7.x : f3.x, f8.y ? f7.y : f3.y, f8.z ? f7.z : f3.z, f8.w ? f7.w : f3.w);
    vec2 f10 = abs(vec2((VARYING0.x * CB3[0].x) + CB3[0].y, (VARYING0.y * CB3[0].z) + CB3[0].w)) - CB3[1].xy;
    float f11 = length(max(f10, vec2(0.0))) + min(max(f10.x, f10.y), 0.0);
    float f12 = (f9.w * clamp(CB3[1].z - f11, 0.0, 1.0)) * clamp(f11 - CB3[1].w, 0.0, 1.0);
    vec4 f13 = f9;
    f13.w = f12;
    vec4 f14 = f13;
    f14.w = f12;
    vec3 f15 = f14.xyz * f14.xyz;
    vec4 f16 = f14;
    f16.x = f15.x;
    vec4 f17 = f16;
    f17.y = f15.y;
    vec4 f18 = f17;
    f18.z = f15.z;
    float f19 = clamp(dot(step(CB0[24].xyz, abs(VARYING3 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f20 = VARYING3.yzx - (VARYING3.yzx * f19);
    vec4 f21 = vec4(clamp(f19, 0.0, 1.0));
    vec4 f22 = mix(texture3D(LightMapTexture, f20), vec4(0.0), f21);
    vec4 f23 = mix(texture3D(LightGridSkylightTexture, f20), vec4(1.0), f21);
    vec4 f24 = texture2D(ShadowMapTexture, VARYING4.xy);
    vec3 f25 = mix(f18.xyz * CB2[0].w, (min((f22.xyz * (f22.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f23.x)), vec3(CB0[21].w)) + (VARYING2 * ((1.0 - ((step(f24.x, VARYING4.z) * clamp(CB0[29].z + (CB0[29].w * abs(VARYING4.z - 0.5)), 0.0, 1.0)) * f24.y)) * f23.y))) * f18.xyz, vec3(CB2[0].z));
    vec4 f26 = f18;
    f26.x = f25.x;
    vec4 f27 = f26;
    f27.y = f25.y;
    vec4 f28 = f27;
    f28.z = f25.z;
    vec3 f29 = mix(CB0[19].xyz, f28.xyz, vec3(clamp(exp2((CB0[18].z * length(VARYING5)) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f30 = f28;
    f30.x = f29.x;
    vec4 f31 = f30;
    f31.y = f29.y;
    vec4 f32 = f31;
    f32.z = f29.z;
    vec3 f33 = sqrt(clamp(f32.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f34 = f32;
    f34.x = f33.x;
    vec4 f35 = f34;
    f35.y = f33.y;
    vec4 f36 = f35;
    f36.z = f33.z;
    gl_FragData[0] = f36;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s0
