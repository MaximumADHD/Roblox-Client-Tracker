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
    vec3 f46 = reflect(-f41, f34);
    vec3 f47 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f48 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f49 = VARYING4.yzx - (VARYING4.yzx * f48);
    vec4 f50 = texture(LightMapTexture, f49);
    vec4 f51 = texture(LightGridSkylightTexture, f49);
    vec4 f52 = vec4(clamp(f48, 0.0, 1.0));
    vec4 f53 = mix(f50, vec4(0.0), f52);
    vec4 f54 = mix(f51, vec4(1.0), f52);
    float f55 = f54.x;
    vec4 f56 = texture(ShadowMapTexture, f47.xy);
    float f57 = f47.z;
    vec3 f58 = -CB0[16].xyz;
    float f59 = dot(f34, f58) * ((1.0 - ((step(f56.x, f57) * clamp(CB0[29].z + (CB0[29].w * abs(f57 - 0.5)), 0.0, 1.0)) * f56.y)) * f54.y);
    vec3 f60 = normalize(f41 + f58);
    float f61 = clamp(f59, 0.0, 1.0);
    float f62 = f42 * f42;
    float f63 = max(0.001000000047497451305389404296875, dot(f34, f60));
    float f64 = dot(f58, f60);
    float f65 = 1.0 - f64;
    float f66 = f65 * f65;
    float f67 = (f66 * f66) * f65;
    vec3 f68 = vec3(f67) + (f44 * (1.0 - f67));
    float f69 = f62 * f62;
    float f70 = (((f63 * f69) - f63) * f63) + 1.0;
    float f71 = 1.0 - f43;
    float f72 = f45 * f71;
    vec3 f73 = vec3(f71);
    float f74 = f42 * 5.0;
    vec3 f75 = vec4(f46, f74).xyz;
    vec3 f76 = textureLod(PrefilteredEnvIndoorTexture, f75, f74).xyz;
    vec3 f77;
    if (CB0[32].w == 0.0)
    {
        f77 = f76;
    }
    else
    {
        f77 = mix(f76, textureLod(PrefilteredEnvBlendTargetTexture, f75, f74).xyz, vec3(CB0[32].w));
    }
    vec4 f78 = texture(PrecomputedBRDFTexture, vec2(f42, max(9.9999997473787516355514526367188e-05, dot(f34, f41))));
    float f79 = f78.x;
    float f80 = f78.y;
    vec3 f81 = ((f44 * f79) + vec3(f80)) / vec3(f79 + f80);
    vec3 f82 = f34 * f34;
    bvec3 f83 = lessThan(f34, vec3(0.0));
    vec3 f84 = vec3(f83.x ? f82.x : vec3(0.0).x, f83.y ? f82.y : vec3(0.0).y, f83.z ? f82.z : vec3(0.0).z);
    vec3 f85 = f82 - f84;
    float f86 = f85.x;
    float f87 = f85.y;
    float f88 = f85.z;
    float f89 = f84.x;
    float f90 = f84.y;
    float f91 = f84.z;
    vec3 f92 = ((((((f53.xyz * (f53.w * 120.0)) + ((((f73 - (f68 * f72)) * CB0[15].xyz) * f61) + (CB0[17].xyz * (f71 * clamp(-f59, 0.0, 1.0))))) + (((f73 - (f81 * f72)) * ((((((((CB0[40].xyz * f86) + (CB0[42].xyz * f87)) + (CB0[44].xyz * f88)) + (CB0[41].xyz * f89)) + (CB0[43].xyz * f90)) + (CB0[45].xyz * f91)) * CB0[30].w) + ((((((((CB0[34].xyz * f86) + (CB0[36].xyz * f87)) + (CB0[38].xyz * f88)) + (CB0[35].xyz * f89)) + (CB0[37].xyz * f90)) + (CB0[39].xyz * f91)) * CB0[30].w) * f55))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * f55)) * 1.0)) + vec3((f26.z * 2.0) * f40)) * f39) + (((((f68 * (((f69 + (f69 * f69)) / (((f70 * f70) * ((f64 * 3.0) + 0.5)) * ((f63 * 0.75) + 0.25))) * f61)) * CB0[15].xyz) * 1.0) * (f40 * VARYING0.w)) + ((mix(f77, textureLod(PrefilteredEnvTexture, f75, f74).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f46.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f55)) * f81) * f45));
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
