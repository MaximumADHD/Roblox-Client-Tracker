#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <ExtraData.h>
uniform vec4 CB0[58];
uniform vec4 CB3[1];
uniform vec4 CB4[63];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D SpecularMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D AlbedoMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec3 VARYING4;
varying vec4 VARYING5;
varying vec3 VARYING6;
varying vec3 VARYING7;
varying vec3 VARYING8;
varying vec3 VARYING9;

void main()
{
    vec2 f0 = (fract(VARYING1.xy) * CB3[0].xy) + VARYING2.xy;
    vec2 f1 = (fract(VARYING1.zw) * CB3[0].xy) + VARYING2.zw;
    vec2 f2 = (fract(VARYING3.xy) * CB3[0].xy) + VARYING3.zw;
    vec2 f3 = VARYING1.xy * CB3[0].xy;
    vec2 f4 = VARYING1.zw * CB3[0].xy;
    vec2 f5 = VARYING3.xy * CB3[0].xy;
    vec4 f6 = ((texture2DGradARB(SpecularMapTexture, f0, dFdx(f3), dFdy(f3)) * VARYING0.x) + (texture2DGradARB(SpecularMapTexture, f1, dFdx(f4), dFdy(f4)) * VARYING0.y)) + (texture2DGradARB(SpecularMapTexture, f2, dFdx(f5), dFdy(f5)) * VARYING0.z);
    vec2 f7 = (((texture2DGradARB(NormalMapTexture, f0, dFdx(f3), dFdy(f3)) * VARYING0.x) + (texture2DGradARB(NormalMapTexture, f1, dFdx(f4), dFdy(f4)) * VARYING0.y)) + (texture2DGradARB(NormalMapTexture, f2, dFdx(f5), dFdy(f5)) * VARYING0.z)).wy * 2.0;
    vec2 f8 = f7 - vec2(1.0);
    vec3 f9 = vec3(dot(VARYING7, VARYING0.xyz));
    vec3 f10 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f9) * f8.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f9) * f8.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - f7, f8), 0.0, 1.0)))), 0.0).xyz;
    vec4 f11 = texture2DGradARB(AlbedoMapTexture, f0, dFdx(f3), dFdy(f3));
    vec4 f12 = texture2DGradARB(AlbedoMapTexture, f1, dFdx(f4), dFdy(f4));
    vec4 f13 = texture2DGradARB(AlbedoMapTexture, f2, dFdx(f5), dFdy(f5));
    int f14 = int(VARYING9.x + 0.5);
    int f15 = int(VARYING9.y + 0.5);
    int f16 = int(VARYING9.z + 0.5);
    vec2 f17 = f11.xz - vec2(0.5);
    float f18 = f17.x;
    vec4 f19 = f11.yxzw;
    f19.y = f18;
    float f20 = f17.y;
    vec4 f21 = f19;
    f21.z = f20;
    vec2 f22 = f12.xz - vec2(0.5);
    float f23 = f22.x;
    vec4 f24 = f12.yxzw;
    f24.y = f23;
    float f25 = f22.y;
    vec4 f26 = f24;
    f26.z = f25;
    vec2 f27 = f13.xz - vec2(0.5);
    float f28 = f27.x;
    vec4 f29 = f13.yxzw;
    f29.y = f28;
    float f30 = f27.y;
    vec4 f31 = f29;
    f31.z = f30;
    vec4 f32 = f21;
    f32.x = CB4[f14 * 1 + 0].x * f11.y;
    vec4 f33 = f32;
    f33.y = (CB4[f14 * 1 + 0].y * f18) - (CB4[f14 * 1 + 0].z * f20);
    vec4 f34 = f33;
    f34.z = (CB4[f14 * 1 + 0].z * f18) + (CB4[f14 * 1 + 0].y * f20);
    vec4 f35 = f26;
    f35.x = CB4[f15 * 1 + 0].x * f12.y;
    vec4 f36 = f35;
    f36.y = (CB4[f15 * 1 + 0].y * f23) - (CB4[f15 * 1 + 0].z * f25);
    vec4 f37 = f36;
    f37.z = (CB4[f15 * 1 + 0].z * f23) + (CB4[f15 * 1 + 0].y * f25);
    vec4 f38 = f31;
    f38.x = CB4[f16 * 1 + 0].x * f13.y;
    vec4 f39 = f38;
    f39.y = (CB4[f16 * 1 + 0].y * f28) - (CB4[f16 * 1 + 0].z * f30);
    vec4 f40 = f39;
    f40.z = (CB4[f16 * 1 + 0].z * f28) + (CB4[f16 * 1 + 0].y * f30);
    vec4 f41 = ((f34 * VARYING0.x) + (f37 * VARYING0.y)) + (f40 * VARYING0.z);
    float f42 = f41.x;
    float f43 = f42 - f41.z;
    vec3 f44 = vec4(vec3(f43, f42, f43) + (vec3(f41.yzy) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f45 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    float f46 = 0.08900000154972076416015625 + (f6.y * 0.9110000133514404296875);
    vec3 f47 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f48 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f49 = VARYING4.yzx - (VARYING4.yzx * f48);
    vec4 f50 = vec4(clamp(f48, 0.0, 1.0));
    vec4 f51 = mix(texture3D(LightMapTexture, f49), vec4(0.0), f50);
    vec4 f52 = mix(texture3D(LightGridSkylightTexture, f49), vec4(1.0), f50);
    vec4 f53 = texture2D(ShadowMapTexture, f47.xy);
    float f54 = f47.z;
    vec3 f55 = -CB0[16].xyz;
    float f56 = dot(f10, f55) * ((1.0 - ((step(f53.x, f54) * clamp(CB0[29].z + (CB0[29].w * abs(f54 - 0.5)), 0.0, 1.0)) * f53.y)) * f52.y);
    vec3 f57 = normalize(normalize(VARYING8) + f55);
    float f58 = clamp(f56, 0.0, 1.0);
    float f59 = f46 * f46;
    float f60 = max(0.001000000047497451305389404296875, dot(f10, f57));
    float f61 = dot(f55, f57);
    float f62 = 1.0 - f61;
    float f63 = f62 * f62;
    float f64 = (f63 * f63) * f62;
    vec3 f65 = vec3(f64) + (vec3(0.039999999105930328369140625) * (1.0 - f64));
    float f66 = f59 * f59;
    float f67 = (((f60 * f66) - f60) * f60) + 1.0;
    vec3 f68 = (((vec3((f6.z * 2.0) * f45) + (min((f51.xyz * (f51.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f52.x)), vec3(CB0[21].w)) * 1.0)) + ((((vec3(1.0) - (f65 * (CB0[31].w * f45))) * CB0[15].xyz) * f58) + (CB0[17].xyz * clamp(-f56, 0.0, 1.0)))) * (f44 * f44)) + (((f65 * (((f66 + (f66 * f66)) / (((f67 * f67) * ((f61 * 3.0) + 0.5)) * ((f60 * 0.75) + 0.25))) * f58)) * CB0[15].xyz) * (f45 * VARYING0.w));
    vec4 f69 = vec4(0.0);
    f69.x = f68.x;
    vec4 f70 = f69;
    f70.y = f68.y;
    vec4 f71 = f70;
    f71.z = f68.z;
    vec4 f72 = f71;
    f72.w = 1.0;
    vec3 f73 = mix(CB0[19].xyz, f72.xyz, vec3(clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f74 = f72;
    f74.x = f73.x;
    vec4 f75 = f74;
    f75.y = f73.y;
    vec4 f76 = f75;
    f76.z = f73.z;
    vec3 f77 = sqrt(clamp(f76.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f78 = f76;
    f78.x = f77.x;
    vec4 f79 = f78;
    f79.y = f77.y;
    vec4 f80 = f79;
    f80.z = f77.z;
    gl_FragData[0] = f80;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$SpecularMapTexture=s3
//$$NormalMapTexture=s4
//$$AlbedoMapTexture=s0
