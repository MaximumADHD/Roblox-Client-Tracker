#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D SpecularMapTexture;
uniform sampler2D AlbedoMapTexture;
uniform sampler2D NormalMapTexture;

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
    vec4 f0 = (fract(VARYING1) * CB3[0].xyxy) + VARYING2;
    vec2 f1 = (fract(VARYING3.xy) * CB3[0].xy) + VARYING3.zw;
    vec4 f2 = VARYING1 * CB3[0].xyxy;
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
    float f14 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    float f15 = -VARYING6.x;
    vec2 f16 = (((texture2DGradARB(NormalMapTexture, f4, dFdx(f5), dFdy(f5)) * VARYING0.x) + (texture2DGradARB(NormalMapTexture, f6, dFdx(f7), dFdy(f7)) * VARYING0.y)) + (texture2DGradARB(NormalMapTexture, f1, dFdx(f3), dFdy(f3)) * VARYING0.z)).wy * 2.0;
    vec2 f17 = f16 - vec2(1.0);
    vec3 f18 = vec3(dot(VARYING7, VARYING0.xyz));
    vec3 f19 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f15), vec3(VARYING6.y, f15, 0.0), f18) * f17.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f18) * f17.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - f16, f17), 0.0, 1.0)))), 0.0).xyz;
    vec3 f20 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f21 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f22 = VARYING4.yzx - (VARYING4.yzx * f21);
    vec4 f23 = vec4(clamp(f21, 0.0, 1.0));
    vec4 f24 = mix(texture3D(LightMapTexture, f22), vec4(0.0), f23);
    vec4 f25 = mix(texture3D(LightGridSkylightTexture, f22), vec4(1.0), f23);
    vec4 f26 = texture2D(ShadowMapTexture, f20.xy);
    float f27 = f20.z;
    float f28 = 0.08900000154972076416015625 + (f8.y * 0.9110000133514404296875);
    vec3 f29 = -CB0[11].xyz;
    float f30 = dot(f19, f29) * ((1.0 - ((step(f26.x, f27) * clamp(CB0[24].z + (CB0[24].w * abs(f27 - 0.5)), 0.0, 1.0)) * f26.y)) * f25.y);
    vec3 f31 = normalize(f29 + normalize(VARYING8));
    float f32 = clamp(f30, 0.0, 1.0);
    float f33 = f28 * f28;
    float f34 = max(0.001000000047497451305389404296875, dot(f19, f31));
    float f35 = dot(f29, f31);
    float f36 = 1.0 - f35;
    float f37 = f36 * f36;
    float f38 = (f37 * f37) * f36;
    vec3 f39 = vec3(f38) + (vec3(0.039999999105930328369140625) * (1.0 - f38));
    float f40 = f33 * f33;
    float f41 = (((f34 * f40) - f34) * f34) + 1.0;
    vec3 f42 = (((((((vec3(1.0) - (f39 * (CB0[26].w * f14))) * CB0[10].xyz) * f32) + (CB0[12].xyz * clamp(-f30, 0.0, 1.0))) + (min((f24.xyz * (f24.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f25.x)), vec3(CB0[16].w)) * 1.0)) + vec3((f8.z * 2.0) * f14)) * (f13 * f13).xyz) + ((((f39 * (((f40 + (f40 * f40)) / (((f41 * f41) * ((f35 * 3.0) + 0.5)) * ((f34 * 0.75) + 0.25))) * f32)) * CB0[10].xyz) * f14) * VARYING0.w);
    vec4 f43 = vec4(f42.x, f42.y, f42.z, vec4(0.0).w);
    f43.w = 1.0;
    vec3 f44 = sqrt(clamp(mix(CB0[14].xyz, f43.xyz, vec3(clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0))).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    gl_FragData[0] = vec4(f44.x, f44.y, f44.z, f43.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
