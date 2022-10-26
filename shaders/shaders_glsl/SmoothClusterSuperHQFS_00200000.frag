#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
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
    float f14 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec2 f15 = (((texture2DGradARB(NormalMapTexture, f4, dFdx(f5), dFdy(f5)) * VARYING0.x) + (texture2DGradARB(NormalMapTexture, f6, dFdx(f7), dFdy(f7)) * VARYING0.y)) + (texture2DGradARB(NormalMapTexture, f1, dFdx(f3), dFdy(f3)) * VARYING0.z)).wy * 2.0;
    vec2 f16 = f15 - vec2(1.0);
    vec3 f17 = vec3(dot(VARYING7, VARYING0.xyz));
    vec3 f18 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f17) * f16.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f17) * f16.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - f15, f16), 0.0, 1.0)))), 0.0).xyz;
    float f19 = 0.08900000154972076416015625 + (f8.y * 0.9110000133514404296875);
    vec3 f20 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f21 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f22 = VARYING4.yzx - (VARYING4.yzx * f21);
    vec4 f23 = vec4(clamp(f21, 0.0, 1.0));
    vec4 f24 = mix(texture3D(LightMapTexture, f22), vec4(0.0), f23);
    vec4 f25 = mix(texture3D(LightGridSkylightTexture, f22), vec4(1.0), f23);
    vec4 f26 = texture2D(ShadowMapTexture, f20.xy);
    float f27 = f20.z;
    vec3 f28 = -CB0[16].xyz;
    float f29 = dot(f18, f28) * ((1.0 - ((step(f26.x, f27) * clamp(CB0[29].z + (CB0[29].w * abs(f27 - 0.5)), 0.0, 1.0)) * f26.y)) * f25.y);
    vec3 f30 = normalize(normalize(VARYING8) - CB0[16].xyz);
    float f31 = clamp(f29, 0.0, 1.0);
    float f32 = f19 * f19;
    float f33 = max(0.001000000047497451305389404296875, dot(f18, f30));
    float f34 = dot(f28, f30);
    float f35 = 1.0 - f34;
    float f36 = f35 * f35;
    float f37 = (f36 * f36) * f35;
    vec3 f38 = vec3(f37) + (vec3(0.039999999105930328369140625) * (1.0 - f37));
    float f39 = f32 * f32;
    float f40 = (((f33 * f39) - f33) * f33) + 1.0;
    vec3 f41 = (((((((vec3(1.0) - (f38 * (CB0[31].w * f14))) * CB0[15].xyz) * f31) + (CB0[17].xyz * clamp(-f29, 0.0, 1.0))) + (min((f24.xyz * (f24.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f25.x)), vec3(CB0[21].w)) * 1.0)) + vec3((f8.z * 2.0) * f14)) * (f13 * f13)) + ((((f38 * (((f39 + (f39 * f39)) / max(((f40 * f40) * ((f34 * 3.0) + 0.5)) * ((f33 * 0.75) + 0.25), 3.0999999580672010779380798339844e-05)) * f31)) * CB0[15].xyz) * 1.0) * (f14 * VARYING0.w));
    vec4 f42 = vec4(0.0);
    f42.x = f41.x;
    vec4 f43 = f42;
    f43.y = f41.y;
    vec4 f44 = f43;
    f44.z = f41.z;
    vec4 f45 = f44;
    f45.w = 1.0;
    vec3 f46 = mix(CB0[19].xyz, f45.xyz, vec3(clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f47 = f45;
    f47.x = f46.x;
    vec4 f48 = f47;
    f48.y = f46.y;
    vec4 f49 = f48;
    f49.z = f46.z;
    vec3 f50 = sqrt(clamp(f49.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f51 = f49;
    f51.x = f50.x;
    vec4 f52 = f51;
    f52.y = f50.y;
    vec4 f53 = f52;
    f53.z = f50.z;
    gl_FragData[0] = f53;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
