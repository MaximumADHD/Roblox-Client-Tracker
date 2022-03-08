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

centroid in vec2 VARYING0;
in vec2 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
in float VARYING8;
out vec4 _entryPointOutput;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec3 f1 = VARYING4.xyz / vec3(f0);
    vec2 f2 = VARYING1;
    f2.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float f3 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec4 f4 = texture(NormalMapTexture, f2);
    vec2 f5 = f4.wy * 2.0;
    vec2 f6 = f5 - vec2(1.0);
    float f7 = sqrt(clamp(1.0 + dot(vec2(1.0) - f5, f6), 0.0, 1.0));
    vec3 f8 = vec3(f6, f7);
    vec2 f9 = f8.xy + (vec3((texture(NormalDetailMapTexture, VARYING0 * CB2[0].x).wy * 2.0) - vec2(1.0), 0.0).xy * (clamp(VARYING2.w - 0.5, 0.0, 1.0) * clamp(1.0 - (2.0 * VARYING7.w), 0.0, 1.0)));
    vec3 f10 = f8;
    f10.x = f9.x;
    vec3 f11 = f10;
    f11.y = f9.y;
    vec2 f12 = f11.xy * f3;
    vec3 f13 = f11;
    f13.x = f12.x;
    vec3 f14 = f13;
    f14.y = f12.y;
    vec2 f15 = f14.xy * CB2[3].w;
    vec4 f16 = vec4(VARYING2.xyz * (texture(DiffuseMapTexture, f2).x * 2.0), VARYING2.w);
    float f17 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f18 = VARYING6.xyz * f17;
    vec3 f19 = VARYING5.xyz * f17;
    vec3 f20 = normalize(((f18 * f15.x) + (cross(f19, f18) * f15.y)) + (f19 * f7));
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
    float f56 = CB0[26].w * f3;
    float f57 = 0.08900000154972076416015625 + (CB2[0].y * 0.9110000133514404296875);
    vec3 f58 = reflect(-f1, f20);
    float f59 = (!(VARYING7.w == 0.0)) ? 0.0 : (f57 * 5.0);
    vec3 f60 = vec4(f58, f59).xyz;
    vec3 f61 = textureLod(PrefilteredEnvTexture, f60, f59).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f58.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f62 = textureLod(PrefilteredEnvIndoorTexture, f60, f59).xyz;
    vec3 f63;
    if (CB0[27].w == 0.0)
    {
        f63 = f62;
    }
    else
    {
        f63 = mix(f62, textureLod(PrefilteredEnvBlendTargetTexture, f60, f59).xyz, vec3(CB0[27].w));
    }
    vec4 f64 = texture(PrecomputedBRDFTexture, vec2(f57, max(9.9999997473787516355514526367188e-05, dot(f20, f1))));
    vec3 f65 = normalize(f21 + f1);
    float f66 = clamp((f22 * CB0[9].w) * (((f22 * CB0[47].x) > 0.0) ? mix(min((f46 <= f50) ? 1.0 : clamp(((f51 / (f51 + (f52 * f52))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f47 <= f53) ? 1.0 : clamp(((f54 / (f54 + (f55 * f55))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f37, clamp((length(f28 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f37), 0.0, 1.0);
    float f67 = f57 * f57;
    float f68 = max(0.001000000047497451305389404296875, dot(f20, f65));
    float f69 = dot(f21, f65);
    float f70 = 1.0 - f69;
    float f71 = f70 * f70;
    float f72 = (f71 * f71) * f70;
    vec3 f73 = vec3(f72) + (vec3(0.039999999105930328369140625) * (1.0 - f72));
    float f74 = f67 * f67;
    float f75 = (((f68 * f74) - f68) * f68) + 1.0;
    float f76 = f64.x;
    float f77 = f64.y;
    vec3 f78 = ((vec3(0.039999999105930328369140625) * f76) + vec3(f77)) / vec3(f76 + f77);
    vec3 f79 = f20 * f20;
    bvec3 f80 = lessThan(f20, vec3(0.0));
    vec3 f81 = vec3(f80.x ? f79.x : vec3(0.0).x, f80.y ? f79.y : vec3(0.0).y, f80.z ? f79.z : vec3(0.0).z);
    vec3 f82 = f79 - f81;
    float f83 = f82.x;
    float f84 = f82.y;
    float f85 = f82.z;
    float f86 = f81.x;
    float f87 = f81.y;
    float f88 = f81.z;
    vec3 f89 = (((((((vec3(1.0) - (f73 * f56)) * CB0[10].xyz) * f66) + ((f34.xyz * (f34.w * 120.0)) * 1.0)) + ((vec3(1.0) - (f78 * f56)) * (((((((CB0[35].xyz * f83) + (CB0[37].xyz * f84)) + (CB0[39].xyz * f85)) + (CB0[36].xyz * f86)) + (CB0[38].xyz * f87)) + (CB0[40].xyz * f88)) + (((((((CB0[29].xyz * f83) + (CB0[31].xyz * f84)) + (CB0[33].xyz * f85)) + (CB0[30].xyz * f86)) + (CB0[32].xyz * f87)) + (CB0[34].xyz * f88)) * f36)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f36))) * mix(f27.xyz, f61, vec3(VARYING7.w))) + ((((f73 * (((f74 + (f74 * f74)) / (((f75 * f75) * ((f69 * 3.0) + 0.5)) * ((f68 * 0.75) + 0.25))) * f66)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) + ((mix(f63, f61, vec3(f36)) * f78) * f56));
    vec4 f90 = vec4(0.0);
    f90.x = f89.x;
    vec4 f91 = f90;
    f91.y = f89.y;
    vec4 f92 = f91;
    f92.z = f89.z;
    vec4 f93 = f92;
    f93.w = VARYING2.w;
    float f94 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f95 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f94) * 5.0).xyz;
    bvec3 f96 = bvec3(!(CB0[13].w == 0.0));
    vec3 f97 = mix(vec3(f96.x ? CB0[14].xyz.x : f95.x, f96.y ? CB0[14].xyz.y : f95.y, f96.z ? CB0[14].xyz.z : f95.z), f93.xyz, vec3(f94));
    vec4 f98 = f93;
    f98.x = f97.x;
    vec4 f99 = f98;
    f99.y = f97.y;
    vec4 f100 = f99;
    f100.z = f97.z;
    vec3 f101 = sqrt(clamp(f100.xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f102 = f100;
    f102.x = f101.x;
    vec4 f103 = f102;
    f103.y = f101.y;
    vec4 f104 = f103;
    f104.z = f101.z;
    vec4 f105 = f104;
    f105.w = VARYING2.w;
    _entryPointOutput = f105;
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
