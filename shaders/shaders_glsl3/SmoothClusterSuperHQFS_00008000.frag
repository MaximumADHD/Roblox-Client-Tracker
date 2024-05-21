#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[57];
uniform vec4 CB5[63];
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
        float f11 = dot(VARYING0.xyz, vec3(CB5[f8 * 1 + 0].z, CB5[f9 * 1 + 0].z, CB5[f10 * 1 + 0].z));
        vec3 f12 = vec3(0.0);
        f12.x = clamp((f1.w * CB5[f8 * 1 + 0].x) + CB5[f8 * 1 + 0].y, 0.0, 1.0);
        vec3 f13 = f12;
        f13.y = clamp((f3.w * CB5[f9 * 1 + 0].x) + CB5[f9 * 1 + 0].y, 0.0, 1.0);
        vec3 f14 = f13;
        f14.z = clamp((f5.w * CB5[f10 * 1 + 0].x) + CB5[f10 * 1 + 0].y, 0.0, 1.0);
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
    vec4 f38 = ((f35.yxzw * f6.x) + (f36.yxzw * f6.y)) + (f37.yxzw * f6.z);
    vec2 f39 = f38.yz - vec2(0.5);
    float f40 = f38.x;
    float f41 = f40 - f39.y;
    vec3 f42 = vec4(vec3(f41, f40, f41) + (vec3(f39.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f43 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec3 f44 = normalize(VARYING8);
    float f45 = 0.08900000154972076416015625 + (f26.y * 0.9110000133514404296875);
    float f46 = CB0[31].w * f43;
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
    vec3 f58 = reflect(-f44, f34);
    float f59 = f45 * 5.0;
    vec3 f60 = vec4(f58, f59).xyz;
    vec3 f61 = textureLod(PrefilteredEnvIndoorTexture, f60, f59).xyz;
    vec3 f62;
    if (CB0[32].w == 0.0)
    {
        f62 = f61;
    }
    else
    {
        f62 = mix(f61, textureLod(PrefilteredEnvBlendTargetTexture, f60, f59).xyz, vec3(CB0[32].w));
    }
    vec4 f63 = texture(PrecomputedBRDFTexture, vec2(f45, max(9.9999997473787516355514526367188e-05, dot(f34, f44))));
    float f64 = f63.x;
    float f65 = f63.y;
    vec3 f66 = ((vec3(0.039999999105930328369140625) * f64) + vec3(f65)) / vec3(f64 + f65);
    vec3 f67 = f34 * f34;
    bvec3 f68 = lessThan(f34, vec3(0.0));
    vec3 f69 = vec3(f68.x ? f67.x : vec3(0.0).x, f68.y ? f67.y : vec3(0.0).y, f68.z ? f67.z : vec3(0.0).z);
    vec3 f70 = f67 - f69;
    float f71 = f70.x;
    float f72 = f70.y;
    float f73 = f70.z;
    float f74 = f69.x;
    float f75 = f69.y;
    float f76 = f69.z;
    vec3 f77 = -CB0[16].xyz;
    float f78 = dot(f34, f77) * ((1.0 - ((step(f56.x, f57) * clamp(CB0[29].z + (CB0[29].w * abs(f57 - 0.5)), 0.0, 1.0)) * f56.y)) * f54.y);
    vec3 f79 = normalize(f44 + f77);
    float f80 = clamp(f78, 0.0, 1.0);
    float f81 = f45 * f45;
    float f82 = max(0.001000000047497451305389404296875, dot(f34, f79));
    float f83 = dot(f77, f79);
    float f84 = 1.0 - f83;
    float f85 = f84 * f84;
    float f86 = (f85 * f85) * f84;
    vec3 f87 = vec3(f86) + (vec3(0.039999999105930328369140625) * (1.0 - f86));
    float f88 = f81 * f81;
    float f89 = (((f82 * f88) - f82) * f82) + 1.0;
    vec3 f90 = (((((vec3((f26.z * 2.0) * f43) + (((vec3(1.0) - (f66 * f46)) * (((((((CB0[40].xyz * f71) + (CB0[42].xyz * f72)) + (CB0[44].xyz * f73)) + (CB0[41].xyz * f74)) + (CB0[43].xyz * f75)) + (CB0[45].xyz * f76)) + (((((((CB0[34].xyz * f71) + (CB0[36].xyz * f72)) + (CB0[38].xyz * f73)) + (CB0[35].xyz * f74)) + (CB0[37].xyz * f75)) + (CB0[39].xyz * f76)) * f55))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * f55)) * 1.0)) + ((((vec3(1.0) - (f87 * f46)) * CB0[15].xyz) * f80) + (CB0[17].xyz * clamp(-f78, 0.0, 1.0)))) + (f53.xyz * (f53.w * 120.0))) * (f42 * f42)) + (((mix(f62, textureLod(PrefilteredEnvTexture, f60, f59).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f58.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f55)) * f66) * f46) + (((f87 * (((f88 + (f88 * f88)) / (((f89 * f89) * ((f83 * 3.0) + 0.5)) * ((f82 * 0.75) + 0.25))) * f80)) * CB0[15].xyz) * (f43 * VARYING0.w)));
    vec4 f91 = vec4(0.0);
    f91.x = f90.x;
    vec4 f92 = f91;
    f92.y = f90.y;
    vec4 f93 = f92;
    f93.z = f90.z;
    vec4 f94 = f93;
    f94.w = 1.0;
    float f95 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f96 = textureLod(PrefilteredEnvTexture, vec4(-VARYING8, 0.0).xyz, max(CB0[18].y, f95) * 5.0).xyz;
    bvec3 f97 = bvec3(!(CB0[18].w == 0.0));
    vec3 f98 = mix(vec3(f97.x ? CB0[19].xyz.x : f96.x, f97.y ? CB0[19].xyz.y : f96.y, f97.z ? CB0[19].xyz.z : f96.z), f94.xyz, vec3(f95));
    vec4 f99 = f94;
    f99.x = f98.x;
    vec4 f100 = f99;
    f100.y = f98.y;
    vec4 f101 = f100;
    f101.z = f98.z;
    vec3 f102 = sqrt(clamp(f101.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f103 = f101;
    f103.x = f102.x;
    vec4 f104 = f103;
    f104.y = f102.y;
    vec4 f105 = f104;
    f105.z = f102.z;
    _entryPointOutput = f105;
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
