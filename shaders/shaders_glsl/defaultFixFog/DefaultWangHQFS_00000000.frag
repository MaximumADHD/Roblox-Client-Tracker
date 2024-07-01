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
    vec2 f0 = VARYING0 * CB2[0].x;
    vec2 f1 = f0 * 4.0;
    vec2 f2 = f1 * 0.25;
    vec4 f3 = vec4(dFdx(f2), dFdy(f2));
    vec2 f4 = (texture2D(WangTileMapTexture, f1 * vec2(0.0078125)).zw * 0.99609375) + (fract(f1) * 0.25);
    vec2 f5 = f3.xy;
    vec2 f6 = f3.zw;
    vec4 f7 = texture2DGradARB(DiffuseMapTexture, f4, f5, f6);
    vec2 f8 = texture2DGradARB(NormalMapTexture, f4, f5, f6).wy * 2.0;
    vec2 f9 = f8 - vec2(1.0);
    float f10 = sqrt(clamp(1.0 + dot(vec2(1.0) - f8, f9), 0.0, 1.0));
    vec3 f11 = vec3(f9, f10);
    vec2 f12 = f11.xy + (vec3((texture2D(NormalDetailMapTexture, f0 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f13 = f11;
    f13.x = f12.x;
    vec3 f14 = f13;
    f14.y = f12.y;
    vec2 f15 = f14.xy * clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y;
    float f16 = f15.x;
    vec4 f17 = texture2DGradARB(SpecularMapTexture, f4, f5, f6);
    vec4 f18 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f7.w, CB2[3].w))) * f7.xyz) * (1.0 + (f16 * 0.20000000298023223876953125)), VARYING2.w);
    float f19 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f20 = VARYING6.xyz * f19;
    vec3 f21 = VARYING5.xyz * f19;
    vec3 f22 = normalize(((f20 * f16) + (cross(f21, f20) * f15.y)) + (f21 * f10));
    vec3 f23 = f18.xyz;
    vec3 f24 = f23 * f23;
    vec4 f25 = f18;
    f25.x = f24.x;
    vec4 f26 = f25;
    f26.y = f24.y;
    vec4 f27 = f26;
    f27.z = f24.z;
    float f28 = length(VARYING4.xyz);
    vec3 f29 = VARYING4.xyz / vec3(f28);
    float f30 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f31 = 0.08900000154972076416015625 + (f17.y * 0.9110000133514404296875);
    float f32 = f17.x * f30;
    vec3 f33 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f34 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f35 = VARYING3.yzx - (VARYING3.yzx * f34);
    vec4 f36 = vec4(clamp(f34, 0.0, 1.0));
    vec4 f37 = mix(texture3D(LightMapTexture, f35), vec4(0.0), f36);
    vec4 f38 = mix(texture3D(LightGridSkylightTexture, f35), vec4(1.0), f36);
    vec4 f39 = texture2D(ShadowMapTexture, f33.xy);
    float f40 = f33.z;
    vec3 f41 = -CB0[16].xyz;
    float f42 = dot(f22, f41) * ((1.0 - ((step(f39.x, f40) * clamp(CB0[29].z + (CB0[29].w * abs(f40 - 0.5)), 0.0, 1.0)) * f39.y)) * f38.y);
    vec3 f43 = normalize(f29 + f41);
    float f44 = clamp(f42, 0.0, 1.0);
    float f45 = f31 * f31;
    float f46 = max(0.001000000047497451305389404296875, dot(f22, f43));
    float f47 = dot(f41, f43);
    float f48 = 1.0 - f47;
    float f49 = f48 * f48;
    float f50 = (f49 * f49) * f48;
    vec3 f51 = vec3(f50) + (mix(vec3(0.039999999105930328369140625), f27.xyz, vec3(f32)) * (1.0 - f50));
    float f52 = f45 * f45;
    float f53 = (((f46 * f52) - f46) * f46) + 1.0;
    float f54 = 1.0 - f32;
    vec3 f55 = ((((((vec3(f54) - (f51 * (f30 * f54))) * CB0[15].xyz) * f44) + (CB0[17].xyz * (f54 * clamp(-f42, 0.0, 1.0)))) + (min((f37.xyz * (f37.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f38.x)), vec3(CB0[21].w)) * 1.0)) * f27.xyz) + (((f51 * (((f52 + (f52 * f52)) / (((f53 * f53) * ((f47 * 3.0) + 0.5)) * ((f46 * 0.75) + 0.25))) * f44)) * CB0[15].xyz) * 1.0);
    vec4 f56 = vec4(0.0);
    f56.x = f55.x;
    vec4 f57 = f56;
    f57.y = f55.y;
    vec4 f58 = f57;
    f58.z = f55.z;
    vec4 f59 = f58;
    f59.w = VARYING2.w;
    vec3 f60 = -f29;
    vec3 f61 = f60 * f60;
    bvec3 f62 = lessThan(f60, vec3(0.0));
    vec3 f63 = vec3(f62.x ? f61.x : vec3(0.0).x, f62.y ? f61.y : vec3(0.0).y, f62.z ? f61.z : vec3(0.0).z);
    vec3 f64 = f61 - f63;
    vec3 f65 = (((((CB0[34].xyz * f64.x) + (CB0[36].xyz * f64.y)) + (CB0[38].xyz * f64.z)) + (CB0[35].xyz * f63.x)) + (CB0[37].xyz * f63.y)) + (CB0[39].xyz * f63.z);
    bvec3 f66 = bvec3(!(CB0[18].w == 0.0));
    vec3 f67 = mix(vec3(f66.x ? CB0[19].xyz.x : f65.x, f66.y ? CB0[19].xyz.y : f65.y, f66.z ? CB0[19].xyz.z : f65.z), f59.xyz, vec3(clamp(exp2((CB0[18].z * f28) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f68 = f59;
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
//$$WangTileMapTexture=s9
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$SpecularMapTexture=s5
