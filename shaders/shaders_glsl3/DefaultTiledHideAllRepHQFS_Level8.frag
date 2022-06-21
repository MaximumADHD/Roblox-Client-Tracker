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
    vec4 f4 = mix(texture(DiffuseMapTexture, f3 * CB2[1].y), texture(DiffuseMapTexture, f3), vec4(clamp((clamp(1.0 - (VARYING4.w * 0.0033333334140479564666748046875), 0.0, 1.0) * CB2[3].x) - (CB2[2].x * CB2[3].x), 0.0, 1.0)));
    vec4 f5 = texture(NormalMapTexture, f3 * CB2[1].z);
    vec4 f6 = texture(NormalMapTexture, f3);
    vec2 f7 = mix(f5, f6, vec4(clamp((f2 * CB2[3].y) - (CB2[2].y * CB2[3].y), 0.0, 1.0))).wy * 2.0;
    vec2 f8 = f7 - vec2(1.0);
    float f9 = sqrt(clamp(1.0 + dot(vec2(1.0) - f7, f8), 0.0, 1.0));
    vec3 f10 = vec3(f8, f9);
    vec2 f11 = f10.xy + (vec3((texture(NormalDetailMapTexture, f3 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f12 = f10;
    f12.x = f11.x;
    vec3 f13 = f12;
    f13.y = f11.y;
    vec2 f14 = f13.xy * f2;
    float f15 = f14.x;
    vec4 f16 = texture(SpecularMapTexture, f3 * CB2[1].w);
    vec4 f17 = texture(SpecularMapTexture, f3);
    vec4 f18 = mix(f16, f17, vec4(clamp((f2 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0)));
    vec4 f19 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f4.w, CB2[3].w))) * f4.xyz) * (1.0 + (f15 * CB2[0].z)), VARYING2.w);
    float f20 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f21 = VARYING6.xyz * f20;
    vec3 f22 = VARYING5.xyz * f20;
    vec3 f23 = normalize(((f21 * f15) + (cross(f22, f21) * f14.y)) + (f22 * f9));
    vec3 f24 = -CB0[11].xyz;
    float f25 = dot(f23, f24);
    vec3 f26 = f19.xyz;
    vec3 f27 = f26 * f26;
    vec4 f28 = f19;
    f28.x = f27.x;
    vec4 f29 = f28;
    f29.y = f27.y;
    vec4 f30 = f29;
    f30.z = f27.z;
    vec3 f31 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f32 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f33 = VARYING3.yzx - (VARYING3.yzx * f32);
    vec4 f34 = texture(LightMapTexture, f33);
    vec4 f35 = texture(LightGridSkylightTexture, f33);
    vec4 f36 = vec4(clamp(f32, 0.0, 1.0));
    vec4 f37 = mix(f34, vec4(0.0), f36);
    vec4 f38 = mix(f35, vec4(1.0), f36);
    float f39 = f38.x;
    float f40 = f38.y;
    vec3 f41 = f31 - CB0[41].xyz;
    vec3 f42 = f31 - CB0[42].xyz;
    vec3 f43 = f31 - CB0[43].xyz;
    vec4 f44 = vec4(f31, 1.0) * mat4(CB8[((dot(f41, f41) < CB0[41].w) ? 0 : ((dot(f42, f42) < CB0[42].w) ? 1 : ((dot(f43, f43) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f41, f41) < CB0[41].w) ? 0 : ((dot(f42, f42) < CB0[42].w) ? 1 : ((dot(f43, f43) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f41, f41) < CB0[41].w) ? 0 : ((dot(f42, f42) < CB0[42].w) ? 1 : ((dot(f43, f43) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f41, f41) < CB0[41].w) ? 0 : ((dot(f42, f42) < CB0[42].w) ? 1 : ((dot(f43, f43) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f45 = textureLod(ShadowAtlasTexture, f44.xy, 0.0);
    vec2 f46 = vec2(0.0);
    f46.x = CB0[46].z;
    vec2 f47 = f46;
    f47.y = CB0[46].w;
    float f48 = (2.0 * f44.z) - 1.0;
    float f49 = exp(CB0[46].z * f48);
    float f50 = -exp((-CB0[46].w) * f48);
    vec2 f51 = (f47 * CB0[47].y) * vec2(f49, f50);
    vec2 f52 = f51 * f51;
    float f53 = f45.x;
    float f54 = max(f45.y - (f53 * f53), f52.x);
    float f55 = f49 - f53;
    float f56 = f45.z;
    float f57 = max(f45.w - (f56 * f56), f52.y);
    float f58 = f50 - f56;
    float f59 = CB0[26].w * f2;
    float f60 = max(f18.y, 0.04500000178813934326171875);
    vec3 f61 = reflect(-f1, f23);
    float f62 = f60 * 5.0;
    vec3 f63 = vec4(f61, f62).xyz;
    vec3 f64 = textureLod(PrefilteredEnvIndoorTexture, f63, f62).xyz;
    vec3 f65;
    if (CB0[27].w == 0.0)
    {
        f65 = f64;
    }
    else
    {
        f65 = mix(f64, textureLod(PrefilteredEnvBlendTargetTexture, f63, f62).xyz, vec3(CB0[27].w));
    }
    vec4 f66 = texture(PrecomputedBRDFTexture, vec2(f60, max(9.9999997473787516355514526367188e-05, dot(f23, f1))));
    float f67 = f18.x * f59;
    vec3 f68 = mix(vec3(0.039999999105930328369140625), f30.xyz, vec3(f67));
    vec3 f69 = normalize(f1 - CB0[11].xyz);
    float f70 = clamp((f25 * CB0[9].w) * (((f25 * CB0[47].x) > 0.0) ? mix(min((f49 <= f53) ? 1.0 : clamp(((f54 / (f54 + (f55 * f55))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f50 <= f56) ? 1.0 : clamp(((f57 / (f57 + (f58 * f58))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f40, clamp((length(f31 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f40), 0.0, 1.0);
    float f71 = f60 * f60;
    float f72 = max(0.001000000047497451305389404296875, dot(f23, f69));
    float f73 = dot(f24, f69);
    float f74 = 1.0 - f73;
    float f75 = f74 * f74;
    float f76 = (f75 * f75) * f74;
    vec3 f77 = vec3(f76) + (f68 * (1.0 - f76));
    float f78 = f71 * f71;
    float f79 = (((f72 * f78) - f72) * f72) + 1.0;
    float f80 = 1.0 - f67;
    float f81 = f59 * f80;
    vec3 f82 = vec3(f80);
    float f83 = f66.x;
    float f84 = f66.y;
    vec3 f85 = ((f68 * f83) + vec3(f84)) / vec3(f83 + f84);
    vec3 f86 = f23 * f23;
    bvec3 f87 = lessThan(f23, vec3(0.0));
    vec3 f88 = vec3(f87.x ? f86.x : vec3(0.0).x, f87.y ? f86.y : vec3(0.0).y, f87.z ? f86.z : vec3(0.0).z);
    vec3 f89 = f86 - f88;
    float f90 = f89.x;
    float f91 = f89.y;
    float f92 = f89.z;
    float f93 = f88.x;
    float f94 = f88.y;
    float f95 = f88.z;
    vec3 f96 = (((((((f82 - (f77 * f81)) * CB0[10].xyz) * f70) + ((f37.xyz * (f37.w * 120.0)) * 1.0)) + ((f82 - (f85 * f81)) * (((((((CB0[35].xyz * f90) + (CB0[37].xyz * f91)) + (CB0[39].xyz * f92)) + (CB0[36].xyz * f93)) + (CB0[38].xyz * f94)) + (CB0[40].xyz * f95)) + (((((((CB0[29].xyz * f90) + (CB0[31].xyz * f91)) + (CB0[33].xyz * f92)) + (CB0[30].xyz * f93)) + (CB0[32].xyz * f94)) + (CB0[34].xyz * f95)) * f39)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f39))) * f30.xyz) + ((((f77 * (((f78 + (f78 * f78)) / (((f79 * f79) * ((f73 * 3.0) + 0.5)) * ((f72 * 0.75) + 0.25))) * f70)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) + ((mix(f65, textureLod(PrefilteredEnvTexture, f63, f62).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f61.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f39)) * f85) * f59));
    vec4 f97 = vec4(0.0);
    f97.x = f96.x;
    vec4 f98 = f97;
    f98.y = f96.y;
    vec4 f99 = f98;
    f99.z = f96.z;
    vec4 f100 = f99;
    f100.w = VARYING2.w;
    float f101 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f102 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f101) * 5.0).xyz;
    bvec3 f103 = bvec3(!(CB0[13].w == 0.0));
    vec3 f104 = mix(vec3(f103.x ? CB0[14].xyz.x : f102.x, f103.y ? CB0[14].xyz.y : f102.y, f103.z ? CB0[14].xyz.z : f102.z), f100.xyz, vec3(f101));
    vec4 f105 = f100;
    f105.x = f104.x;
    vec4 f106 = f105;
    f106.y = f104.y;
    vec4 f107 = f106;
    f107.z = f104.z;
    vec3 f108 = sqrt(clamp(f107.xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f109 = f107;
    f109.x = f108.x;
    vec4 f110 = f109;
    f110.y = f108.y;
    vec4 f111 = f110;
    f111.z = f108.z;
    vec4 f112 = f111;
    f112.w = VARYING2.w;
    _entryPointOutput = f112;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$SpecularMapTexture=s5
