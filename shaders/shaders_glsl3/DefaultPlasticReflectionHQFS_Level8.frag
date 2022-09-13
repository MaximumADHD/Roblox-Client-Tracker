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

in vec2 VARYING0;
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
    vec2 f12 = f11.xy * (f3 * CB2[3].w);
    vec4 f13 = vec4(VARYING2.xyz * (texture(DiffuseMapTexture, f2).x * 2.0), VARYING2.w);
    float f14 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f15 = VARYING6.xyz * f14;
    vec3 f16 = VARYING5.xyz * f14;
    vec3 f17 = normalize(((f15 * f12.x) + (cross(f16, f15) * f12.y)) + (f16 * f7));
    vec3 f18 = -CB0[11].xyz;
    float f19 = dot(f17, f18);
    vec3 f20 = f13.xyz;
    vec3 f21 = f20 * f20;
    vec4 f22 = f13;
    f22.x = f21.x;
    vec4 f23 = f22;
    f23.y = f21.y;
    vec4 f24 = f23;
    f24.z = f21.z;
    vec3 f25 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f26 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f27 = VARYING3.yzx - (VARYING3.yzx * f26);
    vec4 f28 = texture(LightMapTexture, f27);
    vec4 f29 = texture(LightGridSkylightTexture, f27);
    vec4 f30 = vec4(clamp(f26, 0.0, 1.0));
    vec4 f31 = mix(f28, vec4(0.0), f30);
    vec4 f32 = mix(f29, vec4(1.0), f30);
    float f33 = f32.x;
    float f34 = f32.y;
    vec3 f35 = f25 - CB0[41].xyz;
    vec3 f36 = f25 - CB0[42].xyz;
    vec3 f37 = f25 - CB0[43].xyz;
    vec4 f38 = vec4(f25, 1.0) * mat4(CB8[((dot(f35, f35) < CB0[41].w) ? 0 : ((dot(f36, f36) < CB0[42].w) ? 1 : ((dot(f37, f37) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f35, f35) < CB0[41].w) ? 0 : ((dot(f36, f36) < CB0[42].w) ? 1 : ((dot(f37, f37) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f35, f35) < CB0[41].w) ? 0 : ((dot(f36, f36) < CB0[42].w) ? 1 : ((dot(f37, f37) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f35, f35) < CB0[41].w) ? 0 : ((dot(f36, f36) < CB0[42].w) ? 1 : ((dot(f37, f37) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f39 = textureLod(ShadowAtlasTexture, f38.xy, 0.0);
    vec2 f40 = vec2(0.0);
    f40.x = CB0[46].z;
    vec2 f41 = f40;
    f41.y = CB0[46].w;
    float f42 = (2.0 * f38.z) - 1.0;
    float f43 = exp(CB0[46].z * f42);
    float f44 = -exp((-CB0[46].w) * f42);
    vec2 f45 = (f41 * CB0[47].y) * vec2(f43, f44);
    vec2 f46 = f45 * f45;
    float f47 = f39.x;
    float f48 = max(f39.y - (f47 * f47), f46.x);
    float f49 = f43 - f47;
    float f50 = f39.z;
    float f51 = max(f39.w - (f50 * f50), f46.y);
    float f52 = f44 - f50;
    float f53 = CB0[26].w * f3;
    float f54 = 0.08900000154972076416015625 + (CB2[0].y * 0.9110000133514404296875);
    vec3 f55 = reflect(-f1, f17);
    float f56 = (!(VARYING7.w == 0.0)) ? 0.0 : (f54 * 5.0);
    vec3 f57 = vec4(f55, f56).xyz;
    vec3 f58 = textureLod(PrefilteredEnvTexture, f57, f56).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f55.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f59 = textureLod(PrefilteredEnvIndoorTexture, f57, f56).xyz;
    vec3 f60;
    if (CB0[27].w == 0.0)
    {
        f60 = f59;
    }
    else
    {
        f60 = mix(f59, textureLod(PrefilteredEnvBlendTargetTexture, f57, f56).xyz, vec3(CB0[27].w));
    }
    vec4 f61 = texture(PrecomputedBRDFTexture, vec2(f54, max(9.9999997473787516355514526367188e-05, dot(f17, f1))));
    vec3 f62 = normalize(f1 - CB0[11].xyz);
    float f63 = clamp((f19 * CB0[9].w) * (((f19 * CB0[47].x) > 0.0) ? mix(min((f43 <= f47) ? 1.0 : clamp(((f48 / (f48 + (f49 * f49))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f44 <= f50) ? 1.0 : clamp(((f51 / (f51 + (f52 * f52))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f34, clamp((length(f25 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f34), 0.0, 1.0);
    float f64 = f54 * f54;
    float f65 = max(0.001000000047497451305389404296875, dot(f17, f62));
    float f66 = dot(f18, f62);
    float f67 = 1.0 - f66;
    float f68 = f67 * f67;
    float f69 = (f68 * f68) * f67;
    vec3 f70 = vec3(f69) + (vec3(0.039999999105930328369140625) * (1.0 - f69));
    float f71 = f64 * f64;
    float f72 = (((f65 * f71) - f65) * f65) + 1.0;
    float f73 = f61.x;
    float f74 = f61.y;
    vec3 f75 = ((vec3(0.039999999105930328369140625) * f73) + vec3(f74)) / vec3(f73 + f74);
    vec3 f76 = f17 * f17;
    bvec3 f77 = lessThan(f17, vec3(0.0));
    vec3 f78 = vec3(f77.x ? f76.x : vec3(0.0).x, f77.y ? f76.y : vec3(0.0).y, f77.z ? f76.z : vec3(0.0).z);
    vec3 f79 = f76 - f78;
    float f80 = f79.x;
    float f81 = f79.y;
    float f82 = f79.z;
    float f83 = f78.x;
    float f84 = f78.y;
    float f85 = f78.z;
    vec3 f86 = (((((((vec3(1.0) - (f70 * f53)) * CB0[10].xyz) * f63) + ((f31.xyz * (f31.w * 120.0)) * 1.0)) + ((vec3(1.0) - (f75 * f53)) * (((((((CB0[35].xyz * f80) + (CB0[37].xyz * f81)) + (CB0[39].xyz * f82)) + (CB0[36].xyz * f83)) + (CB0[38].xyz * f84)) + (CB0[40].xyz * f85)) + (((((((CB0[29].xyz * f80) + (CB0[31].xyz * f81)) + (CB0[33].xyz * f82)) + (CB0[30].xyz * f83)) + (CB0[32].xyz * f84)) + (CB0[34].xyz * f85)) * f33)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f33))) * mix(f24.xyz, f58, vec3(VARYING7.w))) + ((((f70 * (((f71 + (f71 * f71)) / (((f72 * f72) * ((f66 * 3.0) + 0.5)) * ((f65 * 0.75) + 0.25))) * f63)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) + ((mix(f60, f58, vec3(f33)) * f75) * f53));
    vec4 f87 = vec4(0.0);
    f87.x = f86.x;
    vec4 f88 = f87;
    f88.y = f86.y;
    vec4 f89 = f88;
    f89.z = f86.z;
    vec4 f90 = f89;
    f90.w = VARYING2.w;
    float f91 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f92 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f91) * 5.0).xyz;
    bvec3 f93 = bvec3(!(CB0[13].w == 0.0));
    vec3 f94 = mix(vec3(f93.x ? CB0[14].xyz.x : f92.x, f93.y ? CB0[14].xyz.y : f92.y, f93.z ? CB0[14].xyz.z : f92.z), f90.xyz, vec3(f91));
    vec4 f95 = f90;
    f95.x = f94.x;
    vec4 f96 = f95;
    f96.y = f94.y;
    vec4 f97 = f96;
    f97.z = f94.z;
    vec3 f98 = sqrt(clamp(f97.xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f99 = f97;
    f99.x = f98.x;
    vec4 f100 = f99;
    f100.y = f98.y;
    vec4 f101 = f100;
    f101.z = f98.z;
    vec4 f102 = f101;
    f102.w = VARYING2.w;
    _entryPointOutput = f102;
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
