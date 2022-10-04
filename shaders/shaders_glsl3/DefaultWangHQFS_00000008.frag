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
uniform sampler2D WangTileMapTexture;
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
    vec2 f3 = VARYING0 * CB2[0].x;
    vec2 f4 = f3 * 4.0;
    vec4 f5 = texture(WangTileMapTexture, f4 * vec2(0.0078125));
    vec2 f6 = f4 * 0.25;
    vec2 f7 = dFdx(f6);
    vec2 f8 = dFdy(f6);
    vec4 f9 = vec4(f7, f8);
    vec2 f10 = (f5.xy * 0.99609375) + (fract(f4) * 0.25);
    vec2 f11 = f9.xy;
    vec2 f12 = f9.zw;
    vec4 f13 = textureGrad(DiffuseMapTexture, f10, f11, f12);
    vec2 f14 = textureGrad(NormalMapTexture, f10, f11, f12).wy * 2.0;
    vec2 f15 = f14 - vec2(1.0);
    float f16 = sqrt(clamp(1.0 + dot(vec2(1.0) - f14, f15), 0.0, 1.0));
    vec3 f17 = vec3(f15, f16);
    vec2 f18 = f17.xy + (vec3((texture(NormalDetailMapTexture, f3 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f19 = f17;
    f19.x = f18.x;
    vec3 f20 = f19;
    f20.y = f18.y;
    vec2 f21 = f20.xy * f2;
    float f22 = f21.x;
    vec4 f23 = textureGrad(SpecularMapTexture, f10, f11, f12);
    vec4 f24 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f13.w, CB2[3].w))) * f13.xyz) * (1.0 + (f22 * 0.20000000298023223876953125)), VARYING2.w);
    float f25 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f26 = VARYING6.xyz * f25;
    vec3 f27 = VARYING5.xyz * f25;
    vec3 f28 = normalize(((f26 * f22) + (cross(f27, f26) * f21.y)) + (f27 * f16));
    vec3 f29 = -CB0[16].xyz;
    float f30 = dot(f28, f29);
    vec3 f31 = f24.xyz;
    vec3 f32 = f31 * f31;
    vec4 f33 = f24;
    f33.x = f32.x;
    vec4 f34 = f33;
    f34.y = f32.y;
    vec4 f35 = f34;
    f35.z = f32.z;
    float f36 = CB0[31].w * f2;
    float f37 = 0.08900000154972076416015625 + (f23.y * 0.9110000133514404296875);
    vec3 f38 = reflect(-f1, f28);
    float f39 = f23.x * f36;
    vec3 f40 = mix(vec3(0.039999999105930328369140625), f35.xyz, vec3(f39));
    vec3 f41 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f42 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f43 = VARYING3.yzx - (VARYING3.yzx * f42);
    vec4 f44 = texture(LightMapTexture, f43);
    vec4 f45 = texture(LightGridSkylightTexture, f43);
    vec4 f46 = vec4(clamp(f42, 0.0, 1.0));
    vec4 f47 = mix(f44, vec4(0.0), f46);
    vec4 f48 = mix(f45, vec4(1.0), f46);
    float f49 = f48.x;
    float f50 = f48.y;
    vec3 f51 = f41 - CB0[46].xyz;
    vec3 f52 = f41 - CB0[47].xyz;
    vec3 f53 = f41 - CB0[48].xyz;
    vec4 f54 = vec4(f41, 1.0) * mat4(CB8[((dot(f51, f51) < CB0[46].w) ? 0 : ((dot(f52, f52) < CB0[47].w) ? 1 : ((dot(f53, f53) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f51, f51) < CB0[46].w) ? 0 : ((dot(f52, f52) < CB0[47].w) ? 1 : ((dot(f53, f53) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f51, f51) < CB0[46].w) ? 0 : ((dot(f52, f52) < CB0[47].w) ? 1 : ((dot(f53, f53) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f51, f51) < CB0[46].w) ? 0 : ((dot(f52, f52) < CB0[47].w) ? 1 : ((dot(f53, f53) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f55 = textureLod(ShadowAtlasTexture, f54.xy, 0.0);
    vec2 f56 = vec2(0.0);
    f56.x = CB0[51].z;
    vec2 f57 = f56;
    f57.y = CB0[51].w;
    float f58 = (2.0 * f54.z) - 1.0;
    float f59 = exp(CB0[51].z * f58);
    float f60 = -exp((-CB0[51].w) * f58);
    vec2 f61 = (f57 * CB0[52].y) * vec2(f59, f60);
    vec2 f62 = f61 * f61;
    float f63 = f55.x;
    float f64 = max(f55.y - (f63 * f63), f62.x);
    float f65 = f59 - f63;
    float f66 = f55.z;
    float f67 = max(f55.w - (f66 * f66), f62.y);
    float f68 = f60 - f66;
    vec3 f69 = normalize(f1 - CB0[16].xyz);
    float f70 = clamp((f30 * CB0[14].w) * (((f30 * CB0[52].x) > 0.0) ? mix(min((f59 <= f63) ? 1.0 : clamp(((f64 / (f64 + (f65 * f65))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f60 <= f66) ? 1.0 : clamp(((f67 / (f67 + (f68 * f68))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f50, clamp((length(f41 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f50), 0.0, 1.0);
    float f71 = f37 * f37;
    float f72 = max(0.001000000047497451305389404296875, dot(f28, f69));
    float f73 = dot(f29, f69);
    float f74 = 1.0 - f73;
    float f75 = f74 * f74;
    float f76 = (f75 * f75) * f74;
    vec3 f77 = vec3(f76) + (f40 * (1.0 - f76));
    float f78 = f71 * f71;
    float f79 = (((f72 * f78) - f72) * f72) + 1.0;
    float f80 = 1.0 - f39;
    float f81 = f36 * f80;
    vec3 f82 = vec3(f80);
    float f83 = f37 * 5.0;
    vec3 f84 = vec4(f38, f83).xyz;
    vec3 f85 = textureLod(PrefilteredEnvIndoorTexture, f84, f83).xyz;
    vec3 f86;
    if (CB0[32].w == 0.0)
    {
        f86 = f85;
    }
    else
    {
        f86 = mix(f85, textureLod(PrefilteredEnvBlendTargetTexture, f84, f83).xyz, vec3(CB0[32].w));
    }
    vec4 f87 = texture(PrecomputedBRDFTexture, vec2(f37, max(9.9999997473787516355514526367188e-05, dot(f28, f1))));
    float f88 = f87.x;
    float f89 = f87.y;
    vec3 f90 = ((f40 * f88) + vec3(f89)) / vec3(f88 + f89);
    vec3 f91 = f28 * f28;
    bvec3 f92 = lessThan(f28, vec3(0.0));
    vec3 f93 = vec3(f92.x ? f91.x : vec3(0.0).x, f92.y ? f91.y : vec3(0.0).y, f92.z ? f91.z : vec3(0.0).z);
    vec3 f94 = f91 - f93;
    float f95 = f94.x;
    float f96 = f94.y;
    float f97 = f94.z;
    float f98 = f93.x;
    float f99 = f93.y;
    float f100 = f93.z;
    vec3 f101 = ((((((f47.xyz * (f47.w * 120.0)) * 1.0) + (((f82 - (f77 * f81)) * CB0[15].xyz) * f70)) + ((f82 - (f90 * f81)) * (((((((CB0[40].xyz * f95) + (CB0[42].xyz * f96)) + (CB0[44].xyz * f97)) + (CB0[41].xyz * f98)) + (CB0[43].xyz * f99)) + (CB0[45].xyz * f100)) + (((((((CB0[34].xyz * f95) + (CB0[36].xyz * f96)) + (CB0[38].xyz * f97)) + (CB0[35].xyz * f98)) + (CB0[37].xyz * f99)) + (CB0[39].xyz * f100)) * f49)))) + ((CB0[32].xyz + (CB0[33].xyz * (f49 * (2.0 - CB0[14].w)))) * 1.0)) * f35.xyz) + ((((f77 * (min((f78 + (f78 * f78)) / (((f79 * f79) * ((f73 * 3.0) + 0.5)) * ((f72 * 0.75) + 0.25)), 65504.0) * f70)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w)) + ((mix(f86, textureLod(PrefilteredEnvTexture, f84, f83).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f38.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f49)) * f90) * f36));
    vec4 f102 = vec4(0.0);
    f102.x = f101.x;
    vec4 f103 = f102;
    f103.y = f101.y;
    vec4 f104 = f103;
    f104.z = f101.z;
    vec4 f105 = f104;
    f105.w = VARYING2.w;
    float f106 = clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f107 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[18].y, f106) * 5.0).xyz;
    bvec3 f108 = bvec3(!(CB0[18].w == 0.0));
    vec3 f109 = mix(vec3(f108.x ? CB0[19].xyz.x : f107.x, f108.y ? CB0[19].xyz.y : f107.y, f108.z ? CB0[19].xyz.z : f107.z), f105.xyz, vec3(f106));
    vec4 f110 = f105;
    f110.x = f109.x;
    vec4 f111 = f110;
    f111.y = f109.y;
    vec4 f112 = f111;
    f112.z = f109.z;
    vec3 f113 = sqrt(clamp(f112.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f114 = f112;
    f114.x = f113.x;
    vec4 f115 = f114;
    f115.y = f113.y;
    vec4 f116 = f115;
    f116.z = f113.z;
    vec4 f117 = f116;
    f117.w = VARYING2.w;
    _entryPointOutput = f117;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$WangTileMapTexture=s9
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$SpecularMapTexture=s5
