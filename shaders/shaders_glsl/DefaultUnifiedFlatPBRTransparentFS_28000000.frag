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
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING0) * VARYING2;
    vec2 f1 = texture2D(NormalMapTexture, VARYING0).wy * 2.0;
    vec2 f2 = f1 - vec2(1.0);
    vec3 f3 = mix(vec3(0.0, 0.0, 1.0), vec3(f2, sqrt(clamp(1.0 + dot(vec2(1.0) - f1, f2), 0.0, 1.0))), vec3(clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y));
    vec4 f4 = texture2D(SpecularMapTexture, VARYING0);
    float f5 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f6 = VARYING6.xyz * f5;
    vec3 f7 = VARYING5.xyz * f5;
    vec3 f8 = normalize(((f6 * f3.x) + (cross(f7, f6) * f3.y)) + (f7 * f3.z));
    vec3 f9 = f0.xyz;
    vec3 f10 = f9 * f9;
    vec4 f11 = f0;
    f11.x = f10.x;
    vec4 f12 = f11;
    f12.y = f10.y;
    vec4 f13 = f12;
    f13.z = f10.z;
    float f14 = length(VARYING4.xyz);
    float f15 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f16 = 0.08900000154972076416015625 + (f4.y * 0.9110000133514404296875);
    float f17 = f4.x * f15;
    vec3 f18 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f19 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f20 = VARYING3.yzx - (VARYING3.yzx * f19);
    vec4 f21 = vec4(clamp(f19, 0.0, 1.0));
    vec4 f22 = mix(texture3D(LightMapTexture, f20), vec4(0.0), f21);
    vec4 f23 = mix(texture3D(LightGridSkylightTexture, f20), vec4(1.0), f21);
    vec4 f24 = texture2D(ShadowMapTexture, f18.xy);
    float f25 = f18.z;
    vec3 f26 = -CB0[16].xyz;
    float f27 = dot(f8, f26) * ((1.0 - ((step(f24.x, f25) * clamp(CB0[29].z + (CB0[29].w * abs(f25 - 0.5)), 0.0, 1.0)) * f24.y)) * f23.y);
    vec3 f28 = normalize((VARYING4.xyz / vec3(f14)) + f26);
    float f29 = clamp(f27, 0.0, 1.0);
    float f30 = f16 * f16;
    float f31 = max(0.001000000047497451305389404296875, dot(f8, f28));
    float f32 = dot(f26, f28);
    float f33 = 1.0 - f32;
    float f34 = f33 * f33;
    float f35 = (f34 * f34) * f33;
    vec3 f36 = vec3(f35) + (mix(vec3(0.039999999105930328369140625), f13.xyz, vec3(f17)) * (1.0 - f35));
    float f37 = f30 * f30;
    float f38 = (((f31 * f37) - f31) * f31) + 1.0;
    float f39 = 1.0 - f17;
    vec3 f40 = (((min((f22.xyz * (f22.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f23.x)), vec3(CB0[21].w)) * 1.0) + ((((vec3(f39) - (f36 * (f15 * f39))) * CB0[15].xyz) * f29) + (CB0[17].xyz * (f39 * clamp(-f27, 0.0, 1.0))))) * f13.xyz) + (((f36 * (((f37 + (f37 * f37)) / (((f38 * f38) * ((f32 * 3.0) + 0.5)) * ((f31 * 0.75) + 0.25))) * f29)) * CB0[15].xyz) * 1.0);
    vec4 f41 = vec4(0.0);
    f41.x = f40.x;
    vec4 f42 = f41;
    f42.y = f40.y;
    vec4 f43 = f42;
    f43.z = f40.z;
    float f44 = f0.w;
    vec4 f45 = f43;
    f45.w = f44;
    vec3 f46 = mix(CB0[19].xyz, f45.xyz, vec3(clamp(exp2((CB0[18].z * f14) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f47 = f45;
    f47.x = f46.x;
    vec4 f48 = f47;
    f48.y = f46.y;
    vec4 f49 = f48;
    f49.z = f46.z;
    vec3 f50 = sqrt(clamp(f49.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f51 = f49;
    f51.x = f50.x;
    vec4 f52 = f51;
    f52.y = f50.y;
    vec4 f53 = f52;
    f53.z = f50.z;
    vec4 f54 = f53;
    f54.w = f44;
    gl_FragData[0] = f54;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5
