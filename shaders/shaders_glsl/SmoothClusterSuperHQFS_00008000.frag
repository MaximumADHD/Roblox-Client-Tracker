#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <ExtraData.h>
uniform vec4 CB0[58];
uniform vec4 CB3[1];
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
    vec4 f11 = ((texture2DGradARB(AlbedoMapTexture, f0, dFdx(f3), dFdy(f3)).yxzw * VARYING0.x) + (texture2DGradARB(AlbedoMapTexture, f1, dFdx(f4), dFdy(f4)).yxzw * VARYING0.y)) + (texture2DGradARB(AlbedoMapTexture, f2, dFdx(f5), dFdy(f5)).yxzw * VARYING0.z);
    vec2 f12 = f11.yz - vec2(0.5);
    float f13 = f11.x;
    float f14 = f13 - f12.y;
    vec3 f15 = vec4(vec3(f14, f13, f14) + (vec3(f12.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f16 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    float f17 = 0.08900000154972076416015625 + (f6.y * 0.9110000133514404296875);
    vec3 f18 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f19 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f20 = VARYING4.yzx - (VARYING4.yzx * f19);
    vec4 f21 = vec4(clamp(f19, 0.0, 1.0));
    vec4 f22 = mix(texture3D(LightMapTexture, f20), vec4(0.0), f21);
    vec4 f23 = mix(texture3D(LightGridSkylightTexture, f20), vec4(1.0), f21);
    vec4 f24 = texture2D(ShadowMapTexture, f18.xy);
    float f25 = f18.z;
    vec3 f26 = -CB0[16].xyz;
    float f27 = dot(f10, f26) * ((1.0 - ((step(f24.x, f25) * clamp(CB0[29].z + (CB0[29].w * abs(f25 - 0.5)), 0.0, 1.0)) * f24.y)) * f23.y);
    vec3 f28 = normalize(normalize(VARYING8) + f26);
    float f29 = clamp(f27, 0.0, 1.0);
    float f30 = f17 * f17;
    float f31 = max(0.001000000047497451305389404296875, dot(f10, f28));
    float f32 = dot(f26, f28);
    float f33 = 1.0 - f32;
    float f34 = f33 * f33;
    float f35 = (f34 * f34) * f33;
    vec3 f36 = vec3(f35) + (vec3(0.039999999105930328369140625) * (1.0 - f35));
    float f37 = f30 * f30;
    float f38 = (((f31 * f37) - f31) * f31) + 1.0;
    vec3 f39 = (((vec3((f6.z * 2.0) * f16) + (min((f22.xyz * (f22.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f23.x)), vec3(CB0[21].w)) * 1.0)) + ((((vec3(1.0) - (f36 * (CB0[31].w * f16))) * CB0[15].xyz) * f29) + (CB0[17].xyz * clamp(-f27, 0.0, 1.0)))) * (f15 * f15)) + (((f36 * (((f37 + (f37 * f37)) / (((f38 * f38) * ((f32 * 3.0) + 0.5)) * ((f31 * 0.75) + 0.25))) * f29)) * CB0[15].xyz) * (f16 * VARYING0.w));
    vec4 f40 = vec4(0.0);
    f40.x = f39.x;
    vec4 f41 = f40;
    f41.y = f39.y;
    vec4 f42 = f41;
    f42.z = f39.z;
    vec4 f43 = f42;
    f43.w = 1.0;
    vec3 f44 = mix(CB0[19].xyz, f43.xyz, vec3(clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f45 = f43;
    f45.x = f44.x;
    vec4 f46 = f45;
    f46.y = f44.y;
    vec4 f47 = f46;
    f47.z = f44.z;
    vec3 f48 = sqrt(clamp(f47.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f49 = f47;
    f49.x = f48.x;
    vec4 f50 = f49;
    f50.y = f48.y;
    vec4 f51 = f50;
    f51.z = f48.z;
    gl_FragData[0] = f51;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$SpecularMapTexture=s3
//$$NormalMapTexture=s4
//$$AlbedoMapTexture=s0
