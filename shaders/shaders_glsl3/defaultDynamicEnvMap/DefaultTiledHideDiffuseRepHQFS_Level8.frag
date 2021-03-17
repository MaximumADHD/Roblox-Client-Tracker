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
    vec4 f8 = texture(NormalMapTexture, f4);
    vec2 f9 = f8.wy * 2.0;
    vec2 f10 = f9 - vec2(1.0);
    float f11 = sqrt(clamp(1.0 + dot(vec2(1.0) - f9, f10), 0.0, 1.0));
    vec4 f12 = texture(NormalDetailMapTexture, f4 * CB2[0].w);
    vec2 f13 = (vec3(f10, f11).xy + (vec3((f12.wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f3;
    float f14 = f13.x;
    vec4 f15 = texture(StudsMapTexture, f2);
    vec4 f16 = texture(SpecularMapTexture, f4);
    float f17 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f18 = VARYING6.xyz * f17;
    vec3 f19 = VARYING5.xyz * f17;
    vec3 f20 = normalize(((f18 * f14) + (cross(f19, f18) * f13.y)) + (f19 * f11));
    vec3 f21 = -CB0[11].xyz;
    float f22 = dot(f20, f21);
    vec3 f23 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f7.w + CB2[2].w, 0.0, 1.0))) * f7.xyz) * (1.0 + (f14 * CB2[0].z))) * (f15.x * 2.0), VARYING2.w).xyz;
    vec3 f24 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f25 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f26 = VARYING3.yzx - (VARYING3.yzx * f25);
    vec4 f27 = texture(LightMapTexture, f26);
    vec4 f28 = texture(LightGridSkylightTexture, f26);
    vec4 f29 = vec4(clamp(f25, 0.0, 1.0));
    vec4 f30 = mix(f27, vec4(0.0), f29);
    vec4 f31 = mix(f28, vec4(1.0), f29);
    float f32 = f31.x;
    float f33 = f31.y;
    vec3 f34 = f24 - CB0[41].xyz;
    vec3 f35 = f24 - CB0[42].xyz;
    vec3 f36 = f24 - CB0[43].xyz;
    vec4 f37 = vec4(f24, 1.0) * mat4(CB8[((dot(f34, f34) < CB0[41].w) ? 0 : ((dot(f35, f35) < CB0[42].w) ? 1 : ((dot(f36, f36) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f34, f34) < CB0[41].w) ? 0 : ((dot(f35, f35) < CB0[42].w) ? 1 : ((dot(f36, f36) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f34, f34) < CB0[41].w) ? 0 : ((dot(f35, f35) < CB0[42].w) ? 1 : ((dot(f36, f36) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f34, f34) < CB0[41].w) ? 0 : ((dot(f35, f35) < CB0[42].w) ? 1 : ((dot(f36, f36) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f38 = textureLod(ShadowAtlasTexture, f37.xy, 0.0);
    vec2 f39 = vec2(0.0);
    f39.x = CB0[46].z;
    vec2 f40 = f39;
    f40.y = CB0[46].w;
    float f41 = (2.0 * f37.z) - 1.0;
    float f42 = exp(CB0[46].z * f41);
    float f43 = -exp((-CB0[46].w) * f41);
    vec2 f44 = (f40 * CB0[47].y) * vec2(f42, f43);
    vec2 f45 = f44 * f44;
    float f46 = f38.x;
    float f47 = max(f38.y - (f46 * f46), f45.x);
    float f48 = f42 - f46;
    float f49 = f38.z;
    float f50 = max(f38.w - (f49 * f49), f45.y);
    float f51 = f43 - f49;
    vec3 f52 = (f23 * f23).xyz;
    float f53 = CB0[26].w * f3;
    float f54 = max(f16.y, 0.04500000178813934326171875);
    vec3 f55 = reflect(-f1, f20);
    float f56 = f54 * 5.0;
    vec3 f57 = vec4(f55, f56).xyz;
    vec3 f58 = textureLod(PrefilteredEnvIndoorTexture, f57, f56).xyz;
    vec3 f59;
    if (CB0[27].w == 0.0)
    {
        f59 = f58;
    }
    else
    {
        f59 = mix(f58, textureLod(PrefilteredEnvBlendTargetTexture, f57, f56).xyz, vec3(CB0[27].w));
    }
    vec4 f60 = texture(PrecomputedBRDFTexture, vec2(f54, max(9.9999997473787516355514526367188e-05, dot(f20, f1))));
    float f61 = f16.x * f53;
    vec3 f62 = mix(vec3(0.039999999105930328369140625), f52, vec3(f61));
    vec3 f63 = normalize(f21 + f1);
    float f64 = clamp(f22 * ((f22 > 0.0) ? mix(f33, mix(min((f42 <= f46) ? 1.0 : clamp(((f47 / (f47 + (f48 * f48))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f43 <= f49) ? 1.0 : clamp(((f50 / (f50 + (f51 * f51))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f33, clamp((length(f24 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)), CB0[47].x) : 0.0), 0.0, 1.0);
    float f65 = f54 * f54;
    float f66 = max(0.001000000047497451305389404296875, dot(f20, f63));
    float f67 = dot(f21, f63);
    float f68 = 1.0 - f67;
    float f69 = f68 * f68;
    float f70 = (f69 * f69) * f68;
    vec3 f71 = vec3(f70) + (f62 * (1.0 - f70));
    float f72 = f65 * f65;
    float f73 = (((f66 * f72) - f66) * f66) + 1.0;
    float f74 = 1.0 - f61;
    float f75 = f53 * f74;
    vec3 f76 = vec3(f74);
    float f77 = f60.x;
    float f78 = f60.y;
    vec3 f79 = ((f62 * f77) + vec3(f78)) / vec3(f77 + f78);
    vec3 f80 = f20 * f20;
    bvec3 f81 = lessThan(f20, vec3(0.0));
    vec3 f82 = vec3(f81.x ? f80.x : vec3(0.0).x, f81.y ? f80.y : vec3(0.0).y, f81.z ? f80.z : vec3(0.0).z);
    vec3 f83 = f80 - f82;
    float f84 = f83.x;
    float f85 = f83.y;
    float f86 = f83.z;
    float f87 = f82.x;
    float f88 = f82.y;
    float f89 = f82.z;
    vec3 f90 = (((((((f76 - (f71 * f75)) * CB0[10].xyz) * f64) + ((f30.xyz * (f30.w * 120.0)).xyz * 1.0)) + ((f76 - (f79 * f75)) * (((((((CB0[35].xyz * f84) + (CB0[37].xyz * f85)) + (CB0[39].xyz * f86)) + (CB0[36].xyz * f87)) + (CB0[38].xyz * f88)) + (CB0[40].xyz * f89)) + (((((((CB0[29].xyz * f84) + (CB0[31].xyz * f85)) + (CB0[33].xyz * f86)) + (CB0[30].xyz * f87)) + (CB0[32].xyz * f88)) + (CB0[34].xyz * f89)) * f32)))) + ((CB0[27].xyz + (CB0[28].xyz * f32)) * 1.0)) * f52) + (((f71 * (((f72 + (f72 * f72)) / (((f73 * f73) * ((f67 * 3.0) + 0.5)) * ((f66 * 0.75) + 0.25))) * f64)) * CB0[10].xyz) + ((mix(f59, textureLod(PrefilteredEnvTexture, f57, f56).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f55.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f32)) * f79) * f53));
    vec4 f91 = vec4(f90.x, f90.y, f90.z, vec4(0.0).w);
    f91.w = VARYING2.w;
    float f92 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f93 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f92) * 5.0).xyz;
    bvec3 f94 = bvec3(CB0[13].w != 0.0);
    vec3 f95 = sqrt(clamp(mix(vec3(f94.x ? CB0[14].xyz.x : f93.x, f94.y ? CB0[14].xyz.y : f93.y, f94.z ? CB0[14].xyz.z : f93.z), f91.xyz, vec3(f92)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f96 = vec4(f95.x, f95.y, f95.z, f91.w);
    f96.w = VARYING2.w;
    _entryPointOutput = f96;
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
