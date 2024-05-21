#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SCLayerData.h>
uniform vec4 CB0[57];
uniform vec4 CB5[189];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2DArray SpecularMapTexture;
uniform sampler2DArray NormalMapTexture;
uniform sampler2DArray AlbedoMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec3 VARYING4;
in vec4 VARYING5;
in vec3 VARYING6;
in vec3 VARYING7;
in vec3 VARYING8;
in vec4 VARYING9;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = vec3(VARYING1.xy, VARYING2.x);
    vec4 f1 = texture(SpecularMapTexture, f0);
    vec3 f2 = vec3(VARYING1.zw, VARYING2.z);
    vec4 f3 = texture(SpecularMapTexture, f2);
    vec3 f4 = vec3(VARYING3.xyz);
    vec4 f5 = texture(SpecularMapTexture, f4);
    vec3 f6;
    if (VARYING9.w < 1.0)
    {
        ivec3 f7 = ivec3(VARYING9.xyz + vec3(0.5));
        int f8 = f7.x;
        int f9 = f7.y;
        int f10 = f7.z;
        float f11 = dot(VARYING0.xyz, vec3(CB5[f8 * 3 + 1].z, CB5[f9 * 3 + 1].z, CB5[f10 * 3 + 1].z));
        vec3 f12 = vec3(0.0);
        f12.x = clamp((f1.w * CB5[f8 * 3 + 1].x) + CB5[f8 * 3 + 1].y, 0.0, 1.0);
        vec3 f13 = f12;
        f13.y = clamp((f3.w * CB5[f9 * 3 + 1].x) + CB5[f9 * 3 + 1].y, 0.0, 1.0);
        vec3 f14 = f13;
        f14.z = clamp((f5.w * CB5[f10 * 3 + 1].x) + CB5[f10 * 3 + 1].y, 0.0, 1.0);
        vec3 f15 = VARYING0.xyz * f14;
        float f16 = 1.0 / f11;
        float f17 = 0.5 * f11;
        float f18 = f15.x;
        float f19 = f15.y;
        float f20 = f15.z;
        float f21 = clamp(((f18 - max(f19, f20)) + f17) * f16, 0.0, 1.0);
        float f22 = clamp(((f19 - max(f18, f20)) + f17) * f16, 0.0, 1.0);
        float f23 = clamp(((f20 - max(f18, f19)) + f17) * f16, 0.0, 1.0);
        vec2 f24 = dFdx(VARYING1.xy);
        vec2 f25 = dFdy(VARYING1.xy);
        f6 = mix(vec3(f21, f22, f23) / vec3((f21 + f22) + f23), VARYING0.xyz, vec3(clamp((sqrt(max(dot(f24, f24), dot(f25, f25))) * 7.0) + clamp(VARYING9.w, 0.0, 1.0), 0.0, 1.0)));
    }
    else
    {
        f6 = VARYING0.xyz;
    }
    vec4 f26 = ((f1 * f6.x) + (f3 * f6.y)) + (f5 * f6.z);
    vec4 f27 = texture(NormalMapTexture, f0);
    vec4 f28 = texture(NormalMapTexture, f2);
    vec4 f29 = texture(NormalMapTexture, f4);
    vec2 f30 = (((f27 * f6.x) + (f28 * f6.y)) + (f29 * f6.z)).wy * 2.0;
    vec2 f31 = f30 - vec2(1.0);
    vec3 f32 = normalize(((vec3(f31, sqrt(clamp(1.0 + dot(vec2(1.0) - f30, f31), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f6, f6))) + vec3(0.0, 0.0, 1.0));
    vec3 f33 = vec3(dot(VARYING7, f6));
    vec3 f34 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f33) * f32.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f33) * f32.y)) + (VARYING6 * f32.z)), 0.0).xyz;
    vec4 f35 = texture(AlbedoMapTexture, f0);
    vec4 f36 = texture(AlbedoMapTexture, f2);
    vec4 f37 = texture(AlbedoMapTexture, f4);
    vec3 f38 = (((mix(vec3(1.0), CB5[int(VARYING9.x + 0.5) * 3 + 2].xyz, vec3(f35.w)) * f35.xyz) * f6.x) + ((mix(vec3(1.0), CB5[int(VARYING9.y + 0.5) * 3 + 2].xyz, vec3(f36.w)) * f36.xyz) * f6.y)) + ((mix(vec3(1.0), CB5[int(VARYING9.z + 0.5) * 3 + 2].xyz, vec3(f37.w)) * f37.xyz) * f6.z);
    vec3 f39 = f38 * f38;
    float f40 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec3 f41 = normalize(VARYING8);
    float f42 = 0.08900000154972076416015625 + (f26.y * 0.9110000133514404296875);
    float f43 = f26.x;
    vec3 f44 = mix(vec3(0.039999999105930328369140625), f39, vec3(f43));
    float f45 = CB0[31].w * f40;
    vec3 f46 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f47 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f48 = VARYING4.yzx - (VARYING4.yzx * f47);
    vec4 f49 = texture(LightMapTexture, f48);
    vec4 f50 = texture(LightGridSkylightTexture, f48);
    vec4 f51 = vec4(clamp(f47, 0.0, 1.0));
    vec4 f52 = mix(f49, vec4(0.0), f51);
    vec4 f53 = mix(f50, vec4(1.0), f51);
    float f54 = f53.x;
    vec4 f55 = texture(ShadowMapTexture, f46.xy);
    float f56 = f46.z;
    vec3 f57 = reflect(-f41, f34);
    float f58 = f42 * 5.0;
    vec3 f59 = vec4(f57, f58).xyz;
    vec3 f60 = textureLod(PrefilteredEnvIndoorTexture, f59, f58).xyz;
    vec3 f61;
    if (CB0[32].w == 0.0)
    {
        f61 = f60;
    }
    else
    {
        f61 = mix(f60, textureLod(PrefilteredEnvBlendTargetTexture, f59, f58).xyz, vec3(CB0[32].w));
    }
    vec4 f62 = texture(PrecomputedBRDFTexture, vec2(f42, max(9.9999997473787516355514526367188e-05, dot(f34, f41))));
    float f63 = f62.x;
    float f64 = f62.y;
    vec3 f65 = ((f44 * f63) + vec3(f64)) / vec3(f63 + f64);
    float f66 = 1.0 - f43;
    float f67 = f45 * f66;
    vec3 f68 = vec3(f66);
    vec3 f69 = f34 * f34;
    bvec3 f70 = lessThan(f34, vec3(0.0));
    vec3 f71 = vec3(f70.x ? f69.x : vec3(0.0).x, f70.y ? f69.y : vec3(0.0).y, f70.z ? f69.z : vec3(0.0).z);
    vec3 f72 = f69 - f71;
    float f73 = f72.x;
    float f74 = f72.y;
    float f75 = f72.z;
    float f76 = f71.x;
    float f77 = f71.y;
    float f78 = f71.z;
    vec3 f79 = -CB0[16].xyz;
    float f80 = dot(f34, f79) * ((1.0 - ((step(f55.x, f56) * clamp(CB0[29].z + (CB0[29].w * abs(f56 - 0.5)), 0.0, 1.0)) * f55.y)) * f53.y);
    vec3 f81 = normalize(f41 + f79);
    float f82 = clamp(f80, 0.0, 1.0);
    float f83 = f42 * f42;
    float f84 = max(0.001000000047497451305389404296875, dot(f34, f81));
    float f85 = dot(f79, f81);
    float f86 = 1.0 - f85;
    float f87 = f86 * f86;
    float f88 = (f87 * f87) * f86;
    vec3 f89 = vec3(f88) + (f44 * (1.0 - f88));
    float f90 = f83 * f83;
    float f91 = (((f84 * f90) - f84) * f84) + 1.0;
    vec3 f92 = (((((vec3((f26.z * 2.0) * f40) + (((f68 - (f65 * f67)) * (((((((CB0[40].xyz * f73) + (CB0[42].xyz * f74)) + (CB0[44].xyz * f75)) + (CB0[41].xyz * f76)) + (CB0[43].xyz * f77)) + (CB0[45].xyz * f78)) + (((((((CB0[34].xyz * f73) + (CB0[36].xyz * f74)) + (CB0[38].xyz * f75)) + (CB0[35].xyz * f76)) + (CB0[37].xyz * f77)) + (CB0[39].xyz * f78)) * f54))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * f54)) * 1.0)) + ((((f68 - (f89 * f67)) * CB0[15].xyz) * f82) + (CB0[17].xyz * (f66 * clamp(-f80, 0.0, 1.0))))) + (f52.xyz * (f52.w * 120.0))) * f39) + (((mix(f61, textureLod(PrefilteredEnvTexture, f59, f58).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f57.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f54)) * f65) * f45) + (((f89 * (((f90 + (f90 * f90)) / (((f91 * f91) * ((f85 * 3.0) + 0.5)) * ((f84 * 0.75) + 0.25))) * f82)) * CB0[15].xyz) * (f40 * VARYING0.w)));
    vec4 f93 = vec4(0.0);
    f93.x = f92.x;
    vec4 f94 = f93;
    f94.y = f92.y;
    vec4 f95 = f94;
    f95.z = f92.z;
    vec4 f96 = f95;
    f96.w = 1.0;
    float f97 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f98 = textureLod(PrefilteredEnvTexture, vec4(-VARYING8, 0.0).xyz, max(CB0[18].y, f97) * 5.0).xyz;
    bvec3 f99 = bvec3(!(CB0[18].w == 0.0));
    vec3 f100 = mix(vec3(f99.x ? CB0[19].xyz.x : f98.x, f99.y ? CB0[19].xyz.y : f98.y, f99.z ? CB0[19].xyz.z : f98.z), f96.xyz, vec3(f97));
    vec4 f101 = f96;
    f101.x = f100.x;
    vec4 f102 = f101;
    f102.y = f100.y;
    vec4 f103 = f102;
    f103.z = f100.z;
    vec3 f104 = sqrt(clamp(f103.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f105 = f103;
    f105.x = f104.x;
    vec4 f106 = f105;
    f106.y = f104.y;
    vec4 f107 = f106;
    f107.z = f104.z;
    _entryPointOutput = f107;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$SpecularMapTexture=s3
//$$NormalMapTexture=s4
//$$AlbedoMapTexture=s0
