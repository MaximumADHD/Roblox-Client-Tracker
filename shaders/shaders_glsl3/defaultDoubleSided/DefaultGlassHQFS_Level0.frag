#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[52];
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
    float f14 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f15 = VARYING6.xyz * f14;
    vec3 f16 = VARYING5.xyz * f14;
    vec3 f17 = normalize(((f15 * f7.x) + (cross(f16, f15) * f7.y)) + (f16 * (f6 * 10.0)));
    vec3 f18 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f19 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f20 = VARYING3.yzx - (VARYING3.yzx * f19);
    vec4 f21 = vec4(clamp(f19, 0.0, 1.0));
    vec4 f22 = mix(texture(LightMapTexture, f20), vec4(0.0), f21);
    vec4 f23 = mix(texture(LightGridSkylightTexture, f20), vec4(1.0), f21);
    vec3 f24 = (f22.xyz * (f22.w * 120.0)).xyz;
    float f25 = f23.x;
    vec4 f26 = texture(ShadowMapTexture, f18.xy);
    float f27 = f18.z;
    vec3 f28 = f9 * f9;
    float f29 = length(VARYING4.xyz);
    vec3 f30 = VARYING4.xyz / vec3(f29);
    vec3 f31 = f28 * f13;
    float f32 = CB0[26].w * f1;
    float f33 = max(9.9999997473787516355514526367188e-05, dot(f17, f30));
    vec3 f34 = reflect(-f30, f17);
    float f35 = f11 * 5.0;
    vec3 f36 = vec4(f34, f35).xyz;
    vec3 f37 = textureLod(PrefilteredEnvTexture, f36, f35).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f34.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec4 f38 = texture(PrecomputedBRDFTexture, vec2(f11, f33));
    vec3 f39 = -CB0[11].xyz;
    float f40 = dot(f17, f39) * ((1.0 - ((step(f26.x, f27) * clamp(CB0[24].z + (CB0[24].w * abs(f27 - 0.5)), 0.0, 1.0)) * f26.y)) * f23.y);
    vec3 f41 = normalize(f39 + f30);
    float f42 = clamp(f40, 0.0, 1.0);
    float f43 = f11 * f11;
    float f44 = max(0.001000000047497451305389404296875, dot(f17, f41));
    float f45 = dot(f39, f41);
    float f46 = 1.0 - f45;
    float f47 = f46 * f46;
    float f48 = (f47 * f47) * f46;
    vec3 f49 = vec3(f48) + (vec3(0.039999999105930328369140625) * (1.0 - f48));
    float f50 = f43 * f43;
    float f51 = (((f44 * f50) - f44) * f44) + 1.0;
    vec3 f52 = vec3(f25);
    vec3 f53 = mix(f24, f37, f52) * mix(vec3(1.0), f28, vec3(0.5));
    float f54 = f38.x;
    float f55 = f38.y;
    vec3 f56 = ((vec3(0.039999999105930328369140625) * f54) + vec3(f55)) / vec3(f54 + f55);
    vec3 f57 = f56 * f32;
    vec3 f58 = f17 * f17;
    bvec3 f59 = lessThan(f17, vec3(0.0));
    vec3 f60 = vec3(f59.x ? f58.x : vec3(0.0).x, f59.y ? f58.y : vec3(0.0).y, f59.z ? f58.z : vec3(0.0).z);
    vec3 f61 = f58 - f60;
    float f62 = f61.x;
    float f63 = f61.y;
    float f64 = f61.z;
    float f65 = f60.x;
    float f66 = f60.y;
    float f67 = f60.z;
    vec3 f68 = (mix(textureLod(PrefilteredEnvIndoorTexture, f36, f35).xyz * f24, f37, f52) * f56) * f32;
    float f69 = 1.0 - f33;
    vec4 f70 = mix(vec4(mix((((((((vec3(1.0) - (f49 * f32)) * CB0[10].xyz) * f42) + (CB0[12].xyz * clamp(-f40, 0.0, 1.0))) + (((vec3(1.0) - f57) * (((((((CB0[35].xyz * f62) + (CB0[37].xyz * f63)) + (CB0[39].xyz * f64)) + (CB0[36].xyz * f65)) + (CB0[38].xyz * f66)) + (CB0[40].xyz * f67)) + (((((((CB0[29].xyz * f62) + (CB0[31].xyz * f63)) + (CB0[33].xyz * f64)) + (CB0[30].xyz * f65)) + (CB0[32].xyz * f66)) + (CB0[34].xyz * f67)) * f25))) * f13)) + (CB0[27].xyz + (CB0[28].xyz * f25))) * f31) + ((f24 * mix(f31, f68 * (1.0 / (max(max(f68.x, f68.y), f68.z) + 0.00999999977648258209228515625)), f57 * (f32 * (1.0 - f25)))) * f13), f53, vec3(VARYING7.w)) * f13, f13), vec4(f53, 1.0), vec4(((f69 * f69) * 0.800000011920928955078125) * clamp(f12, 0.0, 1.0))) + vec4(((f49 * (((f50 + (f50 * f50)) / (((f51 * f51) * ((f45 * 3.0) + 0.5)) * ((f44 * 0.75) + 0.25))) * f42)) * CB0[10].xyz) + (f68 * f13), 0.0);
    float f71 = clamp(exp2((CB0[13].z * f29) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f72 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f71) * 5.0).xyz;
    bvec3 f73 = bvec3(CB0[13].w != 0.0);
    vec3 f74 = mix(vec3(f73.x ? CB0[14].xyz.x : f72.x, f73.y ? CB0[14].xyz.y : f72.y, f73.z ? CB0[14].xyz.z : f72.z), f70.xyz, vec3(f71));
    vec4 f75 = vec4(f74.x, f74.y, f74.z, f70.w);
    f75.w = 1.0 - ((1.0 - f70.w) * f71);
    vec3 f76 = sqrt(clamp(f75.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f76.x, f76.y, f76.z, f75.w);
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
