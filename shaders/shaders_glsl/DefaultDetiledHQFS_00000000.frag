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
    float f1 = texture2D(NoiseMapTexture, VARYING0 * CB2[2].w).x * 8.0;
    float f2 = fract(f1);
    float f3 = floor(f1);
    vec2 f4 = dFdx(VARYING0);
    vec2 f5 = dFdy(VARYING0);
    vec2 f6 = sin(vec2(3.0, 7.0) * f3) + VARYING0;
    vec2 f7 = sin(vec2(3.0, 7.0) * (f3 + 1.0)) + VARYING0;
    vec4 f8 = vec4(f2);
    vec4 f9 = mix(texture2DGradARB(DiffuseMapTexture, f6, f4, f5), texture2DGradARB(DiffuseMapTexture, f7, f4, f5), f8);
    vec2 f10 = texture2DGradARB(NormalMapTexture, f6, f4, f5).wy * 2.0;
    vec2 f11 = f10 - vec2(1.0);
    vec4 f12 = vec4(0.0);
    f12.x = f11.x;
    vec4 f13 = f12;
    f13.y = f11.y;
    vec4 f14 = f13;
    f14.z = sqrt(clamp(1.0 + dot(vec2(1.0) - f10, f11), 0.0, 1.0));
    vec2 f15 = texture2DGradARB(NormalMapTexture, f7, f4, f5).wy * 2.0;
    vec2 f16 = f15 - vec2(1.0);
    vec4 f17 = vec4(0.0);
    f17.x = f16.x;
    vec4 f18 = f17;
    f18.y = f16.y;
    vec4 f19 = f18;
    f19.z = sqrt(clamp(1.0 + dot(vec2(1.0) - f15, f16), 0.0, 1.0));
    vec3 f20 = mix(f14.xyz, f19.xyz, vec3(f2));
    vec2 f21 = f20.xy + (vec3((texture2D(NormalDetailMapTexture, VARYING0 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f22 = f20;
    f22.x = f21.x;
    vec3 f23 = f22;
    f23.y = f21.y;
    vec2 f24 = f23.xy * clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y;
    float f25 = f24.x;
    vec4 f26 = mix(texture2DGradARB(SpecularMapTexture, f6, f4, f5), texture2DGradARB(SpecularMapTexture, f7, f4, f5), f8);
    vec4 f27 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f9.w, CB2[3].w))) * f9.xyz) * (1.0 + (f25 * 0.20000000298023223876953125)), VARYING2.w);
    float f28 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f29 = VARYING6.xyz * f28;
    vec3 f30 = VARYING5.xyz * f28;
    vec3 f31 = normalize(((f29 * f25) + (cross(f30, f29) * f24.y)) + (f30 * f20.z));
    vec3 f32 = f27.xyz;
    vec3 f33 = f32 * f32;
    vec4 f34 = f27;
    f34.x = f33.x;
    vec4 f35 = f34;
    f35.y = f33.y;
    vec4 f36 = f35;
    f36.z = f33.z;
    float f37 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f38 = 0.08900000154972076416015625 + (f26.y * 0.9110000133514404296875);
    float f39 = f26.x * f37;
    vec3 f40 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f41 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f42 = VARYING3.yzx - (VARYING3.yzx * f41);
    vec4 f43 = vec4(clamp(f41, 0.0, 1.0));
    vec4 f44 = mix(texture3D(LightMapTexture, f42), vec4(0.0), f43);
    vec4 f45 = mix(texture3D(LightGridSkylightTexture, f42), vec4(1.0), f43);
    vec4 f46 = texture2D(ShadowMapTexture, f40.xy);
    float f47 = f40.z;
    vec3 f48 = -CB0[16].xyz;
    float f49 = dot(f31, f48) * ((1.0 - ((step(f46.x, f47) * clamp(CB0[29].z + (CB0[29].w * abs(f47 - 0.5)), 0.0, 1.0)) * f46.y)) * f45.y);
    vec3 f50 = normalize((VARYING4.xyz / vec3(f0)) - CB0[16].xyz);
    float f51 = clamp(f49, 0.0, 1.0);
    float f52 = f38 * f38;
    float f53 = max(0.001000000047497451305389404296875, dot(f31, f50));
    float f54 = dot(f48, f50);
    float f55 = 1.0 - f54;
    float f56 = f55 * f55;
    float f57 = (f56 * f56) * f55;
    vec3 f58 = vec3(f57) + (mix(vec3(0.039999999105930328369140625), f36.xyz, vec3(f39)) * (1.0 - f57));
    float f59 = f52 * f52;
    float f60 = (((f53 * f59) - f53) * f53) + 1.0;
    float f61 = 1.0 - f39;
    vec3 f62 = ((((((vec3(f61) - (f58 * (f37 * f61))) * CB0[15].xyz) * f51) + (CB0[17].xyz * (f61 * clamp(-f49, 0.0, 1.0)))) + (min((f44.xyz * (f44.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f45.x)), vec3(CB0[21].w)) * 1.0)) * f36.xyz) + (((f58 * (((f59 + (f59 * f59)) / max(((f60 * f60) * ((f54 * 3.0) + 0.5)) * ((f53 * 0.75) + 0.25), 3.0999999580672010779380798339844e-05)) * f51)) * CB0[15].xyz) * 1.0);
    vec4 f63 = vec4(0.0);
    f63.x = f62.x;
    vec4 f64 = f63;
    f64.y = f62.y;
    vec4 f65 = f64;
    f65.z = f62.z;
    vec4 f66 = f65;
    f66.w = VARYING2.w;
    vec3 f67 = mix(CB0[19].xyz, f66.xyz, vec3(clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f68 = f66;
    f68.x = f67.x;
    vec4 f69 = f68;
    f69.y = f67.y;
    vec4 f70 = f69;
    f70.z = f67.z;
    vec3 f71 = sqrt(clamp(f70.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f72 = f70;
    f72.x = f71.x;
    vec4 f73 = f72;
    f73.y = f71.y;
    vec4 f74 = f73;
    f74.z = f71.z;
    vec4 f75 = f74;
    f75.w = VARYING2.w;
    gl_FragData[0] = f75;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$NoiseMapTexture=s9
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$SpecularMapTexture=s5
