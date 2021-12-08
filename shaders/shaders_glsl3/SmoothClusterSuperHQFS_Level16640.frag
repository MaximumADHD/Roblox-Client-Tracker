#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform vec4 CB4[36];
uniform vec4 CB5[74];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
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
    int f32 = int(VARYING10.x + 0.5);
    int f33 = int(VARYING10.y + 0.5);
    int f34 = int(VARYING10.z + 0.5);
    vec2 f35 = f29.xz - vec2(0.5);
    vec2 f36 = f30.xz - vec2(0.5);
    vec2 f37 = f31.xz - vec2(0.5);
    vec3 f38 = vec3(0.0);
    f38.x = CB4[f32 * 1 + 0].x * f29.y;
    float f39 = f35.x;
    float f40 = f35.y;
    vec3 f41 = f38;
    f41.y = (CB4[f32 * 1 + 0].y * f39) - (CB4[f32 * 1 + 0].z * f40);
    vec3 f42 = f41;
    f42.z = (CB4[f32 * 1 + 0].z * f39) + (CB4[f32 * 1 + 0].y * f40);
    vec3 f43 = vec3(0.0);
    f43.x = CB4[f33 * 1 + 0].x * f30.y;
    float f44 = f36.x;
    float f45 = f36.y;
    vec3 f46 = f43;
    f46.y = (CB4[f33 * 1 + 0].y * f44) - (CB4[f33 * 1 + 0].z * f45);
    vec3 f47 = f46;
    f47.z = (CB4[f33 * 1 + 0].z * f44) + (CB4[f33 * 1 + 0].y * f45);
    vec3 f48 = vec3(0.0);
    f48.x = CB4[f34 * 1 + 0].x * f31.y;
    float f49 = f37.x;
    float f50 = f37.y;
    vec3 f51 = f48;
    f51.y = (CB4[f34 * 1 + 0].y * f49) - (CB4[f34 * 1 + 0].z * f50);
    vec3 f52 = f51;
    f52.z = (CB4[f34 * 1 + 0].z * f49) + (CB4[f34 * 1 + 0].y * f50);
    vec4 f53 = ((vec4(f42.x, f42.y, f42.z, f29.w) * f5.x) + (vec4(f47.x, f47.y, f47.z, f30.w) * f5.y)) + (vec4(f52.x, f52.y, f52.z, f31.w) * f5.z);
    float f54 = f53.x;
    float f55 = f54 - f53.z;
    vec3 f56 = vec4(vec3(f55, f54, f55) + (vec3(f53.yzy) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f57 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    float f58 = -VARYING6.x;
    vec2 f59 = (((texture(NormalMapTexture, f0) * f5.x) + (texture(NormalMapTexture, f2) * f5.y)) + (texture(NormalMapTexture, VARYING3.xyz) * f5.z)).wy * 2.0;
    vec2 f60 = f59 - vec2(1.0);
    vec3 f61 = normalize(((vec3(f60, sqrt(clamp(1.0 + dot(vec2(1.0) - f59, f60), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f5, f5))) + vec3(0.0, 0.0, 1.0));
    vec3 f62 = vec3(dot(VARYING7, f5));
    vec3 f63 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f58), vec3(VARYING6.y, f58, 0.0), f62) * f61.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f62) * f61.y)) + (VARYING6 * f61.z)), 0.0).xyz;
    vec3 f64 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f65 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f66 = VARYING4.yzx - (VARYING4.yzx * f65);
    vec4 f67 = vec4(clamp(f65, 0.0, 1.0));
    vec4 f68 = mix(texture(LightMapTexture, f66), vec4(0.0), f67);
    vec4 f69 = mix(texture(LightGridSkylightTexture, f66), vec4(1.0), f67);
    vec3 f70 = (f68.xyz * (f68.w * 120.0)).xyz;
    float f71 = f69.x;
    vec4 f72 = texture(ShadowMapTexture, f64.xy);
    float f73 = f64.z;
    vec3 f74 = normalize(VARYING9);
    vec3 f75 = (f56 * f56).xyz;
    float f76 = f28.y;
    float f77 = f28.x;
    vec3 f78 = mix(vec3(0.039999999105930328369140625), f75, vec3(f77));
    float f79 = CB0[26].w * f57;
    vec3 f80 = reflect(-f74, f63);
    vec3 f81 = -CB0[11].xyz;
    float f82 = dot(f63, f81) * ((1.0 - ((step(f72.x, f73) * clamp(CB0[24].z + (CB0[24].w * abs(f73 - 0.5)), 0.0, 1.0)) * f72.y)) * f69.y);
    vec3 f83 = normalize(f81 + f74);
    float f84 = clamp(f82, 0.0, 1.0);
    float f85 = f76 * f76;
    float f86 = max(0.001000000047497451305389404296875, dot(f63, f83));
    float f87 = dot(f81, f83);
    float f88 = 1.0 - f87;
    float f89 = f88 * f88;
    float f90 = (f89 * f89) * f88;
    vec3 f91 = vec3(f90) + (f78 * (1.0 - f90));
    float f92 = f85 * f85;
    float f93 = (((f86 * f92) - f86) * f86) + 1.0;
    float f94 = 1.0 - f77;
    float f95 = f79 * f94;
    vec3 f96 = vec3(f94);
    float f97 = f76 * 5.0;
    vec3 f98 = vec4(f80, f97).xyz;
    vec4 f99 = texture(PrecomputedBRDFTexture, vec2(f76, max(9.9999997473787516355514526367188e-05, dot(f63, f74))));
    float f100 = f99.x;
    float f101 = f99.y;
    vec3 f102 = ((f78 * f100) + vec3(f101)) / vec3(f100 + f101);
    vec3 f103 = f96 - (f102 * f95);
    vec3 f104 = f63 * f63;
    bvec3 f105 = lessThan(f63, vec3(0.0));
    vec3 f106 = vec3(f105.x ? f104.x : vec3(0.0).x, f105.y ? f104.y : vec3(0.0).y, f105.z ? f104.z : vec3(0.0).z);
    vec3 f107 = f104 - f106;
    float f108 = f107.x;
    float f109 = f107.y;
    float f110 = f107.z;
    float f111 = f106.x;
    float f112 = f106.y;
    float f113 = f106.z;
    vec3 f114 = (mix(textureLod(PrefilteredEnvIndoorTexture, f98, f97).xyz * f70, textureLod(PrefilteredEnvTexture, f98, f97).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f80.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f71)) * f102) * f79;
    vec3 f115 = (((((((((f96 - (f91 * f95)) * CB0[10].xyz) * f84) + (CB0[12].xyz * (f94 * clamp(-f82, 0.0, 1.0)))) + (f103 * (((((((CB0[35].xyz * f108) + (CB0[37].xyz * f109)) + (CB0[39].xyz * f110)) + (CB0[36].xyz * f111)) + (CB0[38].xyz * f112)) + (CB0[40].xyz * f113)) + (((((((CB0[29].xyz * f108) + (CB0[31].xyz * f109)) + (CB0[33].xyz * f110)) + (CB0[30].xyz * f111)) + (CB0[32].xyz * f112)) + (CB0[34].xyz * f113)) * f71)))) + (CB0[27].xyz + (CB0[28].xyz * f71))) + vec3((f28.z * 2.0) * f57)) * f75) + (((((f91 * (((f92 + (f92 * f92)) / (((f93 * f93) * ((f87 * 3.0) + 0.5)) * ((f86 * 0.75) + 0.25))) * f84)) * CB0[10].xyz) * f57) * VARYING0.w) + f114)) + ((f70 * mix(f75, f114 * (1.0 / (max(max(f114.x, f114.y), f114.z) + 0.00999999977648258209228515625)), (vec3(1.0) - f103) * (f79 * (1.0 - f71)))) * 1.0);
    vec4 f116 = vec4(f115.x, f115.y, f115.z, vec4(0.0).w);
    f116.w = 1.0;
    float f117 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f118 = textureLod(PrefilteredEnvTexture, vec4(-VARYING9, 0.0).xyz, max(CB0[13].y, f117) * 5.0).xyz;
    bvec3 f119 = bvec3(!(CB0[13].w == 0.0));
    vec3 f120 = sqrt(clamp(mix(vec3(f119.x ? CB0[14].xyz.x : f118.x, f119.y ? CB0[14].xyz.y : f118.y, f119.z ? CB0[14].xyz.z : f118.z), f116.xyz, vec3(f117)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f120.x, f120.y, f120.z, f116.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$SpecularMapTexture=s2
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
