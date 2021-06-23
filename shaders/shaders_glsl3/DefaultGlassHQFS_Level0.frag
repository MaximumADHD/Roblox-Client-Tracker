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
    vec2 f3 = texture(NormalMapTexture, f1).wy * 2.0;
    vec2 f4 = f3 - vec2(1.0);
    float f5 = sqrt(clamp(1.0 + dot(vec2(1.0) - f3, f4), 0.0, 1.0));
    vec2 f6 = (vec3(f4, f5).xy + (vec3((texture(NormalDetailMapTexture, f1 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f0;
    float f7 = f2.w;
    vec3 f8 = (mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f7 + CB2[2].w, 0.0, 1.0))) * f2.xyz) * (1.0 + (f6.x * CB2[0].z));
    vec4 f9 = mix(texture(SpecularMapTexture, f1 * CB2[1].w), texture(SpecularMapTexture, f1), vec4(clamp((f0 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0)));
    float f10 = f9.y;
    float f11 = VARYING2.w * 2.0;
    float f12 = clamp((f11 - 1.0) + f7, 0.0, 1.0);
    float f13 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f14 = VARYING6.xyz * f13;
    vec3 f15 = VARYING5.xyz * f13;
    vec3 f16 = normalize(((f14 * f6.x) + (cross(f15, f14) * f6.y)) + (f15 * (f5 * 10.0)));
    vec3 f17 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f18 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f19 = VARYING3.yzx - (VARYING3.yzx * f18);
    vec4 f20 = vec4(clamp(f18, 0.0, 1.0));
    vec4 f21 = mix(texture(LightMapTexture, f19), vec4(0.0), f20);
    vec4 f22 = mix(texture(LightGridSkylightTexture, f19), vec4(1.0), f20);
    vec3 f23 = (f21.xyz * (f21.w * 120.0)).xyz;
    float f24 = f22.x;
    vec4 f25 = texture(ShadowMapTexture, f17.xy);
    float f26 = f17.z;
    vec3 f27 = f8 * f8;
    float f28 = length(VARYING4.xyz);
    vec3 f29 = VARYING4.xyz / vec3(f28);
    vec3 f30 = f27 * f12;
    float f31 = CB0[26].w * f0;
    float f32 = max(9.9999997473787516355514526367188e-05, dot(f16, f29));
    vec3 f33 = reflect(-f29, f16);
    float f34 = f10 * 5.0;
    vec3 f35 = vec4(f33, f34).xyz;
    vec3 f36 = textureLod(PrefilteredEnvTexture, f35, f34).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f33.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec4 f37 = texture(PrecomputedBRDFTexture, vec2(f10, f32));
    vec3 f38 = -CB0[11].xyz;
    float f39 = dot(f16, f38) * ((1.0 - ((step(f25.x, f26) * clamp(CB0[24].z + (CB0[24].w * abs(f26 - 0.5)), 0.0, 1.0)) * f25.y)) * f22.y);
    vec3 f40 = normalize(f38 + f29);
    float f41 = clamp(f39, 0.0, 1.0);
    float f42 = f10 * f10;
    float f43 = max(0.001000000047497451305389404296875, dot(f16, f40));
    float f44 = dot(f38, f40);
    float f45 = 1.0 - f44;
    float f46 = f45 * f45;
    float f47 = (f46 * f46) * f45;
    vec3 f48 = vec3(f47) + (vec3(0.039999999105930328369140625) * (1.0 - f47));
    float f49 = f42 * f42;
    float f50 = (((f43 * f49) - f43) * f43) + 1.0;
    vec3 f51 = vec3(f24);
    vec3 f52 = mix(f23, f36, f51) * mix(vec3(1.0), f27, vec3(0.5));
    float f53 = f37.x;
    float f54 = f37.y;
    vec3 f55 = ((vec3(0.039999999105930328369140625) * f53) + vec3(f54)) / vec3(f53 + f54);
    vec3 f56 = f55 * f31;
    vec3 f57 = f16 * f16;
    bvec3 f58 = lessThan(f16, vec3(0.0));
    vec3 f59 = vec3(f58.x ? f57.x : vec3(0.0).x, f58.y ? f57.y : vec3(0.0).y, f58.z ? f57.z : vec3(0.0).z);
    vec3 f60 = f57 - f59;
    float f61 = f60.x;
    float f62 = f60.y;
    float f63 = f60.z;
    float f64 = f59.x;
    float f65 = f59.y;
    float f66 = f59.z;
    vec3 f67 = (mix(textureLod(PrefilteredEnvIndoorTexture, f35, f34).xyz * f23, f36, f51) * f55) * f31;
    float f68 = 1.0 - f32;
    vec4 f69 = mix(vec4(mix((((((((vec3(1.0) - (f48 * f31)) * CB0[10].xyz) * f41) + (CB0[12].xyz * clamp(-f39, 0.0, 1.0))) + (((vec3(1.0) - f56) * (((((((CB0[35].xyz * f61) + (CB0[37].xyz * f62)) + (CB0[39].xyz * f63)) + (CB0[36].xyz * f64)) + (CB0[38].xyz * f65)) + (CB0[40].xyz * f66)) + (((((((CB0[29].xyz * f61) + (CB0[31].xyz * f62)) + (CB0[33].xyz * f63)) + (CB0[30].xyz * f64)) + (CB0[32].xyz * f65)) + (CB0[34].xyz * f66)) * f24))) * f12)) + (CB0[27].xyz + (CB0[28].xyz * f24))) * f30) + ((f23 * mix(f30, f67 * (1.0 / (max(max(f67.x, f67.y), f67.z) + 0.00999999977648258209228515625)), f56 * (f31 * (1.0 - f24)))) * f12), f52, vec3(VARYING7.w)) * f12, f12), vec4(f52, 1.0), vec4(((f68 * f68) * 0.800000011920928955078125) * clamp(f11, 0.0, 1.0))) + vec4(((f48 * (((f49 + (f49 * f49)) / (((f50 * f50) * ((f44 * 3.0) + 0.5)) * ((f43 * 0.75) + 0.25))) * f41)) * CB0[10].xyz) + (f67 * f12), 0.0);
    float f70 = clamp(exp2((CB0[13].z * f28) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f71 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f70) * 5.0).xyz;
    bvec3 f72 = bvec3(CB0[13].w != 0.0);
    vec3 f73 = mix(vec3(f72.x ? CB0[14].xyz.x : f71.x, f72.y ? CB0[14].xyz.y : f71.y, f72.z ? CB0[14].xyz.z : f71.z), f69.xyz, vec3(f70));
    vec4 f74 = vec4(f73.x, f73.y, f73.z, f69.w);
    f74.w = 1.0 - ((1.0 - f69.w) * f70);
    vec3 f75 = sqrt(clamp(f74.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f75.x, f75.y, f75.z, f74.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$SpecularMapTexture=s5
