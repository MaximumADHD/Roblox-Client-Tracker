#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[53];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
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
    float f13 = f2.w;
    vec3 f14 = (mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f13 + CB2[2].w, 0.0, 1.0))) * f2.xyz) * (1.0 + (f12 * CB2[0].z));
    vec4 f15 = texture(SpecularMapTexture, f1 * CB2[1].w);
    vec4 f16 = texture(SpecularMapTexture, f1);
    vec4 f17 = mix(f15, f16, vec4(clamp((f0 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0)));
    float f18 = f17.y;
    float f19 = VARYING2.w * 2.0;
    float f20 = clamp((f19 - 1.0) + f13, 0.0, 1.0);
    float f21 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f22 = VARYING6.xyz * f21;
    vec3 f23 = VARYING5.xyz * f21;
    vec3 f24 = normalize(((f22 * f12) + (cross(f23, f22) * f11.y)) + (f23 * (f6 * 10.0)));
    vec3 f25 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f26 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f27 = VARYING3.yzx - (VARYING3.yzx * f26);
    vec4 f28 = texture(LightMapTexture, f27);
    vec4 f29 = texture(LightGridSkylightTexture, f27);
    vec4 f30 = vec4(clamp(f26, 0.0, 1.0));
    vec4 f31 = mix(f28, vec4(0.0), f30);
    vec4 f32 = mix(f29, vec4(1.0), f30);
    vec3 f33 = f31.xyz * (f31.w * 120.0);
    float f34 = f32.x;
    vec4 f35 = texture(ShadowMapTexture, f25.xy);
    float f36 = f25.z;
    vec3 f37 = f14 * f14;
    float f38 = length(VARYING4.xyz);
    vec3 f39 = VARYING4.xyz / vec3(f38);
    float f40 = CB0[26].w * f0;
    float f41 = max(9.9999997473787516355514526367188e-05, dot(f24, f39));
    vec3 f42 = reflect(-f39, f24);
    float f43 = f18 * 5.0;
    vec3 f44 = vec4(f42, f43).xyz;
    vec3 f45 = textureLod(PrefilteredEnvTexture, f44, f43).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f42.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f46 = textureLod(PrefilteredEnvIndoorTexture, f44, f43).xyz;
    vec3 f47;
    if (CB0[27].w == 0.0)
    {
        f47 = f46;
    }
    else
    {
        f47 = mix(f46, textureLod(PrefilteredEnvBlendTargetTexture, f44, f43).xyz, vec3(CB0[27].w));
    }
    vec4 f48 = texture(PrecomputedBRDFTexture, vec2(f18, f41));
    float f49 = CB0[9].w * CB0[9].w;
    vec3 f50 = -CB0[11].xyz;
    float f51 = (dot(f24, f50) * CB0[9].w) * ((1.0 - ((step(f35.x, f36) * clamp(CB0[24].z + (CB0[24].w * abs(f36 - 0.5)), 0.0, 1.0)) * f35.y)) * f32.y);
    vec3 f52 = normalize(f50 + f39);
    float f53 = clamp(f51, 0.0, 1.0);
    float f54 = f18 * f18;
    float f55 = max(0.001000000047497451305389404296875, dot(f24, f52));
    float f56 = dot(f50, f52);
    float f57 = 1.0 - f56;
    float f58 = f57 * f57;
    float f59 = (f58 * f58) * f57;
    vec3 f60 = vec3(f59) + (vec3(0.039999999105930328369140625) * (1.0 - f59));
    float f61 = f54 * f54;
    float f62 = (((f55 * f61) - f55) * f55) + 1.0;
    vec3 f63 = vec3(f34);
    vec3 f64 = mix(f33, f45, f63) * mix(vec3(1.0), f37, vec3(0.5));
    float f65 = f48.x;
    float f66 = f48.y;
    vec3 f67 = ((vec3(0.039999999105930328369140625) * f65) + vec3(f66)) / vec3(f65 + f66);
    vec3 f68 = f24 * f24;
    bvec3 f69 = lessThan(f24, vec3(0.0));
    vec3 f70 = vec3(f69.x ? f68.x : vec3(0.0).x, f69.y ? f68.y : vec3(0.0).y, f69.z ? f68.z : vec3(0.0).z);
    vec3 f71 = f68 - f70;
    float f72 = f71.x;
    float f73 = f71.y;
    float f74 = f71.z;
    float f75 = f70.x;
    float f76 = f70.y;
    float f77 = f70.z;
    float f78 = 1.0 - f41;
    vec4 f79 = mix(vec4(mix((((((((vec3(1.0) - (f60 * f40)) * CB0[10].xyz) * f53) + (CB0[12].xyz * clamp(-f51, 0.0, 1.0))) + (f33 * f20)) + (((vec3(1.0) - (f67 * f40)) * (((((((CB0[35].xyz * f72) + (CB0[37].xyz * f73)) + (CB0[39].xyz * f74)) + (CB0[36].xyz * f75)) + (CB0[38].xyz * f76)) + (CB0[40].xyz * f77)) + (((((((CB0[29].xyz * f72) + (CB0[31].xyz * f73)) + (CB0[33].xyz * f74)) + (CB0[30].xyz * f75)) + (CB0[32].xyz * f76)) + (CB0[34].xyz * f77)) * f34))) * f20)) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f34))) * (f37 * f20), f64, vec3(VARYING7.w)) * f20, f20), vec4(f64, 1.0), vec4(((f78 * f78) * 0.800000011920928955078125) * clamp(f19, 0.0, 1.0))) + vec4((((f60 * (((f61 + (f61 * f61)) / (((f62 * f62) * ((f56 * 3.0) + 0.5)) * ((f55 * 0.75) + 0.25))) * f53)) * CB0[10].xyz) * f49) + ((((mix(f47, f45, f63) * f67) * f40) * f49) * f20), 0.0);
    float f80 = clamp(exp2((CB0[13].z * f38) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f81 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f80) * 5.0).xyz;
    bvec3 f82 = bvec3(!(CB0[13].w == 0.0));
    vec3 f83 = mix(vec3(f82.x ? CB0[14].xyz.x : f81.x, f82.y ? CB0[14].xyz.y : f81.y, f82.z ? CB0[14].xyz.z : f81.z), f79.xyz, vec3(f80));
    vec4 f84 = f79;
    f84.x = f83.x;
    vec4 f85 = f84;
    f85.y = f83.y;
    vec4 f86 = f85;
    f86.z = f83.z;
    vec4 f87 = f86;
    f87.w = 1.0 - ((1.0 - f79.w) * f80);
    vec3 f88 = sqrt(clamp(f87.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f89 = f87;
    f89.x = f88.x;
    vec4 f90 = f89;
    f90.y = f88.y;
    vec4 f91 = f90;
    f91.z = f88.z;
    _entryPointOutput = f91;
}

//$$ShadowMapTexture=s1
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
