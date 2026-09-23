#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <PartMaterialConsts.h>
uniform vec4 CB0[61];
uniform vec4 CB2[5];
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
    vec2 f0 = clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0));
    vec2 f1 = VARYING0 * CB2[0].x;
    float f2 = f0.y;
    vec4 f3 = texture(DiffuseMapTexture, f1);
    vec4 f4 = texture(NormalMapTexture, f1);
    vec2 f5 = f4.wy * 2.0;
    vec2 f6 = f5 - vec2(1.0);
    float f7 = sqrt(clamp(1.0 + dot(vec2(1.0) - f5, f6), 0.0, 1.0));
    vec3 f8 = vec3(f6, f7);
    vec2 f9 = f8.xy + (vec3((texture(NormalDetailMapTexture, f1 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f10 = f8;
    f10.x = f9.x;
    vec3 f11 = f10;
    f11.y = f9.y;
    vec2 f12 = f11.xy * f2;
    vec3 f13 = (VARYING2.xyz * f3.xyz) * 1.0;
    vec4 f14 = texture(SpecularMapTexture, f1 * CB2[1].w);
    vec4 f15 = texture(SpecularMapTexture, f1);
    float f16 = VARYING2.w * 2.0;
    float f17 = clamp((f16 - 1.0) + f3.w, 0.0, 1.0);
    float f18 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f19 = VARYING6.xyz * f18;
    vec3 f20 = VARYING5.xyz * f18;
    vec3 f21 = normalize(((f19 * f12.x) + (cross(f20, f19) * f12.y)) + (f20 * (f7 * 10.0)));
    vec3 f22 = f13 * f13;
    float f23 = length(VARYING4.xyz);
    vec3 f24 = VARYING4.xyz / vec3(f23);
    float f25 = 0.08900000154972076416015625 + (mix(f14, f15, vec4(clamp((f2 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0))).y * 0.9110000133514404296875);
    float f26 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    vec3 f27 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f28 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f29 = VARYING3.yzx - (VARYING3.yzx * f28);
    vec4 f30 = texture(LightMapTexture, f29);
    vec4 f31 = texture(LightGridSkylightTexture, f29);
    vec4 f32 = vec4(clamp(f28, 0.0, 1.0));
    vec4 f33 = mix(f30, vec4(0.0), f32);
    vec4 f34 = mix(f31, vec4(1.0), f32);
    vec3 f35 = f33.xyz * (f33.w * 120.0);
    float f36 = f34.x;
    vec4 f37 = texture(ShadowMapTexture, f27.xy);
    float f38 = f27.z;
    float f39 = max(9.9999997473787516355514526367188e-05, dot(f21, f24));
    float f40 = 1.0 - f39;
    vec3 f41 = reflect(-f24, f21);
    float f42 = f25 * 5.0;
    bool f43 = !(CB0[58].x == 2.0);
    mat3 f44 = mat3(vec3(CB0[58].xyz), vec3(CB0[59].xyz), vec3(CB0[60].xyz));
    vec3 f45 = f44 * f41;
    bvec3 f46 = bvec3(f43);
    vec3 f47 = textureLod(PrefilteredEnvTexture, vec4(vec3(f46.x ? f45.x : f41.x, f46.y ? f45.y : f41.y, f46.z ? f45.z : f41.z), f42).xyz, f42).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f41.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f48 = vec4(f41, f42).xyz;
    vec3 f49 = textureLod(PrefilteredEnvIndoorTexture, f48, f42).xyz;
    vec3 f50;
    if (CB0[32].w == 0.0)
    {
        f50 = f49;
    }
    else
    {
        f50 = mix(f49, textureLod(PrefilteredEnvBlendTargetTexture, f48, f42).xyz, vec3(CB0[32].w));
    }
    vec4 f51 = texture(PrecomputedBRDFTexture, vec2(f25, f39));
    float f52 = f51.x;
    float f53 = f51.y;
    vec3 f54 = ((vec3(0.039999999105930328369140625) * f52) + vec3(f53)) / vec3(f52 + f53);
    vec3 f55 = f21 * f21;
    bvec3 f56 = lessThan(f21, vec3(0.0));
    vec3 f57 = vec3(f56.x ? f55.x : vec3(0.0).x, f56.y ? f55.y : vec3(0.0).y, f56.z ? f55.z : vec3(0.0).z);
    vec3 f58 = f55 - f57;
    float f59 = f58.x;
    float f60 = f58.y;
    float f61 = f58.z;
    float f62 = f57.x;
    float f63 = f57.y;
    float f64 = f57.z;
    vec3 f65 = vec3(f36);
    vec3 f66 = -CB0[16].xyz;
    float f67 = dot(f21, f66) * ((1.0 - ((step(f37.x, f38) * clamp(CB0[29].z + (CB0[29].w * abs(f38 - 0.5)), 0.0, 1.0)) * f37.y)) * f34.y);
    vec3 f68 = normalize(f24 + f66);
    float f69 = clamp(f67, 0.0, 1.0);
    float f70 = f25 * f25;
    float f71 = max(0.001000000047497451305389404296875, dot(f21, f68));
    float f72 = dot(f66, f68);
    float f73 = 1.0 - f72;
    float f74 = f73 * f73;
    float f75 = (f74 * f74) * f73;
    vec3 f76 = vec3(f75) + (vec3(0.039999999105930328369140625) * (1.0 - f75));
    float f77 = f70 * f70;
    float f78 = (((f71 * f77) - f71) * f71) + 1.0;
    vec3 f79 = mix(f35, f47, f65) * mix(vec3(1.0), f22, vec3(0.5));
    vec4 f80 = mix(vec4(mix((((((((vec3(1.0) - (f54 * f26)) * (((((((CB0[40].xyz * f59) + (CB0[42].xyz * f60)) + (CB0[44].xyz * f61)) + (CB0[41].xyz * f62)) + (CB0[43].xyz * f63)) + (CB0[45].xyz * f64)) + (((((((CB0[34].xyz * f59) + (CB0[36].xyz * f60)) + (CB0[38].xyz * f61)) + (CB0[35].xyz * f62)) + (CB0[37].xyz * f63)) + (CB0[39].xyz * f64)) * f36))) * f17) + (CB0[32].xyz + (CB0[33].xyz * f36))) + ((((vec3(1.0) - (f76 * f26)) * CB0[15].xyz) * f69) + (CB0[17].xyz * clamp(-f67, 0.0, 1.0)))) + f35) * f22) * f17, f79, vec3(VARYING7.w)) * f17, f17), vec4(f79, 1.0), vec4(((f40 * f40) * 0.800000011920928955078125) * clamp(f16, 0.0, 1.0))) + vec4((((mix(f50, f47, f65) * f54) * f26) * f17) + (((f76 * (((f77 + (f77 * f77)) / (((f78 * f78) * ((f72 * 3.0) + 0.5)) * ((f71 * 0.75) + 0.25))) * f69)) * CB0[15].xyz) * 1.0), 0.0);
    float f81 = clamp(exp2((CB0[18].z * f23) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f82 = f44 * f24;
    bvec3 f83 = bvec3(f43 && (!(CB0[58].w == 0.0)));
    vec3 f84 = textureLod(PrefilteredEnvTexture, vec4(-vec3(f83.x ? f82.x : f24.x, f83.y ? f82.y : f24.y, f83.z ? f82.z : f24.z), 0.0).xyz, max(CB0[18].y, f81) * 5.0).xyz;
    bvec3 f85 = bvec3(!(CB0[18].w == 0.0));
    vec3 f86 = mix(vec3(f85.x ? CB0[19].xyz.x : f84.x, f85.y ? CB0[19].xyz.y : f84.y, f85.z ? CB0[19].xyz.z : f84.z), f80.xyz, vec3(f81));
    vec4 f87 = f80;
    f87.x = f86.x;
    vec4 f88 = f87;
    f88.y = f86.y;
    vec4 f89 = f88;
    f89.z = f86.z;
    vec4 f90 = f89;
    f90.w = 1.0 - ((1.0 - f80.w) * f81);
    vec3 f91 = sqrt(clamp(f90.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f92 = f90;
    f92.x = f91.x;
    vec4 f93 = f92;
    f93.y = f91.y;
    vec4 f94 = f93;
    f94.z = f91.z;
    _entryPointOutput = f94;
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
