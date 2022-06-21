#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform vec4 CB3[1];
uniform vec4 CB4[36];
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
    vec3 f43 = f42 * f42;
    float f44 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec2 f45 = (((texture2DGradARB(NormalMapTexture, f4, dFdx(f5), dFdy(f5)) * VARYING0.x) + (texture2DGradARB(NormalMapTexture, f6, dFdx(f7), dFdy(f7)) * VARYING0.y)) + (texture2DGradARB(NormalMapTexture, f1, dFdx(f3), dFdy(f3)) * VARYING0.z)).wy * 2.0;
    vec2 f46 = f45 - vec2(1.0);
    vec3 f47 = vec3(dot(VARYING7, VARYING0.xyz));
    vec3 f48 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f47) * f46.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f47) * f46.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - f45, f46), 0.0, 1.0)))), 0.0).xyz;
    vec3 f49 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f50 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f51 = VARYING4.yzx - (VARYING4.yzx * f50);
    vec4 f52 = vec4(clamp(f50, 0.0, 1.0));
    vec4 f53 = mix(texture3D(LightMapTexture, f51), vec4(0.0), f52);
    vec4 f54 = mix(texture3D(LightGridSkylightTexture, f51), vec4(1.0), f52);
    vec4 f55 = texture2D(ShadowMapTexture, f49.xy);
    float f56 = f49.z;
    float f57 = 0.08900000154972076416015625 + (f8.y * 0.9110000133514404296875);
    float f58 = f8.x;
    vec3 f59 = -CB0[11].xyz;
    float f60 = (dot(f48, f59) * CB0[9].w) * ((1.0 - ((step(f55.x, f56) * clamp(CB0[24].z + (CB0[24].w * abs(f56 - 0.5)), 0.0, 1.0)) * f55.y)) * f54.y);
    vec3 f61 = normalize(normalize(VARYING8) - CB0[11].xyz);
    float f62 = clamp(f60, 0.0, 1.0);
    float f63 = f57 * f57;
    float f64 = max(0.001000000047497451305389404296875, dot(f48, f61));
    float f65 = dot(f59, f61);
    float f66 = 1.0 - f65;
    float f67 = f66 * f66;
    float f68 = (f67 * f67) * f66;
    vec3 f69 = vec3(f68) + (mix(vec3(0.039999999105930328369140625), f43, vec3(f58)) * (1.0 - f68));
    float f70 = f63 * f63;
    float f71 = (((f64 * f70) - f64) * f64) + 1.0;
    float f72 = 1.0 - f58;
    vec3 f73 = (((((((vec3(f72) - (f69 * ((CB0[26].w * f44) * f72))) * CB0[10].xyz) * f62) + (CB0[12].xyz * (f72 * clamp(-f60, 0.0, 1.0)))) + (min((f53.xyz * (f53.w * 120.0)) + (CB0[8].xyz + (CB0[9].xyz * f54.x)), vec3(CB0[16].w)) * 1.0)) + vec3((f8.z * 2.0) * f44)) * f43) + (((((f69 * (((f70 + (f70 * f70)) / (((f71 * f71) * ((f65 * 3.0) + 0.5)) * ((f64 * 0.75) + 0.25))) * f62)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * f44) * VARYING0.w);
    vec4 f74 = vec4(0.0);
    f74.x = f73.x;
    vec4 f75 = f74;
    f75.y = f73.y;
    vec4 f76 = f75;
    f76.z = f73.z;
    vec4 f77 = f76;
    f77.w = 1.0;
    vec3 f78 = mix(CB0[14].xyz, f77.xyz, vec3(clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0)));
    vec4 f79 = f77;
    f79.x = f78.x;
    vec4 f80 = f79;
    f80.y = f78.y;
    vec4 f81 = f80;
    f81.z = f78.z;
    vec3 f82 = sqrt(clamp(f81.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f83 = f81;
    f83.x = f82.x;
    vec4 f84 = f83;
    f84.y = f82.y;
    vec4 f85 = f84;
    f85.z = f82.z;
    gl_FragData[0] = f85;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
