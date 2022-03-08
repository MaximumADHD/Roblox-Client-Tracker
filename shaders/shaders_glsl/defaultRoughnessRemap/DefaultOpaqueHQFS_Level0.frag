#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;

centroid varying vec2 VARYING0;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec3 f1 = normalize(VARYING5.xyz) * (gl_FrontFacing ? 1.0 : (-1.0));
    vec3 f2 = (texture2D(DiffuseMapTexture, VARYING0) * VARYING2).xyz;
    vec3 f3 = f2 * f2;
    vec4 f4 = vec4(0.0);
    f4.x = f3.x;
    vec4 f5 = f4;
    f5.y = f3.y;
    vec4 f6 = f5;
    f6.z = f3.z;
    vec3 f7 = VARYING6.xyz - (CB0[11].xyz * VARYING3.w);
    float f8 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f9 = VARYING3.yzx - (VARYING3.yzx * f8);
    vec4 f10 = vec4(clamp(f8, 0.0, 1.0));
    vec4 f11 = mix(texture3D(LightMapTexture, f9), vec4(0.0), f10);
    vec4 f12 = mix(texture3D(LightGridSkylightTexture, f9), vec4(1.0), f10);
    vec4 f13 = texture2D(ShadowMapTexture, f7.xy);
    float f14 = f7.z;
    float f15 = CB0[26].w * clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    float f16 = 0.08900000154972076416015625 + (VARYING5.w * 0.9110000133514404296875);
    float f17 = VARYING6.w * f15;
    vec3 f18 = -CB0[11].xyz;
    float f19 = (dot(f1, f18) * CB0[9].w) * ((1.0 - ((step(f13.x, f14) * clamp(CB0[24].z + (CB0[24].w * abs(f14 - 0.5)), 0.0, 1.0)) * f13.y)) * f12.y);
    vec3 f20 = normalize(f18 + (VARYING4.xyz / vec3(f0)));
    float f21 = clamp(f19, 0.0, 1.0);
    float f22 = f16 * f16;
    float f23 = max(0.001000000047497451305389404296875, dot(f1, f20));
    float f24 = dot(f18, f20);
    float f25 = 1.0 - f24;
    float f26 = f25 * f25;
    float f27 = (f26 * f26) * f25;
    vec3 f28 = vec3(f27) + (mix(vec3(0.039999999105930328369140625), f6.xyz, vec3(f17)) * (1.0 - f27));
    float f29 = f22 * f22;
    float f30 = (((f23 * f29) - f23) * f23) + 1.0;
    float f31 = 1.0 - f17;
    vec3 f32 = ((((((vec3(f31) - (f28 * (f15 * f31))) * CB0[10].xyz) * f21) + (CB0[12].xyz * (f31 * clamp(-f19, 0.0, 1.0)))) + min((f11.xyz * (f11.w * 120.0)) + (CB0[8].xyz + (CB0[9].xyz * f12.x)), vec3(CB0[16].w))) * f6.xyz) + (((f28 * (((f29 + (f29 * f29)) / (((f30 * f30) * ((f24 * 3.0) + 0.5)) * ((f23 * 0.75) + 0.25))) * f21)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w));
    vec4 f33 = vec4(0.0);
    f33.x = f32.x;
    vec4 f34 = f33;
    f34.y = f32.y;
    vec4 f35 = f34;
    f35.z = f32.z;
    vec4 f36 = f35;
    f36.w = 1.0;
    vec3 f37 = mix(CB0[14].xyz, f36.xyz, vec3(clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0)));
    vec4 f38 = f36;
    f38.x = f37.x;
    vec4 f39 = f38;
    f39.y = f37.y;
    vec4 f40 = f39;
    f40.z = f37.z;
    vec3 f41 = sqrt(clamp(f40.xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
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
