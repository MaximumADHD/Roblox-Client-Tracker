#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;

void main()
{
    vec3 f0 = normalize(VARYING4.xyz) * (gl_FrontFacing ? 1.0 : (-1.0));
    vec3 f1 = (texture2D(DiffuseMapTexture, VARYING0) * VARYING1).xyz;
    vec3 f2 = f1 * f1;
    vec4 f3 = vec4(0.0);
    f3.x = f2.x;
    vec4 f4 = f3;
    f4.y = f2.y;
    vec4 f5 = f4;
    f5.z = f2.z;
    float f6 = length(VARYING3.xyz);
    float f7 = CB0[31].w * clamp(1.0 - (VARYING3.w * CB0[28].y), 0.0, 1.0);
    float f8 = 0.08900000154972076416015625 + (VARYING4.w * 0.9110000133514404296875);
    float f9 = VARYING5.w * f7;
    vec3 f10 = VARYING5.xyz - (CB0[16].xyz * VARYING2.w);
    float f11 = clamp(dot(step(CB0[24].xyz, abs(VARYING2.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f12 = VARYING2.yzx - (VARYING2.yzx * f11);
    vec4 f13 = vec4(clamp(f11, 0.0, 1.0));
    vec4 f14 = mix(texture3D(LightMapTexture, f12), vec4(0.0), f13);
    vec4 f15 = mix(texture3D(LightGridSkylightTexture, f12), vec4(1.0), f13);
    vec4 f16 = texture2D(ShadowMapTexture, f10.xy);
    float f17 = f10.z;
    vec3 f18 = -CB0[16].xyz;
    float f19 = dot(f0, f18) * ((1.0 - ((step(f16.x, f17) * clamp(CB0[29].z + (CB0[29].w * abs(f17 - 0.5)), 0.0, 1.0)) * f16.y)) * f15.y);
    vec3 f20 = normalize((VARYING3.xyz / vec3(f6)) + f18);
    float f21 = clamp(f19, 0.0, 1.0);
    float f22 = f8 * f8;
    float f23 = max(0.001000000047497451305389404296875, dot(f0, f20));
    float f24 = dot(f18, f20);
    float f25 = 1.0 - f24;
    float f26 = f25 * f25;
    float f27 = (f26 * f26) * f25;
    vec3 f28 = vec3(f27) + (mix(vec3(0.039999999105930328369140625), f5.xyz, vec3(f9)) * (1.0 - f27));
    float f29 = f22 * f22;
    float f30 = (((f23 * f29) - f23) * f23) + 1.0;
    float f31 = 1.0 - f9;
    vec3 f32 = (((min((f14.xyz * (f14.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f15.x)), vec3(CB0[21].w)) * 1.0) + ((((vec3(f31) - (f28 * (f7 * f31))) * CB0[15].xyz) * f21) + (CB0[17].xyz * (f31 * clamp(-f19, 0.0, 1.0))))) * f5.xyz) + (((f28 * (((f29 + (f29 * f29)) / (((f30 * f30) * ((f24 * 3.0) + 0.5)) * ((f23 * 0.75) + 0.25))) * f21)) * CB0[15].xyz) * 1.0);
    vec4 f33 = vec4(0.0);
    f33.x = f32.x;
    vec4 f34 = f33;
    f34.y = f32.y;
    vec4 f35 = f34;
    f35.z = f32.z;
    vec4 f36 = f35;
    f36.w = 1.0;
    vec3 f37 = mix(CB0[19].xyz, f36.xyz, vec3(clamp(exp2((CB0[18].z * f6) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f38 = f36;
    f38.x = f37.x;
    vec4 f39 = f38;
    f39.y = f37.y;
    vec4 f40 = f39;
    f40.z = f37.z;
    vec3 f41 = sqrt(clamp(f40.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f42 = f40;
    f42.x = f41.x;
    vec4 f43 = f42;
    f43.y = f41.y;
    vec4 f44 = f43;
    f44.z = f41.z;
    vec4 f45 = f44;
    f45.w = 1.0;
    gl_FragData[0] = f45;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
