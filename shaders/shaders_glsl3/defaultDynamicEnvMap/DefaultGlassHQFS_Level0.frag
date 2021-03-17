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
    vec2 f0 = VARYING1;
    f0.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float f1 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec2 f2 = VARYING0 * CB2[0].x;
    vec4 f3 = texture(DiffuseMapTexture, f2);
    vec4 f4 = texture(NormalMapTexture, f2);
    vec2 f5 = f4.wy * 2.0;
    vec2 f6 = f5 - vec2(1.0);
    float f7 = sqrt(clamp(1.0 + dot(vec2(1.0) - f5, f6), 0.0, 1.0));
    vec4 f8 = texture(NormalDetailMapTexture, f2 * CB2[0].w);
    vec2 f9 = (vec3(f6, f7).xy + (vec3((f8.wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f1;
    float f10 = f3.w;
    vec4 f11 = texture(StudsMapTexture, f0);
    vec3 f12 = ((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f10 + CB2[2].w, 0.0, 1.0))) * f3.xyz) * (1.0 + (f9.x * CB2[0].z))) * (f11.x * 2.0);
    vec4 f13 = texture(SpecularMapTexture, f2 * CB2[1].w);
    vec4 f14 = texture(SpecularMapTexture, f2);
    vec4 f15 = mix(f13, f14, vec4(clamp((f1 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0)));
    float f16 = f15.y;
    float f17 = VARYING2.w * 2.0;
    float f18 = clamp((f17 - 1.0) + f10, 0.0, 1.0);
    float f19 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f20 = VARYING6.xyz * f19;
    vec3 f21 = VARYING5.xyz * f19;
    vec3 f22 = normalize(((f20 * f9.x) + (cross(f21, f20) * f9.y)) + (f21 * (f7 * 10.0)));
    vec3 f23 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f24 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f25 = VARYING3.yzx - (VARYING3.yzx * f24);
    vec4 f26 = texture(LightMapTexture, f25);
    vec4 f27 = texture(LightGridSkylightTexture, f25);
    vec4 f28 = vec4(clamp(f24, 0.0, 1.0));
    vec4 f29 = mix(f26, vec4(0.0), f28);
    vec4 f30 = mix(f27, vec4(1.0), f28);
    vec3 f31 = (f29.xyz * (f29.w * 120.0)).xyz;
    float f32 = f30.x;
    vec4 f33 = texture(ShadowMapTexture, f23.xy);
    float f34 = f23.z;
    vec3 f35 = f12 * f12;
    float f36 = length(VARYING4.xyz);
    vec3 f37 = VARYING4.xyz / vec3(f36);
    float f38 = CB0[26].w * f1;
    float f39 = max(9.9999997473787516355514526367188e-05, dot(f22, f37));
    vec3 f40 = reflect(-f37, f22);
    float f41 = f16 * 5.0;
    vec3 f42 = vec4(f40, f41).xyz;
    vec3 f43 = textureLod(PrefilteredEnvTexture, f42, f41).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f40.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f44 = textureLod(PrefilteredEnvIndoorTexture, f42, f41).xyz;
    vec3 f45;
    if (CB0[27].w == 0.0)
    {
        f45 = f44;
    }
    else
    {
        f45 = mix(f44, textureLod(PrefilteredEnvBlendTargetTexture, f42, f41).xyz, vec3(CB0[27].w));
    }
    vec4 f46 = texture(PrecomputedBRDFTexture, vec2(f16, f39));
    vec3 f47 = -CB0[11].xyz;
    float f48 = dot(f22, f47) * ((1.0 - ((step(f33.x, f34) * clamp(CB0[24].z + (CB0[24].w * abs(f34 - 0.5)), 0.0, 1.0)) * f33.y)) * f30.y);
    vec3 f49 = normalize(f47 + f37);
    float f50 = clamp(f48, 0.0, 1.0);
    float f51 = f16 * f16;
    float f52 = max(0.001000000047497451305389404296875, dot(f22, f49));
    float f53 = dot(f47, f49);
    float f54 = 1.0 - f53;
    float f55 = f54 * f54;
    float f56 = (f55 * f55) * f54;
    vec3 f57 = vec3(f56) + (vec3(0.039999999105930328369140625) * (1.0 - f56));
    float f58 = f51 * f51;
    float f59 = (((f52 * f58) - f52) * f52) + 1.0;
    vec3 f60 = vec3(f32);
    vec3 f61 = mix(f31, f43, f60) * mix(vec3(1.0), f35, vec3(0.5));
    float f62 = f46.x;
    float f63 = f46.y;
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
    float f75 = 1.0 - f39;
    vec4 f76 = mix(vec4(mix((((((((vec3(1.0) - (f57 * f38)) * CB0[10].xyz) * f50) + (CB0[12].xyz * clamp(-f48, 0.0, 1.0))) + (f31 * f18)) + (((vec3(1.0) - (f64 * f38)) * (((((((CB0[35].xyz * f69) + (CB0[37].xyz * f70)) + (CB0[39].xyz * f71)) + (CB0[36].xyz * f72)) + (CB0[38].xyz * f73)) + (CB0[40].xyz * f74)) + (((((((CB0[29].xyz * f69) + (CB0[31].xyz * f70)) + (CB0[33].xyz * f71)) + (CB0[30].xyz * f72)) + (CB0[32].xyz * f73)) + (CB0[34].xyz * f74)) * f32))) * f18)) + (CB0[27].xyz + (CB0[28].xyz * f32))) * (f35 * f18), f61, vec3(VARYING7.w)) * f18, f18), vec4(f61, 1.0), vec4(((f75 * f75) * 0.800000011920928955078125) * clamp(f17, 0.0, 1.0))) + vec4(((f57 * (((f58 + (f58 * f58)) / (((f59 * f59) * ((f53 * 3.0) + 0.5)) * ((f52 * 0.75) + 0.25))) * f50)) * CB0[10].xyz) + (((mix(f45, f43, f60) * f64) * f38) * f18), 0.0);
    float f77 = clamp(exp2((CB0[13].z * f36) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f78 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f77) * 5.0).xyz;
    bvec3 f79 = bvec3(CB0[13].w != 0.0);
    vec3 f80 = mix(vec3(f79.x ? CB0[14].xyz.x : f78.x, f79.y ? CB0[14].xyz.y : f78.y, f79.z ? CB0[14].xyz.z : f78.z), f76.xyz, vec3(f77));
    vec4 f81 = vec4(f80.x, f80.y, f80.z, f76.w);
    f81.w = 1.0 - ((1.0 - f76.w) * f77);
    vec3 f82 = sqrt(clamp(f81.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f82.x, f82.y, f82.z, f81.w);
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
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
