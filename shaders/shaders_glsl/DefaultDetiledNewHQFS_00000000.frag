#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[58];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D NoiseMapTexture;
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
    float f1 = clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f2 = texture2D(NoiseMapTexture, VARYING0 * CB2[2].w).x * 8.0;
    float f3 = fract(f2);
    float f4 = floor(f2);
    vec2 f5 = dFdx(VARYING0);
    vec2 f6 = dFdy(VARYING0);
    vec2 f7 = sin(vec2(3.0, 7.0) * f4) + VARYING0;
    vec2 f8 = sin(vec2(3.0, 7.0) * (f4 + 1.0)) + VARYING0;
    vec4 f9 = vec4(f3);
    vec4 f10 = mix(texture2DGradARB(DiffuseMapTexture, f7, f5, f6), texture2DGradARB(DiffuseMapTexture, f8, f5, f6), f9);
    vec2 f11 = texture2DGradARB(NormalMapTexture, f7, f5, f6).wy * 2.0;
    vec2 f12 = f11 - vec2(1.0);
    vec4 f13 = vec4(0.0);
    f13.x = f12.x;
    vec4 f14 = f13;
    f14.y = f12.y;
    vec4 f15 = f14;
    f15.z = sqrt(clamp(1.0 + dot(vec2(1.0) - f11, f12), 0.0, 1.0));
    vec2 f16 = texture2DGradARB(NormalMapTexture, f8, f5, f6).wy * 2.0;
    vec2 f17 = f16 - vec2(1.0);
    vec4 f18 = vec4(0.0);
    f18.x = f17.x;
    vec4 f19 = f18;
    f19.y = f17.y;
    vec4 f20 = f19;
    f20.z = sqrt(clamp(1.0 + dot(vec2(1.0) - f16, f17), 0.0, 1.0));
    vec3 f21 = mix(f15.xyz, f20.xyz, vec3(f3));
    vec2 f22 = f21.xy + (vec3((texture2D(NormalDetailMapTexture, VARYING0 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f23 = f21;
    f23.x = f22.x;
    vec3 f24 = f23;
    f24.y = f22.y;
    vec2 f25 = f24.xy * f1;
    float f26 = f25.x;
    vec4 f27 = mix(texture2DGradARB(SpecularMapTexture, f7, f5, f6), texture2DGradARB(SpecularMapTexture, f8, f5, f6), f9);
    vec4 f28 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f10.w, CB2[3].w))) * f10.xyz) * (1.0 + (f26 * 0.20000000298023223876953125)), VARYING2.w);
    float f29 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f30 = VARYING6.xyz * f29;
    vec3 f31 = VARYING5.xyz * f29;
    vec3 f32 = normalize(((f30 * f26) + (cross(f31, f30) * f25.y)) + (f31 * f21.z));
    vec3 f33 = f28.xyz;
    vec3 f34 = f33 * f33;
    vec4 f35 = f28;
    f35.x = f34.x;
    vec4 f36 = f35;
    f36.y = f34.y;
    vec4 f37 = f36;
    f37.z = f34.z;
    float f38 = CB0[31].w * f1;
    float f39 = 0.08900000154972076416015625 + (f27.y * 0.9110000133514404296875);
    float f40 = f27.x * f38;
    vec3 f41 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f42 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f43 = VARYING3.yzx - (VARYING3.yzx * f42);
    vec4 f44 = vec4(clamp(f42, 0.0, 1.0));
    vec4 f45 = mix(texture3D(LightMapTexture, f43), vec4(0.0), f44);
    vec4 f46 = mix(texture3D(LightGridSkylightTexture, f43), vec4(1.0), f44);
    vec4 f47 = texture2D(ShadowMapTexture, f41.xy);
    float f48 = f41.z;
    vec3 f49 = -CB0[16].xyz;
    float f50 = dot(f32, f49) * ((1.0 - ((step(f47.x, f48) * clamp(CB0[29].z + (CB0[29].w * abs(f48 - 0.5)), 0.0, 1.0)) * f47.y)) * f46.y);
    vec3 f51 = normalize((VARYING4.xyz / vec3(f0)) - CB0[16].xyz);
    float f52 = clamp(f50, 0.0, 1.0);
    float f53 = f39 * f39;
    float f54 = max(0.001000000047497451305389404296875, dot(f32, f51));
    float f55 = dot(f49, f51);
    float f56 = 1.0 - f55;
    float f57 = f56 * f56;
    float f58 = (f57 * f57) * f56;
    vec3 f59 = vec3(f58) + (mix(vec3(0.039999999105930328369140625), f37.xyz, vec3(f40)) * (1.0 - f58));
    float f60 = f53 * f53;
    float f61 = (((f54 * f60) - f54) * f54) + 1.0;
    float f62 = 1.0 - f40;
    vec3 f63 = ((((((vec3(f62) - (f59 * (f38 * f62))) * CB0[15].xyz) * f52) + (CB0[17].xyz * (f62 * clamp(-f50, 0.0, 1.0)))) + min((f45.xyz * (f45.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f46.x)), vec3(CB0[21].w))) * f37.xyz) + (((f59 * (min((f60 + (f60 * f60)) / (((f61 * f61) * ((f55 * 3.0) + 0.5)) * ((f54 * 0.75) + 0.25)), 65504.0) * f52)) * CB0[15].xyz) * 1.0);
    vec4 f64 = vec4(0.0);
    f64.x = f63.x;
    vec4 f65 = f64;
    f65.y = f63.y;
    vec4 f66 = f65;
    f66.z = f63.z;
    vec4 f67 = f66;
    f67.w = VARYING2.w;
    vec3 f68 = mix(CB0[19].xyz, f67.xyz, vec3(clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f69 = f67;
    f69.x = f68.x;
    vec4 f70 = f69;
    f70.y = f68.y;
    vec4 f71 = f70;
    f71.z = f68.z;
    vec3 f72 = sqrt(clamp(f71.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f73 = f71;
    f73.x = f72.x;
    vec4 f74 = f73;
    f74.y = f72.y;
    vec4 f75 = f74;
    f75.z = f72.z;
    vec4 f76 = f75;
    f76.w = VARYING2.w;
    gl_FragData[0] = f76;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$NoiseMapTexture=s9
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$SpecularMapTexture=s5
