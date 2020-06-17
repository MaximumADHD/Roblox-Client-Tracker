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
    vec2 f0 = VARYING1;
    f0.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float f1 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec2 f2 = VARYING0 * CB2[0].x;
    vec4 f3 = texture2D(DiffuseMapTexture, f2);
    vec2 f4 = texture2D(NormalMapTexture, f2).wy * 2.0;
    vec2 f5 = f4 - vec2(1.0);
    float f6 = sqrt(clamp(1.0 + dot(vec2(1.0) - f4, f5), 0.0, 1.0));
    vec2 f7 = (vec3(f5, f6).xy + (vec3((texture2D(NormalDetailMapTexture, f2 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f1;
    float f8 = f7.x;
    vec4 f9 = texture2D(SpecularMapTexture, f2);
    vec3 f10 = normalize(((VARYING6.xyz * f8) + (cross(VARYING5.xyz, VARYING6.xyz) * f7.y)) + (VARYING5.xyz * f6));
    vec3 f11 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f3.w + CB2[2].w, 0.0, 1.0))) * f3.xyz) * (1.0 + (f8 * CB2[0].z))) * (texture2D(StudsMapTexture, f0).x * 2.0), VARYING2.w).xyz;
    vec3 f12 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f13 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f14 = VARYING3.yzx - (VARYING3.yzx * f13);
    vec4 f15 = vec4(clamp(f13, 0.0, 1.0));
    vec4 f16 = mix(texture3D(LightMapTexture, f14), vec4(0.0), f15);
    vec4 f17 = mix(texture3D(LightGridSkylightTexture, f14), vec4(1.0), f15);
    vec4 f18 = texture2D(ShadowMapTexture, f12.xy);
    float f19 = f12.z;
    float f20 = length(VARYING4.xyz);
    vec3 f21 = (f11 * f11).xyz;
    float f22 = CB0[26].w * f1;
    float f23 = max(f9.y, 0.04500000178813934326171875);
    float f24 = f9.x * f22;
    vec3 f25 = -CB0[11].xyz;
    float f26 = dot(f10, f25) * ((1.0 - ((step(f18.x, f19) * clamp(CB0[24].z + (CB0[24].w * abs(f19 - 0.5)), 0.0, 1.0)) * f18.y)) * f17.y);
    vec3 f27 = normalize(f25 + (VARYING4.xyz / vec3(f20)));
    float f28 = clamp(f26, 0.0, 1.0);
    float f29 = f23 * f23;
    float f30 = max(0.001000000047497451305389404296875, dot(f10, f27));
    float f31 = dot(f25, f27);
    float f32 = 1.0 - f31;
    float f33 = f32 * f32;
    float f34 = (f33 * f33) * f32;
    vec3 f35 = vec3(f34) + (mix(vec3(0.039999999105930328369140625), f21, vec3(f24)) * (1.0 - f34));
    float f36 = f29 * f29;
    float f37 = (((f30 * f36) - f30) * f30) + 1.0;
    float f38 = 1.0 - f24;
    vec3 f39 = ((((((vec3(f38) - (f35 * (f22 * f38))) * CB0[10].xyz) * f28) + (CB0[12].xyz * (f38 * clamp(-f26, 0.0, 1.0)))) + min((f16.xyz * (f16.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f17.x)), vec3(CB0[16].w))) * f21) + ((f35 * (((f36 + (f36 * f36)) / (((f37 * f37) * ((f31 * 3.0) + 0.5)) * ((f30 * 0.75) + 0.25))) * f28)) * CB0[10].xyz);
    vec4 f40 = vec4(f39.x, f39.y, f39.z, vec4(0.0).w);
    f40.w = VARYING2.w;
    vec3 f41 = sqrt(clamp(mix(CB0[14].xyz, f40.xyz, vec3(clamp(exp2((CB0[13].z * f20) + CB0[13].x) - CB0[13].w, 0.0, 1.0))).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
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
