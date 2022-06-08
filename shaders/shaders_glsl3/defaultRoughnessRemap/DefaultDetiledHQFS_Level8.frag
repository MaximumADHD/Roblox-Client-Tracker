#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
#include <MaterialParams.h>
uniform vec4 CB0[53];
uniform vec4 CB8[24];
uniform vec4 CB2[4];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D NoiseMapTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D SpecularMapTexture;

in vec2 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec3 f1 = VARYING4.xyz / vec3(f0);
    float f2 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec2 f3 = VARYING0 * CB2[0].x;
    vec4 f4 = texture(NoiseMapTexture, f3 * CB2[2].w);
    float f5 = f4.x * 8.0;
    float f6 = fract(f5);
    float f7 = floor(f5);
    vec2 f8 = dFdx(f3);
    vec2 f9 = dFdy(f3);
    vec2 f10 = sin(vec2(3.0, 7.0) * f7) + f3;
    vec2 f11 = sin(vec2(3.0, 7.0) * (f7 + 1.0)) + f3;
    vec4 f12 = vec4(f6);
    vec4 f13 = mix(textureGrad(DiffuseMapTexture, f10, f8, f9), textureGrad(DiffuseMapTexture, f11, f8, f9), f12);
    vec2 f14 = textureGrad(NormalMapTexture, f10, f8, f9).wy * 2.0;
    vec2 f15 = f14 - vec2(1.0);
    vec4 f16 = vec4(0.0);
    f16.x = f15.x;
    vec4 f17 = f16;
    f17.y = f15.y;
    vec4 f18 = f17;
    f18.z = sqrt(clamp(1.0 + dot(vec2(1.0) - f14, f15), 0.0, 1.0));
    vec2 f19 = textureGrad(NormalMapTexture, f11, f8, f9).wy * 2.0;
    vec2 f20 = f19 - vec2(1.0);
    vec4 f21 = vec4(0.0);
    f21.x = f20.x;
    vec4 f22 = f21;
    f22.y = f20.y;
    vec4 f23 = f22;
    f23.z = sqrt(clamp(1.0 + dot(vec2(1.0) - f19, f20), 0.0, 1.0));
    vec3 f24 = mix(f18.xyz, f23.xyz, vec3(f6));
    vec2 f25 = f24.xy + (vec3((texture(NormalDetailMapTexture, f3 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f26 = f24;
    f26.x = f25.x;
    vec3 f27 = f26;
    f27.y = f25.y;
    vec2 f28 = f27.xy * f2;
    float f29 = f28.x;
    vec4 f30 = mix(textureGrad(SpecularMapTexture, f10, f8, f9), textureGrad(SpecularMapTexture, f11, f8, f9), f12);
    vec4 f31 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f13.w, CB2[3].w))) * f13.xyz) * (1.0 + (f29 * CB2[0].z)), VARYING2.w);
    float f32 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f33 = VARYING6.xyz * f32;
    vec3 f34 = VARYING5.xyz * f32;
    vec3 f35 = normalize(((f33 * f29) + (cross(f34, f33) * f28.y)) + (f34 * f24.z));
    vec3 f36 = -CB0[11].xyz;
    float f37 = dot(f35, f36);
    vec3 f38 = f31.xyz;
    vec3 f39 = f38 * f38;
    vec4 f40 = f31;
    f40.x = f39.x;
    vec4 f41 = f40;
    f41.y = f39.y;
    vec4 f42 = f41;
    f42.z = f39.z;
    vec3 f43 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f44 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f45 = VARYING3.yzx - (VARYING3.yzx * f44);
    vec4 f46 = texture(LightMapTexture, f45);
    vec4 f47 = texture(LightGridSkylightTexture, f45);
    vec4 f48 = vec4(clamp(f44, 0.0, 1.0));
    vec4 f49 = mix(f46, vec4(0.0), f48);
    vec4 f50 = mix(f47, vec4(1.0), f48);
    float f51 = f50.x;
    float f52 = f50.y;
    vec3 f53 = f43 - CB0[41].xyz;
    vec3 f54 = f43 - CB0[42].xyz;
    vec3 f55 = f43 - CB0[43].xyz;
    vec4 f56 = vec4(f43, 1.0) * mat4(CB8[((dot(f53, f53) < CB0[41].w) ? 0 : ((dot(f54, f54) < CB0[42].w) ? 1 : ((dot(f55, f55) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f53, f53) < CB0[41].w) ? 0 : ((dot(f54, f54) < CB0[42].w) ? 1 : ((dot(f55, f55) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f53, f53) < CB0[41].w) ? 0 : ((dot(f54, f54) < CB0[42].w) ? 1 : ((dot(f55, f55) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f53, f53) < CB0[41].w) ? 0 : ((dot(f54, f54) < CB0[42].w) ? 1 : ((dot(f55, f55) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f57 = textureLod(ShadowAtlasTexture, f56.xy, 0.0);
    vec2 f58 = vec2(0.0);
    f58.x = CB0[46].z;
    vec2 f59 = f58;
    f59.y = CB0[46].w;
    float f60 = (2.0 * f56.z) - 1.0;
    float f61 = exp(CB0[46].z * f60);
    float f62 = -exp((-CB0[46].w) * f60);
    vec2 f63 = (f59 * CB0[47].y) * vec2(f61, f62);
    vec2 f64 = f63 * f63;
    float f65 = f57.x;
    float f66 = max(f57.y - (f65 * f65), f64.x);
    float f67 = f61 - f65;
    float f68 = f57.z;
    float f69 = max(f57.w - (f68 * f68), f64.y);
    float f70 = f62 - f68;
    float f71 = CB0[26].w * f2;
    float f72 = 0.08900000154972076416015625 + (f30.y * 0.9110000133514404296875);
    vec3 f73 = reflect(-f1, f35);
    float f74 = f72 * 5.0;
    vec3 f75 = vec4(f73, f74).xyz;
    vec3 f76 = textureLod(PrefilteredEnvIndoorTexture, f75, f74).xyz;
    vec3 f77;
    if (CB0[27].w == 0.0)
    {
        f77 = f76;
    }
    else
    {
        f77 = mix(f76, textureLod(PrefilteredEnvBlendTargetTexture, f75, f74).xyz, vec3(CB0[27].w));
    }
    vec4 f78 = texture(PrecomputedBRDFTexture, vec2(f72, max(9.9999997473787516355514526367188e-05, dot(f35, f1))));
    float f79 = f30.x * f71;
    vec3 f80 = mix(vec3(0.039999999105930328369140625), f42.xyz, vec3(f79));
    vec3 f81 = normalize(f36 + f1);
    float f82 = clamp((f37 * CB0[9].w) * (((f37 * CB0[47].x) > 0.0) ? mix(min((f61 <= f65) ? 1.0 : clamp(((f66 / (f66 + (f67 * f67))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f62 <= f68) ? 1.0 : clamp(((f69 / (f69 + (f70 * f70))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f52, clamp((length(f43 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f52), 0.0, 1.0);
    float f83 = f72 * f72;
    float f84 = max(0.001000000047497451305389404296875, dot(f35, f81));
    float f85 = dot(f36, f81);
    float f86 = 1.0 - f85;
    float f87 = f86 * f86;
    float f88 = (f87 * f87) * f86;
    vec3 f89 = vec3(f88) + (f80 * (1.0 - f88));
    float f90 = f83 * f83;
    float f91 = (((f84 * f90) - f84) * f84) + 1.0;
    float f92 = 1.0 - f79;
    float f93 = f71 * f92;
    vec3 f94 = vec3(f92);
    float f95 = f78.x;
    float f96 = f78.y;
    vec3 f97 = ((f80 * f95) + vec3(f96)) / vec3(f95 + f96);
    vec3 f98 = f35 * f35;
    bvec3 f99 = lessThan(f35, vec3(0.0));
    vec3 f100 = vec3(f99.x ? f98.x : vec3(0.0).x, f99.y ? f98.y : vec3(0.0).y, f99.z ? f98.z : vec3(0.0).z);
    vec3 f101 = f98 - f100;
    float f102 = f101.x;
    float f103 = f101.y;
    float f104 = f101.z;
    float f105 = f100.x;
    float f106 = f100.y;
    float f107 = f100.z;
    vec3 f108 = (((((((f94 - (f89 * f93)) * CB0[10].xyz) * f82) + ((f49.xyz * (f49.w * 120.0)) * 1.0)) + ((f94 - (f97 * f93)) * (((((((CB0[35].xyz * f102) + (CB0[37].xyz * f103)) + (CB0[39].xyz * f104)) + (CB0[36].xyz * f105)) + (CB0[38].xyz * f106)) + (CB0[40].xyz * f107)) + (((((((CB0[29].xyz * f102) + (CB0[31].xyz * f103)) + (CB0[33].xyz * f104)) + (CB0[30].xyz * f105)) + (CB0[32].xyz * f106)) + (CB0[34].xyz * f107)) * f51)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f51))) * f42.xyz) + ((((f89 * (((f90 + (f90 * f90)) / (((f91 * f91) * ((f85 * 3.0) + 0.5)) * ((f84 * 0.75) + 0.25))) * f82)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) + ((mix(f77, textureLod(PrefilteredEnvTexture, f75, f74).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f73.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f51)) * f97) * f71));
    vec4 f109 = vec4(0.0);
    f109.x = f108.x;
    vec4 f110 = f109;
    f110.y = f108.y;
    vec4 f111 = f110;
    f111.z = f108.z;
    vec4 f112 = f111;
    f112.w = VARYING2.w;
    float f113 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f114 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f113) * 5.0).xyz;
    bvec3 f115 = bvec3(!(CB0[13].w == 0.0));
    vec3 f116 = mix(vec3(f115.x ? CB0[14].xyz.x : f114.x, f115.y ? CB0[14].xyz.y : f114.y, f115.z ? CB0[14].xyz.z : f114.z), f112.xyz, vec3(f113));
    vec4 f117 = f112;
    f117.x = f116.x;
    vec4 f118 = f117;
    f118.y = f116.y;
    vec4 f119 = f118;
    f119.z = f116.z;
    vec3 f120 = sqrt(clamp(f119.xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f121 = f119;
    f121.x = f120.x;
    vec4 f122 = f121;
    f122.y = f120.y;
    vec4 f123 = f122;
    f123.z = f120.z;
    vec4 f124 = f123;
    f124.w = VARYING2.w;
    _entryPointOutput = f124;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$NoiseMapTexture=s9
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$SpecularMapTexture=s5
