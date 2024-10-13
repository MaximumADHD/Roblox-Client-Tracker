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
varying vec3 VARYING8;

void main()
{
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING0);
    if (f0.w < (0.5 * CB0[53].z))
    {
        discard;
    }
    vec3 f1 = f0.xyz;
    vec3 f2 = mix(f1, f1 * VARYING8, vec3(CB3[0].y));
    float f3 = f2.x;
    vec4 f4 = f0;
    f4.x = f3;
    vec4 f5 = f4;
    f5.y = f2.y;
    vec4 f6 = f5;
    f6.z = f2.z;
    float f7 = f0.w;
    vec4 f8 = mix(vec4(f3, f2.yz, VARYING2.w * f7), vec4(mix(VARYING2.xyz, f6.xyz, vec3(f7)), VARYING2.w), vec4(CB3[0].x));
    vec2 f9 = texture2D(NormalMapTexture, VARYING0).wy * 2.0;
    vec2 f10 = f9 - vec2(1.0);
    vec3 f11 = mix(vec3(0.0, 0.0, 1.0), vec3(f10, sqrt(clamp(1.0 + dot(vec2(1.0) - f9, f10), 0.0, 1.0))), vec3(clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y));
    vec4 f12 = texture2D(SpecularMapTexture, VARYING0);
    float f13 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f14 = VARYING6.xyz * f13;
    vec3 f15 = VARYING5.xyz * f13;
    vec3 f16 = normalize(((f14 * f11.x) + ((cross(f15, f14) * VARYING6.w) * f11.y)) + (f15 * f11.z));
    vec3 f17 = f8.xyz;
    vec3 f18 = f17 * f17;
    vec4 f19 = f8;
    f19.x = f18.x;
    vec4 f20 = f19;
    f20.y = f18.y;
    vec4 f21 = f20;
    f21.z = f18.z;
    float f22 = length(VARYING4.xyz);
    float f23 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f24 = 0.08900000154972076416015625 + (f12.y * 0.9110000133514404296875);
    float f25 = f12.x * f23;
    vec3 f26 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f27 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f28 = VARYING3.yzx - (VARYING3.yzx * f27);
    vec4 f29 = vec4(clamp(f27, 0.0, 1.0));
    vec4 f30 = mix(texture3D(LightMapTexture, f28), vec4(0.0), f29);
    vec4 f31 = mix(texture3D(LightGridSkylightTexture, f28), vec4(1.0), f29);
    vec4 f32 = texture2D(ShadowMapTexture, f26.xy);
    float f33 = f26.z;
    vec3 f34 = -CB0[16].xyz;
    float f35 = dot(f16, f34) * ((1.0 - ((step(f32.x, f33) * clamp(CB0[29].z + (CB0[29].w * abs(f33 - 0.5)), 0.0, 1.0)) * f32.y)) * f31.y);
    vec3 f36 = normalize((VARYING4.xyz / vec3(f22)) + f34);
    float f37 = clamp(f35, 0.0, 1.0);
    float f38 = f24 * f24;
    float f39 = max(0.001000000047497451305389404296875, dot(f16, f36));
    float f40 = dot(f34, f36);
    float f41 = 1.0 - f40;
    float f42 = f41 * f41;
    float f43 = (f42 * f42) * f41;
    vec3 f44 = vec3(f43) + (mix(vec3(0.039999999105930328369140625), f21.xyz, vec3(f25)) * (1.0 - f43));
    float f45 = f38 * f38;
    float f46 = (((f39 * f45) - f39) * f39) + 1.0;
    float f47 = 1.0 - f25;
    vec3 f48 = (((min((f30.xyz * (f30.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f31.x)), vec3(CB0[21].w)) * 1.0) + ((((vec3(f47) - (f44 * (f23 * f47))) * CB0[15].xyz) * f37) + (CB0[17].xyz * (f47 * clamp(-f35, 0.0, 1.0))))) * f21.xyz) + (((f44 * (((f45 + (f45 * f45)) / (((f46 * f46) * ((f40 * 3.0) + 0.5)) * ((f39 * 0.75) + 0.25))) * f37)) * CB0[15].xyz) * 1.0);
    vec4 f49 = vec4(0.0);
    f49.x = f48.x;
    vec4 f50 = f49;
    f50.y = f48.y;
    vec4 f51 = f50;
    f51.z = f48.z;
    float f52 = f8.w;
    vec4 f53 = f51;
    f53.w = f52;
    vec3 f54 = mix(CB0[19].xyz, f53.xyz, vec3(clamp(exp2((CB0[18].z * f22) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f55 = f53;
    f55.x = f54.x;
    vec4 f56 = f55;
    f56.y = f54.y;
    vec4 f57 = f56;
    f57.z = f54.z;
    vec3 f58 = sqrt(clamp(f57.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f59 = f57;
    f59.x = f58.x;
    vec4 f60 = f59;
    f60.y = f58.y;
    vec4 f61 = f60;
    f61.z = f58.z;
    vec4 f62 = f61;
    f62.w = f52;
    gl_FragData[0] = f62;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5
