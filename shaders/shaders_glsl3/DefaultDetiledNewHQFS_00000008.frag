#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
#include <MaterialParams.h>
uniform vec4 CB0[58];
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
    float f2 = clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    vec4 f3 = texture(NoiseMapTexture, VARYING0 * CB2[2].w);
    float f4 = f3.x * 8.0;
    float f5 = fract(f4);
    float f6 = floor(f4);
    vec2 f7 = dFdx(VARYING0);
    vec2 f8 = dFdy(VARYING0);
    vec2 f9 = sin(vec2(3.0, 7.0) * f6) + VARYING0;
    vec2 f10 = sin(vec2(3.0, 7.0) * (f6 + 1.0)) + VARYING0;
    vec4 f11 = vec4(f5);
    vec4 f12 = mix(textureGrad(DiffuseMapTexture, f9, f7, f8), textureGrad(DiffuseMapTexture, f10, f7, f8), f11);
    vec2 f13 = textureGrad(NormalMapTexture, f9, f7, f8).wy * 2.0;
    vec2 f14 = f13 - vec2(1.0);
    vec4 f15 = vec4(0.0);
    f15.x = f14.x;
    vec4 f16 = f15;
    f16.y = f14.y;
    vec4 f17 = f16;
    f17.z = sqrt(clamp(1.0 + dot(vec2(1.0) - f13, f14), 0.0, 1.0));
    vec2 f18 = textureGrad(NormalMapTexture, f10, f7, f8).wy * 2.0;
    vec2 f19 = f18 - vec2(1.0);
    vec4 f20 = vec4(0.0);
    f20.x = f19.x;
    vec4 f21 = f20;
    f21.y = f19.y;
    vec4 f22 = f21;
    f22.z = sqrt(clamp(1.0 + dot(vec2(1.0) - f18, f19), 0.0, 1.0));
    vec3 f23 = mix(f17.xyz, f22.xyz, vec3(f5));
    vec2 f24 = f23.xy + (vec3((texture(NormalDetailMapTexture, VARYING0 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f25 = f23;
    f25.x = f24.x;
    vec3 f26 = f25;
    f26.y = f24.y;
    vec2 f27 = f26.xy * f2;
    float f28 = f27.x;
    vec4 f29 = mix(textureGrad(SpecularMapTexture, f9, f7, f8), textureGrad(SpecularMapTexture, f10, f7, f8), f11);
    vec4 f30 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f12.w, CB2[3].w))) * f12.xyz) * (1.0 + (f28 * 0.20000000298023223876953125)), VARYING2.w);
    float f31 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f32 = VARYING6.xyz * f31;
    vec3 f33 = VARYING5.xyz * f31;
    vec3 f34 = normalize(((f32 * f28) + (cross(f33, f32) * f27.y)) + (f33 * f23.z));
    vec3 f35 = -CB0[16].xyz;
    float f36 = dot(f34, f35);
    vec3 f37 = f30.xyz;
    vec3 f38 = f37 * f37;
    vec4 f39 = f30;
    f39.x = f38.x;
    vec4 f40 = f39;
    f40.y = f38.y;
    vec4 f41 = f40;
    f41.z = f38.z;
    float f42 = CB0[31].w * f2;
    float f43 = 0.08900000154972076416015625 + (f29.y * 0.9110000133514404296875);
    vec3 f44 = reflect(-f1, f34);
    float f45 = f29.x * f42;
    vec3 f46 = mix(vec3(0.039999999105930328369140625), f41.xyz, vec3(f45));
    vec3 f47 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f48 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f49 = VARYING3.yzx - (VARYING3.yzx * f48);
    vec4 f50 = texture(LightMapTexture, f49);
    vec4 f51 = texture(LightGridSkylightTexture, f49);
    vec4 f52 = vec4(clamp(f48, 0.0, 1.0));
    vec4 f53 = mix(f50, vec4(0.0), f52);
    vec4 f54 = mix(f51, vec4(1.0), f52);
    float f55 = f54.x;
    float f56 = f54.y;
    vec3 f57 = f47 - CB0[46].xyz;
    vec3 f58 = f47 - CB0[47].xyz;
    vec3 f59 = f47 - CB0[48].xyz;
    vec4 f60 = vec4(f47, 1.0) * mat4(CB8[((dot(f57, f57) < CB0[46].w) ? 0 : ((dot(f58, f58) < CB0[47].w) ? 1 : ((dot(f59, f59) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f57, f57) < CB0[46].w) ? 0 : ((dot(f58, f58) < CB0[47].w) ? 1 : ((dot(f59, f59) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f57, f57) < CB0[46].w) ? 0 : ((dot(f58, f58) < CB0[47].w) ? 1 : ((dot(f59, f59) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f57, f57) < CB0[46].w) ? 0 : ((dot(f58, f58) < CB0[47].w) ? 1 : ((dot(f59, f59) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f61 = textureLod(ShadowAtlasTexture, f60.xy, 0.0);
    vec2 f62 = vec2(0.0);
    f62.x = CB0[51].z;
    vec2 f63 = f62;
    f63.y = CB0[51].w;
    float f64 = (2.0 * f60.z) - 1.0;
    float f65 = exp(CB0[51].z * f64);
    float f66 = -exp((-CB0[51].w) * f64);
    vec2 f67 = (f63 * CB0[52].y) * vec2(f65, f66);
    vec2 f68 = f67 * f67;
    float f69 = f61.x;
    float f70 = max(f61.y - (f69 * f69), f68.x);
    float f71 = f65 - f69;
    float f72 = f61.z;
    float f73 = max(f61.w - (f72 * f72), f68.y);
    float f74 = f66 - f72;
    vec3 f75 = normalize(f1 - CB0[16].xyz);
    float f76 = clamp((f36 * CB0[14].w) * (((f36 * CB0[52].x) > 0.0) ? mix(min((f65 <= f69) ? 1.0 : clamp(((f70 / (f70 + (f71 * f71))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f66 <= f72) ? 1.0 : clamp(((f73 / (f73 + (f74 * f74))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f56, clamp((length(f47 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f56), 0.0, 1.0);
    float f77 = f43 * f43;
    float f78 = max(0.001000000047497451305389404296875, dot(f34, f75));
    float f79 = dot(f35, f75);
    float f80 = 1.0 - f79;
    float f81 = f80 * f80;
    float f82 = (f81 * f81) * f80;
    vec3 f83 = vec3(f82) + (f46 * (1.0 - f82));
    float f84 = f77 * f77;
    float f85 = (((f78 * f84) - f78) * f78) + 1.0;
    float f86 = 1.0 - f45;
    float f87 = f42 * f86;
    vec3 f88 = vec3(f86);
    float f89 = f43 * 5.0;
    vec3 f90 = vec4(f44, f89).xyz;
    vec3 f91 = textureLod(PrefilteredEnvIndoorTexture, f90, f89).xyz;
    vec3 f92;
    if (CB0[32].w == 0.0)
    {
        f92 = f91;
    }
    else
    {
        f92 = mix(f91, textureLod(PrefilteredEnvBlendTargetTexture, f90, f89).xyz, vec3(CB0[32].w));
    }
    vec4 f93 = texture(PrecomputedBRDFTexture, vec2(f43, max(9.9999997473787516355514526367188e-05, dot(f34, f1))));
    float f94 = f93.x;
    float f95 = f93.y;
    vec3 f96 = ((f46 * f94) + vec3(f95)) / vec3(f94 + f95);
    vec3 f97 = f34 * f34;
    bvec3 f98 = lessThan(f34, vec3(0.0));
    vec3 f99 = vec3(f98.x ? f97.x : vec3(0.0).x, f98.y ? f97.y : vec3(0.0).y, f98.z ? f97.z : vec3(0.0).z);
    vec3 f100 = f97 - f99;
    float f101 = f100.x;
    float f102 = f100.y;
    float f103 = f100.z;
    float f104 = f99.x;
    float f105 = f99.y;
    float f106 = f99.z;
    vec3 f107 = ((((((f53.xyz * (f53.w * 120.0)) * 1.0) + (((f88 - (f83 * f87)) * CB0[15].xyz) * f76)) + ((f88 - (f96 * f87)) * (((((((CB0[40].xyz * f101) + (CB0[42].xyz * f102)) + (CB0[44].xyz * f103)) + (CB0[41].xyz * f104)) + (CB0[43].xyz * f105)) + (CB0[45].xyz * f106)) + (((((((CB0[34].xyz * f101) + (CB0[36].xyz * f102)) + (CB0[38].xyz * f103)) + (CB0[35].xyz * f104)) + (CB0[37].xyz * f105)) + (CB0[39].xyz * f106)) * f55)))) + ((CB0[32].xyz + (CB0[33].xyz * (f55 * (2.0 - CB0[14].w)))) * 1.0)) * f41.xyz) + ((((f83 * (min((f84 + (f84 * f84)) / (((f85 * f85) * ((f79 * 3.0) + 0.5)) * ((f78 * 0.75) + 0.25)), 65504.0) * f76)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w)) + ((mix(f92, textureLod(PrefilteredEnvTexture, f90, f89).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f44.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f55)) * f96) * f42));
    vec4 f108 = vec4(0.0);
    f108.x = f107.x;
    vec4 f109 = f108;
    f109.y = f107.y;
    vec4 f110 = f109;
    f110.z = f107.z;
    vec4 f111 = f110;
    f111.w = VARYING2.w;
    float f112 = clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f113 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[18].y, f112) * 5.0).xyz;
    bvec3 f114 = bvec3(!(CB0[18].w == 0.0));
    vec3 f115 = mix(vec3(f114.x ? CB0[19].xyz.x : f113.x, f114.y ? CB0[19].xyz.y : f113.y, f114.z ? CB0[19].xyz.z : f113.z), f111.xyz, vec3(f112));
    vec4 f116 = f111;
    f116.x = f115.x;
    vec4 f117 = f116;
    f117.y = f115.y;
    vec4 f118 = f117;
    f118.z = f115.z;
    vec3 f119 = sqrt(clamp(f118.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f120 = f118;
    f120.x = f119.x;
    vec4 f121 = f120;
    f121.y = f119.y;
    vec4 f122 = f121;
    f122.z = f119.z;
    vec4 f123 = f122;
    f123.w = VARYING2.w;
    _entryPointOutput = f123;
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
