#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[52];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D WangTileMapTexture;
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
    vec2 f4 = f3 * 4.0;
    vec2 f5 = f4 * 0.25;
    vec4 f6 = vec4(dFdx(f5), dFdy(f5));
    vec2 f7 = (texture2D(WangTileMapTexture, f4 * vec2(0.0078125)).zw * 0.99609375) + (fract(f4) * 0.25);
    vec2 f8 = f6.xy;
    vec2 f9 = f6.zw;
    vec4 f10 = texture2DGradARB(DiffuseMapTexture, f7, f8, f9);
    vec2 f11 = texture2DGradARB(NormalMapTexture, f7, f8, f9).wy * 2.0;
    vec2 f12 = f11 - vec2(1.0);
    float f13 = sqrt(clamp(1.0 + dot(vec2(1.0) - f11, f12), 0.0, 1.0));
    vec2 f14 = (vec3(f12, f13).xy + (vec3((texture2D(NormalDetailMapTexture, f3 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f2;
    float f15 = f14.x;
    vec4 f16 = texture2DGradARB(SpecularMapTexture, f7, f8, f9);
    float f17 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f18 = VARYING6.xyz * f17;
    vec3 f19 = VARYING5.xyz * f17;
    vec3 f20 = normalize(((f18 * f15) + (cross(f19, f18) * f14.y)) + (f19 * f13));
    vec3 f21 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f10.w + CB2[2].w, 0.0, 1.0))) * f10.xyz) * (1.0 + (f15 * CB2[0].z))) * (texture2D(StudsMapTexture, f1).x * 2.0), VARYING2.w).xyz;
    vec3 f22 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f23 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f24 = VARYING3.yzx - (VARYING3.yzx * f23);
    vec4 f25 = vec4(clamp(f23, 0.0, 1.0));
    vec4 f26 = mix(texture3D(LightMapTexture, f24), vec4(0.0), f25);
    vec4 f27 = mix(texture3D(LightGridSkylightTexture, f24), vec4(1.0), f25);
    vec4 f28 = texture2D(ShadowMapTexture, f22.xy);
    float f29 = f22.z;
    vec3 f30 = (f21 * f21).xyz;
    float f31 = CB0[26].w * f2;
    float f32 = max(f16.y, 0.04500000178813934326171875);
    float f33 = f16.x * f31;
    vec3 f34 = -CB0[11].xyz;
    float f35 = dot(f20, f34) * ((1.0 - ((step(f28.x, f29) * clamp(CB0[24].z + (CB0[24].w * abs(f29 - 0.5)), 0.0, 1.0)) * f28.y)) * f27.y);
    vec3 f36 = normalize(f34 + (VARYING4.xyz / vec3(f0)));
    float f37 = clamp(f35, 0.0, 1.0);
    float f38 = f32 * f32;
    float f39 = max(0.001000000047497451305389404296875, dot(f20, f36));
    float f40 = dot(f34, f36);
    float f41 = 1.0 - f40;
    float f42 = f41 * f41;
    float f43 = (f42 * f42) * f41;
    vec3 f44 = vec3(f43) + (mix(vec3(0.039999999105930328369140625), f30, vec3(f33)) * (1.0 - f43));
    float f45 = f38 * f38;
    float f46 = (((f39 * f45) - f39) * f39) + 1.0;
    float f47 = 1.0 - f33;
    vec3 f48 = ((((((vec3(f47) - (f44 * (f31 * f47))) * CB0[10].xyz) * f37) + (CB0[12].xyz * (f47 * clamp(-f35, 0.0, 1.0)))) + min((f26.xyz * (f26.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f27.x)), vec3(CB0[16].w))) * f30) + ((f44 * (((f45 + (f45 * f45)) / (((f46 * f46) * ((f40 * 3.0) + 0.5)) * ((f39 * 0.75) + 0.25))) * f37)) * CB0[10].xyz);
    vec4 f49 = vec4(f48.x, f48.y, f48.z, vec4(0.0).w);
    f49.w = VARYING2.w;
    vec3 f50 = sqrt(clamp(mix(CB0[14].xyz, f49.xyz, vec3(clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0))).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f51 = vec4(f50.x, f50.y, f50.z, f49.w);
    f51.w = VARYING2.w;
    gl_FragData[0] = f51;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$WangTileMapTexture=s9
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
