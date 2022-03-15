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
    vec4 f5 = texture(NormalMapTexture, f3);
    vec2 f6 = f5.wy * 2.0;
    vec2 f7 = f6 - vec2(1.0);
    float f8 = sqrt(clamp(1.0 + dot(vec2(1.0) - f6, f7), 0.0, 1.0));
    vec3 f9 = vec3(f7, f8);
    vec2 f10 = f9.xy + (vec3((texture(NormalDetailMapTexture, f3 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f11 = f9;
    f11.x = f10.x;
    vec3 f12 = f11;
    f12.y = f10.y;
    vec2 f13 = f12.xy * f2;
    float f14 = f13.x;
    vec4 f15 = texture(SpecularMapTexture, f3);
    vec4 f16 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(f4.w)) * f4.xyz) * (1.0 + (f14 * CB2[0].z)), VARYING2.w);
    float f17 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f18 = VARYING6.xyz * f17;
    vec3 f19 = VARYING5.xyz * f17;
    vec3 f20 = normalize(((f18 * f14) + (cross(f19, f18) * f13.y)) + (f19 * f8));
    vec3 f21 = -CB0[11].xyz;
    float f22 = dot(f20, f21);
    vec3 f23 = f16.xyz;
    vec3 f24 = f23 * f23;
    vec4 f25 = f16;
    f25.x = f24.x;
    vec4 f26 = f25;
    f26.y = f24.y;
    vec4 f27 = f26;
    f27.z = f24.z;
    vec3 f28 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f29 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f30 = VARYING3.yzx - (VARYING3.yzx * f29);
    vec4 f31 = texture(LightMapTexture, f30);
    vec4 f32 = texture(LightGridSkylightTexture, f30);
    vec4 f33 = vec4(clamp(f29, 0.0, 1.0));
    vec4 f34 = mix(f31, vec4(0.0), f33);
    vec4 f35 = mix(f32, vec4(1.0), f33);
    float f36 = f35.x;
    float f37 = f35.y;
    vec3 f38 = f28 - CB0[41].xyz;
    vec3 f39 = f28 - CB0[42].xyz;
    vec3 f40 = f28 - CB0[43].xyz;
    vec4 f41 = vec4(f28, 1.0) * mat4(CB8[((dot(f38, f38) < CB0[41].w) ? 0 : ((dot(f39, f39) < CB0[42].w) ? 1 : ((dot(f40, f40) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f38, f38) < CB0[41].w) ? 0 : ((dot(f39, f39) < CB0[42].w) ? 1 : ((dot(f40, f40) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f38, f38) < CB0[41].w) ? 0 : ((dot(f39, f39) < CB0[42].w) ? 1 : ((dot(f40, f40) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f38, f38) < CB0[41].w) ? 0 : ((dot(f39, f39) < CB0[42].w) ? 1 : ((dot(f40, f40) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f42 = textureLod(ShadowAtlasTexture, f41.xy, 0.0);
    vec2 f43 = vec2(0.0);
    f43.x = CB0[46].z;
    vec2 f44 = f43;
    f44.y = CB0[46].w;
    float f45 = (2.0 * f41.z) - 1.0;
    float f46 = exp(CB0[46].z * f45);
    float f47 = -exp((-CB0[46].w) * f45);
    vec2 f48 = (f44 * CB0[47].y) * vec2(f46, f47);
    vec2 f49 = f48 * f48;
    float f50 = f42.x;
    float f51 = max(f42.y - (f50 * f50), f49.x);
    float f52 = f46 - f50;
    float f53 = f42.z;
    float f54 = max(f42.w - (f53 * f53), f49.y);
    float f55 = f47 - f53;
    float f56 = CB0[26].w * f2;
    float f57 = max(f15.y, 0.04500000178813934326171875);
    vec3 f58 = reflect(-f1, f20);
    float f59 = f57 * 5.0;
    vec3 f60 = vec4(f58, f59).xyz;
    vec3 f61 = textureLod(PrefilteredEnvIndoorTexture, f60, f59).xyz;
    vec3 f62;
    if (CB0[27].w == 0.0)
    {
        f62 = f61;
    }
    else
    {
        f62 = mix(f61, textureLod(PrefilteredEnvBlendTargetTexture, f60, f59).xyz, vec3(CB0[27].w));
    }
    vec4 f63 = texture(PrecomputedBRDFTexture, vec2(f57, max(9.9999997473787516355514526367188e-05, dot(f20, f1))));
    float f64 = f15.x * f56;
    vec3 f65 = mix(vec3(0.039999999105930328369140625), f27.xyz, vec3(f64));
    vec3 f66 = normalize(f21 + f1);
    float f67 = clamp((f22 * CB0[9].w) * (((f22 * CB0[47].x) > 0.0) ? mix(min((f46 <= f50) ? 1.0 : clamp(((f51 / (f51 + (f52 * f52))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f47 <= f53) ? 1.0 : clamp(((f54 / (f54 + (f55 * f55))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f37, clamp((length(f28 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f37), 0.0, 1.0);
    float f68 = f57 * f57;
    float f69 = max(0.001000000047497451305389404296875, dot(f20, f66));
    float f70 = dot(f21, f66);
    float f71 = 1.0 - f70;
    float f72 = f71 * f71;
    float f73 = (f72 * f72) * f71;
    vec3 f74 = vec3(f73) + (f65 * (1.0 - f73));
    float f75 = f68 * f68;
    float f76 = (((f69 * f75) - f69) * f69) + 1.0;
    float f77 = 1.0 - f64;
    float f78 = f56 * f77;
    vec3 f79 = vec3(f77);
    float f80 = f63.x;
    float f81 = f63.y;
    vec3 f82 = ((f65 * f80) + vec3(f81)) / vec3(f80 + f81);
    vec3 f83 = f20 * f20;
    bvec3 f84 = lessThan(f20, vec3(0.0));
    vec3 f85 = vec3(f84.x ? f83.x : vec3(0.0).x, f84.y ? f83.y : vec3(0.0).y, f84.z ? f83.z : vec3(0.0).z);
    vec3 f86 = f83 - f85;
    float f87 = f86.x;
    float f88 = f86.y;
    float f89 = f86.z;
    float f90 = f85.x;
    float f91 = f85.y;
    float f92 = f85.z;
    vec3 f93 = ((((((((f79 - (f74 * f78)) * CB0[10].xyz) * f67) + ((f34.xyz * (f34.w * 120.0)) * 1.0)) + ((f79 - (f82 * f78)) * (((((((CB0[35].xyz * f87) + (CB0[37].xyz * f88)) + (CB0[39].xyz * f89)) + (CB0[36].xyz * f90)) + (CB0[38].xyz * f91)) + (CB0[40].xyz * f92)) + (((((((CB0[29].xyz * f87) + (CB0[31].xyz * f88)) + (CB0[33].xyz * f89)) + (CB0[30].xyz * f90)) + (CB0[32].xyz * f91)) + (CB0[34].xyz * f92)) * f36)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f36))) + vec3(((1.0 - f15.w) * 2.0) * f2)) * f27.xyz) + ((((f74 * (((f75 + (f75 * f75)) / (((f76 * f76) * ((f70 * 3.0) + 0.5)) * ((f69 * 0.75) + 0.25))) * f67)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) + ((mix(f62, textureLod(PrefilteredEnvTexture, f60, f59).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f58.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f36)) * f82) * f56));
    vec4 f94 = vec4(0.0);
    f94.x = f93.x;
    vec4 f95 = f94;
    f95.y = f93.y;
    vec4 f96 = f95;
    f96.z = f93.z;
    vec4 f97 = f96;
    f97.w = VARYING2.w;
    float f98 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f99 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f98) * 5.0).xyz;
    bvec3 f100 = bvec3(!(CB0[13].w == 0.0));
    vec3 f101 = mix(vec3(f100.x ? CB0[14].xyz.x : f99.x, f100.y ? CB0[14].xyz.y : f99.y, f100.z ? CB0[14].xyz.z : f99.z), f97.xyz, vec3(f98));
    vec4 f102 = f97;
    f102.x = f101.x;
    vec4 f103 = f102;
    f103.y = f101.y;
    vec4 f104 = f103;
    f104.z = f101.z;
    vec3 f105 = sqrt(clamp(f104.xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f106 = f104;
    f106.x = f105.x;
    vec4 f107 = f106;
    f107.y = f105.y;
    vec4 f108 = f107;
    f108.z = f105.z;
    vec4 f109 = f108;
    f109.w = VARYING2.w;
    _entryPointOutput = f109;
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
