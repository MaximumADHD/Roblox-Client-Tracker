#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
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
in vec3 VARYING10;
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
    float f34 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec4 f35 = texture(NormalMapTexture, f0);
    vec4 f36 = texture(NormalMapTexture, f2);
    vec4 f37 = texture(NormalMapTexture, VARYING3.xyz);
    vec2 f38 = (((f35 * f5.x) + (f36 * f5.y)) + (f37 * f5.z)).wy * 2.0;
    vec2 f39 = f38 - vec2(1.0);
    vec3 f40 = normalize(((vec3(f39, sqrt(clamp(1.0 + dot(vec2(1.0) - f38, f39), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f5, f5))) + vec3(0.0, 0.0, 1.0));
    vec3 f41 = vec3(dot(VARYING7, f5));
    vec3 f42 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f41) * f40.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f41) * f40.y)) + (VARYING6 * f40.z)), 0.0).xyz;
    vec3 f43 = normalize(VARYING9);
    float f44 = 0.08900000154972076416015625 + (f28.y * 0.9110000133514404296875);
    float f45 = f28.x;
    vec3 f46 = mix(vec3(0.039999999105930328369140625), f33, vec3(f45));
    float f47 = CB0[31].w * f34;
    vec3 f48 = reflect(-f43, f42);
    vec3 f49 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f50 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f51 = VARYING4.yzx - (VARYING4.yzx * f50);
    vec4 f52 = texture(LightMapTexture, f51);
    vec4 f53 = texture(LightGridSkylightTexture, f51);
    vec4 f54 = vec4(clamp(f50, 0.0, 1.0));
    vec4 f55 = mix(f52, vec4(0.0), f54);
    vec4 f56 = mix(f53, vec4(1.0), f54);
    float f57 = f56.x;
    vec4 f58 = texture(ShadowMapTexture, f49.xy);
    float f59 = f49.z;
    vec3 f60 = -CB0[16].xyz;
    float f61 = (dot(f42, f60) * CB0[14].w) * ((1.0 - ((step(f58.x, f59) * clamp(CB0[29].z + (CB0[29].w * abs(f59 - 0.5)), 0.0, 1.0)) * f58.y)) * f56.y);
    vec3 f62 = normalize(f43 - CB0[16].xyz);
    float f63 = clamp(f61, 0.0, 1.0);
    float f64 = f44 * f44;
    float f65 = max(0.001000000047497451305389404296875, dot(f42, f62));
    float f66 = dot(f60, f62);
    float f67 = 1.0 - f66;
    float f68 = f67 * f67;
    float f69 = (f68 * f68) * f67;
    vec3 f70 = vec3(f69) + (f46 * (1.0 - f69));
    float f71 = f64 * f64;
    float f72 = (((f65 * f71) - f65) * f65) + 1.0;
    float f73 = 1.0 - f45;
    float f74 = f47 * f73;
    vec3 f75 = vec3(f73);
    float f76 = f44 * 5.0;
    vec3 f77 = vec4(f48, f76).xyz;
    vec3 f78 = textureLod(PrefilteredEnvIndoorTexture, f77, f76).xyz;
    vec3 f79;
    if (CB0[32].w == 0.0)
    {
        f79 = f78;
    }
    else
    {
        f79 = mix(f78, textureLod(PrefilteredEnvBlendTargetTexture, f77, f76).xyz, vec3(CB0[32].w));
    }
    vec4 f80 = texture(PrecomputedBRDFTexture, vec2(f44, max(9.9999997473787516355514526367188e-05, dot(f42, f43))));
    float f81 = f80.x;
    float f82 = f80.y;
    vec3 f83 = ((f46 * f81) + vec3(f82)) / vec3(f81 + f82);
    vec3 f84 = f42 * f42;
    bvec3 f85 = lessThan(f42, vec3(0.0));
    vec3 f86 = vec3(f85.x ? f84.x : vec3(0.0).x, f85.y ? f84.y : vec3(0.0).y, f85.z ? f84.z : vec3(0.0).z);
    vec3 f87 = f84 - f86;
    float f88 = f87.x;
    float f89 = f87.y;
    float f90 = f87.z;
    float f91 = f86.x;
    float f92 = f86.y;
    float f93 = f86.z;
    vec3 f94 = (((((((f55.xyz * (f55.w * 120.0)) * 1.0) + ((((f75 - (f70 * f74)) * CB0[15].xyz) * f63) + (CB0[17].xyz * (f73 * clamp(-f61, 0.0, 1.0))))) + ((f75 - (f83 * f74)) * (((((((CB0[40].xyz * f88) + (CB0[42].xyz * f89)) + (CB0[44].xyz * f90)) + (CB0[41].xyz * f91)) + (CB0[43].xyz * f92)) + (CB0[45].xyz * f93)) + (((((((CB0[34].xyz * f88) + (CB0[36].xyz * f89)) + (CB0[38].xyz * f90)) + (CB0[35].xyz * f91)) + (CB0[37].xyz * f92)) + (CB0[39].xyz * f93)) * f57)))) + (CB0[32].xyz + ((CB0[33].xyz * (2.0 - CB0[14].w)) * f57))) + vec3((f28.z * 2.0) * f34)) * f33) + (((((f70 * (((f71 + (f71 * f71)) / (((f72 * f72) * ((f66 * 3.0) + 0.5)) * ((f65 * 0.75) + 0.25))) * f63)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w)) * (f34 * VARYING0.w)) + ((mix(f79, textureLod(PrefilteredEnvTexture, f77, f76).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f48.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f57)) * f83) * f47));
    vec4 f95 = vec4(0.0);
    f95.x = f94.x;
    vec4 f96 = f95;
    f96.y = f94.y;
    vec4 f97 = f96;
    f97.z = f94.z;
    vec4 f98 = f97;
    f98.w = 1.0;
    float f99 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f100 = textureLod(PrefilteredEnvTexture, vec4(-VARYING9, 0.0).xyz, max(CB0[18].y, f99) * 5.0).xyz;
    bvec3 f101 = bvec3(!(CB0[18].w == 0.0));
    vec3 f102 = mix(vec3(f101.x ? CB0[19].xyz.x : f100.x, f101.y ? CB0[19].xyz.y : f100.y, f101.z ? CB0[19].xyz.z : f100.z), f98.xyz, vec3(f99));
    vec4 f103 = f98;
    f103.x = f102.x;
    vec4 f104 = f103;
    f104.y = f102.y;
    vec4 f105 = f104;
    f105.z = f102.z;
    vec3 f106 = sqrt(clamp(f105.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f107 = f105;
    f107.x = f106.x;
    vec4 f108 = f107;
    f108.y = f106.y;
    vec4 f109 = f108;
    f109.z = f106.z;
    _entryPointOutput = f109;
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
