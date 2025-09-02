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

varying vec2 VARYING0;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;

void main()
{
    vec2 f0 = texture2D(NormalMapTexture, VARYING0).wy * 2.0;
    vec2 f1 = f0 - vec2(1.0);
    vec3 f2 = mix(vec3(0.0, 0.0, 1.0), vec3(f1, sqrt(clamp(1.0 + dot(vec2(1.0) - f0, f1), 0.0, 1.0))), vec3(clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y));
    vec4 f3 = texture2D(SpecularMapTexture, VARYING0);
    float f4 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f5 = VARYING6.xyz * f4;
    vec3 f6 = VARYING5.xyz * f4;
    vec3 f7 = normalize(((f5 * f2.x) + (cross(f6, f5) * f2.y)) + (f6 * f2.z));
    vec3 f8 = vec4((texture2D(DiffuseMapTexture, VARYING0) * VARYING2).xyz, 0.0).xyz;
    vec3 f9 = f8 * f8;
    vec4 f10 = vec4(0.0);
    f10.x = f9.x;
    vec4 f11 = f10;
    f11.y = f9.y;
    vec4 f12 = f11;
    f12.z = f9.z;
    float f13 = length(VARYING4.xyz);
    float f14 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f15 = 0.08900000154972076416015625 + (f3.y * 0.9110000133514404296875);
    float f16 = f3.x * f14;
    vec3 f17 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f18 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f19 = VARYING3.yzx - (VARYING3.yzx * f18);
    vec4 f20 = vec4(clamp(f18, 0.0, 1.0));
    vec4 f21 = mix(texture3D(LightMapTexture, f19), vec4(0.0), f20);
    vec4 f22 = mix(texture3D(LightGridSkylightTexture, f19), vec4(1.0), f20);
    vec4 f23 = texture2D(ShadowMapTexture, f17.xy);
    float f24 = f17.z;
    vec3 f25 = -CB0[16].xyz;
    float f26 = dot(f7, f25) * ((1.0 - ((step(f23.x, f24) * clamp(CB0[29].z + (CB0[29].w * abs(f24 - 0.5)), 0.0, 1.0)) * f23.y)) * f22.y);
    vec3 f27 = normalize((VARYING4.xyz / vec3(f13)) + f25);
    float f28 = clamp(f26, 0.0, 1.0);
    float f29 = f15 * f15;
    float f30 = max(0.001000000047497451305389404296875, dot(f7, f27));
    float f31 = dot(f25, f27);
    float f32 = 1.0 - f31;
    float f33 = f32 * f32;
    float f34 = (f33 * f33) * f32;
    vec3 f35 = vec3(f34) + (mix(vec3(0.039999999105930328369140625), f12.xyz, vec3(f16)) * (1.0 - f34));
    float f36 = f29 * f29;
    float f37 = (((f30 * f36) - f30) * f30) + 1.0;
    float f38 = 1.0 - f16;
    vec3 f39 = (((min((f21.xyz * (f21.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f22.x)), vec3(CB0[21].w)) * 1.0) + ((((vec3(f38) - (f35 * (f14 * f38))) * CB0[15].xyz) * f28) + (CB0[17].xyz * (f38 * clamp(-f26, 0.0, 1.0))))) * f12.xyz) + (((f35 * (((f36 + (f36 * f36)) / (((f37 * f37) * ((f31 * 3.0) + 0.5)) * ((f30 * 0.75) + 0.25))) * f28)) * CB0[15].xyz) * 1.0);
    vec4 f40 = vec4(0.0);
    f40.x = f39.x;
    vec4 f41 = f40;
    f41.y = f39.y;
    vec4 f42 = f41;
    f42.z = f39.z;
    vec4 f43 = f42;
    f43.w = 1.0;
    vec3 f44 = mix(CB0[19].xyz, f43.xyz, vec3(clamp(exp2((CB0[18].z * f13) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f45 = f43;
    f45.x = f44.x;
    vec4 f46 = f45;
    f46.y = f44.y;
    vec4 f47 = f46;
    f47.z = f44.z;
    vec3 f48 = sqrt(clamp(f47.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f49 = f47;
    f49.x = f48.x;
    vec4 f50 = f49;
    f50.y = f48.y;
    vec4 f51 = f50;
    f51.z = f48.z;
    vec4 f52 = f51;
    f52.w = 1.0;
    gl_FragData[0] = f52;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5
