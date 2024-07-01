#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[58];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
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
    vec2 f0 = clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0));
    vec2 f1 = VARYING0 * CB2[0].x;
    float f2 = f0.y;
    vec4 f3 = mix(texture2D(DiffuseMapTexture, f1 * CB2[1].y), texture2D(DiffuseMapTexture, f1), vec4(clamp((f0.x * CB2[3].x) - (CB2[2].x * CB2[3].x), 0.0, 1.0)));
    vec2 f4 = texture2D(NormalMapTexture, f1).wy * 2.0;
    vec2 f5 = f4 - vec2(1.0);
    float f6 = sqrt(clamp(1.0 + dot(vec2(1.0) - f4, f5), 0.0, 1.0));
    vec3 f7 = vec3(f5, f6);
    vec2 f8 = f7.xy + (vec3((texture2D(NormalDetailMapTexture, f1 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f9 = f7;
    f9.x = f8.x;
    vec3 f10 = f9;
    f10.y = f8.y;
    vec2 f11 = f10.xy * f2;
    float f12 = f11.x;
    vec4 f13 = texture2D(SpecularMapTexture, f1);
    vec4 f14 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f3.w, CB2[3].w))) * f3.xyz) * (1.0 + (f12 * 0.20000000298023223876953125)), VARYING2.w);
    float f15 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f16 = VARYING6.xyz * f15;
    vec3 f17 = VARYING5.xyz * f15;
    vec3 f18 = normalize(((f16 * f12) + (cross(f17, f16) * f11.y)) + (f17 * f6));
    vec3 f19 = f14.xyz;
    vec3 f20 = f19 * f19;
    vec4 f21 = f14;
    f21.x = f20.x;
    vec4 f22 = f21;
    f22.y = f20.y;
    vec4 f23 = f22;
    f23.z = f20.z;
    float f24 = length(VARYING4.xyz);
    vec3 f25 = VARYING4.xyz / vec3(f24);
    float f26 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f27 = 0.08900000154972076416015625 + (f13.y * 0.9110000133514404296875);
    float f28 = f13.x * f26;
    vec3 f29 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f30 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f31 = VARYING3.yzx - (VARYING3.yzx * f30);
    vec4 f32 = vec4(clamp(f30, 0.0, 1.0));
    vec4 f33 = mix(texture3D(LightMapTexture, f31), vec4(0.0), f32);
    vec4 f34 = mix(texture3D(LightGridSkylightTexture, f31), vec4(1.0), f32);
    vec4 f35 = texture2D(ShadowMapTexture, f29.xy);
    float f36 = f29.z;
    vec3 f37 = -CB0[16].xyz;
    float f38 = dot(f18, f37) * ((1.0 - ((step(f35.x, f36) * clamp(CB0[29].z + (CB0[29].w * abs(f36 - 0.5)), 0.0, 1.0)) * f35.y)) * f34.y);
    vec3 f39 = normalize(f25 + f37);
    float f40 = clamp(f38, 0.0, 1.0);
    float f41 = f27 * f27;
    float f42 = max(0.001000000047497451305389404296875, dot(f18, f39));
    float f43 = dot(f37, f39);
    float f44 = 1.0 - f43;
    float f45 = f44 * f44;
    float f46 = (f45 * f45) * f44;
    vec3 f47 = vec3(f46) + (mix(vec3(0.039999999105930328369140625), f23.xyz, vec3(f28)) * (1.0 - f46));
    float f48 = f41 * f41;
    float f49 = (((f42 * f48) - f42) * f42) + 1.0;
    float f50 = 1.0 - f28;
    vec3 f51 = (((((((vec3(f50) - (f47 * (f26 * f50))) * CB0[15].xyz) * f40) + (CB0[17].xyz * (f50 * clamp(-f38, 0.0, 1.0)))) + (min((f33.xyz * (f33.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f34.x)), vec3(CB0[21].w)) * 1.0)) + vec3((f13.z * 2.0) * f2)) * f23.xyz) + (((f47 * (((f48 + (f48 * f48)) / (((f49 * f49) * ((f43 * 3.0) + 0.5)) * ((f42 * 0.75) + 0.25))) * f40)) * CB0[15].xyz) * 1.0);
    vec4 f52 = vec4(0.0);
    f52.x = f51.x;
    vec4 f53 = f52;
    f53.y = f51.y;
    vec4 f54 = f53;
    f54.z = f51.z;
    vec4 f55 = f54;
    f55.w = VARYING2.w;
    vec3 f56 = -f25;
    vec3 f57 = f56 * f56;
    bvec3 f58 = lessThan(f56, vec3(0.0));
    vec3 f59 = vec3(f58.x ? f57.x : vec3(0.0).x, f58.y ? f57.y : vec3(0.0).y, f58.z ? f57.z : vec3(0.0).z);
    vec3 f60 = f57 - f59;
    vec3 f61 = (((((CB0[34].xyz * f60.x) + (CB0[36].xyz * f60.y)) + (CB0[38].xyz * f60.z)) + (CB0[35].xyz * f59.x)) + (CB0[37].xyz * f59.y)) + (CB0[39].xyz * f59.z);
    bvec3 f62 = bvec3(!(CB0[18].w == 0.0));
    vec3 f63 = mix(vec3(f62.x ? CB0[19].xyz.x : f61.x, f62.y ? CB0[19].xyz.y : f61.y, f62.z ? CB0[19].xyz.z : f61.z), f55.xyz, vec3(clamp(exp2((CB0[18].z * f24) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f64 = f55;
    f64.x = f63.x;
    vec4 f65 = f64;
    f65.y = f63.y;
    vec4 f66 = f65;
    f66.z = f63.z;
    vec3 f67 = sqrt(clamp(f66.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f68 = f66;
    f68.x = f67.x;
    vec4 f69 = f68;
    f69.y = f67.y;
    vec4 f70 = f69;
    f70.z = f67.z;
    vec4 f71 = f70;
    f71.w = VARYING2.w;
    gl_FragData[0] = f71;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$SpecularMapTexture=s5
