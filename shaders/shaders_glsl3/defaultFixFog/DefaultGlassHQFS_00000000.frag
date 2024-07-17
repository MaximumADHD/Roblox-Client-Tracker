#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[58];
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
    float f13 = f12.x;
    vec3 f14 = (VARYING2.xyz * f3.xyz) * (1.0 + (f13 * 0.20000000298023223876953125));
    vec4 f15 = texture(SpecularMapTexture, f1 * CB2[1].w);
    vec4 f16 = texture(SpecularMapTexture, f1);
    float f17 = VARYING2.w * 2.0;
    float f18 = clamp((f17 - 1.0) + f3.w, 0.0, 1.0);
    float f19 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f20 = VARYING6.xyz * f19;
    vec3 f21 = VARYING5.xyz * f19;
    vec3 f22 = normalize(((f20 * f13) + (cross(f21, f20) * f12.y)) + (f21 * (f7 * 10.0)));
    vec3 f23 = f14 * f14;
    float f24 = length(VARYING4.xyz);
    vec3 f25 = VARYING4.xyz / vec3(f24);
    float f26 = 0.08900000154972076416015625 + (mix(f15, f16, vec4(clamp((f2 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0))).y * 0.9110000133514404296875);
    float f27 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f28 = max(9.9999997473787516355514526367188e-05, dot(f22, f25));
    vec3 f29 = -f25;
    vec3 f30 = reflect(f29, f22);
    float f31 = f26 * 5.0;
    vec3 f32 = vec4(f30, f31).xyz;
    vec3 f33 = textureLod(PrefilteredEnvTexture, f32, f31).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f30.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f34 = textureLod(PrefilteredEnvIndoorTexture, f32, f31).xyz;
    vec3 f35;
    if (CB0[32].w == 0.0)
    {
        f35 = f34;
    }
    else
    {
        f35 = mix(f34, textureLod(PrefilteredEnvBlendTargetTexture, f32, f31).xyz, vec3(CB0[32].w));
    }
    vec4 f36 = texture(PrecomputedBRDFTexture, vec2(f26, f28));
    vec3 f37 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f38 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f39 = VARYING3.yzx - (VARYING3.yzx * f38);
    vec4 f40 = vec4(clamp(f38, 0.0, 1.0));
    vec4 f41 = mix(texture(LightMapTexture, f39), vec4(0.0), f40);
    vec4 f42 = mix(texture(LightGridSkylightTexture, f39), vec4(1.0), f40);
    vec3 f43 = f41.xyz * (f41.w * 120.0);
    float f44 = f42.x;
    vec4 f45 = texture(ShadowMapTexture, f37.xy);
    float f46 = f37.z;
    vec3 f47 = vec3(f44);
    vec3 f48 = mix(f43, f33, f47) * mix(vec3(1.0), f23, vec3(0.5));
    vec3 f49 = -CB0[16].xyz;
    float f50 = dot(f22, f49) * ((1.0 - ((step(f45.x, f46) * clamp(CB0[29].z + (CB0[29].w * abs(f46 - 0.5)), 0.0, 1.0)) * f45.y)) * f42.y);
    vec3 f51 = normalize(f25 + f49);
    float f52 = clamp(f50, 0.0, 1.0);
    float f53 = f26 * f26;
    float f54 = max(0.001000000047497451305389404296875, dot(f22, f51));
    float f55 = dot(f49, f51);
    float f56 = 1.0 - f55;
    float f57 = f56 * f56;
    float f58 = (f57 * f57) * f56;
    vec3 f59 = vec3(f58) + (vec3(0.039999999105930328369140625) * (1.0 - f58));
    float f60 = f53 * f53;
    float f61 = (((f54 * f60) - f54) * f54) + 1.0;
    float f62 = f36.x;
    float f63 = f36.y;
    vec3 f64 = ((vec3(0.039999999105930328369140625) * f62) + vec3(f63)) / vec3(f62 + f63);
    vec3 f65 = f22 * f22;
    bvec3 f66 = lessThan(f22, vec3(0.0));
    vec3 f67 = vec3(f66.x ? f65.x : vec3(0.0).x, f66.y ? f65.y : vec3(0.0).y, f66.z ? f65.z : vec3(0.0).z);
    vec3 f68 = f65 - f67;
    float f69 = f68.x;
    float f70 = f68.y;
    float f71 = f68.z;
    float f72 = f67.x;
    float f73 = f67.y;
    float f74 = f67.z;
    float f75 = 1.0 - f28;
    vec4 f76 = mix(vec4(mix(((((f43 * f18) + ((((vec3(1.0) - (f59 * f27)) * CB0[15].xyz) * f52) + (CB0[17].xyz * clamp(-f50, 0.0, 1.0)))) + (((vec3(1.0) - (f64 * f27)) * ((((((((CB0[40].xyz * f69) + (CB0[42].xyz * f70)) + (CB0[44].xyz * f71)) + (CB0[41].xyz * f72)) + (CB0[43].xyz * f73)) + (CB0[45].xyz * f74)) * CB0[30].w) + ((((((((CB0[34].xyz * f69) + (CB0[36].xyz * f70)) + (CB0[38].xyz * f71)) + (CB0[35].xyz * f72)) + (CB0[37].xyz * f73)) + (CB0[39].xyz * f74)) * CB0[30].w) * f44))) * f18)) + (CB0[32].xyz + (CB0[33].xyz * f44))) * (f23 * f18), f48, vec3(VARYING7.w)) * f18, f18), vec4(f48, 1.0), vec4(((f75 * f75) * 0.800000011920928955078125) * clamp(f17, 0.0, 1.0))) + vec4((((f59 * (((f60 + (f60 * f60)) / (((f61 * f61) * ((f55 * 3.0) + 0.5)) * ((f54 * 0.75) + 0.25))) * f52)) * CB0[15].xyz) * 1.0) + (((mix(f35, f33, f47) * f64) * f27) * f18), 0.0);
    float f77 = clamp(exp2((CB0[18].z * f24) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f78 = textureLod(PrefilteredEnvTexture, vec4(f29, 0.0).xyz, max(CB0[18].y, f77) * 5.0).xyz;
    bvec3 f79 = bvec3(!(CB0[18].w == 0.0));
    vec3 f80 = mix(vec3(f79.x ? CB0[19].xyz.x : f78.x, f79.y ? CB0[19].xyz.y : f78.y, f79.z ? CB0[19].xyz.z : f78.z), f76.xyz, vec3(f77));
    vec4 f81 = f76;
    f81.x = f80.x;
    vec4 f82 = f81;
    f82.y = f80.y;
    vec4 f83 = f82;
    f83.z = f80.z;
    vec4 f84 = f83;
    f84.w = 1.0 - ((1.0 - f76.w) * f77);
    vec3 f85 = sqrt(clamp(f84.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f86 = f84;
    f86.x = f85.x;
    vec4 f87 = f86;
    f87.y = f85.y;
    vec4 f88 = f87;
    f88.z = f85.z;
    _entryPointOutput = f88;
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
