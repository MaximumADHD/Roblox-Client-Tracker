#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
#include <MaterialParams.h>
uniform vec4 CB0[58];
uniform vec4 CB8[24];
uniform vec4 CB2[4];
uniform sampler2D ShadowAtlasTexture;
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
    float f0 = clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
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
    vec3 f13 = (VARYING2.xyz * f2.xyz) * (1.0 + (f12 * 0.20000000298023223876953125));
    vec4 f14 = texture(SpecularMapTexture, f1 * CB2[1].w);
    vec4 f15 = texture(SpecularMapTexture, f1);
    float f16 = VARYING2.w * 2.0;
    float f17 = clamp((f16 - 1.0) + f2.w, 0.0, 1.0);
    float f18 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f19 = VARYING6.xyz * f18;
    vec3 f20 = VARYING5.xyz * f18;
    vec3 f21 = normalize(((f19 * f12) + (cross(f20, f19) * f11.y)) + (f20 * (f6 * 10.0)));
    vec3 f22 = -CB0[16].xyz;
    float f23 = dot(f21, f22);
    vec3 f24 = f13 * f13;
    float f25 = length(VARYING4.xyz);
    vec3 f26 = VARYING4.xyz / vec3(f25);
    float f27 = 0.08900000154972076416015625 + (mix(f14, f15, vec4(clamp((f0 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0))).y * 0.9110000133514404296875);
    float f28 = CB0[31].w * f0;
    float f29 = max(9.9999997473787516355514526367188e-05, dot(f21, f26));
    vec3 f30 = reflect(-f26, f21);
    float f31 = f27 * 5.0;
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
    vec4 f36 = texture(PrecomputedBRDFTexture, vec2(f27, f29));
    vec3 f37 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f38 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f39 = VARYING3.yzx - (VARYING3.yzx * f38);
    vec4 f40 = vec4(clamp(f38, 0.0, 1.0));
    vec4 f41 = mix(texture(LightMapTexture, f39), vec4(0.0), f40);
    vec4 f42 = mix(texture(LightGridSkylightTexture, f39), vec4(1.0), f40);
    vec3 f43 = f41.xyz * (f41.w * 120.0);
    float f44 = f42.x;
    float f45 = f42.y;
    vec3 f46 = f37 - CB0[46].xyz;
    vec3 f47 = f37 - CB0[47].xyz;
    vec3 f48 = f37 - CB0[48].xyz;
    vec4 f49 = vec4(f37, 1.0) * mat4(CB8[((dot(f46, f46) < CB0[46].w) ? 0 : ((dot(f47, f47) < CB0[47].w) ? 1 : ((dot(f48, f48) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f46, f46) < CB0[46].w) ? 0 : ((dot(f47, f47) < CB0[47].w) ? 1 : ((dot(f48, f48) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f46, f46) < CB0[46].w) ? 0 : ((dot(f47, f47) < CB0[47].w) ? 1 : ((dot(f48, f48) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f46, f46) < CB0[46].w) ? 0 : ((dot(f47, f47) < CB0[47].w) ? 1 : ((dot(f48, f48) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f50 = textureLod(ShadowAtlasTexture, f49.xy, 0.0);
    vec2 f51 = vec2(0.0);
    f51.x = CB0[51].z;
    vec2 f52 = f51;
    f52.y = CB0[51].w;
    float f53 = (2.0 * f49.z) - 1.0;
    float f54 = exp(CB0[51].z * f53);
    float f55 = -exp((-CB0[51].w) * f53);
    vec2 f56 = (f52 * CB0[52].y) * vec2(f54, f55);
    vec2 f57 = f56 * f56;
    float f58 = f50.x;
    float f59 = max(f50.y - (f58 * f58), f57.x);
    float f60 = f54 - f58;
    float f61 = f50.z;
    float f62 = max(f50.w - (f61 * f61), f57.y);
    float f63 = f55 - f61;
    vec3 f64 = vec3(f44);
    vec3 f65 = mix(f43, f33, f64) * mix(vec3(1.0), f24, vec3(0.5));
    float f66 = CB0[14].w * CB0[14].w;
    vec3 f67 = normalize(f26 - CB0[16].xyz);
    float f68 = clamp((f23 * CB0[14].w) * (((f23 * CB0[52].x) > 0.0) ? mix(min((f54 <= f58) ? 1.0 : clamp(((f59 / (f59 + (f60 * f60))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f55 <= f61) ? 1.0 : clamp(((f62 / (f62 + (f63 * f63))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f45, clamp((length(f37 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f45), 0.0, 1.0);
    float f69 = f27 * f27;
    float f70 = max(0.001000000047497451305389404296875, dot(f21, f67));
    float f71 = dot(f22, f67);
    float f72 = 1.0 - f71;
    float f73 = f72 * f72;
    float f74 = (f73 * f73) * f72;
    vec3 f75 = vec3(f74) + (vec3(0.039999999105930328369140625) * (1.0 - f74));
    float f76 = f69 * f69;
    float f77 = (((f70 * f76) - f70) * f70) + 1.0;
    float f78 = f36.x;
    float f79 = f36.y;
    vec3 f80 = ((vec3(0.039999999105930328369140625) * f78) + vec3(f79)) / vec3(f78 + f79);
    vec3 f81 = f21 * f21;
    bvec3 f82 = lessThan(f21, vec3(0.0));
    vec3 f83 = vec3(f82.x ? f81.x : vec3(0.0).x, f82.y ? f81.y : vec3(0.0).y, f82.z ? f81.z : vec3(0.0).z);
    vec3 f84 = f81 - f83;
    float f85 = f84.x;
    float f86 = f84.y;
    float f87 = f84.z;
    float f88 = f83.x;
    float f89 = f83.y;
    float f90 = f83.z;
    float f91 = 1.0 - f29;
    vec4 f92 = mix(vec4(mix(((((f43 * f17) + (((vec3(1.0) - (f75 * f28)) * CB0[15].xyz) * f68)) + (((vec3(1.0) - (f80 * f28)) * (((((((CB0[40].xyz * f85) + (CB0[42].xyz * f86)) + (CB0[44].xyz * f87)) + (CB0[41].xyz * f88)) + (CB0[43].xyz * f89)) + (CB0[45].xyz * f90)) + (((((((CB0[34].xyz * f85) + (CB0[36].xyz * f86)) + (CB0[38].xyz * f87)) + (CB0[35].xyz * f88)) + (CB0[37].xyz * f89)) + (CB0[39].xyz * f90)) * f44))) * f17)) + (CB0[32].xyz + ((CB0[33].xyz * (2.0 - CB0[14].w)) * f44))) * (f24 * f17), f65, vec3(VARYING7.w)) * f17, f17), vec4(f65, 1.0), vec4(((f91 * f91) * 0.800000011920928955078125) * clamp(f16, 0.0, 1.0))) + vec4((((f75 * (((f76 + (f76 * f76)) / (((f77 * f77) * ((f71 * 3.0) + 0.5)) * ((f70 * 0.75) + 0.25))) * f68)) * CB0[15].xyz) * f66) + (((mix(f35, f33, f64) * f80) * f28) * (f66 * f17)), 0.0);
    float f93 = clamp(exp2((CB0[18].z * f25) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f94 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[18].y, f93) * 5.0).xyz;
    bvec3 f95 = bvec3(!(CB0[18].w == 0.0));
    vec3 f96 = mix(vec3(f95.x ? CB0[19].xyz.x : f94.x, f95.y ? CB0[19].xyz.y : f94.y, f95.z ? CB0[19].xyz.z : f94.z), f92.xyz, vec3(f93));
    vec4 f97 = f92;
    f97.x = f96.x;
    vec4 f98 = f97;
    f98.y = f96.y;
    vec4 f99 = f98;
    f99.z = f96.z;
    vec4 f100 = f99;
    f100.w = 1.0 - ((1.0 - f92.w) * f93);
    vec3 f101 = sqrt(clamp(f100.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f102 = f100;
    f102.x = f101.x;
    vec4 f103 = f102;
    f103.y = f101.y;
    vec4 f104 = f103;
    f104.z = f101.z;
    _entryPointOutput = f104;
}

//$$ShadowAtlasTexture=s1
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
