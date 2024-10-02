#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <PartMaterialParams.h>
uniform vec4 CB0[58];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;

varying vec2 VARYING0;
varying vec3 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;

void main()
{
    vec2 f0 = VARYING1.xy;
    f0.y = (fract(VARYING1.y) + VARYING1.z) * 0.25;
    vec2 f1 = texture2D(NormalMapTexture, f0).wy * 2.0;
    vec2 f2 = f1 - vec2(1.0);
    float f3 = sqrt(clamp(1.0 + dot(vec2(1.0) - f1, f2), 0.0, 1.0));
    vec3 f4 = vec3(f2, f3);
    vec2 f5 = f4.xy + (vec3((texture2D(NormalDetailMapTexture, VARYING0 * CB2[0].x).wy * 2.0) - vec2(1.0), 0.0).xy * (clamp(VARYING2.w - 0.5, 0.0, 1.0) * clamp(1.0 - (2.0 * VARYING7.w), 0.0, 1.0)));
    vec3 f6 = f4;
    f6.x = f5.x;
    vec3 f7 = f6;
    f7.y = f5.y;
    vec2 f8 = f7.xy * (clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y * CB2[3].w);
    vec4 f9 = vec4(VARYING2.xyz * (texture2D(DiffuseMapTexture, f0).x * 2.0), VARYING2.w);
    float f10 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f11 = VARYING6.xyz * f10;
    vec3 f12 = VARYING5.xyz * f10;
    vec3 f13 = normalize(((f11 * f8.x) + (cross(f12, f11) * f8.y)) + (f12 * f3));
    vec3 f14 = f9.xyz;
    vec3 f15 = f14 * f14;
    vec4 f16 = f9;
    f16.x = f15.x;
    vec4 f17 = f16;
    f17.y = f15.y;
    vec4 f18 = f17;
    f18.z = f15.z;
    float f19 = length(VARYING4.xyz);
    float f20 = 0.08900000154972076416015625 + (CB2[0].y * 0.9110000133514404296875);
    vec3 f21 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f22 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f23 = VARYING3.yzx - (VARYING3.yzx * f22);
    vec4 f24 = vec4(clamp(f22, 0.0, 1.0));
    vec4 f25 = mix(texture3D(LightMapTexture, f23), vec4(0.0), f24);
    vec4 f26 = mix(texture3D(LightGridSkylightTexture, f23), vec4(1.0), f24);
    vec4 f27 = texture2D(ShadowMapTexture, f21.xy);
    float f28 = f21.z;
    vec3 f29 = -CB0[16].xyz;
    float f30 = dot(f13, f29) * ((1.0 - ((step(f27.x, f28) * clamp(CB0[29].z + (CB0[29].w * abs(f28 - 0.5)), 0.0, 1.0)) * f27.y)) * f26.y);
    vec3 f31 = normalize((VARYING4.xyz / vec3(f19)) + f29);
    float f32 = clamp(f30, 0.0, 1.0);
    float f33 = f20 * f20;
    float f34 = max(0.001000000047497451305389404296875, dot(f13, f31));
    float f35 = dot(f29, f31);
    float f36 = 1.0 - f35;
    float f37 = f36 * f36;
    float f38 = (f37 * f37) * f36;
    vec3 f39 = vec3(f38) + (vec3(0.039999999105930328369140625) * (1.0 - f38));
    float f40 = f33 * f33;
    float f41 = (((f34 * f40) - f34) * f34) + 1.0;
    vec3 f42 = (((min((f25.xyz * (f25.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f26.x)), vec3(CB0[21].w)) * 1.0) + ((((vec3(1.0) - (f39 * (CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0)))) * CB0[15].xyz) * f32) + (CB0[17].xyz * clamp(-f30, 0.0, 1.0)))) * f18.xyz) + (((f39 * (((f40 + (f40 * f40)) / (((f41 * f41) * ((f35 * 3.0) + 0.5)) * ((f34 * 0.75) + 0.25))) * f32)) * CB0[15].xyz) * 1.0);
    vec4 f43 = vec4(0.0);
    f43.x = f42.x;
    vec4 f44 = f43;
    f44.y = f42.y;
    vec4 f45 = f44;
    f45.z = f42.z;
    vec4 f46 = f45;
    f46.w = VARYING2.w;
    vec3 f47 = mix(CB0[19].xyz, f46.xyz, vec3(clamp(exp2((CB0[18].z * f19) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f48 = f46;
    f48.x = f47.x;
    vec4 f49 = f48;
    f49.y = f47.y;
    vec4 f50 = f49;
    f50.z = f47.z;
    vec3 f51 = sqrt(clamp(f50.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f52 = f50;
    f52.x = f51.x;
    vec4 f53 = f52;
    f53.y = f51.y;
    vec4 f54 = f53;
    f54.z = f51.z;
    vec4 f55 = f54;
    f55.w = VARYING2.w;
    gl_FragData[0] = f55;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
