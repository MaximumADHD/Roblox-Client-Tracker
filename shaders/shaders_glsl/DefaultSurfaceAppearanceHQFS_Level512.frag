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
    float f0 = length(VARYING4.xyz);
    float f1 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec4 f2 = texture2D(DiffuseMapTexture, VARYING0);
    float f3 = f2.w;
    vec4 f4 = vec4(mix(VARYING2.xyz, f2.xyz, vec3(f3)), VARYING2.w);
    vec4 f5 = vec4(f2.xyz, VARYING2.w * f3);
    bvec4 f6 = bvec4(CB3[0].x != 0.0);
    vec4 f7 = vec4(f6.x ? f4.x : f5.x, f6.y ? f4.y : f5.y, f6.z ? f4.z : f5.z, f6.w ? f4.w : f5.w);
    vec2 f8 = texture2D(NormalMapTexture, VARYING0).wy * 2.0;
    vec2 f9 = f8 - vec2(1.0);
    float f10 = sqrt(clamp(1.0 + dot(vec2(1.0) - f8, f9), 0.0, 1.0));
    vec2 f11 = vec3(f9, f10).xy * f1;
    vec4 f12 = texture2D(SpecularMapTexture, VARYING0);
    vec3 f13 = normalize(((VARYING6.xyz * f11.x) + ((cross(VARYING5.xyz, VARYING6.xyz) * VARYING6.w) * f11.y)) + (VARYING5.xyz * f10));
    vec3 f14 = f7.xyz;
    vec3 f15 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f16 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f17 = VARYING3.yzx - (VARYING3.yzx * f16);
    vec4 f18 = vec4(clamp(f16, 0.0, 1.0));
    vec4 f19 = mix(texture3D(LightMapTexture, f17), vec4(0.0), f18);
    vec4 f20 = mix(texture3D(LightGridSkylightTexture, f17), vec4(1.0), f18);
    vec4 f21 = texture2D(ShadowMapTexture, f15.xy);
    float f22 = f15.z;
    vec3 f23 = (f14 * f14).xyz;
    float f24 = CB0[26].w * f1;
    float f25 = max(f12.y, 0.04500000178813934326171875);
    float f26 = f12.x * f24;
    vec3 f27 = -CB0[11].xyz;
    float f28 = dot(f13, f27) * ((1.0 - ((step(f21.x, f22) * clamp(CB0[24].z + (CB0[24].w * abs(f22 - 0.5)), 0.0, 1.0)) * f21.y)) * f20.y);
    vec3 f29 = normalize(f27 + (VARYING4.xyz / vec3(f0)));
    float f30 = clamp(f28, 0.0, 1.0);
    float f31 = f25 * f25;
    float f32 = max(0.001000000047497451305389404296875, dot(f13, f29));
    float f33 = dot(f27, f29);
    float f34 = 1.0 - f33;
    float f35 = f34 * f34;
    float f36 = (f35 * f35) * f34;
    vec3 f37 = vec3(f36) + (mix(vec3(0.039999999105930328369140625), f23, vec3(f26)) * (1.0 - f36));
    float f38 = f31 * f31;
    float f39 = (((f32 * f38) - f32) * f32) + 1.0;
    float f40 = 1.0 - f26;
    vec3 f41 = ((((((vec3(f40) - (f37 * (f24 * f40))) * CB0[10].xyz) * f30) + (CB0[12].xyz * (f40 * clamp(-f28, 0.0, 1.0)))) + min((f19.xyz * (f19.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f20.x)), vec3(CB0[16].w))) * f23) + ((f37 * (((f38 + (f38 * f38)) / (((f39 * f39) * ((f33 * 3.0) + 0.5)) * ((f32 * 0.75) + 0.25))) * f30)) * CB0[10].xyz);
    float f42 = f7.w;
    vec4 f43 = vec4(f41.x, f41.y, f41.z, vec4(0.0).w);
    f43.w = f42;
    vec3 f44 = sqrt(clamp(mix(CB0[14].xyz, f43.xyz, vec3(clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0))).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f45 = vec4(f44.x, f44.y, f44.z, f43.w);
    f45.w = f42;
    gl_FragData[0] = f45;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5
