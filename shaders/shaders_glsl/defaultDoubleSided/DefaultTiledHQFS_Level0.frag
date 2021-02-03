#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[53];
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
    float f11 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f12 = VARYING6.xyz * f11;
    vec3 f13 = VARYING5.xyz * f11;
    vec3 f14 = normalize(((f12 * f9) + (cross(f13, f12) * f8.y)) + (f13 * f7));
    vec3 f15 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f4.w + CB2[2].w, 0.0, 1.0))) * f4.xyz) * (1.0 + (f9 * CB2[0].z))) * (texture2D(StudsMapTexture, f1).x * 2.0), VARYING2.w).xyz;
    vec3 f16 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f17 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f18 = VARYING3.yzx - (VARYING3.yzx * f17);
    vec4 f19 = vec4(clamp(f17, 0.0, 1.0));
    vec4 f20 = mix(texture3D(LightMapTexture, f18), vec4(0.0), f19);
    vec4 f21 = mix(texture3D(LightGridSkylightTexture, f18), vec4(1.0), f19);
    vec4 f22 = texture2D(ShadowMapTexture, f16.xy);
    float f23 = f16.z;
    vec3 f24 = (f15 * f15).xyz;
    float f25 = CB0[26].w * f2;
    float f26 = max(f10.y, 0.04500000178813934326171875);
    float f27 = f10.x * f25;
    vec3 f28 = -CB0[11].xyz;
    float f29 = dot(f14, f28) * ((1.0 - ((step(f22.x, f23) * clamp(CB0[24].z + (CB0[24].w * abs(f23 - 0.5)), 0.0, 1.0)) * f22.y)) * f21.y);
    vec3 f30 = normalize(f28 + (VARYING4.xyz / vec3(f0)));
    float f31 = clamp(f29, 0.0, 1.0);
    float f32 = f26 * f26;
    float f33 = max(0.001000000047497451305389404296875, dot(f14, f30));
    float f34 = dot(f28, f30);
    float f35 = 1.0 - f34;
    float f36 = f35 * f35;
    float f37 = (f36 * f36) * f35;
    vec3 f38 = vec3(f37) + (mix(vec3(0.039999999105930328369140625), f24, vec3(f27)) * (1.0 - f37));
    float f39 = f32 * f32;
    float f40 = (((f33 * f39) - f33) * f33) + 1.0;
    float f41 = 1.0 - f27;
    vec3 f42 = ((((((vec3(f41) - (f38 * (f25 * f41))) * CB0[10].xyz) * f31) + (CB0[12].xyz * (f41 * clamp(-f29, 0.0, 1.0)))) + min((f20.xyz * (f20.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f21.x)), vec3(CB0[16].w))) * f24) + ((f38 * (((f39 + (f39 * f39)) / (((f40 * f40) * ((f34 * 3.0) + 0.5)) * ((f33 * 0.75) + 0.25))) * f31)) * CB0[10].xyz);
    vec4 f43 = vec4(f42.x, f42.y, f42.z, vec4(0.0).w);
    f43.w = VARYING2.w;
    vec3 f44 = sqrt(clamp(mix(CB0[14].xyz, f43.xyz, vec3(clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0))).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f45 = vec4(f44.x, f44.y, f44.z, f43.w);
    f45.w = VARYING2.w;
    gl_FragData[0] = f45;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
