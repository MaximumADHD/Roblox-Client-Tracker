#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
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
    float f0 = length(VARYING4.xyz);
    vec4 f1 = texture2D(DiffuseMapTexture, VARYING0) * VARYING2;
    vec3 f2 = normalize(VARYING5.xyz) * (gl_FrontFacing ? 1.0 : (-1.0));
    vec3 f3 = f1.xyz;
    vec3 f4 = f3 * f3;
    vec4 f5 = f1;
    f5.x = f4.x;
    vec4 f6 = f5;
    f6.y = f4.y;
    vec4 f7 = f6;
    f7.z = f4.z;
    vec3 f8 = VARYING6.xyz - (CB0[11].xyz * VARYING3.w);
    float f9 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f10 = VARYING3.yzx - (VARYING3.yzx * f9);
    vec4 f11 = vec4(clamp(f9, 0.0, 1.0));
    vec4 f12 = mix(texture3D(LightMapTexture, f10), vec4(0.0), f11);
    vec4 f13 = mix(texture3D(LightGridSkylightTexture, f10), vec4(1.0), f11);
    vec4 f14 = texture2D(ShadowMapTexture, f8.xy);
    float f15 = f8.z;
    float f16 = CB0[26].w * clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    float f17 = 0.08900000154972076416015625 + (VARYING5.w * 0.9110000133514404296875);
    float f18 = VARYING6.w * f16;
    vec3 f19 = -CB0[11].xyz;
    float f20 = (dot(f2, f19) * CB0[9].w) * ((1.0 - ((step(f14.x, f15) * clamp(CB0[24].z + (CB0[24].w * abs(f15 - 0.5)), 0.0, 1.0)) * f14.y)) * f13.y);
    vec3 f21 = normalize((VARYING4.xyz / vec3(f0)) - CB0[11].xyz);
    float f22 = clamp(f20, 0.0, 1.0);
    float f23 = f17 * f17;
    float f24 = max(0.001000000047497451305389404296875, dot(f2, f21));
    float f25 = dot(f19, f21);
    float f26 = 1.0 - f25;
    float f27 = f26 * f26;
    float f28 = (f27 * f27) * f26;
    vec3 f29 = vec3(f28) + (mix(vec3(0.039999999105930328369140625), f7.xyz, vec3(f18)) * (1.0 - f28));
    float f30 = f23 * f23;
    float f31 = (((f24 * f30) - f24) * f24) + 1.0;
    float f32 = 1.0 - f18;
    vec3 f33 = ((((((vec3(f32) - (f29 * (f16 * f32))) * CB0[10].xyz) * f22) + (CB0[12].xyz * (f32 * clamp(-f20, 0.0, 1.0)))) + min((f12.xyz * (f12.w * 120.0)) + (CB0[8].xyz + (CB0[9].xyz * f13.x)), vec3(CB0[16].w))) * f7.xyz) + (((f29 * (((f30 + (f30 * f30)) / (((f31 * f31) * ((f25 * 3.0) + 0.5)) * ((f24 * 0.75) + 0.25))) * f22)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w));
    vec4 f34 = vec4(0.0);
    f34.x = f33.x;
    vec4 f35 = f34;
    f35.y = f33.y;
    vec4 f36 = f35;
    f36.z = f33.z;
    float f37 = f1.w;
    vec4 f38 = f36;
    f38.w = f37;
    vec3 f39 = mix(CB0[14].xyz, f38.xyz, vec3(clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0)));
    vec4 f40 = f38;
    f40.x = f39.x;
    vec4 f41 = f40;
    f41.y = f39.y;
    vec4 f42 = f41;
    f42.z = f39.z;
    vec3 f43 = sqrt(clamp(f42.xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
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
