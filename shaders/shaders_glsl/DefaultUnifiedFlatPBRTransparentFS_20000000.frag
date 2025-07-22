#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[61];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;
uniform sampler2D PbrDecalRoughnessMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;

void main()
{
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING0) * VARYING2;
    vec3 f1 = mix(vec3(0.0, 0.0, 1.0), (texture2D(NormalMapTexture, VARYING0).xyz * 2.0) - vec3(1.0), vec3(clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y));
    float f2 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f3 = VARYING6.xyz * f2;
    vec3 f4 = VARYING5.xyz * f2;
    vec3 f5 = normalize(((f3 * f1.x) + (cross(f4, f3) * f1.y)) + (f4 * f1.z));
    vec3 f6 = f0.xyz;
    vec3 f7 = f6 * f6;
    vec4 f8 = f0;
    f8.x = f7.x;
    vec4 f9 = f8;
    f9.y = f7.y;
    vec4 f10 = f9;
    f10.z = f7.z;
    float f11 = length(VARYING4.xyz);
    float f12 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f13 = 0.08900000154972076416015625 + (texture2D(PbrDecalRoughnessMapTexture, VARYING0).x * 0.9110000133514404296875);
    float f14 = texture2D(SpecularMapTexture, VARYING0).x * f12;
    vec3 f15 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f16 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f17 = VARYING3.yzx - (VARYING3.yzx * f16);
    vec4 f18 = vec4(clamp(f16, 0.0, 1.0));
    vec4 f19 = mix(texture3D(LightMapTexture, f17), vec4(0.0), f18);
    vec4 f20 = mix(texture3D(LightGridSkylightTexture, f17), vec4(1.0), f18);
    vec4 f21 = texture2D(ShadowMapTexture, f15.xy);
    float f22 = f15.z;
    vec3 f23 = -CB0[16].xyz;
    float f24 = dot(f5, f23) * ((1.0 - ((step(f21.x, f22) * clamp(CB0[29].z + (CB0[29].w * abs(f22 - 0.5)), 0.0, 1.0)) * f21.y)) * f20.y);
    vec3 f25 = normalize((VARYING4.xyz / vec3(f11)) + f23);
    float f26 = clamp(f24, 0.0, 1.0);
    float f27 = f13 * f13;
    float f28 = max(0.001000000047497451305389404296875, dot(f5, f25));
    float f29 = dot(f23, f25);
    float f30 = 1.0 - f29;
    float f31 = f30 * f30;
    float f32 = (f31 * f31) * f30;
    vec3 f33 = vec3(f32) + (mix(vec3(0.039999999105930328369140625), f10.xyz, vec3(f14)) * (1.0 - f32));
    float f34 = f27 * f27;
    float f35 = (((f28 * f34) - f28) * f28) + 1.0;
    float f36 = 1.0 - f14;
    vec3 f37 = (((min((f19.xyz * (f19.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f20.x)), vec3(CB0[21].w)) * 1.0) + ((((vec3(f36) - (f33 * (f12 * f36))) * CB0[15].xyz) * f26) + (CB0[17].xyz * (f36 * clamp(-f24, 0.0, 1.0))))) * f10.xyz) + (((f33 * (((f34 + (f34 * f34)) / (((f35 * f35) * ((f29 * 3.0) + 0.5)) * ((f28 * 0.75) + 0.25))) * f26)) * CB0[15].xyz) * 1.0);
    vec4 f38 = vec4(0.0);
    f38.x = f37.x;
    vec4 f39 = f38;
    f39.y = f37.y;
    vec4 f40 = f39;
    f40.z = f37.z;
    float f41 = f0.w;
    vec4 f42 = f40;
    f42.w = f41;
    vec3 f43 = mix(CB0[19].xyz, f42.xyz, vec3(clamp(exp2((CB0[18].z * f11) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f44 = f42;
    f44.x = f43.x;
    vec4 f45 = f44;
    f45.y = f43.y;
    vec4 f46 = f45;
    f46.z = f43.z;
    vec3 f47 = sqrt(clamp(f46.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f48 = f46;
    f48.x = f47.x;
    vec4 f49 = f48;
    f49.y = f47.y;
    vec4 f50 = f49;
    f50.z = f47.z;
    vec4 f51 = f50;
    f51.w = f41;
    gl_FragData[0] = f51;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5
//$$PbrDecalRoughnessMapTexture=s9
