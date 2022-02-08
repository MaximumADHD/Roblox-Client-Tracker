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
    float f13 = VARYING2.w * 2.0;
    float f14 = clamp((f13 - 1.0) + f9, 0.0, 1.0);
    float f15 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f16 = VARYING6.xyz * f15;
    vec3 f17 = VARYING5.xyz * f15;
    vec3 f18 = normalize(((f16 * f8.x) + (cross(f17, f16) * f8.y)) + (f17 * (f6 * 10.0)));
    vec3 f19 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f20 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f21 = VARYING3.yzx - (VARYING3.yzx * f20);
    vec4 f22 = texture(LightMapTexture, f21);
    vec4 f23 = texture(LightGridSkylightTexture, f21);
    vec4 f24 = vec4(clamp(f20, 0.0, 1.0));
    vec4 f25 = mix(f22, vec4(0.0), f24);
    vec4 f26 = mix(f23, vec4(1.0), f24);
    vec3 f27 = (f25.xyz * (f25.w * 120.0)).xyz;
    float f28 = f26.x;
    vec4 f29 = texture(ShadowMapTexture, f19.xy);
    float f30 = f19.z;
    vec3 f31 = f10 * f10;
    float f32 = length(VARYING4.xyz);
    vec3 f33 = VARYING4.xyz / vec3(f32);
    float f34 = 0.08900000154972076416015625 + (mix(f11, f12, vec4(clamp((f0 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0))).y * 0.9110000133514404296875);
    float f35 = CB0[26].w * f0;
    float f36 = max(9.9999997473787516355514526367188e-05, dot(f18, f33));
    vec3 f37 = reflect(-f33, f18);
    float f38 = f34 * 5.0;
    vec3 f39 = vec4(f37, f38).xyz;
    vec3 f40 = textureLod(PrefilteredEnvTexture, f39, f38).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f37.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f41 = textureLod(PrefilteredEnvIndoorTexture, f39, f38).xyz;
    vec3 f42;
    if (CB0[27].w == 0.0)
    {
        f42 = f41;
    }
    else
    {
        f42 = mix(f41, textureLod(PrefilteredEnvBlendTargetTexture, f39, f38).xyz, vec3(CB0[27].w));
    }
    vec4 f43 = texture(PrecomputedBRDFTexture, vec2(f34, f36));
    vec3 f44 = -CB0[11].xyz;
    float f45 = dot(f18, f44) * ((1.0 - ((step(f29.x, f30) * clamp(CB0[24].z + (CB0[24].w * abs(f30 - 0.5)), 0.0, 1.0)) * f29.y)) * f26.y);
    vec3 f46 = normalize(f44 + f33);
    float f47 = clamp(f45, 0.0, 1.0);
    float f48 = f34 * f34;
    float f49 = max(0.001000000047497451305389404296875, dot(f18, f46));
    float f50 = dot(f44, f46);
    float f51 = 1.0 - f50;
    float f52 = f51 * f51;
    float f53 = (f52 * f52) * f51;
    vec3 f54 = vec3(f53) + (vec3(0.039999999105930328369140625) * (1.0 - f53));
    float f55 = f48 * f48;
    float f56 = (((f49 * f55) - f49) * f49) + 1.0;
    vec3 f57 = vec3(f28);
    vec3 f58 = mix(f27, f40, f57) * mix(vec3(1.0), f31, vec3(0.5));
    float f59 = f43.x;
    float f60 = f43.y;
    vec3 f61 = ((vec3(0.039999999105930328369140625) * f59) + vec3(f60)) / vec3(f59 + f60);
    vec3 f62 = f18 * f18;
    bvec3 f63 = lessThan(f18, vec3(0.0));
    vec3 f64 = vec3(f63.x ? f62.x : vec3(0.0).x, f63.y ? f62.y : vec3(0.0).y, f63.z ? f62.z : vec3(0.0).z);
    vec3 f65 = f62 - f64;
    float f66 = f65.x;
    float f67 = f65.y;
    float f68 = f65.z;
    float f69 = f64.x;
    float f70 = f64.y;
    float f71 = f64.z;
    float f72 = 1.0 - f36;
    vec4 f73 = mix(vec4(mix((((((((vec3(1.0) - (f54 * f35)) * CB0[10].xyz) * f47) + (CB0[12].xyz * clamp(-f45, 0.0, 1.0))) + (f27 * f14)) + (((vec3(1.0) - (f61 * f35)) * (((((((CB0[35].xyz * f66) + (CB0[37].xyz * f67)) + (CB0[39].xyz * f68)) + (CB0[36].xyz * f69)) + (CB0[38].xyz * f70)) + (CB0[40].xyz * f71)) + (((((((CB0[29].xyz * f66) + (CB0[31].xyz * f67)) + (CB0[33].xyz * f68)) + (CB0[30].xyz * f69)) + (CB0[32].xyz * f70)) + (CB0[34].xyz * f71)) * f28))) * f14)) + (CB0[27].xyz + (CB0[28].xyz * f28))) * (f31 * f14), f58, vec3(VARYING7.w)) * f14, f14), vec4(f58, 1.0), vec4(((f72 * f72) * 0.800000011920928955078125) * clamp(f13, 0.0, 1.0))) + vec4(((f54 * (((f55 + (f55 * f55)) / (((f56 * f56) * ((f50 * 3.0) + 0.5)) * ((f49 * 0.75) + 0.25))) * f47)) * CB0[10].xyz) + (((mix(f42, f40, f57) * f61) * f35) * f14), 0.0);
    float f74 = clamp(exp2((CB0[13].z * f32) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f75 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f74) * 5.0).xyz;
    bvec3 f76 = bvec3(!(CB0[13].w == 0.0));
    vec3 f77 = mix(vec3(f76.x ? CB0[14].xyz.x : f75.x, f76.y ? CB0[14].xyz.y : f75.y, f76.z ? CB0[14].xyz.z : f75.z), f73.xyz, vec3(f74));
    vec4 f78 = vec4(f77.x, f77.y, f77.z, f73.w);
    f78.w = 1.0 - ((1.0 - f73.w) * f74);
    vec3 f79 = sqrt(clamp(f78.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f79.x, f79.y, f79.z, f78.w);
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
