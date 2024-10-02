#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SAParams.h>
uniform vec4 CB0[58];
uniform vec4 CB3[1];
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
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING0);
    float f1 = f0.w;
    vec4 f2 = mix(vec4(f0.xyz, VARYING2.w * f1), vec4(mix(VARYING2.xyz, f0.xyz, vec3(f1)), VARYING2.w), vec4(CB3[0].x));
    vec2 f3 = texture2D(NormalMapTexture, VARYING0).wy * 2.0;
    vec2 f4 = f3 - vec2(1.0);
    vec3 f5 = mix(vec3(0.0, 0.0, 1.0), vec3(f4, sqrt(clamp(1.0 + dot(vec2(1.0) - f3, f4), 0.0, 1.0))), vec3(clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y));
    vec4 f6 = texture2D(SpecularMapTexture, VARYING0);
    float f7 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f8 = VARYING6.xyz * f7;
    vec3 f9 = VARYING5.xyz * f7;
    vec3 f10 = normalize(((f8 * f5.x) + ((cross(f9, f8) * VARYING6.w) * f5.y)) + (f9 * f5.z));
    vec3 f11 = f2.xyz;
    vec3 f12 = f11 * f11;
    vec4 f13 = f2;
    f13.x = f12.x;
    vec4 f14 = f13;
    f14.y = f12.y;
    vec4 f15 = f14;
    f15.z = f12.z;
    float f16 = length(VARYING4.xyz);
    float f17 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f18 = 0.08900000154972076416015625 + (f6.y * 0.9110000133514404296875);
    float f19 = f6.x * f17;
    vec3 f20 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f21 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f22 = VARYING3.yzx - (VARYING3.yzx * f21);
    vec4 f23 = vec4(clamp(f21, 0.0, 1.0));
    vec4 f24 = mix(texture3D(LightMapTexture, f22), vec4(0.0), f23);
    vec4 f25 = mix(texture3D(LightGridSkylightTexture, f22), vec4(1.0), f23);
    vec4 f26 = texture2D(ShadowMapTexture, f20.xy);
    float f27 = f20.z;
    vec3 f28 = -CB0[16].xyz;
    float f29 = dot(f10, f28) * ((1.0 - ((step(f26.x, f27) * clamp(CB0[29].z + (CB0[29].w * abs(f27 - 0.5)), 0.0, 1.0)) * f26.y)) * f25.y);
    vec3 f30 = normalize((VARYING4.xyz / vec3(f16)) + f28);
    float f31 = clamp(f29, 0.0, 1.0);
    float f32 = f18 * f18;
    float f33 = max(0.001000000047497451305389404296875, dot(f10, f30));
    float f34 = dot(f28, f30);
    float f35 = 1.0 - f34;
    float f36 = f35 * f35;
    float f37 = (f36 * f36) * f35;
    vec3 f38 = vec3(f37) + (mix(vec3(0.039999999105930328369140625), f15.xyz, vec3(f19)) * (1.0 - f37));
    float f39 = f32 * f32;
    float f40 = (((f33 * f39) - f33) * f33) + 1.0;
    float f41 = 1.0 - f19;
    vec3 f42 = (((min((f24.xyz * (f24.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f25.x)), vec3(CB0[21].w)) * 1.0) + ((((vec3(f41) - (f38 * (f17 * f41))) * CB0[15].xyz) * f31) + (CB0[17].xyz * (f41 * clamp(-f29, 0.0, 1.0))))) * f15.xyz) + (((f38 * (((f39 + (f39 * f39)) / (((f40 * f40) * ((f34 * 3.0) + 0.5)) * ((f33 * 0.75) + 0.25))) * f31)) * CB0[15].xyz) * 1.0);
    vec4 f43 = vec4(0.0);
    f43.x = f42.x;
    vec4 f44 = f43;
    f44.y = f42.y;
    vec4 f45 = f44;
    f45.z = f42.z;
    float f46 = f2.w;
    vec4 f47 = f45;
    f47.w = f46;
    vec3 f48 = mix(CB0[19].xyz, f47.xyz, vec3(clamp(exp2((CB0[18].z * f16) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f49 = f47;
    f49.x = f48.x;
    vec4 f50 = f49;
    f50.y = f48.y;
    vec4 f51 = f50;
    f51.z = f48.z;
    vec3 f52 = sqrt(clamp(f51.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f53 = f51;
    f53.x = f52.x;
    vec4 f54 = f53;
    f54.y = f52.y;
    vec4 f55 = f54;
    f55.z = f52.z;
    vec4 f56 = f55;
    f56.w = f46;
    gl_FragData[0] = f56;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5
