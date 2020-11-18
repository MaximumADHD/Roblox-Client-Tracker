#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[52];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube EnvironmentMapTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;

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
    vec3 f1 = VARYING4.xyz / vec3(f0);
    vec2 f2 = VARYING1;
    f2.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float f3 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec2 f4 = texture2D(NormalMapTexture, f2).wy * 2.0;
    vec2 f5 = f4 - vec2(1.0);
    float f6 = sqrt(clamp(1.0 + dot(vec2(1.0) - f4, f5), 0.0, 1.0));
    vec2 f7 = ((vec3(f5, f6).xy + (vec3((texture2D(NormalDetailMapTexture, VARYING0 * CB2[0].x).wy * 2.0) - vec2(1.0), 0.0).xy * (clamp(VARYING2.w - 0.5, 0.0, 1.0) * clamp(1.0 - (2.0 * VARYING7.w), 0.0, 1.0)))).xy * f3).xy * CB2[3].w;
    vec3 f8 = normalize(((VARYING6.xyz * f7.x) + (cross(VARYING5.xyz, VARYING6.xyz) * f7.y)) + (VARYING5.xyz * f6));
    vec3 f9 = vec4(VARYING2.xyz * (texture2D(DiffuseMapTexture, f2).x * 2.0), VARYING2.w).xyz;
    vec3 f10 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f11 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f12 = VARYING3.yzx - (VARYING3.yzx * f11);
    vec4 f13 = vec4(clamp(f11, 0.0, 1.0));
    vec4 f14 = mix(texture3D(LightMapTexture, f12), vec4(0.0), f13);
    vec4 f15 = mix(texture3D(LightGridSkylightTexture, f12), vec4(1.0), f13);
    vec4 f16 = texture2D(ShadowMapTexture, f10.xy);
    float f17 = f10.z;
    float f18 = max(CB2[0].y, 0.04500000178813934326171875);
    vec3 f19 = textureCube(EnvironmentMapTexture, reflect(-f1, f8)).xyz;
    vec3 f20 = -CB0[11].xyz;
    float f21 = dot(f8, f20) * ((1.0 - ((step(f16.x, f17) * clamp(CB0[24].z + (CB0[24].w * abs(f17 - 0.5)), 0.0, 1.0)) * f16.y)) * f15.y);
    vec3 f22 = normalize(f20 + f1);
    float f23 = clamp(f21, 0.0, 1.0);
    float f24 = f18 * f18;
    float f25 = max(0.001000000047497451305389404296875, dot(f8, f22));
    float f26 = dot(f20, f22);
    float f27 = 1.0 - f26;
    float f28 = f27 * f27;
    float f29 = (f28 * f28) * f27;
    vec3 f30 = vec3(f29) + (vec3(0.039999999105930328369140625) * (1.0 - f29));
    float f31 = f24 * f24;
    float f32 = (((f25 * f31) - f25) * f25) + 1.0;
    vec3 f33 = ((((((vec3(1.0) - (f30 * (CB0[26].w * f3))) * CB0[10].xyz) * f23) + (CB0[12].xyz * clamp(-f21, 0.0, 1.0))) + min((f14.xyz * (f14.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f15.x)), vec3(CB0[16].w))) * mix((f9 * f9).xyz, (f19 * f19) * CB0[15].x, vec3(VARYING7.w))) + ((f30 * (((f31 + (f31 * f31)) / (((f32 * f32) * ((f26 * 3.0) + 0.5)) * ((f25 * 0.75) + 0.25))) * f23)) * CB0[10].xyz);
    vec4 f34 = vec4(f33.x, f33.y, f33.z, vec4(0.0).w);
    f34.w = VARYING2.w;
    vec3 f35 = sqrt(clamp(mix(CB0[14].xyz, f34.xyz, vec3(clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0))).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f36 = vec4(f35.x, f35.y, f35.z, f34.w);
    f36.w = VARYING2.w;
    gl_FragData[0] = f36;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$EnvironmentMapTexture=s2
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
