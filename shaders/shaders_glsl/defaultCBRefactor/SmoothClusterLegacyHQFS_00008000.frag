#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SCExtraData.h>
uniform vec4 CB0[57];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D SpecularMapTexture;
uniform sampler2D AlbedoMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec3 VARYING4;
varying vec4 VARYING5;
varying vec3 VARYING6;
varying vec3 VARYING8;

void main()
{
    vec4 f0 = (fract(VARYING1) * CB3[0].xy.xyxy) + VARYING2;
    vec2 f1 = (fract(VARYING3.xy) * CB3[0].xy) + VARYING3.zw;
    vec4 f2 = VARYING1 * CB3[0].xy.xyxy;
    vec2 f3 = VARYING3.xy * CB3[0].xy;
    vec2 f4 = f0.xy;
    vec2 f5 = f2.xy;
    vec2 f6 = f0.zw;
    vec2 f7 = f2.zw;
    vec4 f8 = ((texture2DGradARB(SpecularMapTexture, f4, dFdx(f5), dFdy(f5)) * VARYING0.x) + (texture2DGradARB(SpecularMapTexture, f6, dFdx(f7), dFdy(f7)) * VARYING0.y)) + (texture2DGradARB(SpecularMapTexture, f1, dFdx(f3), dFdy(f3)) * VARYING0.z);
    vec4 f9 = ((texture2DGradARB(AlbedoMapTexture, f4, dFdx(f5), dFdy(f5)).yxzw * VARYING0.x) + (texture2DGradARB(AlbedoMapTexture, f6, dFdx(f7), dFdy(f7)).yxzw * VARYING0.y)) + (texture2DGradARB(AlbedoMapTexture, f1, dFdx(f3), dFdy(f3)).yxzw * VARYING0.z);
    vec2 f10 = f9.yz - vec2(0.5);
    float f11 = f9.x;
    float f12 = f11 - f10.y;
    vec3 f13 = vec4(vec3(f12, f11, f12) + (vec3(f10.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f14 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec3 f15 = normalize(VARYING6);
    float f16 = 0.08900000154972076416015625 + (f8.y * 0.9110000133514404296875);
    vec3 f17 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f18 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f19 = VARYING4.yzx - (VARYING4.yzx * f18);
    vec4 f20 = vec4(clamp(f18, 0.0, 1.0));
    vec4 f21 = mix(texture3D(LightMapTexture, f19), vec4(0.0), f20);
    vec4 f22 = mix(texture3D(LightGridSkylightTexture, f19), vec4(1.0), f20);
    vec4 f23 = texture2D(ShadowMapTexture, f17.xy);
    float f24 = f17.z;
    vec3 f25 = -CB0[16].xyz;
    float f26 = dot(f15, f25) * ((1.0 - ((step(f23.x, f24) * clamp(CB0[29].z + (CB0[29].w * abs(f24 - 0.5)), 0.0, 1.0)) * f23.y)) * f22.y);
    vec3 f27 = normalize(normalize(VARYING8) + f25);
    float f28 = clamp(f26, 0.0, 1.0);
    float f29 = f16 * f16;
    float f30 = max(0.001000000047497451305389404296875, dot(f15, f27));
    float f31 = dot(f25, f27);
    float f32 = 1.0 - f31;
    float f33 = f32 * f32;
    float f34 = (f33 * f33) * f32;
    vec3 f35 = vec3(f34) + (vec3(0.039999999105930328369140625) * (1.0 - f34));
    float f36 = f29 * f29;
    float f37 = (((f30 * f36) - f30) * f30) + 1.0;
    vec3 f38 = (((((((vec3(1.0) - (f35 * (CB0[31].w * f14))) * CB0[15].xyz) * f28) + (CB0[17].xyz * clamp(-f26, 0.0, 1.0))) + (min((f21.xyz * (f21.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f22.x)), vec3(CB0[21].w)) * 1.0)) + vec3((f8.z * 2.0) * f14)) * (f13 * f13)) + ((((f35 * (((f36 + (f36 * f36)) / (((f37 * f37) * ((f31 * 3.0) + 0.5)) * ((f30 * 0.75) + 0.25))) * f28)) * CB0[15].xyz) * 1.0) * (f14 * VARYING0.w));
    vec4 f39 = vec4(0.0);
    f39.x = f38.x;
    vec4 f40 = f39;
    f40.y = f38.y;
    vec4 f41 = f40;
    f41.z = f38.z;
    vec4 f42 = f41;
    f42.w = 1.0;
    vec3 f43 = mix(CB0[19].xyz, f42.xyz, vec3(clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f44 = f42;
    f44.x = f43.x;
    vec4 f45 = f44;
    f45.y = f43.y;
    vec4 f46 = f45;
    f46.z = f43.z;
    vec3 f47 = sqrt(clamp(f46.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f48 = f46;
    f48.x = f47.x;
    vec4 f49 = f48;
    f49.y = f47.y;
    vec4 f50 = f49;
    f50.z = f47.z;
    gl_FragData[0] = f50;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
