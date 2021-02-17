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
uniform sampler2D StudsMapTexture;
uniform sampler2D SpecularMapTexture;
uniform sampler2D GBufferDepthTexture;
uniform sampler2D GBufferColorTexture;

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
    vec2 f4 = texture(NormalMapTexture, f2).wy * 2.0;
    vec2 f5 = f4 - vec2(1.0);
    float f6 = sqrt(clamp(1.0 + dot(vec2(1.0) - f4, f5), 0.0, 1.0));
    vec2 f7 = (vec3(f5, f6).xy + (vec3((texture(NormalDetailMapTexture, f2 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f1;
    float f8 = f3.w;
    vec3 f9 = ((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f8 + CB2[2].w, 0.0, 1.0))) * f3.xyz) * (1.0 + (f7.x * CB2[0].z))) * (texture(StudsMapTexture, f0).x * 2.0);
    vec4 f10 = mix(texture(SpecularMapTexture, f2 * CB2[1].w), texture(SpecularMapTexture, f2), vec4(clamp((f1 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0)));
    float f11 = f10.y;
    float f12 = VARYING2.w * 2.0;
    float f13 = clamp((f12 - 1.0) + f8, 0.0, 1.0);
    float f14 = clamp(f12, 0.0, 1.0);
    float f15 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f16 = VARYING6.xyz * f15;
    vec3 f17 = VARYING5.xyz * f15;
    vec3 f18 = normalize(((f16 * f7.x) + (cross(f17, f16) * f7.y)) + (f17 * (f6 * 10.0)));
    vec3 f19 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f20 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f21 = VARYING3.yzx - (VARYING3.yzx * f20);
    vec4 f22 = vec4(clamp(f20, 0.0, 1.0));
    vec4 f23 = mix(texture(LightMapTexture, f21), vec4(0.0), f22);
    vec4 f24 = mix(texture(LightGridSkylightTexture, f21), vec4(1.0), f22);
    vec3 f25 = (f23.xyz * (f23.w * 120.0)).xyz;
    float f26 = f24.x;
    vec4 f27 = texture(ShadowMapTexture, f19.xy);
    float f28 = f19.z;
    vec3 f29 = f9 * f9;
    float f30 = length(VARYING4.xyz);
    vec3 f31 = VARYING4.xyz / vec3(f30);
    vec3 f32 = f29 * f13;
    float f33 = CB0[26].w * f1;
    float f34 = max(9.9999997473787516355514526367188e-05, dot(f18, f31));
    vec3 f35 = reflect(-f31, f18);
    float f36 = f11 * 5.0;
    vec3 f37 = vec4(f35, f36).xyz;
    vec3 f38 = textureLod(PrefilteredEnvTexture, f37, f36).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f35.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec4 f39 = texture(PrecomputedBRDFTexture, vec2(f11, f34));
    vec3 f40 = -CB0[11].xyz;
    float f41 = dot(f18, f40) * ((1.0 - ((step(f27.x, f28) * clamp(CB0[24].z + (CB0[24].w * abs(f28 - 0.5)), 0.0, 1.0)) * f27.y)) * f24.y);
    vec3 f42 = normalize(f40 + f31);
    float f43 = clamp(f41, 0.0, 1.0);
    float f44 = f11 * f11;
    float f45 = max(0.001000000047497451305389404296875, dot(f18, f42));
    float f46 = dot(f40, f42);
    float f47 = 1.0 - f46;
    float f48 = f47 * f47;
    float f49 = (f48 * f48) * f47;
    vec3 f50 = vec3(f49) + (vec3(0.039999999105930328369140625) * (1.0 - f49));
    float f51 = f44 * f44;
    float f52 = (((f45 * f51) - f45) * f45) + 1.0;
    vec3 f53 = vec3(f26);
    vec3 f54 = mix(f25, f38, f53) * mix(vec3(1.0), f29, vec3(0.5));
    float f55 = f39.x;
    float f56 = f39.y;
    vec3 f57 = ((vec3(0.039999999105930328369140625) * f55) + vec3(f56)) / vec3(f55 + f56);
    vec3 f58 = f57 * f33;
    vec3 f59 = f18 * f18;
    bvec3 f60 = lessThan(f18, vec3(0.0));
    vec3 f61 = vec3(f60.x ? f59.x : vec3(0.0).x, f60.y ? f59.y : vec3(0.0).y, f60.z ? f59.z : vec3(0.0).z);
    vec3 f62 = f59 - f61;
    float f63 = f62.x;
    float f64 = f62.y;
    float f65 = f62.z;
    float f66 = f61.x;
    float f67 = f61.y;
    float f68 = f61.z;
    vec3 f69 = ((((((CB0[35].xyz * f63) + (CB0[37].xyz * f64)) + (CB0[39].xyz * f65)) + (CB0[36].xyz * f66)) + (CB0[38].xyz * f67)) + (CB0[40].xyz * f68)) + (((((((CB0[29].xyz * f63) + (CB0[31].xyz * f64)) + (CB0[33].xyz * f65)) + (CB0[30].xyz * f66)) + (CB0[32].xyz * f67)) + (CB0[34].xyz * f68)) * f26);
    vec3 f70 = (mix(textureLod(PrefilteredEnvIndoorTexture, f37, f36).xyz, f38, f53) * f57) * f33;
    float f71 = 1.0 - f34;
    float f72 = 1.0 - VARYING2.w;
    float f73 = mix(0.660000026226043701171875, 1.0, f72 * f72);
    mat4 f74 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 f75 = vec4(CB0[7].xyz - VARYING4.xyz, 1.0) * f74;
    vec4 f76 = vec4(CB0[7].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * f73) / max(dot(VARYING4.xyz, f18), 0.00999999977648258209228515625)))) + (f18 * (3.0 * (1.0 - f73)))), 1.0) * f74;
    float f77 = f75.w;
    vec2 f78 = ((f75.xy * 0.5) + vec2(0.5 * f77)).xy / vec2(f77);
    float f79 = f76.w;
    vec2 f80 = ((f76.xy * 0.5) + vec2(0.5 * f79)).xy / vec2(f79);
    vec2 f81 = f80 - vec2(0.5);
    vec2 f82 = (f80 - f78) * clamp(vec2(1.0) - ((f81 * f81) * 4.0), vec2(0.0), vec2(1.0));
    vec2 f83 = normalize(f82) * CB0[23].x;
    vec4 f84 = texture(GBufferColorTexture, f78 + (f82 * clamp(min(texture(GBufferDepthTexture, f80 + f83).x * 500.0, texture(GBufferDepthTexture, f80 - f83).x * 500.0) - f77, 0.0, 1.0)));
    vec3 f85 = f84.xyz;
    vec3 f86 = ((f85 * f85) * CB0[15].x).xyz;
    vec3 f87 = f86 * mix(vec3(1.0), VARYING2.xyz, vec3(f14));
    vec4 f88 = vec4(f87.x, f87.y, f87.z, vec4(0.0).w);
    f88.w = mix(1.0, f84.w, dot(f87.xyz, vec3(1.0)) / (dot(f86, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 f89 = mix(mix(f88, vec4(mix((((((((vec3(1.0) - (f50 * f33)) * CB0[10].xyz) * f43) + (CB0[12].xyz * clamp(-f41, 0.0, 1.0))) + ((((vec3(1.0) - f58) * f69) * CB0[25].w) * f13)) + (CB0[27].xyz + (CB0[28].xyz * f26))) * f32) + ((f25 * mix(f32, f70 * (1.0 / (max(max(f69.x, f69.y), f69.z) + 0.00999999977648258209228515625)), f58 * (f33 * (1.0 - f26)))) * f13), f54, vec3(VARYING7.w)), 1.0), vec4(f13)), vec4(f54, 1.0), vec4(((f71 * f71) * 0.800000011920928955078125) * f14)) + vec4(((f50 * (((f51 + (f51 * f51)) / (((f52 * f52) * ((f46 * 3.0) + 0.5)) * ((f45 * 0.75) + 0.25))) * f43)) * CB0[10].xyz) + ((f70 * f26) * f13), 0.0);
    float f90 = clamp(exp2((CB0[13].z * f30) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f91 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f90) * 5.0).xyz;
    bvec3 f92 = bvec3(CB0[13].w != 0.0);
    vec3 f93 = mix(vec3(f92.x ? CB0[14].xyz.x : f91.x, f92.y ? CB0[14].xyz.y : f91.y, f92.z ? CB0[14].xyz.z : f91.z), f89.xyz, vec3(f90));
    vec4 f94 = vec4(f93.x, f93.y, f93.z, f89.w);
    f94.w = f90 * f89.w;
    vec3 f95 = sqrt(clamp(f94.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f95.x, f95.y, f95.z, f94.w);
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
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
//$$GBufferDepthTexture=s10
//$$GBufferColorTexture=s9
