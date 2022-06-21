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
    float f0 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec2 f1 = VARYING0 * CB2[0].x;
    vec4 f2 = texture(DiffuseMapTexture, f1);
    vec4 f3 = texture(NormalMapTexture, f1);
    vec2 f4 = f3.wy * 2.0;
    vec2 f5 = f4 - vec2(1.0);
    float f6 = sqrt(clamp(1.0 + dot(vec2(1.0) - f4, f5), 0.0, 1.0));
    vec3 f7 = vec3(f5, f6);
    vec2 f8 = f7.xy + (vec3((texture(NormalDetailMapTexture, f1 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f9 = f7;
    f9.x = f8.x;
    vec3 f10 = f9;
    f10.y = f8.y;
    vec2 f11 = f10.xy * f0;
    float f12 = f11.x;
    vec3 f13 = (VARYING2.xyz * f2.xyz) * (1.0 + (f12 * CB2[0].z));
    vec4 f14 = texture(SpecularMapTexture, f1 * CB2[1].w);
    vec4 f15 = texture(SpecularMapTexture, f1);
    vec4 f16 = mix(f14, f15, vec4(clamp((f0 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0)));
    float f17 = f16.y;
    float f18 = VARYING2.w * 2.0;
    float f19 = clamp((f18 - 1.0) + f2.w, 0.0, 1.0);
    float f20 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f21 = VARYING6.xyz * f20;
    vec3 f22 = VARYING5.xyz * f20;
    vec3 f23 = normalize(((f21 * f12) + (cross(f22, f21) * f11.y)) + (f22 * (f6 * 10.0)));
    vec3 f24 = -CB0[11].xyz;
    float f25 = dot(f23, f24);
    vec3 f26 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f27 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f28 = VARYING3.yzx - (VARYING3.yzx * f27);
    vec4 f29 = texture(LightMapTexture, f28);
    vec4 f30 = texture(LightGridSkylightTexture, f28);
    vec4 f31 = vec4(clamp(f27, 0.0, 1.0));
    vec4 f32 = mix(f29, vec4(0.0), f31);
    vec4 f33 = mix(f30, vec4(1.0), f31);
    vec3 f34 = f32.xyz * (f32.w * 120.0);
    float f35 = f33.x;
    float f36 = f33.y;
    vec3 f37 = f26 - CB0[41].xyz;
    vec3 f38 = f26 - CB0[42].xyz;
    vec3 f39 = f26 - CB0[43].xyz;
    vec4 f40 = vec4(f26, 1.0) * mat4(CB8[((dot(f37, f37) < CB0[41].w) ? 0 : ((dot(f38, f38) < CB0[42].w) ? 1 : ((dot(f39, f39) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f37, f37) < CB0[41].w) ? 0 : ((dot(f38, f38) < CB0[42].w) ? 1 : ((dot(f39, f39) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f37, f37) < CB0[41].w) ? 0 : ((dot(f38, f38) < CB0[42].w) ? 1 : ((dot(f39, f39) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f37, f37) < CB0[41].w) ? 0 : ((dot(f38, f38) < CB0[42].w) ? 1 : ((dot(f39, f39) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f41 = textureLod(ShadowAtlasTexture, f40.xy, 0.0);
    vec2 f42 = vec2(0.0);
    f42.x = CB0[46].z;
    vec2 f43 = f42;
    f43.y = CB0[46].w;
    float f44 = (2.0 * f40.z) - 1.0;
    float f45 = exp(CB0[46].z * f44);
    float f46 = -exp((-CB0[46].w) * f44);
    vec2 f47 = (f43 * CB0[47].y) * vec2(f45, f46);
    vec2 f48 = f47 * f47;
    float f49 = f41.x;
    float f50 = max(f41.y - (f49 * f49), f48.x);
    float f51 = f45 - f49;
    float f52 = f41.z;
    float f53 = max(f41.w - (f52 * f52), f48.y);
    float f54 = f46 - f52;
    vec3 f55 = f13 * f13;
    float f56 = length(VARYING4.xyz);
    vec3 f57 = VARYING4.xyz / vec3(f56);
    float f58 = CB0[26].w * f0;
    float f59 = max(9.9999997473787516355514526367188e-05, dot(f23, f57));
    vec3 f60 = reflect(-f57, f23);
    float f61 = f17 * 5.0;
    vec3 f62 = vec4(f60, f61).xyz;
    vec3 f63 = textureLod(PrefilteredEnvTexture, f62, f61).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f60.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f64 = textureLod(PrefilteredEnvIndoorTexture, f62, f61).xyz;
    vec3 f65;
    if (CB0[27].w == 0.0)
    {
        f65 = f64;
    }
    else
    {
        f65 = mix(f64, textureLod(PrefilteredEnvBlendTargetTexture, f62, f61).xyz, vec3(CB0[27].w));
    }
    vec4 f66 = texture(PrecomputedBRDFTexture, vec2(f17, f59));
    float f67 = CB0[9].w * CB0[9].w;
    vec3 f68 = normalize(f57 - CB0[11].xyz);
    float f69 = clamp((f25 * CB0[9].w) * (((f25 * CB0[47].x) > 0.0) ? mix(min((f45 <= f49) ? 1.0 : clamp(((f50 / (f50 + (f51 * f51))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f46 <= f52) ? 1.0 : clamp(((f53 / (f53 + (f54 * f54))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f36, clamp((length(f26 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f36), 0.0, 1.0);
    float f70 = f17 * f17;
    float f71 = max(0.001000000047497451305389404296875, dot(f23, f68));
    float f72 = dot(f24, f68);
    float f73 = 1.0 - f72;
    float f74 = f73 * f73;
    float f75 = (f74 * f74) * f73;
    vec3 f76 = vec3(f75) + (vec3(0.039999999105930328369140625) * (1.0 - f75));
    float f77 = f70 * f70;
    float f78 = (((f71 * f77) - f71) * f71) + 1.0;
    vec3 f79 = vec3(f35);
    vec3 f80 = mix(f34, f63, f79) * mix(vec3(1.0), f55, vec3(0.5));
    float f81 = f66.x;
    float f82 = f66.y;
    vec3 f83 = ((vec3(0.039999999105930328369140625) * f81) + vec3(f82)) / vec3(f81 + f82);
    vec3 f84 = f23 * f23;
    bvec3 f85 = lessThan(f23, vec3(0.0));
    vec3 f86 = vec3(f85.x ? f84.x : vec3(0.0).x, f85.y ? f84.y : vec3(0.0).y, f85.z ? f84.z : vec3(0.0).z);
    vec3 f87 = f84 - f86;
    float f88 = f87.x;
    float f89 = f87.y;
    float f90 = f87.z;
    float f91 = f86.x;
    float f92 = f86.y;
    float f93 = f86.z;
    float f94 = 1.0 - f59;
    vec4 f95 = mix(vec4(mix(((((((vec3(1.0) - (f76 * f58)) * CB0[10].xyz) * f69) + (f34 * f19)) + (((vec3(1.0) - (f83 * f58)) * (((((((CB0[35].xyz * f88) + (CB0[37].xyz * f89)) + (CB0[39].xyz * f90)) + (CB0[36].xyz * f91)) + (CB0[38].xyz * f92)) + (CB0[40].xyz * f93)) + (((((((CB0[29].xyz * f88) + (CB0[31].xyz * f89)) + (CB0[33].xyz * f90)) + (CB0[30].xyz * f91)) + (CB0[32].xyz * f92)) + (CB0[34].xyz * f93)) * f35))) * f19)) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f35))) * (f55 * f19), f80, vec3(VARYING7.w)) * f19, f19), vec4(f80, 1.0), vec4(((f94 * f94) * 0.800000011920928955078125) * clamp(f18, 0.0, 1.0))) + vec4((((f76 * (((f77 + (f77 * f77)) / (((f78 * f78) * ((f72 * 3.0) + 0.5)) * ((f71 * 0.75) + 0.25))) * f69)) * CB0[10].xyz) * f67) + ((((mix(f65, f63, f79) * f83) * f58) * f67) * f19), 0.0);
    float f96 = clamp(exp2((CB0[13].z * f56) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f97 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f96) * 5.0).xyz;
    bvec3 f98 = bvec3(!(CB0[13].w == 0.0));
    vec3 f99 = mix(vec3(f98.x ? CB0[14].xyz.x : f97.x, f98.y ? CB0[14].xyz.y : f97.y, f98.z ? CB0[14].xyz.z : f97.z), f95.xyz, vec3(f96));
    vec4 f100 = f95;
    f100.x = f99.x;
    vec4 f101 = f100;
    f101.y = f99.y;
    vec4 f102 = f101;
    f102.z = f99.z;
    vec4 f103 = f102;
    f103.w = 1.0 - ((1.0 - f95.w) * f96);
    vec3 f104 = sqrt(clamp(f103.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f105 = f103;
    f105.x = f104.x;
    vec4 f106 = f105;
    f106.y = f104.y;
    vec4 f107 = f106;
    f107.z = f104.z;
    _entryPointOutput = f107;
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
