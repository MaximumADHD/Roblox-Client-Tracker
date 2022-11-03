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
    vec2 f1 = VARYING0 * CB2[0].x;
    vec2 f2 = f1 * 4.0;
    vec2 f3 = f2 * 0.25;
    vec4 f4 = vec4(dFdx(f3), dFdy(f3));
    vec2 f5 = (texture2D(WangTileMapTexture, f2 * vec2(0.0078125)).zw * 0.99609375) + (fract(f2) * 0.25);
    vec2 f6 = f4.xy;
    vec2 f7 = f4.zw;
    vec4 f8 = texture2DGradARB(DiffuseMapTexture, f5, f6, f7);
    vec2 f9 = texture2DGradARB(NormalMapTexture, f5, f6, f7).wy * 2.0;
    vec2 f10 = f9 - vec2(1.0);
    float f11 = sqrt(clamp(1.0 + dot(vec2(1.0) - f9, f10), 0.0, 1.0));
    vec3 f12 = vec3(f10, f11);
    vec2 f13 = f12.xy + (vec3((texture2D(NormalDetailMapTexture, f1 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f14 = f12;
    f14.x = f13.x;
    vec3 f15 = f14;
    f15.y = f13.y;
    vec2 f16 = f15.xy * clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y;
    float f17 = f16.x;
    vec4 f18 = texture2DGradARB(SpecularMapTexture, f5, f6, f7);
    vec4 f19 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f8.w, CB2[3].w))) * f8.xyz) * (1.0 + (f17 * 0.20000000298023223876953125)), VARYING2.w);
    float f20 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f21 = VARYING6.xyz * f20;
    vec3 f22 = VARYING5.xyz * f20;
    vec3 f23 = normalize(((f21 * f17) + (cross(f22, f21) * f16.y)) + (f22 * f11));
    vec3 f24 = f19.xyz;
    vec3 f25 = f24 * f24;
    vec4 f26 = f19;
    f26.x = f25.x;
    vec4 f27 = f26;
    f27.y = f25.y;
    vec4 f28 = f27;
    f28.z = f25.z;
    float f29 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f30 = 0.08900000154972076416015625 + (f18.y * 0.9110000133514404296875);
    float f31 = f18.x * f29;
    vec3 f32 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f33 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f34 = VARYING3.yzx - (VARYING3.yzx * f33);
    vec4 f35 = vec4(clamp(f33, 0.0, 1.0));
    vec4 f36 = mix(texture3D(LightMapTexture, f34), vec4(0.0), f35);
    vec4 f37 = mix(texture3D(LightGridSkylightTexture, f34), vec4(1.0), f35);
    vec4 f38 = texture2D(ShadowMapTexture, f32.xy);
    float f39 = f32.z;
    vec3 f40 = -CB0[16].xyz;
    float f41 = dot(f23, f40) * ((1.0 - ((step(f38.x, f39) * clamp(CB0[29].z + (CB0[29].w * abs(f39 - 0.5)), 0.0, 1.0)) * f38.y)) * f37.y);
    vec3 f42 = normalize((VARYING4.xyz / vec3(f0)) - CB0[16].xyz);
    float f43 = clamp(f41, 0.0, 1.0);
    float f44 = f30 * f30;
    float f45 = max(0.001000000047497451305389404296875, dot(f23, f42));
    float f46 = dot(f40, f42);
    float f47 = 1.0 - f46;
    float f48 = f47 * f47;
    float f49 = (f48 * f48) * f47;
    vec3 f50 = vec3(f49) + (mix(vec3(0.039999999105930328369140625), f28.xyz, vec3(f31)) * (1.0 - f49));
    float f51 = f44 * f44;
    float f52 = (((f45 * f51) - f45) * f45) + 1.0;
    float f53 = 1.0 - f31;
    vec3 f54 = ((((((vec3(f53) - (f50 * (f29 * f53))) * CB0[15].xyz) * f43) + (CB0[17].xyz * (f53 * clamp(-f41, 0.0, 1.0)))) + (min((f36.xyz * (f36.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f37.x)), vec3(CB0[21].w)) * 1.0)) * f28.xyz) + (((f50 * (((f51 + (f51 * f51)) / max(((f52 * f52) * ((f46 * 3.0) + 0.5)) * ((f45 * 0.75) + 0.25), 7.0000001869630068540573120117188e-05)) * f43)) * CB0[15].xyz) * 1.0);
    vec4 f55 = vec4(0.0);
    f55.x = f54.x;
    vec4 f56 = f55;
    f56.y = f54.y;
    vec4 f57 = f56;
    f57.z = f54.z;
    vec4 f58 = f57;
    f58.w = VARYING2.w;
    vec3 f59 = mix(CB0[19].xyz, f58.xyz, vec3(clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f60 = f58;
    f60.x = f59.x;
    vec4 f61 = f60;
    f61.y = f59.y;
    vec4 f62 = f61;
    f62.z = f59.z;
    vec3 f63 = sqrt(clamp(f62.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f64 = f62;
    f64.x = f63.x;
    vec4 f65 = f64;
    f65.y = f63.y;
    vec4 f66 = f65;
    f66.z = f63.z;
    vec4 f67 = f66;
    f67.w = VARYING2.w;
    gl_FragData[0] = f67;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$WangTileMapTexture=s9
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$SpecularMapTexture=s5
