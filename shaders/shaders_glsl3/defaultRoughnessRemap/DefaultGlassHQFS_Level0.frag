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
    float f17 = VARYING2.w * 2.0;
    float f18 = clamp((f17 - 1.0) + f13, 0.0, 1.0);
    float f19 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f20 = VARYING6.xyz * f19;
    vec3 f21 = VARYING5.xyz * f19;
    vec3 f22 = normalize(((f20 * f12) + (cross(f21, f20) * f11.y)) + (f21 * (f6 * 10.0)));
    vec3 f23 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f24 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f25 = VARYING3.yzx - (VARYING3.yzx * f24);
    vec4 f26 = texture(LightMapTexture, f25);
    vec4 f27 = texture(LightGridSkylightTexture, f25);
    vec4 f28 = vec4(clamp(f24, 0.0, 1.0));
    vec4 f29 = mix(f26, vec4(0.0), f28);
    vec4 f30 = mix(f27, vec4(1.0), f28);
    vec3 f31 = f29.xyz * (f29.w * 120.0);
    float f32 = f30.x;
    vec4 f33 = texture(ShadowMapTexture, f23.xy);
    float f34 = f23.z;
    vec3 f35 = f14 * f14;
    float f36 = length(VARYING4.xyz);
    vec3 f37 = VARYING4.xyz / vec3(f36);
    float f38 = 0.08900000154972076416015625 + (mix(f15, f16, vec4(clamp((f0 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0))).y * 0.9110000133514404296875);
    float f39 = CB0[26].w * f0;
    float f40 = max(9.9999997473787516355514526367188e-05, dot(f22, f37));
    vec3 f41 = reflect(-f37, f22);
    float f42 = f38 * 5.0;
    vec3 f43 = vec4(f41, f42).xyz;
    vec3 f44 = textureLod(PrefilteredEnvTexture, f43, f42).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f41.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f45 = textureLod(PrefilteredEnvIndoorTexture, f43, f42).xyz;
    vec3 f46;
    if (CB0[27].w == 0.0)
    {
        f46 = f45;
    }
    else
    {
        f46 = mix(f45, textureLod(PrefilteredEnvBlendTargetTexture, f43, f42).xyz, vec3(CB0[27].w));
    }
    vec4 f47 = texture(PrecomputedBRDFTexture, vec2(f38, f40));
    float f48 = CB0[9].w * CB0[9].w;
    vec3 f49 = -CB0[11].xyz;
    float f50 = (dot(f22, f49) * CB0[9].w) * ((1.0 - ((step(f33.x, f34) * clamp(CB0[24].z + (CB0[24].w * abs(f34 - 0.5)), 0.0, 1.0)) * f33.y)) * f30.y);
    vec3 f51 = normalize(f49 + f37);
    float f52 = clamp(f50, 0.0, 1.0);
    float f53 = f38 * f38;
    float f54 = max(0.001000000047497451305389404296875, dot(f22, f51));
    float f55 = dot(f49, f51);
    float f56 = 1.0 - f55;
    float f57 = f56 * f56;
    float f58 = (f57 * f57) * f56;
    vec3 f59 = vec3(f58) + (vec3(0.039999999105930328369140625) * (1.0 - f58));
    float f60 = f53 * f53;
    float f61 = (((f54 * f60) - f54) * f54) + 1.0;
    vec3 f62 = vec3(f32);
    vec3 f63 = mix(f31, f44, f62) * mix(vec3(1.0), f35, vec3(0.5));
    float f64 = f47.x;
    float f65 = f47.y;
    vec3 f66 = ((vec3(0.039999999105930328369140625) * f64) + vec3(f65)) / vec3(f64 + f65);
    vec3 f67 = f22 * f22;
    bvec3 f68 = lessThan(f22, vec3(0.0));
    vec3 f69 = vec3(f68.x ? f67.x : vec3(0.0).x, f68.y ? f67.y : vec3(0.0).y, f68.z ? f67.z : vec3(0.0).z);
    vec3 f70 = f67 - f69;
    float f71 = f70.x;
    float f72 = f70.y;
    float f73 = f70.z;
    float f74 = f69.x;
    float f75 = f69.y;
    float f76 = f69.z;
    float f77 = 1.0 - f40;
    vec4 f78 = mix(vec4(mix((((((((vec3(1.0) - (f59 * f39)) * CB0[10].xyz) * f52) + (CB0[12].xyz * clamp(-f50, 0.0, 1.0))) + (f31 * f18)) + (((vec3(1.0) - (f66 * f39)) * (((((((CB0[35].xyz * f71) + (CB0[37].xyz * f72)) + (CB0[39].xyz * f73)) + (CB0[36].xyz * f74)) + (CB0[38].xyz * f75)) + (CB0[40].xyz * f76)) + (((((((CB0[29].xyz * f71) + (CB0[31].xyz * f72)) + (CB0[33].xyz * f73)) + (CB0[30].xyz * f74)) + (CB0[32].xyz * f75)) + (CB0[34].xyz * f76)) * f32))) * f18)) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f32))) * (f35 * f18), f63, vec3(VARYING7.w)) * f18, f18), vec4(f63, 1.0), vec4(((f77 * f77) * 0.800000011920928955078125) * clamp(f17, 0.0, 1.0))) + vec4((((f59 * (((f60 + (f60 * f60)) / (((f61 * f61) * ((f55 * 3.0) + 0.5)) * ((f54 * 0.75) + 0.25))) * f52)) * CB0[10].xyz) * f48) + ((((mix(f46, f44, f62) * f66) * f39) * f48) * f18), 0.0);
    float f79 = clamp(exp2((CB0[13].z * f36) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f80 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f79) * 5.0).xyz;
    bvec3 f81 = bvec3(!(CB0[13].w == 0.0));
    vec3 f82 = mix(vec3(f81.x ? CB0[14].xyz.x : f80.x, f81.y ? CB0[14].xyz.y : f80.y, f81.z ? CB0[14].xyz.z : f80.z), f78.xyz, vec3(f79));
    vec4 f83 = f78;
    f83.x = f82.x;
    vec4 f84 = f83;
    f84.y = f82.y;
    vec4 f85 = f84;
    f85.z = f82.z;
    vec4 f86 = f85;
    f86.w = 1.0 - ((1.0 - f78.w) * f79);
    vec3 f87 = sqrt(clamp(f86.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f88 = f86;
    f88.x = f87.x;
    vec4 f89 = f88;
    f89.y = f87.y;
    vec4 f90 = f89;
    f90.z = f87.z;
    _entryPointOutput = f90;
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
