#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[52];
uniform vec4 CB3[1];
uniform vec4 CB4[36];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D AlbedoMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec3 VARYING4;
varying vec4 VARYING5;
varying vec3 VARYING6;
varying vec3 VARYING7;
varying vec3 VARYING8;
varying vec4 VARYING9;

void main()
{
    vec4 f0 = (fract(VARYING1) * CB3[0].xyxy) + VARYING2;
    vec2 f1 = (fract(VARYING3.xy) * CB3[0].xy) + VARYING3.zw;
    vec4 f2 = VARYING1 * CB3[0].xyxy;
    vec2 f3 = VARYING3.xy * CB3[0].xy;
    vec2 f4 = f0.xy;
    vec2 f5 = f2.xy;
    vec4 f6 = texture2DGradARB(AlbedoMapTexture, f4, dFdx(f5), dFdy(f5));
    vec2 f7 = f0.zw;
    vec2 f8 = f2.zw;
    vec4 f9 = texture2DGradARB(AlbedoMapTexture, f7, dFdx(f8), dFdy(f8));
    vec4 f10 = texture2DGradARB(AlbedoMapTexture, f1, dFdx(f3), dFdy(f3));
    int f11 = int(VARYING9.x + 0.5);
    int f12 = int(VARYING9.y + 0.5);
    int f13 = int(VARYING9.z + 0.5);
    vec2 f14 = f6.xz - vec2(0.5);
    vec2 f15 = f9.xz - vec2(0.5);
    vec2 f16 = f10.xz - vec2(0.5);
    vec3 f17 = vec3(0.0);
    f17.x = CB4[f11 * 1 + 0].x * f6.y;
    float f18 = f14.x;
    float f19 = f14.y;
    vec3 f20 = f17;
    f20.y = (CB4[f11 * 1 + 0].y * f18) - (CB4[f11 * 1 + 0].z * f19);
    vec3 f21 = f20;
    f21.z = (CB4[f11 * 1 + 0].z * f18) + (CB4[f11 * 1 + 0].y * f19);
    vec3 f22 = vec3(0.0);
    f22.x = CB4[f12 * 1 + 0].x * f9.y;
    float f23 = f15.x;
    float f24 = f15.y;
    vec3 f25 = f22;
    f25.y = (CB4[f12 * 1 + 0].y * f23) - (CB4[f12 * 1 + 0].z * f24);
    vec3 f26 = f25;
    f26.z = (CB4[f12 * 1 + 0].z * f23) + (CB4[f12 * 1 + 0].y * f24);
    vec3 f27 = vec3(0.0);
    f27.x = CB4[f13 * 1 + 0].x * f10.y;
    float f28 = f16.x;
    float f29 = f16.y;
    vec3 f30 = f27;
    f30.y = (CB4[f13 * 1 + 0].y * f28) - (CB4[f13 * 1 + 0].z * f29);
    vec3 f31 = f30;
    f31.z = (CB4[f13 * 1 + 0].z * f28) + (CB4[f13 * 1 + 0].y * f29);
    vec4 f32 = ((vec4(f21.x, f21.y, f21.z, f6.w) * VARYING0.x) + (vec4(f26.x, f26.y, f26.z, f9.w) * VARYING0.y)) + (vec4(f31.x, f31.y, f31.z, f10.w) * VARYING0.z);
    float f33 = f32.x;
    float f34 = f33 - f32.z;
    vec3 f35 = vec4(vec3(f34, f33, f34) + (vec3(f32.yzy) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f36 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    float f37 = -VARYING6.x;
    vec2 f38 = (((texture2DGradARB(NormalMapTexture, f4, dFdx(f5), dFdy(f5)) * VARYING0.x) + (texture2DGradARB(NormalMapTexture, f7, dFdx(f8), dFdy(f8)) * VARYING0.y)) + (texture2DGradARB(NormalMapTexture, f1, dFdx(f3), dFdy(f3)) * VARYING0.z)).wy * 2.0;
    vec2 f39 = f38 - vec2(1.0);
    vec3 f40 = vec3(dot(VARYING7, VARYING0.xyz));
    vec3 f41 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f37), vec3(VARYING6.y, f37, 0.0), f40) * f39.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f40) * f39.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - f38, f39), 0.0, 1.0)))), 0.0).xyz;
    vec4 f42 = ((texture2DGradARB(SpecularMapTexture, f4, dFdx(f5), dFdy(f5)) * VARYING0.x) + (texture2DGradARB(SpecularMapTexture, f7, dFdx(f8), dFdy(f8)) * VARYING0.y)) + (texture2DGradARB(SpecularMapTexture, f1, dFdx(f3), dFdy(f3)) * VARYING0.z);
    vec3 f43 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f44 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f45 = VARYING4.yzx - (VARYING4.yzx * f44);
    vec4 f46 = vec4(clamp(f44, 0.0, 1.0));
    vec4 f47 = mix(texture3D(LightMapTexture, f45), vec4(0.0), f46);
    vec4 f48 = mix(texture3D(LightGridSkylightTexture, f45), vec4(1.0), f46);
    vec4 f49 = texture2D(ShadowMapTexture, f43.xy);
    float f50 = f43.z;
    float f51 = f42.y;
    vec3 f52 = -CB0[11].xyz;
    float f53 = dot(f41, f52) * ((1.0 - ((step(f49.x, f50) * clamp(CB0[24].z + (CB0[24].w * abs(f50 - 0.5)), 0.0, 1.0)) * f49.y)) * f48.y);
    vec3 f54 = normalize(f52 + normalize(VARYING8));
    float f55 = clamp(f53, 0.0, 1.0);
    float f56 = f51 * f51;
    float f57 = max(0.001000000047497451305389404296875, dot(f41, f54));
    float f58 = dot(f52, f54);
    float f59 = 1.0 - f58;
    float f60 = f59 * f59;
    float f61 = (f60 * f60) * f59;
    vec3 f62 = vec3(f61) + (vec3(0.039999999105930328369140625) * (1.0 - f61));
    float f63 = f56 * f56;
    float f64 = (((f57 * f63) - f57) * f57) + 1.0;
    vec3 f65 = (((((((vec3(1.0) - (f62 * (CB0[26].w * f36))) * CB0[10].xyz) * f55) + (CB0[12].xyz * clamp(-f53, 0.0, 1.0))) + min((f47.xyz * (f47.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f48.x)), vec3(CB0[16].w))) + vec3((f42.z * 2.0) * f36)) * (f35 * f35).xyz) + ((((f62 * (((f63 + (f63 * f63)) / (((f64 * f64) * ((f58 * 3.0) + 0.5)) * ((f57 * 0.75) + 0.25))) * f55)) * CB0[10].xyz) * f36) * VARYING0.w);
    vec4 f66 = vec4(f65.x, f65.y, f65.z, vec4(0.0).w);
    f66.w = 1.0;
    vec3 f67 = sqrt(clamp(mix(CB0[14].xyz, f66.xyz, vec3(clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0))).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    gl_FragData[0] = vec4(f67.x, f67.y, f67.z, f66.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s2
