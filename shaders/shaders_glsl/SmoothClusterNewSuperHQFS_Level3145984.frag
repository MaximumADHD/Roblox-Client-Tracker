#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform vec4 CB3[1];
uniform vec4 CB4[63];
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
varying vec4 VARYING9;

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
    vec4 f9 = texture2DGradARB(AlbedoMapTexture, f4, dFdx(f5), dFdy(f5));
    vec4 f10 = texture2DGradARB(AlbedoMapTexture, f6, dFdx(f7), dFdy(f7));
    vec4 f11 = texture2DGradARB(AlbedoMapTexture, f1, dFdx(f3), dFdy(f3));
    int f12 = int(VARYING9.x + 0.5);
    int f13 = int(VARYING9.y + 0.5);
    int f14 = int(VARYING9.z + 0.5);
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
    float f43 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec2 f44 = (((texture2DGradARB(NormalMapTexture, f4, dFdx(f5), dFdy(f5)) * VARYING0.x) + (texture2DGradARB(NormalMapTexture, f6, dFdx(f7), dFdy(f7)) * VARYING0.y)) + (texture2DGradARB(NormalMapTexture, f1, dFdx(f3), dFdy(f3)) * VARYING0.z)).wy * 2.0;
    vec2 f45 = f44 - vec2(1.0);
    vec3 f46 = vec3(dot(VARYING7, VARYING0.xyz));
    vec3 f47 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f46) * f45.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f46) * f45.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - f44, f45), 0.0, 1.0)))), 0.0).xyz;
    vec3 f48 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f49 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f50 = VARYING4.yzx - (VARYING4.yzx * f49);
    vec4 f51 = vec4(clamp(f49, 0.0, 1.0));
    vec4 f52 = mix(texture3D(LightMapTexture, f50), vec4(0.0), f51);
    vec4 f53 = mix(texture3D(LightGridSkylightTexture, f50), vec4(1.0), f51);
    vec4 f54 = texture2D(ShadowMapTexture, f48.xy);
    float f55 = f48.z;
    float f56 = f8.y;
    vec3 f57 = -CB0[11].xyz;
    float f58 = (dot(f47, f57) * CB0[9].w) * ((1.0 - ((step(f54.x, f55) * clamp(CB0[24].z + (CB0[24].w * abs(f55 - 0.5)), 0.0, 1.0)) * f54.y)) * f53.y);
    vec3 f59 = normalize(f57 + normalize(VARYING8));
    float f60 = clamp(f58, 0.0, 1.0);
    float f61 = f56 * f56;
    float f62 = max(0.001000000047497451305389404296875, dot(f47, f59));
    float f63 = dot(f57, f59);
    float f64 = 1.0 - f63;
    float f65 = f64 * f64;
    float f66 = (f65 * f65) * f64;
    vec3 f67 = vec3(f66) + (vec3(0.039999999105930328369140625) * (1.0 - f66));
    float f68 = f61 * f61;
    float f69 = (((f62 * f68) - f62) * f62) + 1.0;
    vec3 f70 = (((((((vec3(1.0) - (f67 * (CB0[26].w * f43))) * CB0[10].xyz) * f60) + (CB0[12].xyz * clamp(-f58, 0.0, 1.0))) + (min((f52.xyz * (f52.w * 120.0)) + (CB0[8].xyz + (CB0[9].xyz * f53.x)), vec3(CB0[16].w)) * 1.0)) + vec3((f8.z * 2.0) * f43)) * (f42 * f42)) + (((((f67 * (((f68 + (f68 * f68)) / (((f69 * f69) * ((f63 * 3.0) + 0.5)) * ((f62 * 0.75) + 0.25))) * f60)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * f43) * VARYING0.w);
    vec4 f71 = vec4(0.0);
    f71.x = f70.x;
    vec4 f72 = f71;
    f72.y = f70.y;
    vec4 f73 = f72;
    f73.z = f70.z;
    vec4 f74 = f73;
    f74.w = 1.0;
    vec3 f75 = mix(CB0[14].xyz, f74.xyz, vec3(clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0)));
    vec4 f76 = f74;
    f76.x = f75.x;
    vec4 f77 = f76;
    f77.y = f75.y;
    vec4 f78 = f77;
    f78.z = f75.z;
    vec3 f79 = sqrt(clamp(f78.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f80 = f78;
    f80.x = f79.x;
    vec4 f81 = f80;
    f81.y = f79.y;
    vec4 f82 = f81;
    f82.z = f79.z;
    gl_FragData[0] = f82;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
