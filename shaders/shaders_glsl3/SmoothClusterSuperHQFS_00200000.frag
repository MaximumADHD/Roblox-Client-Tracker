#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
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
    vec4 f32 = ((f29.yxzw * f5.x) + (f30.yxzw * f5.y)) + (f31.yxzw * f5.z);
    vec2 f33 = f32.yz - vec2(0.5);
    float f34 = f32.x;
    float f35 = f34 - f33.y;
    vec3 f36 = vec4(vec3(f35, f34, f35) + (vec3(f33.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f37 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec4 f38 = texture(NormalMapTexture, f0);
    vec4 f39 = texture(NormalMapTexture, f2);
    vec4 f40 = texture(NormalMapTexture, VARYING3.xyz);
    vec2 f41 = (((f38 * f5.x) + (f39 * f5.y)) + (f40 * f5.z)).wy * 2.0;
    vec2 f42 = f41 - vec2(1.0);
    vec3 f43 = normalize(((vec3(f42, sqrt(clamp(1.0 + dot(vec2(1.0) - f41, f42), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f5, f5))) + vec3(0.0, 0.0, 1.0));
    vec3 f44 = vec3(dot(VARYING7, f5));
    vec3 f45 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f44) * f43.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f44) * f43.y)) + (VARYING6 * f43.z)), 0.0).xyz;
    vec3 f46 = normalize(VARYING9);
    float f47 = 0.08900000154972076416015625 + (f28.y * 0.9110000133514404296875);
    float f48 = CB0[31].w * f37;
    vec3 f49 = reflect(-f46, f45);
    vec3 f50 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f51 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f52 = VARYING4.yzx - (VARYING4.yzx * f51);
    vec4 f53 = texture(LightMapTexture, f52);
    vec4 f54 = texture(LightGridSkylightTexture, f52);
    vec4 f55 = vec4(clamp(f51, 0.0, 1.0));
    vec4 f56 = mix(f53, vec4(0.0), f55);
    vec4 f57 = mix(f54, vec4(1.0), f55);
    float f58 = f57.x;
    vec4 f59 = texture(ShadowMapTexture, f50.xy);
    float f60 = f50.z;
    vec3 f61 = -CB0[16].xyz;
    float f62 = dot(f45, f61) * ((1.0 - ((step(f59.x, f60) * clamp(CB0[29].z + (CB0[29].w * abs(f60 - 0.5)), 0.0, 1.0)) * f59.y)) * f57.y);
    vec3 f63 = normalize(f46 - CB0[16].xyz);
    float f64 = clamp(f62, 0.0, 1.0);
    float f65 = f47 * f47;
    float f66 = max(0.001000000047497451305389404296875, dot(f45, f63));
    float f67 = dot(f61, f63);
    float f68 = 1.0 - f67;
    float f69 = f68 * f68;
    float f70 = (f69 * f69) * f68;
    vec3 f71 = vec3(f70) + (vec3(0.039999999105930328369140625) * (1.0 - f70));
    float f72 = f65 * f65;
    float f73 = (((f66 * f72) - f66) * f66) + 1.0;
    float f74 = f47 * 5.0;
    vec3 f75 = vec4(f49, f74).xyz;
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
    vec4 f78 = texture(PrecomputedBRDFTexture, vec2(f47, max(9.9999997473787516355514526367188e-05, dot(f45, f46))));
    float f79 = f78.x;
    float f80 = f78.y;
    vec3 f81 = ((vec3(0.039999999105930328369140625) * f79) + vec3(f80)) / vec3(f79 + f80);
    vec3 f82 = f45 * f45;
    bvec3 f83 = lessThan(f45, vec3(0.0));
    vec3 f84 = vec3(f83.x ? f82.x : vec3(0.0).x, f83.y ? f82.y : vec3(0.0).y, f83.z ? f82.z : vec3(0.0).z);
    vec3 f85 = f82 - f84;
    float f86 = f85.x;
    float f87 = f85.y;
    float f88 = f85.z;
    float f89 = f84.x;
    float f90 = f84.y;
    float f91 = f84.z;
    vec3 f92 = (((((((f56.xyz * (f56.w * 120.0)) * 1.0) + ((((vec3(1.0) - (f71 * f48)) * CB0[15].xyz) * f64) + (CB0[17].xyz * clamp(-f62, 0.0, 1.0)))) + ((vec3(1.0) - (f81 * f48)) * (((((((CB0[40].xyz * f86) + (CB0[42].xyz * f87)) + (CB0[44].xyz * f88)) + (CB0[41].xyz * f89)) + (CB0[43].xyz * f90)) + (CB0[45].xyz * f91)) + (((((((CB0[34].xyz * f86) + (CB0[36].xyz * f87)) + (CB0[38].xyz * f88)) + (CB0[35].xyz * f89)) + (CB0[37].xyz * f90)) + (CB0[39].xyz * f91)) * f58)))) + (CB0[32].xyz + ((CB0[33].xyz * 1.0) * f58))) + vec3((f28.z * 2.0) * f37)) * (f36 * f36)) + (((((f71 * (min((f72 + (f72 * f72)) / (((f73 * f73) * ((f67 * 3.0) + 0.5)) * ((f66 * 0.75) + 0.25)), 65504.0) * f64)) * CB0[15].xyz) * 1.0) * (f37 * VARYING0.w)) + ((mix(f77, textureLod(PrefilteredEnvTexture, f75, f74).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f49.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f58)) * f81) * f48));
    vec4 f93 = vec4(0.0);
    f93.x = f92.x;
    vec4 f94 = f93;
    f94.y = f92.y;
    vec4 f95 = f94;
    f95.z = f92.z;
    vec4 f96 = f95;
    f96.w = 1.0;
    float f97 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f98 = textureLod(PrefilteredEnvTexture, vec4(-VARYING9, 0.0).xyz, max(CB0[18].y, f97) * 5.0).xyz;
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
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
