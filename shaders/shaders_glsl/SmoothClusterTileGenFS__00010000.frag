#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <ExtraData.h>
uniform vec4 CB3[1];
uniform vec4 CB4[63];
uniform sampler2D SpecularMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D AlbedoMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec3 VARYING4;
varying vec3 VARYING5;
varying vec3 VARYING6;

void main()
{
    vec2 f0 = (fract(VARYING1.xy) * CB3[0].xy) + VARYING2.xy;
    vec2 f1 = (fract(VARYING1.zw) * CB3[0].xy) + VARYING2.zw;
    vec2 f2 = (fract(VARYING3.xy) * CB3[0].xy) + VARYING3.zw;
    vec2 f3 = VARYING1.xy * CB3[0].xy;
    vec2 f4 = VARYING1.zw * CB3[0].xy;
    vec2 f5 = VARYING3.xy * CB3[0].xy;
    vec2 f6 = (((texture2DGradARB(NormalMapTexture, f0, dFdx(f3), dFdy(f3)) * VARYING0.x) + (texture2DGradARB(NormalMapTexture, f1, dFdx(f4), dFdy(f4)) * VARYING0.y)) + (texture2DGradARB(NormalMapTexture, f2, dFdx(f5), dFdy(f5)) * VARYING0.z)).wy * 2.0;
    vec2 f7 = f6 - vec2(1.0);
    vec3 f8 = vec3(dot(VARYING5, VARYING0.xyz));
    vec4 f9 = texture2DGradARB(AlbedoMapTexture, f0, dFdx(f3), dFdy(f3));
    vec4 f10 = texture2DGradARB(AlbedoMapTexture, f1, dFdx(f4), dFdy(f4));
    vec4 f11 = texture2DGradARB(AlbedoMapTexture, f2, dFdx(f5), dFdy(f5));
    int f12 = int(VARYING6.x + 0.5);
    int f13 = int(VARYING6.y + 0.5);
    int f14 = int(VARYING6.z + 0.5);
    vec2 f15 = f9.xz - vec2(0.5);
    float f16 = f15.x;
    vec4 f17 = f9.yxzw;
    f17.y = f16;
    float f18 = f15.y;
    vec4 f19 = f17;
    f19.z = f18;
    vec2 f20 = f10.xz - vec2(0.5);
    float f21 = f20.x;
    vec4 f22 = f10.yxzw;
    f22.y = f21;
    float f23 = f20.y;
    vec4 f24 = f22;
    f24.z = f23;
    vec2 f25 = f11.xz - vec2(0.5);
    float f26 = f25.x;
    vec4 f27 = f11.yxzw;
    f27.y = f26;
    float f28 = f25.y;
    vec4 f29 = f27;
    f29.z = f28;
    vec4 f30 = f19;
    f30.x = CB4[f12 * 1 + 0].x * f9.y;
    vec4 f31 = f30;
    f31.y = (CB4[f12 * 1 + 0].y * f16) - (CB4[f12 * 1 + 0].z * f18);
    vec4 f32 = f31;
    f32.z = (CB4[f12 * 1 + 0].z * f16) + (CB4[f12 * 1 + 0].y * f18);
    vec4 f33 = f24;
    f33.x = CB4[f13 * 1 + 0].x * f10.y;
    vec4 f34 = f33;
    f34.y = (CB4[f13 * 1 + 0].y * f21) - (CB4[f13 * 1 + 0].z * f23);
    vec4 f35 = f34;
    f35.z = (CB4[f13 * 1 + 0].z * f21) + (CB4[f13 * 1 + 0].y * f23);
    vec4 f36 = f29;
    f36.x = CB4[f14 * 1 + 0].x * f11.y;
    vec4 f37 = f36;
    f37.y = (CB4[f14 * 1 + 0].y * f26) - (CB4[f14 * 1 + 0].z * f28);
    vec4 f38 = f37;
    f38.z = (CB4[f14 * 1 + 0].z * f26) + (CB4[f14 * 1 + 0].y * f28);
    vec4 f39 = ((f32 * VARYING0.x) + (f35 * VARYING0.y)) + (f38 * VARYING0.z);
    float f40 = f39.x;
    float f41 = f40 - f39.z;
    vec3 f42 = vec4(vec3(f41, f40, f41) + (vec3(f39.yzy) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    gl_FragData[0] = vec4(f42 * f42, 1.0);
    gl_FragData[1] = vec4((vec4(normalize(((mix(vec3(VARYING4.z, 0.0, -VARYING4.x), vec3(-VARYING4.y, VARYING4.x, 0.0), f8) * f7.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING4.z, VARYING4.y), f8) * f7.y)) + (VARYING4 * sqrt(clamp(1.0 + dot(vec2(1.0) - f6, f7), 0.0, 1.0)))), 0.0).xyz * 0.5) + vec3(0.5), 1.0);
    gl_FragData[2] = vec4((((texture2DGradARB(SpecularMapTexture, f0, dFdx(f3), dFdy(f3)) * VARYING0.x) + (texture2DGradARB(SpecularMapTexture, f1, dFdx(f4), dFdy(f4)) * VARYING0.y)) + (texture2DGradARB(SpecularMapTexture, f2, dFdx(f5), dFdy(f5)) * VARYING0.z)).xyz, 1.0);
}

//$$SpecularMapTexture=s3
//$$NormalMapTexture=s4
//$$AlbedoMapTexture=s0
