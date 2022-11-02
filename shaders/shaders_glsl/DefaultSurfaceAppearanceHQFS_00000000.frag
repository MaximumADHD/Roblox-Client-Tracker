#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SAParams.h>
uniform vec4 CB0[58];
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
    vec4 f1 = texture2D(DiffuseMapTexture, VARYING0);
    float f2 = f1.w;
    vec4 f3 = vec4(mix(VARYING2.xyz, f1.xyz, vec3(f2)), VARYING2.w);
    vec4 f4 = vec4(f1.xyz, VARYING2.w * f2);
    bvec4 f5 = bvec4(!(CB3[0].x == 0.0));
    vec4 f6 = vec4(f5.x ? f3.x : f4.x, f5.y ? f3.y : f4.y, f5.z ? f3.z : f4.z, f5.w ? f3.w : f4.w);
    vec2 f7 = texture2D(NormalMapTexture, VARYING0).wy * 2.0;
    vec2 f8 = f7 - vec2(1.0);
    float f9 = sqrt(clamp(1.0 + dot(vec2(1.0) - f7, f8), 0.0, 1.0));
    vec2 f10 = vec3(f8, f9).xy * clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y;
    vec4 f11 = texture2D(SpecularMapTexture, VARYING0);
    float f12 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f13 = VARYING6.xyz * f12;
    vec3 f14 = VARYING5.xyz * f12;
    vec3 f15 = normalize(((f13 * f10.x) + ((cross(f14, f13) * VARYING6.w) * f10.y)) + (f14 * f9));
    vec3 f16 = f6.xyz;
    vec3 f17 = f16 * f16;
    vec4 f18 = f6;
    f18.x = f17.x;
    vec4 f19 = f18;
    f19.y = f17.y;
    vec4 f20 = f19;
    f20.z = f17.z;
    float f21 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f22 = 0.08900000154972076416015625 + (f11.y * 0.9110000133514404296875);
    float f23 = f11.x * f21;
    vec3 f24 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f25 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f26 = VARYING3.yzx - (VARYING3.yzx * f25);
    vec4 f27 = vec4(clamp(f25, 0.0, 1.0));
    vec4 f28 = mix(texture3D(LightMapTexture, f26), vec4(0.0), f27);
    vec4 f29 = mix(texture3D(LightGridSkylightTexture, f26), vec4(1.0), f27);
    vec4 f30 = texture2D(ShadowMapTexture, f24.xy);
    float f31 = f24.z;
    vec3 f32 = -CB0[16].xyz;
    float f33 = dot(f15, f32) * ((1.0 - ((step(f30.x, f31) * clamp(CB0[29].z + (CB0[29].w * abs(f31 - 0.5)), 0.0, 1.0)) * f30.y)) * f29.y);
    vec3 f34 = normalize((VARYING4.xyz / vec3(f0)) - CB0[16].xyz);
    float f35 = clamp(f33, 0.0, 1.0);
    float f36 = f22 * f22;
    float f37 = max(0.001000000047497451305389404296875, dot(f15, f34));
    float f38 = dot(f32, f34);
    float f39 = 1.0 - f38;
    float f40 = f39 * f39;
    float f41 = (f40 * f40) * f39;
    vec3 f42 = vec3(f41) + (mix(vec3(0.039999999105930328369140625), f20.xyz, vec3(f23)) * (1.0 - f41));
    float f43 = f36 * f36;
    float f44 = (((f37 * f43) - f37) * f37) + 1.0;
    float f45 = 1.0 - f23;
    vec3 f46 = ((((((vec3(f45) - (f42 * (f21 * f45))) * CB0[15].xyz) * f35) + (CB0[17].xyz * (f45 * clamp(-f33, 0.0, 1.0)))) + (min((f28.xyz * (f28.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f29.x)), vec3(CB0[21].w)) * 1.0)) * f20.xyz) + (((f42 * (((f43 + (f43 * f43)) / max(((f44 * f44) * ((f38 * 3.0) + 0.5)) * ((f37 * 0.75) + 0.25), 3.0999999580672010779380798339844e-05)) * f35)) * CB0[15].xyz) * 1.0);
    vec4 f47 = vec4(0.0);
    f47.x = f46.x;
    vec4 f48 = f47;
    f48.y = f46.y;
    vec4 f49 = f48;
    f49.z = f46.z;
    float f50 = f6.w;
    vec4 f51 = f49;
    f51.w = f50;
    vec3 f52 = mix(CB0[19].xyz, f51.xyz, vec3(clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f53 = f51;
    f53.x = f52.x;
    vec4 f54 = f53;
    f54.y = f52.y;
    vec4 f55 = f54;
    f55.z = f52.z;
    vec3 f56 = sqrt(clamp(f55.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f57 = f55;
    f57.x = f56.x;
    vec4 f58 = f57;
    f58.y = f56.y;
    vec4 f59 = f58;
    f59.z = f56.z;
    vec4 f60 = f59;
    f60.w = f50;
    gl_FragData[0] = f60;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5
