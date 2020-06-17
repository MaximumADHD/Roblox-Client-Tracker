#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[52];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;

void main()
{
    vec3 f0 = (texture2D(DiffuseMapTexture, VARYING0) * VARYING2).xyz;
    vec3 f1 = VARYING6.xyz - (CB0[11].xyz * VARYING3.w);
    float f2 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f3 = VARYING3.yzx - (VARYING3.yzx * f2);
    vec4 f4 = vec4(clamp(f2, 0.0, 1.0));
    vec4 f5 = mix(texture3D(LightMapTexture, f3), vec4(0.0), f4);
    vec4 f6 = mix(texture3D(LightGridSkylightTexture, f3), vec4(1.0), f4);
    vec4 f7 = texture2D(ShadowMapTexture, f1.xy);
    float f8 = f1.z;
    float f9 = length(VARYING4.xyz);
    vec3 f10 = (f0 * f0).xyz;
    float f11 = CB0[26].w * clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec3 f12 = normalize(VARYING5.xyz);
    float f13 = max(VARYING5.w, 0.04500000178813934326171875);
    float f14 = VARYING6.w * f11;
    vec3 f15 = -CB0[11].xyz;
    float f16 = dot(f12, f15) * ((1.0 - ((step(f7.x, f8) * clamp(CB0[24].z + (CB0[24].w * abs(f8 - 0.5)), 0.0, 1.0)) * f7.y)) * f6.y);
    vec3 f17 = normalize(f15 + (VARYING4.xyz / vec3(f9)));
    float f18 = clamp(f16, 0.0, 1.0);
    float f19 = f13 * f13;
    float f20 = max(0.001000000047497451305389404296875, dot(f12, f17));
    float f21 = dot(f15, f17);
    float f22 = 1.0 - f21;
    float f23 = f22 * f22;
    float f24 = (f23 * f23) * f22;
    vec3 f25 = vec3(f24) + (mix(vec3(0.039999999105930328369140625), f10, vec3(f14)) * (1.0 - f24));
    float f26 = f19 * f19;
    float f27 = (((f20 * f26) - f20) * f20) + 1.0;
    float f28 = 1.0 - f14;
    vec3 f29 = ((((((vec3(f28) - (f25 * (f11 * f28))) * CB0[10].xyz) * f18) + (CB0[12].xyz * (f28 * clamp(-f16, 0.0, 1.0)))) + min((f5.xyz * (f5.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f6.x)), vec3(CB0[16].w))) * f10) + ((f25 * (((f26 + (f26 * f26)) / (((f27 * f27) * ((f21 * 3.0) + 0.5)) * ((f20 * 0.75) + 0.25))) * f18)) * CB0[10].xyz);
    vec4 f30 = vec4(f29.x, f29.y, f29.z, vec4(0.0).w);
    f30.w = 1.0;
    vec3 f31 = sqrt(clamp(mix(CB0[14].xyz, f30.xyz, vec3(clamp(exp2((CB0[13].z * f9) + CB0[13].x) - CB0[13].w, 0.0, 1.0))).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f32 = vec4(f31.x, f31.y, f31.z, f30.w);
    f32.w = 1.0;
    gl_FragData[0] = f32;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
