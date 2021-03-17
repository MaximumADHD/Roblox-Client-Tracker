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
uniform sampler2D StudsMapTexture;
uniform sampler2D SpecularMapTexture;

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
    vec2 f4 = VARYING0 * CB2[0].x;
    vec4 f5 = texture(DiffuseMapTexture, f4 * CB2[1].y);
    vec4 f6 = texture(DiffuseMapTexture, f4);
    vec4 f7 = mix(f5, f6, vec4(clamp((clamp(1.0 - (VARYING4.w * 0.0033333334140479564666748046875), 0.0, 1.0) * CB2[3].x) - (CB2[2].x * CB2[3].x), 0.0, 1.0)));
    vec4 f8 = texture(NormalMapTexture, f4 * CB2[1].z);
    vec4 f9 = texture(NormalMapTexture, f4);
    vec2 f10 = mix(f8, f9, vec4(clamp((f3 * CB2[3].y) - (CB2[2].y * CB2[3].y), 0.0, 1.0))).wy * 2.0;
    vec2 f11 = f10 - vec2(1.0);
    float f12 = sqrt(clamp(1.0 + dot(vec2(1.0) - f10, f11), 0.0, 1.0));
    vec4 f13 = texture(NormalDetailMapTexture, f4 * CB2[0].w);
    vec2 f14 = (vec3(f11, f12).xy + (vec3((f13.wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f3;
    float f15 = f14.x;
    vec4 f16 = texture(StudsMapTexture, f2);
    vec4 f17 = texture(SpecularMapTexture, f4 * CB2[1].w);
    vec4 f18 = texture(SpecularMapTexture, f4);
    vec4 f19 = mix(f17, f18, vec4(clamp((f3 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0)));
    float f20 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f21 = VARYING6.xyz * f20;
    vec3 f22 = VARYING5.xyz * f20;
    vec3 f23 = normalize(((f21 * f15) + (cross(f22, f21) * f14.y)) + (f22 * f12));
    vec3 f24 = -CB0[11].xyz;
    float f25 = dot(f23, f24);
    vec3 f26 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f7.w + CB2[2].w, 0.0, 1.0))) * f7.xyz) * (1.0 + (f15 * CB2[0].z))) * (f16.x * 2.0), VARYING2.w).xyz;
    vec3 f27 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f28 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f29 = VARYING3.yzx - (VARYING3.yzx * f28);
    vec4 f30 = texture(LightMapTexture, f29);
    vec4 f31 = texture(LightGridSkylightTexture, f29);
    vec4 f32 = vec4(clamp(f28, 0.0, 1.0));
    vec4 f33 = mix(f30, vec4(0.0), f32);
    vec4 f34 = mix(f31, vec4(1.0), f32);
    float f35 = f34.x;
    float f36 = f34.y;
    vec3 f37 = f27 - CB0[41].xyz;
    vec3 f38 = f27 - CB0[42].xyz;
    vec3 f39 = f27 - CB0[43].xyz;
    vec4 f40 = vec4(f27, 1.0) * mat4(CB8[((dot(f37, f37) < CB0[41].w) ? 0 : ((dot(f38, f38) < CB0[42].w) ? 1 : ((dot(f39, f39) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f37, f37) < CB0[41].w) ? 0 : ((dot(f38, f38) < CB0[42].w) ? 1 : ((dot(f39, f39) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f37, f37) < CB0[41].w) ? 0 : ((dot(f38, f38) < CB0[42].w) ? 1 : ((dot(f39, f39) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f37, f37) < CB0[41].w) ? 0 : ((dot(f38, f38) < CB0[42].w) ? 1 : ((dot(f39, f39) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
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
    vec3 f55 = (f26 * f26).xyz;
    float f56 = CB0[26].w * f3;
    float f57 = max(f19.y, 0.04500000178813934326171875);
    vec3 f58 = reflect(-f1, f23);
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
    vec4 f63 = texture(PrecomputedBRDFTexture, vec2(f57, max(9.9999997473787516355514526367188e-05, dot(f23, f1))));
    float f64 = f19.x * f56;
    vec3 f65 = mix(vec3(0.039999999105930328369140625), f55, vec3(f64));
    vec3 f66 = normalize(f24 + f1);
    float f67 = clamp(f25 * ((f25 > 0.0) ? mix(f36, mix(min((f45 <= f49) ? 1.0 : clamp(((f50 / (f50 + (f51 * f51))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f46 <= f52) ? 1.0 : clamp(((f53 / (f53 + (f54 * f54))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f36, clamp((length(f27 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)), CB0[47].x) : 0.0), 0.0, 1.0);
    float f68 = f57 * f57;
    float f69 = max(0.001000000047497451305389404296875, dot(f23, f66));
    float f70 = dot(f24, f66);
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
    vec3 f83 = f23 * f23;
    bvec3 f84 = lessThan(f23, vec3(0.0));
    vec3 f85 = vec3(f84.x ? f83.x : vec3(0.0).x, f84.y ? f83.y : vec3(0.0).y, f84.z ? f83.z : vec3(0.0).z);
    vec3 f86 = f83 - f85;
    float f87 = f86.x;
    float f88 = f86.y;
    float f89 = f86.z;
    float f90 = f85.x;
    float f91 = f85.y;
    float f92 = f85.z;
    vec3 f93 = (((((((f79 - (f74 * f78)) * CB0[10].xyz) * f67) + ((f33.xyz * (f33.w * 120.0)).xyz * 1.0)) + ((f79 - (f82 * f78)) * (((((((CB0[35].xyz * f87) + (CB0[37].xyz * f88)) + (CB0[39].xyz * f89)) + (CB0[36].xyz * f90)) + (CB0[38].xyz * f91)) + (CB0[40].xyz * f92)) + (((((((CB0[29].xyz * f87) + (CB0[31].xyz * f88)) + (CB0[33].xyz * f89)) + (CB0[30].xyz * f90)) + (CB0[32].xyz * f91)) + (CB0[34].xyz * f92)) * f35)))) + ((CB0[27].xyz + (CB0[28].xyz * f35)) * 1.0)) * f55) + (((f74 * (((f75 + (f75 * f75)) / (((f76 * f76) * ((f70 * 3.0) + 0.5)) * ((f69 * 0.75) + 0.25))) * f67)) * CB0[10].xyz) + ((mix(f62, textureLod(PrefilteredEnvTexture, f60, f59).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f58.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f35)) * f82) * f56));
    vec4 f94 = vec4(f93.x, f93.y, f93.z, vec4(0.0).w);
    f94.w = VARYING2.w;
    float f95 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f96 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f95) * 5.0).xyz;
    bvec3 f97 = bvec3(CB0[13].w != 0.0);
    vec3 f98 = sqrt(clamp(mix(vec3(f97.x ? CB0[14].xyz.x : f96.x, f97.y ? CB0[14].xyz.y : f96.y, f97.z ? CB0[14].xyz.z : f96.z), f94.xyz, vec3(f95)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f99 = vec4(f98.x, f98.y, f98.z, f94.w);
    f99.w = VARYING2.w;
    _entryPointOutput = f99;
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
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
