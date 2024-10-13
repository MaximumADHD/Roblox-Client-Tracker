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
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING0) * VARYING1;
    vec3 f1 = normalize(VARYING4.xyz) * (gl_FrontFacing ? 1.0 : (-1.0));
    vec3 f2 = f0.xyz;
    vec3 f3 = f2 * f2;
    vec4 f4 = f0;
    f4.x = f3.x;
    vec4 f5 = f4;
    f5.y = f3.y;
    vec4 f6 = f5;
    f6.z = f3.z;
    float f7 = length(VARYING3.xyz);
    float f8 = CB0[31].w * clamp(1.0 - (VARYING3.w * CB0[28].y), 0.0, 1.0);
    float f9 = 0.08900000154972076416015625 + (VARYING4.w * 0.9110000133514404296875);
    float f10 = VARYING5.w * f8;
    vec3 f11 = VARYING5.xyz - (CB0[16].xyz * VARYING2.w);
    float f12 = clamp(dot(step(CB0[24].xyz, abs(VARYING2.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f13 = VARYING2.yzx - (VARYING2.yzx * f12);
    vec4 f14 = vec4(clamp(f12, 0.0, 1.0));
    vec4 f15 = mix(texture3D(LightMapTexture, f13), vec4(0.0), f14);
    vec4 f16 = mix(texture3D(LightGridSkylightTexture, f13), vec4(1.0), f14);
    vec4 f17 = texture2D(ShadowMapTexture, f11.xy);
    float f18 = f11.z;
    vec3 f19 = -CB0[16].xyz;
    float f20 = dot(f1, f19) * ((1.0 - ((step(f17.x, f18) * clamp(CB0[29].z + (CB0[29].w * abs(f18 - 0.5)), 0.0, 1.0)) * f17.y)) * f16.y);
    vec3 f21 = normalize((VARYING3.xyz / vec3(f7)) + f19);
    float f22 = clamp(f20, 0.0, 1.0);
    float f23 = f9 * f9;
    float f24 = max(0.001000000047497451305389404296875, dot(f1, f21));
    float f25 = dot(f19, f21);
    float f26 = 1.0 - f25;
    float f27 = f26 * f26;
    float f28 = (f27 * f27) * f26;
    vec3 f29 = vec3(f28) + (mix(vec3(0.039999999105930328369140625), f6.xyz, vec3(f10)) * (1.0 - f28));
    float f30 = f23 * f23;
    float f31 = (((f24 * f30) - f24) * f24) + 1.0;
    float f32 = 1.0 - f10;
    vec3 f33 = (((min((f15.xyz * (f15.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f16.x)), vec3(CB0[21].w)) * 1.0) + ((((vec3(f32) - (f29 * (f8 * f32))) * CB0[15].xyz) * f22) + (CB0[17].xyz * (f32 * clamp(-f20, 0.0, 1.0))))) * f6.xyz) + (((f29 * (((f30 + (f30 * f30)) / (((f31 * f31) * ((f25 * 3.0) + 0.5)) * ((f24 * 0.75) + 0.25))) * f22)) * CB0[15].xyz) * 1.0);
    vec4 f34 = vec4(0.0);
    f34.x = f33.x;
    vec4 f35 = f34;
    f35.y = f33.y;
    vec4 f36 = f35;
    f36.z = f33.z;
    float f37 = f0.w;
    vec4 f38 = f36;
    f38.w = f37;
    vec3 f39 = mix(CB0[19].xyz, f38.xyz, vec3(clamp(exp2((CB0[18].z * f7) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f40 = f38;
    f40.x = f39.x;
    vec4 f41 = f40;
    f41.y = f39.y;
    vec4 f42 = f41;
    f42.z = f39.z;
    vec3 f43 = sqrt(clamp(f42.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f44 = f42;
    f44.x = f43.x;
    vec4 f45 = f44;
    f45.y = f43.y;
    vec4 f46 = f45;
    f46.z = f43.z;
    vec4 f47 = f46;
    f47.w = f37;
    gl_FragData[0] = f47;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
