#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[61];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;
uniform sampler2D PbrDecalRoughnessMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;

void main()
{
    vec3 f0 = mix(vec3(0.0, 0.0, 1.0), (texture2D(NormalMapTexture, VARYING0).xyz * 2.0) - vec3(1.0), vec3(clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y));
    float f1 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f2 = VARYING6.xyz * f1;
    vec3 f3 = VARYING5.xyz * f1;
    vec3 f4 = normalize(((f2 * f0.x) + (cross(f3, f2) * f0.y)) + (f3 * f0.z));
    vec3 f5 = vec4((texture2D(DiffuseMapTexture, VARYING0) * VARYING2).xyz, 0.0).xyz;
    vec3 f6 = f5 * f5;
    vec4 f7 = vec4(0.0);
    f7.x = f6.x;
    vec4 f8 = f7;
    f8.y = f6.y;
    vec4 f9 = f8;
    f9.z = f6.z;
    float f10 = length(VARYING4.xyz);
    float f11 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f12 = 0.08900000154972076416015625 + (texture2D(PbrDecalRoughnessMapTexture, VARYING0).x * 0.9110000133514404296875);
    float f13 = texture2D(SpecularMapTexture, VARYING0).x * f11;
    vec3 f14 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f15 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f16 = VARYING3.yzx - (VARYING3.yzx * f15);
    vec4 f17 = vec4(clamp(f15, 0.0, 1.0));
    vec4 f18 = mix(texture3D(LightMapTexture, f16), vec4(0.0), f17);
    vec4 f19 = mix(texture3D(LightGridSkylightTexture, f16), vec4(1.0), f17);
    vec4 f20 = texture2D(ShadowMapTexture, f14.xy);
    float f21 = f14.z;
    vec3 f22 = -CB0[16].xyz;
    float f23 = dot(f4, f22) * ((1.0 - ((step(f20.x, f21) * clamp(CB0[29].z + (CB0[29].w * abs(f21 - 0.5)), 0.0, 1.0)) * f20.y)) * f19.y);
    vec3 f24 = normalize((VARYING4.xyz / vec3(f10)) + f22);
    float f25 = clamp(f23, 0.0, 1.0);
    float f26 = f12 * f12;
    float f27 = max(0.001000000047497451305389404296875, dot(f4, f24));
    float f28 = dot(f22, f24);
    float f29 = 1.0 - f28;
    float f30 = f29 * f29;
    float f31 = (f30 * f30) * f29;
    vec3 f32 = vec3(f31) + (mix(vec3(0.039999999105930328369140625), f9.xyz, vec3(f13)) * (1.0 - f31));
    float f33 = f26 * f26;
    float f34 = (((f27 * f33) - f27) * f27) + 1.0;
    float f35 = 1.0 - f13;
    vec3 f36 = (((min((f18.xyz * (f18.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f19.x)), vec3(CB0[21].w)) * 1.0) + ((((vec3(f35) - (f32 * (f11 * f35))) * CB0[15].xyz) * f25) + (CB0[17].xyz * (f35 * clamp(-f23, 0.0, 1.0))))) * f9.xyz) + (((f32 * (((f33 + (f33 * f33)) / (((f34 * f34) * ((f28 * 3.0) + 0.5)) * ((f27 * 0.75) + 0.25))) * f25)) * CB0[15].xyz) * 1.0);
    vec4 f37 = vec4(0.0);
    f37.x = f36.x;
    vec4 f38 = f37;
    f38.y = f36.y;
    vec4 f39 = f38;
    f39.z = f36.z;
    vec4 f40 = f39;
    f40.w = 1.0;
    vec3 f41 = mix(CB0[19].xyz, f40.xyz, vec3(clamp(exp2((CB0[18].z * f10) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f42 = f40;
    f42.x = f41.x;
    vec4 f43 = f42;
    f43.y = f41.y;
    vec4 f44 = f43;
    f44.z = f41.z;
    vec3 f45 = sqrt(clamp(f44.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f46 = f44;
    f46.x = f45.x;
    vec4 f47 = f46;
    f47.y = f45.y;
    vec4 f48 = f47;
    f48.z = f45.z;
    vec4 f49 = f48;
    f49.w = 1.0;
    gl_FragData[0] = f49;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5
//$$PbrDecalRoughnessMapTexture=s9
