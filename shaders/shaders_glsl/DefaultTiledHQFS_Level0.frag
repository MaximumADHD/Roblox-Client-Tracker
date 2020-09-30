#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[52];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D StudsMapTexture;
uniform sampler2D SpecularMapTexture;

varying vec2 VARYING0;
varying vec2 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;
varying float VARYING8;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec2 f1 = VARYING1;
    f1.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float f2 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec2 f3 = VARYING0 * CB2[0].x;
    vec4 f4 = texture2D(DiffuseMapTexture, f3);
    vec2 f5 = texture2D(NormalMapTexture, f3).wy * 2.0;
    vec2 f6 = f5 - vec2(1.0);
    float f7 = sqrt(clamp(1.0 + dot(vec2(1.0) - f5, f6), 0.0, 1.0));
    vec2 f8 = (vec3(f6, f7).xy + (vec3((texture2D(NormalDetailMapTexture, f3 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f2;
    float f9 = f8.x;
    vec4 f10 = texture2D(SpecularMapTexture, f3);
    vec3 f11 = normalize(((VARYING6.xyz * f9) + (cross(VARYING5.xyz, VARYING6.xyz) * f8.y)) + (VARYING5.xyz * f7));
    vec3 f12 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f4.w + CB2[2].w, 0.0, 1.0))) * f4.xyz) * (1.0 + (f9 * CB2[0].z))) * (texture2D(StudsMapTexture, f1).x * 2.0), VARYING2.w).xyz;
    vec3 f13 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f14 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f15 = VARYING3.yzx - (VARYING3.yzx * f14);
    vec4 f16 = vec4(clamp(f14, 0.0, 1.0));
    vec4 f17 = mix(texture3D(LightMapTexture, f15), vec4(0.0), f16);
    vec4 f18 = mix(texture3D(LightGridSkylightTexture, f15), vec4(1.0), f16);
    vec4 f19 = texture2D(ShadowMapTexture, f13.xy);
    float f20 = f13.z;
    vec3 f21 = (f12 * f12).xyz;
    float f22 = CB0[26].w * f2;
    float f23 = max(f10.y, 0.04500000178813934326171875);
    float f24 = f10.x * f22;
    vec3 f25 = -CB0[11].xyz;
    float f26 = dot(f11, f25) * ((1.0 - ((step(f19.x, f20) * clamp(CB0[24].z + (CB0[24].w * abs(f20 - 0.5)), 0.0, 1.0)) * f19.y)) * f18.y);
    vec3 f27 = normalize(f25 + (VARYING4.xyz / vec3(f0)));
    float f28 = clamp(f26, 0.0, 1.0);
    float f29 = f23 * f23;
    float f30 = max(0.001000000047497451305389404296875, dot(f11, f27));
    float f31 = dot(f25, f27);
    float f32 = 1.0 - f31;
    float f33 = f32 * f32;
    float f34 = (f33 * f33) * f32;
    vec3 f35 = vec3(f34) + (mix(vec3(0.039999999105930328369140625), f21, vec3(f24)) * (1.0 - f34));
    float f36 = f29 * f29;
    float f37 = (((f30 * f36) - f30) * f30) + 1.0;
    float f38 = 1.0 - f24;
    vec3 f39 = ((((((vec3(f38) - (f35 * (f22 * f38))) * CB0[10].xyz) * f28) + (CB0[12].xyz * (f38 * clamp(-f26, 0.0, 1.0)))) + min((f17.xyz * (f17.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f18.x)), vec3(CB0[16].w))) * f21) + ((f35 * (((f36 + (f36 * f36)) / (((f37 * f37) * ((f31 * 3.0) + 0.5)) * ((f30 * 0.75) + 0.25))) * f28)) * CB0[10].xyz);
    vec4 f40 = vec4(f39.x, f39.y, f39.z, vec4(0.0).w);
    f40.w = VARYING2.w;
    vec3 f41 = sqrt(clamp(mix(CB0[14].xyz, f40.xyz, vec3(clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0))).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f42 = vec4(f41.x, f41.y, f41.z, f40.w);
    f42.w = VARYING2.w;
    gl_FragData[0] = f42;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
