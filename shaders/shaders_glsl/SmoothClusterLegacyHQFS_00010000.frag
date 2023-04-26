#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
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
    float f17 = f9.w;
    vec3 f18 = vec4(vec3(f16, f13, f16) + (vec3(f14, f15, f14) * vec3(1.0, 1.0, -1.0)), f17).xyz;
    vec3 f19 = mix(f18, f18 * VARYING9.xyz, vec3(VARYING9.w * f17));
    vec4 f20 = vec4(0.0);
    f20.x = f19.x;
    vec4 f21 = f20;
    f21.y = f19.y;
    vec4 f22 = f21;
    f22.z = f19.z;
    float f23 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec3 f24 = normalize(VARYING6);
    float f25 = 0.08900000154972076416015625 + (f8.y * 0.9110000133514404296875);
    vec3 f26 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f27 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f28 = VARYING4.yzx - (VARYING4.yzx * f27);
    vec4 f29 = vec4(clamp(f27, 0.0, 1.0));
    vec4 f30 = mix(texture3D(LightMapTexture, f28), vec4(0.0), f29);
    vec4 f31 = mix(texture3D(LightGridSkylightTexture, f28), vec4(1.0), f29);
    vec4 f32 = texture2D(ShadowMapTexture, f26.xy);
    float f33 = f26.z;
    vec3 f34 = -CB0[16].xyz;
    float f35 = dot(f24, f34) * ((1.0 - ((step(f32.x, f33) * clamp(CB0[29].z + (CB0[29].w * abs(f33 - 0.5)), 0.0, 1.0)) * f32.y)) * f31.y);
    vec3 f36 = normalize(normalize(VARYING8) + f34);
    float f37 = clamp(f35, 0.0, 1.0);
    float f38 = f25 * f25;
    float f39 = max(0.001000000047497451305389404296875, dot(f24, f36));
    float f40 = dot(f34, f36);
    float f41 = 1.0 - f40;
    float f42 = f41 * f41;
    float f43 = (f42 * f42) * f41;
    vec3 f44 = vec3(f43) + (vec3(0.039999999105930328369140625) * (1.0 - f43));
    float f45 = f38 * f38;
    float f46 = (((f39 * f45) - f39) * f39) + 1.0;
    vec3 f47 = (((((((vec3(1.0) - (f44 * (CB0[31].w * f23))) * CB0[15].xyz) * f37) + (CB0[17].xyz * clamp(-f35, 0.0, 1.0))) + (min((f30.xyz * (f30.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f31.x)), vec3(CB0[21].w)) * 1.0)) + vec3((f8.z * 2.0) * f23)) * (f22.xyz * f22.xyz)) + ((((f44 * (((f45 + (f45 * f45)) / (((f46 * f46) * ((f40 * 3.0) + 0.5)) * ((f39 * 0.75) + 0.25))) * f37)) * CB0[15].xyz) * 1.0) * (f23 * VARYING0.w));
    vec4 f48 = vec4(0.0);
    f48.x = f47.x;
    vec4 f49 = f48;
    f49.y = f47.y;
    vec4 f50 = f49;
    f50.z = f47.z;
    vec4 f51 = f50;
    f51.w = 1.0;
    vec3 f52 = mix(CB0[19].xyz, f51.xyz, vec3(clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f53 = f51;
    f53.x = f52.x;
    vec4 f54 = f53;
    f54.y = f52.y;
    vec4 f55 = f54;
    f55.z = f52.z;
    vec3 f56 = sqrt(clamp(f55.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f57 = f55;
    f57.x = f56.x;
    vec4 f58 = f57;
    f58.y = f56.y;
    vec4 f59 = f58;
    f59.z = f56.z;
    gl_FragData[0] = f59;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
