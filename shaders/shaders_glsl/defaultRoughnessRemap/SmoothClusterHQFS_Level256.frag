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

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec3 VARYING4;
varying vec4 VARYING5;
varying vec3 VARYING6;
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
    vec4 f9 = ((texture2DGradARB(AlbedoMapTexture, f4, dFdx(f5), dFdy(f5)).yxzw * VARYING0.x) + (texture2DGradARB(AlbedoMapTexture, f6, dFdx(f7), dFdy(f7)).yxzw * VARYING0.y)) + (texture2DGradARB(AlbedoMapTexture, f1, dFdx(f3), dFdy(f3)).yxzw * VARYING0.z);
    vec2 f10 = f9.yz - vec2(0.5);
    float f11 = f10.x;
    float f12 = f10.y;
    float f13 = VARYING9.x * f9.x;
    float f14 = (VARYING9.y * f11) - (VARYING9.z * f12);
    float f15 = (VARYING9.z * f11) + (VARYING9.y * f12);
    float f16 = f13 - f15;
    vec3 f17 = vec4(vec3(f16, f13, f16) + (vec3(f14, f15, f14) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 f18 = mix(f17, f17 * VARYING9.xyz, vec3(VARYING9.w));
    vec4 f19 = vec4(0.0);
    f19.x = f18.x;
    vec4 f20 = f19;
    f20.y = f18.y;
    vec4 f21 = f20;
    f21.z = f18.z;
    float f22 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec3 f23 = normalize(VARYING6);
    vec3 f24 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f25 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f26 = VARYING4.yzx - (VARYING4.yzx * f25);
    vec4 f27 = vec4(clamp(f25, 0.0, 1.0));
    vec4 f28 = mix(texture3D(LightMapTexture, f26), vec4(0.0), f27);
    vec4 f29 = mix(texture3D(LightGridSkylightTexture, f26), vec4(1.0), f27);
    vec4 f30 = texture2D(ShadowMapTexture, f24.xy);
    float f31 = f24.z;
    float f32 = 0.08900000154972076416015625 + (f8.y * 0.9110000133514404296875);
    vec3 f33 = -CB0[11].xyz;
    float f34 = (dot(f23, f33) * CB0[9].w) * ((1.0 - ((step(f30.x, f31) * clamp(CB0[24].z + (CB0[24].w * abs(f31 - 0.5)), 0.0, 1.0)) * f30.y)) * f29.y);
    vec3 f35 = normalize(f33 + normalize(VARYING8));
    float f36 = clamp(f34, 0.0, 1.0);
    float f37 = f32 * f32;
    float f38 = max(0.001000000047497451305389404296875, dot(f23, f35));
    float f39 = dot(f33, f35);
    float f40 = 1.0 - f39;
    float f41 = f40 * f40;
    float f42 = (f41 * f41) * f40;
    vec3 f43 = vec3(f42) + (vec3(0.039999999105930328369140625) * (1.0 - f42));
    float f44 = f37 * f37;
    float f45 = (((f38 * f44) - f38) * f38) + 1.0;
    vec3 f46 = (((((((vec3(1.0) - (f43 * (CB0[26].w * f22))) * CB0[10].xyz) * f36) + (CB0[12].xyz * clamp(-f34, 0.0, 1.0))) + (min((f28.xyz * (f28.w * 120.0)) + (CB0[8].xyz + (CB0[9].xyz * f29.x)), vec3(CB0[16].w)) * 1.0)) + vec3((f8.z * 2.0) * f22)) * (f21.xyz * f21.xyz)) + (((((f43 * (((f44 + (f44 * f44)) / (((f45 * f45) * ((f39 * 3.0) + 0.5)) * ((f38 * 0.75) + 0.25))) * f36)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * f22) * VARYING0.w);
    vec4 f47 = vec4(0.0);
    f47.x = f46.x;
    vec4 f48 = f47;
    f48.y = f46.y;
    vec4 f49 = f48;
    f49.z = f46.z;
    vec4 f50 = f49;
    f50.w = 1.0;
    vec3 f51 = mix(CB0[14].xyz, f50.xyz, vec3(clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0)));
    vec4 f52 = f50;
    f52.x = f51.x;
    vec4 f53 = f52;
    f53.y = f51.y;
    vec4 f54 = f53;
    f54.z = f51.z;
    vec3 f55 = sqrt(clamp(f54.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f56 = f54;
    f56.x = f55.x;
    vec4 f57 = f56;
    f57.y = f55.y;
    vec4 f58 = f57;
    f58.z = f55.z;
    gl_FragData[0] = f58;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
