#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[58];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;

varying vec2 VARYING0;
varying vec2 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;
varying float VARYING8;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec2 f1 = VARYING1;
    f1.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float f2 = clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    vec2 f3 = texture2D(NormalMapTexture, f1).wy * 2.0;
    vec2 f4 = f3 - vec2(1.0);
    float f5 = sqrt(clamp(1.0 + dot(vec2(1.0) - f3, f4), 0.0, 1.0));
    vec3 f6 = vec3(f4, f5);
    vec2 f7 = f6.xy + (vec3((texture2D(NormalDetailMapTexture, VARYING0 * CB2[0].x).wy * 2.0) - vec2(1.0), 0.0).xy * (clamp(VARYING2.w - 0.5, 0.0, 1.0) * clamp(1.0 - (2.0 * VARYING7.w), 0.0, 1.0)));
    vec3 f8 = f6;
    f8.x = f7.x;
    vec3 f9 = f8;
    f9.y = f7.y;
    vec2 f10 = f9.xy * (f2 * CB2[3].w);
    vec4 f11 = vec4(VARYING2.xyz * (texture2D(DiffuseMapTexture, f1).x * 2.0), VARYING2.w);
    float f12 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f13 = VARYING6.xyz * f12;
    vec3 f14 = VARYING5.xyz * f12;
    vec3 f15 = normalize(((f13 * f10.x) + (cross(f14, f13) * f10.y)) + (f14 * f5));
    vec3 f16 = f11.xyz;
    vec3 f17 = f16 * f16;
    vec4 f18 = f11;
    f18.x = f17.x;
    vec4 f19 = f18;
    f19.y = f17.y;
    vec4 f20 = f19;
    f20.z = f17.z;
    float f21 = 0.08900000154972076416015625 + (CB2[0].y * 0.9110000133514404296875);
    vec3 f22 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f23 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f24 = VARYING3.yzx - (VARYING3.yzx * f23);
    vec4 f25 = vec4(clamp(f23, 0.0, 1.0));
    vec4 f26 = mix(texture3D(LightMapTexture, f24), vec4(0.0), f25);
    vec4 f27 = mix(texture3D(LightGridSkylightTexture, f24), vec4(1.0), f25);
    vec4 f28 = texture2D(ShadowMapTexture, f22.xy);
    float f29 = f22.z;
    vec3 f30 = -CB0[16].xyz;
    float f31 = dot(f15, f30) * ((1.0 - ((step(f28.x, f29) * clamp(CB0[29].z + (CB0[29].w * abs(f29 - 0.5)), 0.0, 1.0)) * f28.y)) * f27.y);
    vec3 f32 = normalize((VARYING4.xyz / vec3(f0)) - CB0[16].xyz);
    float f33 = clamp(f31, 0.0, 1.0);
    float f34 = f21 * f21;
    float f35 = max(0.001000000047497451305389404296875, dot(f15, f32));
    float f36 = dot(f30, f32);
    float f37 = 1.0 - f36;
    float f38 = f37 * f37;
    float f39 = (f38 * f38) * f37;
    vec3 f40 = vec3(f39) + (vec3(0.039999999105930328369140625) * (1.0 - f39));
    float f41 = f34 * f34;
    float f42 = (((f35 * f41) - f35) * f35) + 1.0;
    vec3 f43 = ((((((vec3(1.0) - (f40 * (CB0[31].w * f2))) * CB0[15].xyz) * f33) + (CB0[17].xyz * clamp(-f31, 0.0, 1.0))) + min((f26.xyz * (f26.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f27.x)), vec3(CB0[21].w))) * f20.xyz) + (((f40 * (min((f41 + (f41 * f41)) / (((f42 * f42) * ((f36 * 3.0) + 0.5)) * ((f35 * 0.75) + 0.25)), 65504.0) * f33)) * CB0[15].xyz) * 1.0);
    vec4 f44 = vec4(0.0);
    f44.x = f43.x;
    vec4 f45 = f44;
    f45.y = f43.y;
    vec4 f46 = f45;
    f46.z = f43.z;
    vec4 f47 = f46;
    f47.w = VARYING2.w;
    vec3 f48 = mix(CB0[19].xyz, f47.xyz, vec3(clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
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
    f56.w = VARYING2.w;
    gl_FragData[0] = f56;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
