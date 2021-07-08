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
    vec4 f7 = texture(NormalDetailMapTexture, f1 * CB2[0].w);
    vec2 f8 = (vec3(f5, f6).xy + (vec3((f7.wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f0;
    float f9 = f2.w;
    vec3 f10 = (mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f9 + CB2[2].w, 0.0, 1.0))) * f2.xyz) * (1.0 + (f8.x * CB2[0].z));
    vec4 f11 = texture(SpecularMapTexture, f1 * CB2[1].w);
    vec4 f12 = texture(SpecularMapTexture, f1);
    vec4 f13 = mix(f11, f12, vec4(clamp((f0 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0)));
    float f14 = f13.y;
    float f15 = VARYING2.w * 2.0;
    float f16 = clamp((f15 - 1.0) + f9, 0.0, 1.0);
    float f17 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f18 = VARYING6.xyz * f17;
    vec3 f19 = VARYING5.xyz * f17;
    vec3 f20 = normalize(((f18 * f8.x) + (cross(f19, f18) * f8.y)) + (f19 * (f6 * 10.0)));
    vec3 f21 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f22 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f23 = VARYING3.yzx - (VARYING3.yzx * f22);
    vec4 f24 = texture(LightMapTexture, f23);
    vec4 f25 = texture(LightGridSkylightTexture, f23);
    vec4 f26 = vec4(clamp(f22, 0.0, 1.0));
    vec4 f27 = mix(f24, vec4(0.0), f26);
    vec4 f28 = mix(f25, vec4(1.0), f26);
    vec3 f29 = (f27.xyz * (f27.w * 120.0)).xyz;
    float f30 = f28.x;
    vec4 f31 = texture(ShadowMapTexture, f21.xy);
    float f32 = f21.z;
    vec3 f33 = f10 * f10;
    float f34 = length(VARYING4.xyz);
    vec3 f35 = VARYING4.xyz / vec3(f34);
    float f36 = CB0[26].w * f0;
    float f37 = max(9.9999997473787516355514526367188e-05, dot(f20, f35));
    vec3 f38 = reflect(-f35, f20);
    float f39 = f14 * 5.0;
    vec3 f40 = vec4(f38, f39).xyz;
    vec3 f41 = textureLod(PrefilteredEnvTexture, f40, f39).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f38.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f42 = textureLod(PrefilteredEnvIndoorTexture, f40, f39).xyz;
    vec3 f43;
    if (CB0[27].w == 0.0)
    {
        f43 = f42;
    }
    else
    {
        f43 = mix(f42, textureLod(PrefilteredEnvBlendTargetTexture, f40, f39).xyz, vec3(CB0[27].w));
    }
    vec4 f44 = texture(PrecomputedBRDFTexture, vec2(f14, f37));
    vec3 f45 = -CB0[11].xyz;
    float f46 = dot(f20, f45) * ((1.0 - ((step(f31.x, f32) * clamp(CB0[24].z + (CB0[24].w * abs(f32 - 0.5)), 0.0, 1.0)) * f31.y)) * f28.y);
    vec3 f47 = normalize(f45 + f35);
    float f48 = clamp(f46, 0.0, 1.0);
    float f49 = f14 * f14;
    float f50 = max(0.001000000047497451305389404296875, dot(f20, f47));
    float f51 = dot(f45, f47);
    float f52 = 1.0 - f51;
    float f53 = f52 * f52;
    float f54 = (f53 * f53) * f52;
    vec3 f55 = vec3(f54) + (vec3(0.039999999105930328369140625) * (1.0 - f54));
    float f56 = f49 * f49;
    float f57 = (((f50 * f56) - f50) * f50) + 1.0;
    vec3 f58 = vec3(f30);
    vec3 f59 = mix(f29, f41, f58) * mix(vec3(1.0), f33, vec3(0.5));
    float f60 = f44.x;
    float f61 = f44.y;
    vec3 f62 = ((vec3(0.039999999105930328369140625) * f60) + vec3(f61)) / vec3(f60 + f61);
    vec3 f63 = f20 * f20;
    bvec3 f64 = lessThan(f20, vec3(0.0));
    vec3 f65 = vec3(f64.x ? f63.x : vec3(0.0).x, f64.y ? f63.y : vec3(0.0).y, f64.z ? f63.z : vec3(0.0).z);
    vec3 f66 = f63 - f65;
    float f67 = f66.x;
    float f68 = f66.y;
    float f69 = f66.z;
    float f70 = f65.x;
    float f71 = f65.y;
    float f72 = f65.z;
    float f73 = 1.0 - f37;
    vec4 f74 = mix(vec4(mix((((((((vec3(1.0) - (f55 * f36)) * CB0[10].xyz) * f48) + (CB0[12].xyz * clamp(-f46, 0.0, 1.0))) + (f29 * f16)) + (((vec3(1.0) - (f62 * f36)) * (((((((CB0[35].xyz * f67) + (CB0[37].xyz * f68)) + (CB0[39].xyz * f69)) + (CB0[36].xyz * f70)) + (CB0[38].xyz * f71)) + (CB0[40].xyz * f72)) + (((((((CB0[29].xyz * f67) + (CB0[31].xyz * f68)) + (CB0[33].xyz * f69)) + (CB0[30].xyz * f70)) + (CB0[32].xyz * f71)) + (CB0[34].xyz * f72)) * f30))) * f16)) + (CB0[27].xyz + (CB0[28].xyz * f30))) * (f33 * f16), f59, vec3(VARYING7.w)) * f16, f16), vec4(f59, 1.0), vec4(((f73 * f73) * 0.800000011920928955078125) * clamp(f15, 0.0, 1.0))) + vec4(((f55 * (((f56 + (f56 * f56)) / (((f57 * f57) * ((f51 * 3.0) + 0.5)) * ((f50 * 0.75) + 0.25))) * f48)) * CB0[10].xyz) + (((mix(f43, f41, f58) * f62) * f36) * f16), 0.0);
    float f75 = clamp(exp2((CB0[13].z * f34) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f76 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f75) * 5.0).xyz;
    bvec3 f77 = bvec3(CB0[13].w != 0.0);
    vec3 f78 = mix(vec3(f77.x ? CB0[14].xyz.x : f76.x, f77.y ? CB0[14].xyz.y : f76.y, f77.z ? CB0[14].xyz.z : f76.z), f74.xyz, vec3(f75));
    vec4 f79 = vec4(f78.x, f78.y, f78.z, f74.w);
    f79.w = 1.0 - ((1.0 - f74.w) * f75);
    vec3 f80 = sqrt(clamp(f79.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f80.x, f80.y, f80.z, f79.w);
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
