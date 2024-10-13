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
    vec2 f0 = (fract(VARYING1.xy) * CB3[0].xy) + VARYING2.xy;
    vec2 f1 = (fract(VARYING1.zw) * CB3[0].xy) + VARYING2.zw;
    vec2 f2 = (fract(VARYING3.xy) * CB3[0].xy) + VARYING3.zw;
    vec2 f3 = VARYING1.xy * CB3[0].xy;
    vec2 f4 = VARYING1.zw * CB3[0].xy;
    vec2 f5 = VARYING3.xy * CB3[0].xy;
    vec4 f6 = ((texture2DGradARB(SpecularMapTexture, f0, dFdx(f3), dFdy(f3)) * VARYING0.x) + (texture2DGradARB(SpecularMapTexture, f1, dFdx(f4), dFdy(f4)) * VARYING0.y)) + (texture2DGradARB(SpecularMapTexture, f2, dFdx(f5), dFdy(f5)) * VARYING0.z);
    vec3 f7 = normalize(VARYING6);
    vec4 f8 = ((texture2DGradARB(AlbedoMapTexture, f0, dFdx(f3), dFdy(f3)).yxzw * VARYING0.x) + (texture2DGradARB(AlbedoMapTexture, f1, dFdx(f4), dFdy(f4)).yxzw * VARYING0.y)) + (texture2DGradARB(AlbedoMapTexture, f2, dFdx(f5), dFdy(f5)).yxzw * VARYING0.z);
    vec2 f9 = f8.yz - vec2(0.5);
    float f10 = f8.x;
    float f11 = f10 - f9.y;
    vec3 f12 = vec4(vec3(f11, f10, f11) + (vec3(f9.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f13 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    float f14 = 0.08900000154972076416015625 + (f6.y * 0.9110000133514404296875);
    vec3 f15 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f16 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f17 = VARYING4.yzx - (VARYING4.yzx * f16);
    vec4 f18 = vec4(clamp(f16, 0.0, 1.0));
    vec4 f19 = mix(texture3D(LightMapTexture, f17), vec4(0.0), f18);
    vec4 f20 = mix(texture3D(LightGridSkylightTexture, f17), vec4(1.0), f18);
    vec4 f21 = texture2D(ShadowMapTexture, f15.xy);
    float f22 = f15.z;
    vec3 f23 = -CB0[16].xyz;
    float f24 = dot(f7, f23) * ((1.0 - ((step(f21.x, f22) * clamp(CB0[29].z + (CB0[29].w * abs(f22 - 0.5)), 0.0, 1.0)) * f21.y)) * f20.y);
    vec3 f25 = normalize(normalize(VARYING8) + f23);
    float f26 = clamp(f24, 0.0, 1.0);
    float f27 = f14 * f14;
    float f28 = max(0.001000000047497451305389404296875, dot(f7, f25));
    float f29 = dot(f23, f25);
    float f30 = 1.0 - f29;
    float f31 = f30 * f30;
    float f32 = (f31 * f31) * f30;
    vec3 f33 = vec3(f32) + (vec3(0.039999999105930328369140625) * (1.0 - f32));
    float f34 = f27 * f27;
    float f35 = (((f28 * f34) - f28) * f28) + 1.0;
    vec3 f36 = (((vec3((f6.z * 2.0) * f13) + (min((f19.xyz * (f19.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f20.x)), vec3(CB0[21].w)) * 1.0)) + ((((vec3(1.0) - (f33 * (CB0[31].w * f13))) * CB0[15].xyz) * f26) + (CB0[17].xyz * clamp(-f24, 0.0, 1.0)))) * (f12 * f12)) + (((f33 * (((f34 + (f34 * f34)) / (((f35 * f35) * ((f29 * 3.0) + 0.5)) * ((f28 * 0.75) + 0.25))) * f26)) * CB0[15].xyz) * (f13 * VARYING0.w));
    vec4 f37 = vec4(0.0);
    f37.x = f36.x;
    vec4 f38 = f37;
    f38.y = f36.y;
    vec4 f39 = f38;
    f39.z = f36.z;
    vec4 f40 = f39;
    f40.w = 1.0;
    vec3 f41 = mix(CB0[19].xyz, f40.xyz, vec3(clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f42 = f40;
    f42.x = f41.x;
    vec4 f43 = f42;
    f43.y = f41.y;
    vec4 f44 = f43;
    f44.z = f41.z;
    vec3 f45 = sqrt(clamp(f44.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f46 = f44;
    f46.x = f45.x;
    vec4 f47 = f46;
    f47.y = f45.y;
    vec4 f48 = f47;
    f48.z = f45.z;
    gl_FragData[0] = f48;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
