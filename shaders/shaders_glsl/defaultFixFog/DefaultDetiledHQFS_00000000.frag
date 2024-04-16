#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[57];
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
    float f0 = texture2D(NoiseMapTexture, VARYING0 * CB2[2].w).x * 8.0;
    float f1 = fract(f0);
    float f2 = floor(f0);
    vec2 f3 = dFdx(VARYING0);
    vec2 f4 = dFdy(VARYING0);
    vec2 f5 = sin(vec2(3.0, 7.0) * f2) + VARYING0;
    vec2 f6 = sin(vec2(3.0, 7.0) * (f2 + 1.0)) + VARYING0;
    vec4 f7 = vec4(f1);
    vec4 f8 = mix(texture2DGradARB(DiffuseMapTexture, f5, f3, f4), texture2DGradARB(DiffuseMapTexture, f6, f3, f4), f7);
    vec2 f9 = texture2DGradARB(NormalMapTexture, f5, f3, f4).wy * 2.0;
    vec2 f10 = f9 - vec2(1.0);
    vec4 f11 = vec4(0.0);
    f11.x = f10.x;
    vec4 f12 = f11;
    f12.y = f10.y;
    vec4 f13 = f12;
    f13.z = sqrt(clamp(1.0 + dot(vec2(1.0) - f9, f10), 0.0, 1.0));
    vec2 f14 = texture2DGradARB(NormalMapTexture, f6, f3, f4).wy * 2.0;
    vec2 f15 = f14 - vec2(1.0);
    vec4 f16 = vec4(0.0);
    f16.x = f15.x;
    vec4 f17 = f16;
    f17.y = f15.y;
    vec4 f18 = f17;
    f18.z = sqrt(clamp(1.0 + dot(vec2(1.0) - f14, f15), 0.0, 1.0));
    vec3 f19 = mix(f13.xyz, f18.xyz, vec3(f1));
    vec2 f20 = f19.xy + (vec3((texture2D(NormalDetailMapTexture, VARYING0 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f21 = f19;
    f21.x = f20.x;
    vec3 f22 = f21;
    f22.y = f20.y;
    vec2 f23 = f22.xy * clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y;
    float f24 = f23.x;
    vec4 f25 = mix(texture2DGradARB(SpecularMapTexture, f5, f3, f4), texture2DGradARB(SpecularMapTexture, f6, f3, f4), f7);
    vec4 f26 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f8.w, CB2[3].w))) * f8.xyz) * (1.0 + (f24 * 0.20000000298023223876953125)), VARYING2.w);
    float f27 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f28 = VARYING6.xyz * f27;
    vec3 f29 = VARYING5.xyz * f27;
    vec3 f30 = normalize(((f28 * f24) + (cross(f29, f28) * f23.y)) + (f29 * f19.z));
    vec3 f31 = f26.xyz;
    vec3 f32 = f31 * f31;
    vec4 f33 = f26;
    f33.x = f32.x;
    vec4 f34 = f33;
    f34.y = f32.y;
    vec4 f35 = f34;
    f35.z = f32.z;
    float f36 = length(VARYING4.xyz);
    vec3 f37 = VARYING4.xyz / vec3(f36);
    float f38 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f39 = 0.08900000154972076416015625 + (f25.y * 0.9110000133514404296875);
    float f40 = f25.x * f38;
    vec3 f41 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f42 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f43 = VARYING3.yzx - (VARYING3.yzx * f42);
    vec4 f44 = vec4(clamp(f42, 0.0, 1.0));
    vec4 f45 = mix(texture3D(LightMapTexture, f43), vec4(0.0), f44);
    vec4 f46 = mix(texture3D(LightGridSkylightTexture, f43), vec4(1.0), f44);
    vec4 f47 = texture2D(ShadowMapTexture, f41.xy);
    float f48 = f41.z;
    vec3 f49 = -CB0[16].xyz;
    float f50 = dot(f30, f49) * ((1.0 - ((step(f47.x, f48) * clamp(CB0[29].z + (CB0[29].w * abs(f48 - 0.5)), 0.0, 1.0)) * f47.y)) * f46.y);
    vec3 f51 = normalize(f37 + f49);
    float f52 = clamp(f50, 0.0, 1.0);
    float f53 = f39 * f39;
    float f54 = max(0.001000000047497451305389404296875, dot(f30, f51));
    float f55 = dot(f49, f51);
    float f56 = 1.0 - f55;
    float f57 = f56 * f56;
    float f58 = (f57 * f57) * f56;
    vec3 f59 = vec3(f58) + (mix(vec3(0.039999999105930328369140625), f35.xyz, vec3(f40)) * (1.0 - f58));
    float f60 = f53 * f53;
    float f61 = (((f54 * f60) - f54) * f54) + 1.0;
    float f62 = 1.0 - f40;
    vec3 f63 = ((((((vec3(f62) - (f59 * (f38 * f62))) * CB0[15].xyz) * f52) + (CB0[17].xyz * (f62 * clamp(-f50, 0.0, 1.0)))) + (min((f45.xyz * (f45.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f46.x)), vec3(CB0[21].w)) * 1.0)) * f35.xyz) + (((f59 * (((f60 + (f60 * f60)) / (((f61 * f61) * ((f55 * 3.0) + 0.5)) * ((f54 * 0.75) + 0.25))) * f52)) * CB0[15].xyz) * 1.0);
    vec4 f64 = vec4(0.0);
    f64.x = f63.x;
    vec4 f65 = f64;
    f65.y = f63.y;
    vec4 f66 = f65;
    f66.z = f63.z;
    vec4 f67 = f66;
    f67.w = VARYING2.w;
    vec3 f68 = -f37;
    vec3 f69 = f68 * f68;
    bvec3 f70 = lessThan(f68, vec3(0.0));
    vec3 f71 = vec3(f70.x ? f69.x : vec3(0.0).x, f70.y ? f69.y : vec3(0.0).y, f70.z ? f69.z : vec3(0.0).z);
    vec3 f72 = f69 - f71;
    vec3 f73 = (((((CB0[34].xyz * f72.x) + (CB0[36].xyz * f72.y)) + (CB0[38].xyz * f72.z)) + (CB0[35].xyz * f71.x)) + (CB0[37].xyz * f71.y)) + (CB0[39].xyz * f71.z);
    bvec3 f74 = bvec3(!(CB0[18].w == 0.0));
    vec3 f75 = mix(vec3(f74.x ? CB0[19].xyz.x : f73.x, f74.y ? CB0[19].xyz.y : f73.y, f74.z ? CB0[19].xyz.z : f73.z), f67.xyz, vec3(clamp(exp2((CB0[18].z * f36) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f76 = f67;
    f76.x = f75.x;
    vec4 f77 = f76;
    f77.y = f75.y;
    vec4 f78 = f77;
    f78.z = f75.z;
    vec3 f79 = sqrt(clamp(f78.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f80 = f78;
    f80.x = f79.x;
    vec4 f81 = f80;
    f81.y = f79.y;
    vec4 f82 = f81;
    f82.z = f79.z;
    vec4 f83 = f82;
    f83.w = VARYING2.w;
    gl_FragData[0] = f83;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$NoiseMapTexture=s9
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$SpecularMapTexture=s5
