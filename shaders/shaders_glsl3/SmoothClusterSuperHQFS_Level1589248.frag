#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform vec4 CB4[63];
uniform vec4 CB5[63];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2DArray SpecularMapTexture;
uniform sampler2DArray AlbedoMapTexture;
uniform sampler2DArray NormalMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec3 VARYING4;
in vec4 VARYING5;
in vec3 VARYING6;
in vec3 VARYING7;
in vec4 VARYING8;
in vec3 VARYING9;
in vec4 VARYING10;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = vec3(VARYING1.xy, VARYING2.x);
    vec4 f1 = texture(SpecularMapTexture, f0);
    vec3 f2 = vec3(VARYING1.zw, VARYING2.z);
    vec4 f3 = texture(SpecularMapTexture, f2);
    vec4 f4 = texture(SpecularMapTexture, VARYING3.xyz);
    vec3 f5;
    if (VARYING8.w < 1.0)
    {
        ivec3 f6 = ivec3(VARYING8.xyz + vec3(0.5));
        int f7 = f6.x;
        int f8 = f6.y;
        int f9 = f6.z;
        float f10 = dot(VARYING0.xyz, vec3(CB5[f7 * 1 + 0].z, CB5[f8 * 1 + 0].z, CB5[f9 * 1 + 0].z));
        float f11 = f1.w;
        float f12 = f3.w;
        float f13 = f4.w;
        vec3 f14 = vec3(f11, f12, f13);
        f14.x = clamp((f11 * CB5[f7 * 1 + 0].x) + CB5[f7 * 1 + 0].y, 0.0, 1.0);
        vec3 f15 = f14;
        f15.y = clamp((f12 * CB5[f8 * 1 + 0].x) + CB5[f8 * 1 + 0].y, 0.0, 1.0);
        vec3 f16 = f15;
        f16.z = clamp((f13 * CB5[f9 * 1 + 0].x) + CB5[f9 * 1 + 0].y, 0.0, 1.0);
        vec3 f17 = VARYING0.xyz * f16;
        float f18 = 1.0 / f10;
        float f19 = 0.5 * f10;
        float f20 = f17.x;
        float f21 = f17.y;
        float f22 = f17.z;
        float f23 = clamp(((f20 - max(f21, f22)) + f19) * f18, 0.0, 1.0);
        float f24 = clamp(((f21 - max(f20, f22)) + f19) * f18, 0.0, 1.0);
        float f25 = clamp(((f22 - max(f20, f21)) + f19) * f18, 0.0, 1.0);
        vec2 f26 = dFdx(VARYING1.xy);
        vec2 f27 = dFdy(VARYING1.xy);
        f5 = mix(vec3(f23, f24, f25) / vec3((f23 + f24) + f25), VARYING0.xyz, vec3(clamp((sqrt(max(dot(f26, f26), dot(f27, f27))) * 7.0) + clamp(VARYING8.w, 0.0, 1.0), 0.0, 1.0)));
    }
    else
    {
        f5 = VARYING0.xyz;
    }
    vec4 f28 = ((f1 * f5.x) + (f3 * f5.y)) + (f4 * f5.z);
    vec4 f29 = texture(AlbedoMapTexture, f0);
    vec4 f30 = texture(AlbedoMapTexture, f2);
    vec4 f31 = texture(AlbedoMapTexture, VARYING3.xyz);
    vec3 f32 = (((mix(vec3(1.0), CB4[int(VARYING10.x + 0.5) * 1 + 0].xyz, vec3(f29.w)) * f29.xyz) * f5.x) + ((mix(vec3(1.0), CB4[int(VARYING10.y + 0.5) * 1 + 0].xyz, vec3(f30.w)) * f30.xyz) * f5.y)) + ((mix(vec3(1.0), CB4[int(VARYING10.z + 0.5) * 1 + 0].xyz, vec3(f31.w)) * f31.xyz) * f5.z);
    vec3 f33 = f32 * f32;
    float f34 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec4 f35 = texture(NormalMapTexture, f0);
    vec4 f36 = texture(NormalMapTexture, f2);
    vec4 f37 = texture(NormalMapTexture, VARYING3.xyz);
    float f38 = -VARYING6.x;
    vec2 f39 = (((f35 * f5.x) + (f36 * f5.y)) + (f37 * f5.z)).wy * 2.0;
    vec2 f40 = f39 - vec2(1.0);
    vec3 f41 = normalize(((vec3(f40, sqrt(clamp(1.0 + dot(vec2(1.0) - f39, f40), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f5, f5))) + vec3(0.0, 0.0, 1.0));
    vec3 f42 = vec3(dot(VARYING7, f5));
    vec3 f43 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f38), vec3(VARYING6.y, f38, 0.0), f42) * f41.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f42) * f41.y)) + (VARYING6 * f41.z)), 0.0).xyz;
    vec3 f44 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f45 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f46 = VARYING4.yzx - (VARYING4.yzx * f45);
    vec4 f47 = texture(LightMapTexture, f46);
    vec4 f48 = texture(LightGridSkylightTexture, f46);
    vec4 f49 = vec4(clamp(f45, 0.0, 1.0));
    vec4 f50 = mix(f47, vec4(0.0), f49);
    vec4 f51 = mix(f48, vec4(1.0), f49);
    float f52 = f51.x;
    vec4 f53 = texture(ShadowMapTexture, f44.xy);
    float f54 = f44.z;
    vec3 f55 = normalize(VARYING9);
    float f56 = f28.y;
    float f57 = f28.x;
    vec3 f58 = mix(vec3(0.039999999105930328369140625), f33, vec3(f57));
    float f59 = CB0[26].w * f34;
    vec3 f60 = reflect(-f55, f43);
    vec3 f61 = -CB0[11].xyz;
    float f62 = (dot(f43, f61) * CB0[9].w) * ((1.0 - ((step(f53.x, f54) * clamp(CB0[24].z + (CB0[24].w * abs(f54 - 0.5)), 0.0, 1.0)) * f53.y)) * f51.y);
    vec3 f63 = normalize(f61 + f55);
    float f64 = clamp(f62, 0.0, 1.0);
    float f65 = f56 * f56;
    float f66 = max(0.001000000047497451305389404296875, dot(f43, f63));
    float f67 = dot(f61, f63);
    float f68 = 1.0 - f67;
    float f69 = f68 * f68;
    float f70 = (f69 * f69) * f68;
    vec3 f71 = vec3(f70) + (f58 * (1.0 - f70));
    float f72 = f65 * f65;
    float f73 = (((f66 * f72) - f66) * f66) + 1.0;
    float f74 = 1.0 - f57;
    float f75 = f59 * f74;
    vec3 f76 = vec3(f74);
    float f77 = f56 * 5.0;
    vec3 f78 = vec4(f60, f77).xyz;
    vec3 f79 = textureLod(PrefilteredEnvIndoorTexture, f78, f77).xyz;
    vec3 f80;
    if (CB0[27].w == 0.0)
    {
        f80 = f79;
    }
    else
    {
        f80 = mix(f79, textureLod(PrefilteredEnvBlendTargetTexture, f78, f77).xyz, vec3(CB0[27].w));
    }
    vec4 f81 = texture(PrecomputedBRDFTexture, vec2(f56, max(9.9999997473787516355514526367188e-05, dot(f43, f55))));
    float f82 = f81.x;
    float f83 = f81.y;
    vec3 f84 = ((f58 * f82) + vec3(f83)) / vec3(f82 + f83);
    vec3 f85 = f43 * f43;
    bvec3 f86 = lessThan(f43, vec3(0.0));
    vec3 f87 = vec3(f86.x ? f85.x : vec3(0.0).x, f86.y ? f85.y : vec3(0.0).y, f86.z ? f85.z : vec3(0.0).z);
    vec3 f88 = f85 - f87;
    float f89 = f88.x;
    float f90 = f88.y;
    float f91 = f88.z;
    float f92 = f87.x;
    float f93 = f87.y;
    float f94 = f87.z;
    vec3 f95 = (((((((((f76 - (f71 * f75)) * CB0[10].xyz) * f64) + (CB0[12].xyz * (f74 * clamp(-f62, 0.0, 1.0)))) + ((f50.xyz * (f50.w * 120.0)) * 1.0)) + ((f76 - (f84 * f75)) * (((((((CB0[35].xyz * f89) + (CB0[37].xyz * f90)) + (CB0[39].xyz * f91)) + (CB0[36].xyz * f92)) + (CB0[38].xyz * f93)) + (CB0[40].xyz * f94)) + (((((((CB0[29].xyz * f89) + (CB0[31].xyz * f90)) + (CB0[33].xyz * f91)) + (CB0[30].xyz * f92)) + (CB0[32].xyz * f93)) + (CB0[34].xyz * f94)) * f52)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f52))) + vec3((f28.z * 2.0) * f34)) * f33) + ((((((f71 * (((f72 + (f72 * f72)) / (((f73 * f73) * ((f67 * 3.0) + 0.5)) * ((f66 * 0.75) + 0.25))) * f64)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * f34) * VARYING0.w) + ((mix(f80, textureLod(PrefilteredEnvTexture, f78, f77).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f60.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f52)) * f84) * f59));
    vec4 f96 = vec4(0.0);
    f96.x = f95.x;
    vec4 f97 = f96;
    f97.y = f95.y;
    vec4 f98 = f97;
    f98.z = f95.z;
    vec4 f99 = f98;
    f99.w = 1.0;
    float f100 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f101 = textureLod(PrefilteredEnvTexture, vec4(-VARYING9, 0.0).xyz, max(CB0[13].y, f100) * 5.0).xyz;
    bvec3 f102 = bvec3(!(CB0[13].w == 0.0));
    vec3 f103 = mix(vec3(f102.x ? CB0[14].xyz.x : f101.x, f102.y ? CB0[14].xyz.y : f101.y, f102.z ? CB0[14].xyz.z : f101.z), f99.xyz, vec3(f100));
    vec4 f104 = f99;
    f104.x = f103.x;
    vec4 f105 = f104;
    f105.y = f103.y;
    vec4 f106 = f105;
    f106.z = f103.z;
    vec3 f107 = sqrt(clamp(f106.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f108 = f106;
    f108.x = f107.x;
    vec4 f109 = f108;
    f109.y = f107.y;
    vec4 f110 = f109;
    f110.z = f107.z;
    _entryPointOutput = f110;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
