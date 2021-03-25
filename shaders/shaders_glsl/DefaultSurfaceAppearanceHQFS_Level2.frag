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
    vec4 f3 = mix(texture2D(DiffuseMapTexture, VARYING0), f2, vec4(f2.w));
    float f4 = f3.w;
    vec4 f5 = vec4(mix(VARYING2.xyz, f3.xyz, vec3(f4)), VARYING2.w);
    vec4 f6 = vec4(f3.xyz, VARYING2.w * f4);
    bvec4 f7 = bvec4(CB3[0].x != 0.0);
    vec4 f8 = vec4(f7.x ? f5.x : f6.x, f7.y ? f5.y : f6.y, f7.z ? f5.z : f6.z, f7.w ? f5.w : f6.w);
    vec2 f9 = texture2D(NormalMapTexture, VARYING1).wy * 2.0;
    vec2 f10 = f9 - vec2(1.0);
    float f11 = sqrt(clamp(1.0 + dot(vec2(1.0) - f9, f10), 0.0, 1.0));
    vec2 f12 = vec3(f10, f11).xy * f1;
    vec4 f13 = texture2D(SpecularMapTexture, VARYING1);
    float f14 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f15 = VARYING6.xyz * f14;
    vec3 f16 = VARYING5.xyz * f14;
    vec3 f17 = normalize(((f15 * f12.x) + ((cross(f16, f15) * VARYING6.w) * f12.y)) + (f16 * f11));
    vec3 f18 = f8.xyz;
    vec3 f19 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f20 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f21 = VARYING3.yzx - (VARYING3.yzx * f20);
    vec4 f22 = vec4(clamp(f20, 0.0, 1.0));
    vec4 f23 = mix(texture3D(LightMapTexture, f21), vec4(0.0), f22);
    vec4 f24 = mix(texture3D(LightGridSkylightTexture, f21), vec4(1.0), f22);
    vec4 f25 = texture2D(ShadowMapTexture, f19.xy);
    float f26 = f19.z;
    vec3 f27 = (f18 * f18).xyz;
    float f28 = CB0[26].w * f1;
    float f29 = max(f13.y, 0.04500000178813934326171875);
    float f30 = f13.x * f28;
    vec3 f31 = -CB0[11].xyz;
    float f32 = dot(f17, f31) * ((1.0 - ((step(f25.x, f26) * clamp(CB0[24].z + (CB0[24].w * abs(f26 - 0.5)), 0.0, 1.0)) * f25.y)) * f24.y);
    vec3 f33 = normalize(f31 + (VARYING4.xyz / vec3(f0)));
    float f34 = clamp(f32, 0.0, 1.0);
    float f35 = f29 * f29;
    float f36 = max(0.001000000047497451305389404296875, dot(f17, f33));
    float f37 = dot(f31, f33);
    float f38 = 1.0 - f37;
    float f39 = f38 * f38;
    float f40 = (f39 * f39) * f38;
    vec3 f41 = vec3(f40) + (mix(vec3(0.039999999105930328369140625), f27, vec3(f30)) * (1.0 - f40));
    float f42 = f35 * f35;
    float f43 = (((f36 * f42) - f36) * f36) + 1.0;
    float f44 = 1.0 - f30;
    vec3 f45 = ((((((vec3(f44) - (f41 * (f28 * f44))) * CB0[10].xyz) * f34) + (CB0[12].xyz * (f44 * clamp(-f32, 0.0, 1.0)))) + min((f23.xyz * (f23.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f24.x)), vec3(CB0[16].w))) * f27) + ((f41 * (((f42 + (f42 * f42)) / (((f43 * f43) * ((f37 * 3.0) + 0.5)) * ((f36 * 0.75) + 0.25))) * f34)) * CB0[10].xyz);
    float f46 = f8.w;
    vec4 f47 = vec4(f45.x, f45.y, f45.z, vec4(0.0).w);
    f47.w = f46;
    vec3 f48 = sqrt(clamp(mix(CB0[14].xyz, f47.xyz, vec3(clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0))).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f49 = vec4(f48.x, f48.y, f48.z, f47.w);
    f49.w = f46;
    gl_FragData[0] = f49;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$Tc2DiffuseMapTexture=s0
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5
