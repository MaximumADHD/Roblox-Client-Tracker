#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <PartMaterialParams.h>
uniform vec4 CB0[58];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
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
    vec2 f0 = clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0));
    vec2 f1 = VARYING0 * CB2[0].x;
    vec4 f2 = mix(texture2D(DiffuseMapTexture, f1 * CB2[1].y), texture2D(DiffuseMapTexture, f1), vec4(clamp((f0.x * CB2[3].x) - (CB2[2].x * CB2[3].x), 0.0, 1.0)));
    vec2 f3 = texture2D(NormalMapTexture, f1).wy * 2.0;
    vec2 f4 = f3 - vec2(1.0);
    float f5 = sqrt(clamp(1.0 + dot(vec2(1.0) - f3, f4), 0.0, 1.0));
    vec3 f6 = vec3(f4, f5);
    vec2 f7 = f6.xy + (vec3((texture2D(NormalDetailMapTexture, f1 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f8 = f6;
    f8.x = f7.x;
    vec3 f9 = f8;
    f9.y = f7.y;
    vec2 f10 = f9.xy * f0.y;
    float f11 = f10.x;
    vec4 f12 = texture2D(SpecularMapTexture, f1);
    vec4 f13 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f2.w, CB2[3].w))) * f2.xyz) * (1.0 + (f11 * 0.20000000298023223876953125)), VARYING2.w);
    float f14 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f15 = VARYING6.xyz * f14;
    vec3 f16 = VARYING5.xyz * f14;
    vec3 f17 = normalize(((f15 * f11) + (cross(f16, f15) * f10.y)) + (f16 * f5));
    vec3 f18 = f13.xyz;
    vec3 f19 = f18 * f18;
    vec4 f20 = f13;
    f20.x = f19.x;
    vec4 f21 = f20;
    f21.y = f19.y;
    vec4 f22 = f21;
    f22.z = f19.z;
    float f23 = length(VARYING4.xyz);
    float f24 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f25 = 0.08900000154972076416015625 + (f12.y * 0.9110000133514404296875);
    float f26 = f12.x * f24;
    vec3 f27 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f28 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f29 = VARYING3.yzx - (VARYING3.yzx * f28);
    vec4 f30 = vec4(clamp(f28, 0.0, 1.0));
    vec4 f31 = mix(texture3D(LightMapTexture, f29), vec4(0.0), f30);
    vec4 f32 = mix(texture3D(LightGridSkylightTexture, f29), vec4(1.0), f30);
    vec4 f33 = texture2D(ShadowMapTexture, f27.xy);
    float f34 = f27.z;
    vec3 f35 = -CB0[16].xyz;
    float f36 = dot(f17, f35) * ((1.0 - ((step(f33.x, f34) * clamp(CB0[29].z + (CB0[29].w * abs(f34 - 0.5)), 0.0, 1.0)) * f33.y)) * f32.y);
    vec3 f37 = normalize((VARYING4.xyz / vec3(f23)) + f35);
    float f38 = clamp(f36, 0.0, 1.0);
    float f39 = f25 * f25;
    float f40 = max(0.001000000047497451305389404296875, dot(f17, f37));
    float f41 = dot(f35, f37);
    float f42 = 1.0 - f41;
    float f43 = f42 * f42;
    float f44 = (f43 * f43) * f42;
    vec3 f45 = vec3(f44) + (mix(vec3(0.039999999105930328369140625), f22.xyz, vec3(f26)) * (1.0 - f44));
    float f46 = f39 * f39;
    float f47 = (((f40 * f46) - f40) * f40) + 1.0;
    float f48 = 1.0 - f26;
    vec3 f49 = (((min((f31.xyz * (f31.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f32.x)), vec3(CB0[21].w)) * 1.0) + ((((vec3(f48) - (f45 * (f24 * f48))) * CB0[15].xyz) * f38) + (CB0[17].xyz * (f48 * clamp(-f36, 0.0, 1.0))))) * f22.xyz) + (((f45 * (((f46 + (f46 * f46)) / (((f47 * f47) * ((f41 * 3.0) + 0.5)) * ((f40 * 0.75) + 0.25))) * f38)) * CB0[15].xyz) * 1.0);
    vec4 f50 = vec4(0.0);
    f50.x = f49.x;
    vec4 f51 = f50;
    f51.y = f49.y;
    vec4 f52 = f51;
    f52.z = f49.z;
    vec4 f53 = f52;
    f53.w = VARYING2.w;
    vec3 f54 = mix(CB0[19].xyz, f53.xyz, vec3(clamp(exp2((CB0[18].z * f23) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
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
    f62.w = VARYING2.w;
    gl_FragData[0] = f62;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$SpecularMapTexture=s5
