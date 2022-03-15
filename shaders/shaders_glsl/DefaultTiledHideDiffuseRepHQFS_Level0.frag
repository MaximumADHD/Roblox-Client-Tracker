#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[53];
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
    float f0 = length(VARYING4.xyz);
    float f1 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec2 f2 = VARYING0 * CB2[0].x;
    vec4 f3 = mix(texture2D(DiffuseMapTexture, f2 * CB2[1].y), texture2D(DiffuseMapTexture, f2), vec4(clamp((clamp(1.0 - (VARYING4.w * 0.0033333334140479564666748046875), 0.0, 1.0) * CB2[3].x) - (CB2[2].x * CB2[3].x), 0.0, 1.0)));
    vec2 f4 = texture2D(NormalMapTexture, f2).wy * 2.0;
    vec2 f5 = f4 - vec2(1.0);
    float f6 = sqrt(clamp(1.0 + dot(vec2(1.0) - f4, f5), 0.0, 1.0));
    vec3 f7 = vec3(f5, f6);
    vec2 f8 = f7.xy + (vec3((texture2D(NormalDetailMapTexture, f2 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f9 = f7;
    f9.x = f8.x;
    vec3 f10 = f9;
    f10.y = f8.y;
    vec2 f11 = f10.xy * f1;
    float f12 = f11.x;
    vec4 f13 = texture2D(SpecularMapTexture, f2);
    vec4 f14 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(f3.w)) * f3.xyz) * (1.0 + (f12 * CB2[0].z)), VARYING2.w);
    float f15 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f16 = VARYING6.xyz * f15;
    vec3 f17 = VARYING5.xyz * f15;
    vec3 f18 = normalize(((f16 * f12) + (cross(f17, f16) * f11.y)) + (f17 * f6));
    vec3 f19 = f14.xyz;
    vec3 f20 = f19 * f19;
    vec4 f21 = f14;
    f21.x = f20.x;
    vec4 f22 = f21;
    f22.y = f20.y;
    vec4 f23 = f22;
    f23.z = f20.z;
    vec3 f24 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f25 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f26 = VARYING3.yzx - (VARYING3.yzx * f25);
    vec4 f27 = vec4(clamp(f25, 0.0, 1.0));
    vec4 f28 = mix(texture3D(LightMapTexture, f26), vec4(0.0), f27);
    vec4 f29 = mix(texture3D(LightGridSkylightTexture, f26), vec4(1.0), f27);
    vec4 f30 = texture2D(ShadowMapTexture, f24.xy);
    float f31 = f24.z;
    float f32 = CB0[26].w * f1;
    float f33 = max(f13.y, 0.04500000178813934326171875);
    float f34 = f13.x * f32;
    vec3 f35 = -CB0[11].xyz;
    float f36 = (dot(f18, f35) * CB0[9].w) * ((1.0 - ((step(f30.x, f31) * clamp(CB0[24].z + (CB0[24].w * abs(f31 - 0.5)), 0.0, 1.0)) * f30.y)) * f29.y);
    vec3 f37 = normalize(f35 + (VARYING4.xyz / vec3(f0)));
    float f38 = clamp(f36, 0.0, 1.0);
    float f39 = f33 * f33;
    float f40 = max(0.001000000047497451305389404296875, dot(f18, f37));
    float f41 = dot(f35, f37);
    float f42 = 1.0 - f41;
    float f43 = f42 * f42;
    float f44 = (f43 * f43) * f42;
    vec3 f45 = vec3(f44) + (mix(vec3(0.039999999105930328369140625), f23.xyz, vec3(f34)) * (1.0 - f44));
    float f46 = f39 * f39;
    float f47 = (((f40 * f46) - f40) * f40) + 1.0;
    float f48 = 1.0 - f34;
    vec3 f49 = ((((((vec3(f48) - (f45 * (f32 * f48))) * CB0[10].xyz) * f38) + (CB0[12].xyz * (f48 * clamp(-f36, 0.0, 1.0)))) + min((f28.xyz * (f28.w * 120.0)) + (CB0[8].xyz + (CB0[9].xyz * f29.x)), vec3(CB0[16].w))) * f23.xyz) + (((f45 * (((f46 + (f46 * f46)) / (((f47 * f47) * ((f41 * 3.0) + 0.5)) * ((f40 * 0.75) + 0.25))) * f38)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w));
    vec4 f50 = vec4(0.0);
    f50.x = f49.x;
    vec4 f51 = f50;
    f51.y = f49.y;
    vec4 f52 = f51;
    f52.z = f49.z;
    vec4 f53 = f52;
    f53.w = VARYING2.w;
    vec3 f54 = mix(CB0[14].xyz, f53.xyz, vec3(clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0)));
    vec4 f55 = f53;
    f55.x = f54.x;
    vec4 f56 = f55;
    f56.y = f54.y;
    vec4 f57 = f56;
    f57.z = f54.z;
    vec3 f58 = sqrt(clamp(f57.xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
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
