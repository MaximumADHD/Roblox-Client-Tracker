#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SAParams.h>
uniform vec4 CB0[53];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D Tc2DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;

varying vec2 VARYING0;
varying vec2 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;

void main()
{
    float f0 = length(VARYING4.xyz);
    float f1 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec4 f2 = texture2D(Tc2DiffuseMapTexture, VARYING1);
    float f3 = f2.w;
    vec4 f4 = vec4(mix(vec4(texture2D(DiffuseMapTexture, VARYING0).xyz * VARYING2.xyz, f3).xyz, f2.xyz, vec3(f3)), 0.0);
    vec4 f5 = vec4(f2.xyz, 0.0);
    bvec4 f6 = bvec4(!(CB3[0].x == 0.0));
    vec2 f7 = texture2D(NormalMapTexture, VARYING1).wy * 2.0;
    vec2 f8 = f7 - vec2(1.0);
    float f9 = sqrt(clamp(1.0 + dot(vec2(1.0) - f7, f8), 0.0, 1.0));
    vec2 f10 = vec3(f8, f9).xy * f1;
    vec4 f11 = texture2D(SpecularMapTexture, VARYING1);
    float f12 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f13 = VARYING6.xyz * f12;
    vec3 f14 = VARYING5.xyz * f12;
    vec3 f15 = normalize(((f13 * f10.x) + ((cross(f14, f13) * VARYING6.w) * f10.y)) + (f14 * f9));
    vec3 f16 = vec4(vec4(f6.x ? f4.x : f5.x, f6.y ? f4.y : f5.y, f6.z ? f4.z : f5.z, f6.w ? f4.w : f5.w).xyz, VARYING2.w).xyz;
    vec3 f17 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f18 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f19 = VARYING3.yzx - (VARYING3.yzx * f18);
    vec4 f20 = vec4(clamp(f18, 0.0, 1.0));
    vec4 f21 = mix(texture3D(LightMapTexture, f19), vec4(0.0), f20);
    vec4 f22 = mix(texture3D(LightGridSkylightTexture, f19), vec4(1.0), f20);
    vec4 f23 = texture2D(ShadowMapTexture, f17.xy);
    float f24 = f17.z;
    vec3 f25 = (f16 * f16).xyz;
    float f26 = CB0[26].w * f1;
    float f27 = max(f11.y, 0.04500000178813934326171875);
    float f28 = f11.x * f26;
    vec3 f29 = -CB0[11].xyz;
    float f30 = dot(f15, f29) * ((1.0 - ((step(f23.x, f24) * clamp(CB0[24].z + (CB0[24].w * abs(f24 - 0.5)), 0.0, 1.0)) * f23.y)) * f22.y);
    vec3 f31 = normalize(f29 + (VARYING4.xyz / vec3(f0)));
    float f32 = clamp(f30, 0.0, 1.0);
    float f33 = f27 * f27;
    float f34 = max(0.001000000047497451305389404296875, dot(f15, f31));
    float f35 = dot(f29, f31);
    float f36 = 1.0 - f35;
    float f37 = f36 * f36;
    float f38 = (f37 * f37) * f36;
    vec3 f39 = vec3(f38) + (mix(vec3(0.039999999105930328369140625), f25, vec3(f28)) * (1.0 - f38));
    float f40 = f33 * f33;
    float f41 = (((f34 * f40) - f34) * f34) + 1.0;
    float f42 = 1.0 - f28;
    vec3 f43 = ((((((vec3(f42) - (f39 * (f26 * f42))) * CB0[10].xyz) * f32) + (CB0[12].xyz * (f42 * clamp(-f30, 0.0, 1.0)))) + min((f21.xyz * (f21.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f22.x)), vec3(CB0[16].w))) * f25) + ((f39 * (((f40 + (f40 * f40)) / (((f41 * f41) * ((f35 * 3.0) + 0.5)) * ((f34 * 0.75) + 0.25))) * f32)) * CB0[10].xyz);
    vec4 f44 = vec4(f43.x, f43.y, f43.z, vec4(0.0).w);
    f44.w = VARYING2.w;
    vec3 f45 = sqrt(clamp(mix(CB0[14].xyz, f44.xyz, vec3(clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0))).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f46 = vec4(f45.x, f45.y, f45.z, f44.w);
    f46.w = VARYING2.w;
    gl_FragData[0] = f46;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$Tc2DiffuseMapTexture=s0
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5
