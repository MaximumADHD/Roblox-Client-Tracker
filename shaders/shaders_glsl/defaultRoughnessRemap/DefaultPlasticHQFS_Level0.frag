#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[53];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube EnvironmentMapTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;

varying vec2 VARYING0;
varying vec2 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;
varying float VARYING8;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec3 f1 = VARYING4.xyz / vec3(f0);
    vec2 f2 = VARYING1;
    f2.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float f3 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec2 f4 = texture2D(NormalMapTexture, f2).wy * 2.0;
    vec2 f5 = f4 - vec2(1.0);
    float f6 = sqrt(clamp(1.0 + dot(vec2(1.0) - f4, f5), 0.0, 1.0));
    vec3 f7 = vec3(f5, f6);
    vec2 f8 = f7.xy + (vec3((texture2D(NormalDetailMapTexture, VARYING0 * CB2[0].x).wy * 2.0) - vec2(1.0), 0.0).xy * (clamp(VARYING2.w - 0.5, 0.0, 1.0) * clamp(1.0 - (2.0 * VARYING7.w), 0.0, 1.0)));
    vec3 f9 = f7;
    f9.x = f8.x;
    vec3 f10 = f9;
    f10.y = f8.y;
    vec2 f11 = f10.xy * f3;
    vec3 f12 = f10;
    f12.x = f11.x;
    vec3 f13 = f12;
    f13.y = f11.y;
    vec2 f14 = f13.xy * CB2[3].w;
    vec4 f15 = vec4(VARYING2.xyz * (texture2D(DiffuseMapTexture, f2).x * 2.0), VARYING2.w);
    float f16 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f17 = VARYING6.xyz * f16;
    vec3 f18 = VARYING5.xyz * f16;
    vec3 f19 = normalize(((f17 * f14.x) + (cross(f18, f17) * f14.y)) + (f18 * f6));
    vec3 f20 = f15.xyz;
    vec3 f21 = f20 * f20;
    vec4 f22 = f15;
    f22.x = f21.x;
    vec4 f23 = f22;
    f23.y = f21.y;
    vec4 f24 = f23;
    f24.z = f21.z;
    vec3 f25 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f26 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f27 = VARYING3.yzx - (VARYING3.yzx * f26);
    vec4 f28 = vec4(clamp(f26, 0.0, 1.0));
    vec4 f29 = mix(texture3D(LightMapTexture, f27), vec4(0.0), f28);
    vec4 f30 = mix(texture3D(LightGridSkylightTexture, f27), vec4(1.0), f28);
    vec4 f31 = texture2D(ShadowMapTexture, f25.xy);
    float f32 = f25.z;
    float f33 = 0.08900000154972076416015625 + (CB2[0].y * 0.9110000133514404296875);
    vec3 f34 = textureCube(EnvironmentMapTexture, reflect(-f1, f19)).xyz;
    vec3 f35 = -CB0[11].xyz;
    float f36 = (dot(f19, f35) * CB0[9].w) * ((1.0 - ((step(f31.x, f32) * clamp(CB0[24].z + (CB0[24].w * abs(f32 - 0.5)), 0.0, 1.0)) * f31.y)) * f30.y);
    vec3 f37 = normalize(f35 + f1);
    float f38 = clamp(f36, 0.0, 1.0);
    float f39 = f33 * f33;
    float f40 = max(0.001000000047497451305389404296875, dot(f19, f37));
    float f41 = dot(f35, f37);
    float f42 = 1.0 - f41;
    float f43 = f42 * f42;
    float f44 = (f43 * f43) * f42;
    vec3 f45 = vec3(f44) + (vec3(0.039999999105930328369140625) * (1.0 - f44));
    float f46 = f39 * f39;
    float f47 = (((f40 * f46) - f40) * f40) + 1.0;
    vec3 f48 = ((((((vec3(1.0) - (f45 * (CB0[26].w * f3))) * CB0[10].xyz) * f38) + (CB0[12].xyz * clamp(-f36, 0.0, 1.0))) + min((f29.xyz * (f29.w * 120.0)) + (CB0[8].xyz + (CB0[9].xyz * f30.x)), vec3(CB0[16].w))) * mix(f24.xyz, (f34 * f34) * CB0[15].x, vec3(VARYING7.w))) + (((f45 * (((f46 + (f46 * f46)) / (((f47 * f47) * ((f41 * 3.0) + 0.5)) * ((f40 * 0.75) + 0.25))) * f38)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w));
    vec4 f49 = vec4(0.0);
    f49.x = f48.x;
    vec4 f50 = f49;
    f50.y = f48.y;
    vec4 f51 = f50;
    f51.z = f48.z;
    vec4 f52 = f51;
    f52.w = VARYING2.w;
    vec3 f53 = mix(CB0[14].xyz, f52.xyz, vec3(clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0)));
    vec4 f54 = f52;
    f54.x = f53.x;
    vec4 f55 = f54;
    f55.y = f53.y;
    vec4 f56 = f55;
    f56.z = f53.z;
    vec3 f57 = sqrt(clamp(f56.xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f58 = f56;
    f58.x = f57.x;
    vec4 f59 = f58;
    f59.y = f57.y;
    vec4 f60 = f59;
    f60.z = f57.z;
    vec4 f61 = f60;
    f61.w = VARYING2.w;
    gl_FragData[0] = f61;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$EnvironmentMapTexture=s2
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
