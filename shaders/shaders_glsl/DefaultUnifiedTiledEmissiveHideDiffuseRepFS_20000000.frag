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
    vec2 f0 = clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0));
    vec2 f1 = VARYING0 * CB2[0].x;
    float f2 = f0.y;
    vec4 f3 = texture2D(DiffuseMapTexture, f1);
    vec2 f4 = texture2D(NormalMapTexture, f1).wy * 2.0;
    vec2 f5 = f4 - vec2(1.0);
    float f6 = sqrt(clamp(1.0 + dot(vec2(1.0) - f4, f5), 0.0, 1.0));
    vec3 f7 = vec3(f5, f6);
    vec2 f8 = f7.xy + (vec3((texture2D(NormalDetailMapTexture, f1 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f9 = f7;
    f9.x = f8.x;
    vec3 f10 = f9;
    f10.y = f8.y;
    vec2 f11 = f10.xy * f2;
    float f12 = f11.x;
    vec4 f13 = texture2D(SpecularMapTexture, f1);
    vec4 f14 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f3.w, CB2[3].w))) * f3.xyz) * (1.0 + (f12 * 0.20000000298023223876953125)), VARYING2.w);
    float f15 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f16 = VARYING6.xyz * f15;
    vec3 f17 = VARYING5.xyz * f15;
    vec3 f18 = normalize(((f16 * f12) + (cross(f17, f16) * f11.y)) + (f17 * f6));
    vec3 f19 = f14.xyz;
    vec3 f20 = f19 * f19;
    vec4 f21 = f14;
    f21.x = f20.x;
    vec4 f22 = f21;
    f22.y = f20.y;
    vec4 f23 = f22;
    f23.z = f20.z;
    float f24 = length(VARYING4.xyz);
    float f25 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f26 = 0.08900000154972076416015625 + (f13.y * 0.9110000133514404296875);
    float f27 = f13.x * f25;
    vec3 f28 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f29 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f30 = VARYING3.yzx - (VARYING3.yzx * f29);
    vec4 f31 = vec4(clamp(f29, 0.0, 1.0));
    vec4 f32 = mix(texture3D(LightMapTexture, f30), vec4(0.0), f31);
    vec4 f33 = mix(texture3D(LightGridSkylightTexture, f30), vec4(1.0), f31);
    vec4 f34 = texture2D(ShadowMapTexture, f28.xy);
    float f35 = f28.z;
    vec3 f36 = -CB0[16].xyz;
    float f37 = dot(f18, f36) * ((1.0 - ((step(f34.x, f35) * clamp(CB0[29].z + (CB0[29].w * abs(f35 - 0.5)), 0.0, 1.0)) * f34.y)) * f33.y);
    vec3 f38 = normalize((VARYING4.xyz / vec3(f24)) + f36);
    float f39 = clamp(f37, 0.0, 1.0);
    float f40 = f26 * f26;
    float f41 = max(0.001000000047497451305389404296875, dot(f18, f38));
    float f42 = dot(f36, f38);
    float f43 = 1.0 - f42;
    float f44 = f43 * f43;
    float f45 = (f44 * f44) * f43;
    vec3 f46 = vec3(f45) + (mix(vec3(0.039999999105930328369140625), f23.xyz, vec3(f27)) * (1.0 - f45));
    float f47 = f40 * f40;
    float f48 = (((f41 * f47) - f41) * f41) + 1.0;
    float f49 = 1.0 - f27;
    vec3 f50 = (((vec3((f13.z * 2.0) * f2) + (min((f32.xyz * (f32.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f33.x)), vec3(CB0[21].w)) * 1.0)) + ((((vec3(f49) - (f46 * (f25 * f49))) * CB0[15].xyz) * f39) + (CB0[17].xyz * (f49 * clamp(-f37, 0.0, 1.0))))) * f23.xyz) + (((f46 * (((f47 + (f47 * f47)) / (((f48 * f48) * ((f42 * 3.0) + 0.5)) * ((f41 * 0.75) + 0.25))) * f39)) * CB0[15].xyz) * 1.0);
    vec4 f51 = vec4(0.0);
    f51.x = f50.x;
    vec4 f52 = f51;
    f52.y = f50.y;
    vec4 f53 = f52;
    f53.z = f50.z;
    vec4 f54 = f53;
    f54.w = VARYING2.w;
    vec3 f55 = mix(CB0[19].xyz, f54.xyz, vec3(clamp(exp2((CB0[18].z * f24) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f56 = f54;
    f56.x = f55.x;
    vec4 f57 = f56;
    f57.y = f55.y;
    vec4 f58 = f57;
    f58.z = f55.z;
    vec3 f59 = sqrt(clamp(f58.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f60 = f58;
    f60.x = f59.x;
    vec4 f61 = f60;
    f61.y = f59.y;
    vec4 f62 = f61;
    f62.z = f59.z;
    vec4 f63 = f62;
    f63.w = VARYING2.w;
    gl_FragData[0] = f63;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$SpecularMapTexture=s5
