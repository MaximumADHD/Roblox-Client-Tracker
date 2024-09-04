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
uniform sampler2D AlbedoMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec3 VARYING4;
varying vec4 VARYING5;
varying vec3 VARYING6;
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
    vec3 f7 = normalize(VARYING6);
    vec4 f8 = texture2DGradARB(AlbedoMapTexture, f0, dFdx(f3), dFdy(f3));
    vec4 f9 = texture2DGradARB(AlbedoMapTexture, f1, dFdx(f4), dFdy(f4));
    vec4 f10 = texture2DGradARB(AlbedoMapTexture, f2, dFdx(f5), dFdy(f5));
    vec3 f11 = (((mix(vec3(1.0), CB4[int(VARYING9.x + 0.5) * 1 + 0].xyz, vec3(f8.w)) * f8.xyz) * VARYING0.x) + ((mix(vec3(1.0), CB4[int(VARYING9.y + 0.5) * 1 + 0].xyz, vec3(f9.w)) * f9.xyz) * VARYING0.y)) + ((mix(vec3(1.0), CB4[int(VARYING9.z + 0.5) * 1 + 0].xyz, vec3(f10.w)) * f10.xyz) * VARYING0.z);
    vec3 f12 = f11 * f11;
    float f13 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    float f14 = 0.08900000154972076416015625 + (f6.y * 0.9110000133514404296875);
    float f15 = f6.x;
    vec3 f16 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f17 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f18 = VARYING4.yzx - (VARYING4.yzx * f17);
    vec4 f19 = vec4(clamp(f17, 0.0, 1.0));
    vec4 f20 = mix(texture3D(LightMapTexture, f18), vec4(0.0), f19);
    vec4 f21 = mix(texture3D(LightGridSkylightTexture, f18), vec4(1.0), f19);
    vec4 f22 = texture2D(ShadowMapTexture, f16.xy);
    float f23 = f16.z;
    vec3 f24 = -CB0[16].xyz;
    float f25 = dot(f7, f24) * ((1.0 - ((step(f22.x, f23) * clamp(CB0[29].z + (CB0[29].w * abs(f23 - 0.5)), 0.0, 1.0)) * f22.y)) * f21.y);
    vec3 f26 = normalize(normalize(VARYING8) + f24);
    float f27 = clamp(f25, 0.0, 1.0);
    float f28 = f14 * f14;
    float f29 = max(0.001000000047497451305389404296875, dot(f7, f26));
    float f30 = dot(f24, f26);
    float f31 = 1.0 - f30;
    float f32 = f31 * f31;
    float f33 = (f32 * f32) * f31;
    vec3 f34 = vec3(f33) + (mix(vec3(0.039999999105930328369140625), f12, vec3(f15)) * (1.0 - f33));
    float f35 = f28 * f28;
    float f36 = (((f29 * f35) - f29) * f29) + 1.0;
    float f37 = 1.0 - f15;
    vec3 f38 = (((vec3((f6.z * 2.0) * f13) + (min((f20.xyz * (f20.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f21.x)), vec3(CB0[21].w)) * 1.0)) + ((((vec3(f37) - (f34 * ((CB0[31].w * f13) * f37))) * CB0[15].xyz) * f27) + (CB0[17].xyz * (f37 * clamp(-f25, 0.0, 1.0))))) * f12) + (((f34 * (((f35 + (f35 * f35)) / (((f36 * f36) * ((f30 * 3.0) + 0.5)) * ((f29 * 0.75) + 0.25))) * f27)) * CB0[15].xyz) * (f13 * VARYING0.w));
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
