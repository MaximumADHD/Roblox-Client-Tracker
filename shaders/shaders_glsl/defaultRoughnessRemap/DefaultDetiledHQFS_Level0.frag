#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[53];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D WangTileMapTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D SpecularMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;

void main()
{
    float f0 = length(VARYING4.xyz);
    float f1 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec2 f2 = VARYING0 * CB2[0].x;
    float f3 = texture2D(WangTileMapTexture, f2 * CB2[3].w).x * 8.0;
    float f4 = fract(f3);
    float f5 = floor(f3);
    vec2 f6 = dFdx(f2);
    vec2 f7 = dFdy(f2);
    vec2 f8 = sin(vec2(3.0, 7.0) * f5) + f2;
    vec2 f9 = sin(vec2(3.0, 7.0) * (f5 + 1.0)) + f2;
    vec4 f10 = vec4(f4);
    vec4 f11 = mix(texture2DGradARB(DiffuseMapTexture, f8, f6, f7), texture2DGradARB(DiffuseMapTexture, f9, f6, f7), f10);
    vec2 f12 = texture2DGradARB(NormalMapTexture, f8, f6, f7).wy * 2.0;
    vec2 f13 = f12 - vec2(1.0);
    vec2 f14 = texture2DGradARB(NormalMapTexture, f9, f6, f7).wy * 2.0;
    vec2 f15 = f14 - vec2(1.0);
    vec3 f16 = mix(vec3(f13, sqrt(clamp(1.0 + dot(vec2(1.0) - f12, f13), 0.0, 1.0))).xyz, vec3(f15, sqrt(clamp(1.0 + dot(vec2(1.0) - f14, f15), 0.0, 1.0))).xyz, vec3(f4));
    vec2 f17 = (f16.xy + (vec3((texture2D(NormalDetailMapTexture, f2 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f1;
    float f18 = f17.x;
    vec4 f19 = mix(texture2DGradARB(SpecularMapTexture, f8, f6, f7), texture2DGradARB(SpecularMapTexture, f9, f6, f7), f10);
    float f20 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f21 = VARYING6.xyz * f20;
    vec3 f22 = VARYING5.xyz * f20;
    vec3 f23 = normalize(((f21 * f18) + (cross(f22, f21) * f17.y)) + (f22 * f16.z));
    vec3 f24 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f11.w + CB2[2].w, 0.0, 1.0))) * f11.xyz) * (1.0 + (f18 * CB2[0].z)), VARYING2.w).xyz;
    vec3 f25 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f26 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f27 = VARYING3.yzx - (VARYING3.yzx * f26);
    vec4 f28 = vec4(clamp(f26, 0.0, 1.0));
    vec4 f29 = mix(texture3D(LightMapTexture, f27), vec4(0.0), f28);
    vec4 f30 = mix(texture3D(LightGridSkylightTexture, f27), vec4(1.0), f28);
    vec4 f31 = texture2D(ShadowMapTexture, f25.xy);
    float f32 = f25.z;
    vec3 f33 = (f24 * f24).xyz;
    float f34 = CB0[26].w * f1;
    float f35 = 0.08900000154972076416015625 + (f19.y * 0.9110000133514404296875);
    float f36 = f19.x * f34;
    vec3 f37 = -CB0[11].xyz;
    float f38 = dot(f23, f37) * ((1.0 - ((step(f31.x, f32) * clamp(CB0[24].z + (CB0[24].w * abs(f32 - 0.5)), 0.0, 1.0)) * f31.y)) * f30.y);
    vec3 f39 = normalize(f37 + (VARYING4.xyz / vec3(f0)));
    float f40 = clamp(f38, 0.0, 1.0);
    float f41 = f35 * f35;
    float f42 = max(0.001000000047497451305389404296875, dot(f23, f39));
    float f43 = dot(f37, f39);
    float f44 = 1.0 - f43;
    float f45 = f44 * f44;
    float f46 = (f45 * f45) * f44;
    vec3 f47 = vec3(f46) + (mix(vec3(0.039999999105930328369140625), f33, vec3(f36)) * (1.0 - f46));
    float f48 = f41 * f41;
    float f49 = (((f42 * f48) - f42) * f42) + 1.0;
    float f50 = 1.0 - f36;
    vec3 f51 = ((((((vec3(f50) - (f47 * (f34 * f50))) * CB0[10].xyz) * f40) + (CB0[12].xyz * (f50 * clamp(-f38, 0.0, 1.0)))) + min((f29.xyz * (f29.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f30.x)), vec3(CB0[16].w))) * f33) + ((f47 * (((f48 + (f48 * f48)) / (((f49 * f49) * ((f43 * 3.0) + 0.5)) * ((f42 * 0.75) + 0.25))) * f40)) * CB0[10].xyz);
    vec4 f52 = vec4(f51.x, f51.y, f51.z, vec4(0.0).w);
    f52.w = VARYING2.w;
    vec3 f53 = sqrt(clamp(mix(CB0[14].xyz, f52.xyz, vec3(clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0))).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f54 = vec4(f53.x, f53.y, f53.z, f52.w);
    f54.w = VARYING2.w;
    gl_FragData[0] = f54;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$WangTileMapTexture=s9
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$SpecularMapTexture=s5
