#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
uniform vec4 CB0[53];
uniform vec4 CB8[24];
uniform vec4 CB5[74];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D AOMapTexture;
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
    vec4 f29 = ((texture(AlbedoMapTexture, f0).yxzw * f5.x) + (texture(AlbedoMapTexture, f2).yxzw * f5.y)) + (texture(AlbedoMapTexture, VARYING3.xyz).yxzw * f5.z);
    vec2 f30 = f29.yz - vec2(0.5);
    float f31 = f29.x;
    float f32 = f31 - f30.y;
    vec3 f33 = vec4(vec3(f32, f31, f32) + (vec3(f30.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 f34 = CB0[7].xyz - VARYING5.xyz;
    float f35 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    float f36 = -VARYING6.x;
    vec2 f37 = (((texture(NormalMapTexture, f0) * f5.x) + (texture(NormalMapTexture, f2) * f5.y)) + (texture(NormalMapTexture, VARYING3.xyz) * f5.z)).wy * 2.0;
    vec2 f38 = f37 - vec2(1.0);
    vec3 f39 = normalize(((vec3(f38, sqrt(clamp(1.0 + dot(vec2(1.0) - f37, f38), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f5, f5))) + vec3(0.0, 0.0, 1.0));
    vec3 f40 = vec3(dot(VARYING7, f5));
    vec3 f41 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f36), vec3(VARYING6.y, f36, 0.0), f40) * f39.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f40) * f39.y)) + (VARYING6 * f39.z)), 0.0).xyz;
    vec3 f42 = -CB0[11].xyz;
    float f43 = dot(f41, f42);
    vec4 f44 = texture(AOMapTexture, gl_FragCoord.xy * CB0[45].xy);
    float f45 = f44.x;
    vec3 f46 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f47 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f48 = VARYING4.yzx - (VARYING4.yzx * f47);
    vec4 f49 = vec4(clamp(f47, 0.0, 1.0));
    vec4 f50 = mix(texture(LightMapTexture, f48), vec4(0.0), f49);
    vec4 f51 = mix(texture(LightGridSkylightTexture, f48), vec4(1.0), f49);
    vec3 f52 = (f50.xyz * (f50.w * 120.0)).xyz;
    float f53 = f51.x;
    float f54 = f51.y;
    vec3 f55 = f46 - CB0[41].xyz;
    vec3 f56 = f46 - CB0[42].xyz;
    vec3 f57 = f46 - CB0[43].xyz;
    vec4 f58 = vec4(f46, 1.0) * mat4(CB8[((dot(f55, f55) < CB0[41].w) ? 0 : ((dot(f56, f56) < CB0[42].w) ? 1 : ((dot(f57, f57) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f55, f55) < CB0[41].w) ? 0 : ((dot(f56, f56) < CB0[42].w) ? 1 : ((dot(f57, f57) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f55, f55) < CB0[41].w) ? 0 : ((dot(f56, f56) < CB0[42].w) ? 1 : ((dot(f57, f57) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f55, f55) < CB0[41].w) ? 0 : ((dot(f56, f56) < CB0[42].w) ? 1 : ((dot(f57, f57) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f59 = textureLod(ShadowAtlasTexture, f58.xy, 0.0);
    vec2 f60 = vec2(0.0);
    f60.x = CB0[46].z;
    vec2 f61 = f60;
    f61.y = CB0[46].w;
    float f62 = (2.0 * f58.z) - 1.0;
    float f63 = exp(CB0[46].z * f62);
    float f64 = -exp((-CB0[46].w) * f62);
    vec2 f65 = (f61 * CB0[47].y) * vec2(f63, f64);
    vec2 f66 = f65 * f65;
    float f67 = f59.x;
    float f68 = max(f59.y - (f67 * f67), f66.x);
    float f69 = f63 - f67;
    float f70 = f59.z;
    float f71 = max(f59.w - (f70 * f70), f66.y);
    float f72 = f64 - f70;
    vec3 f73 = normalize(f34);
    vec3 f74 = (f33 * f33).xyz;
    float f75 = f28.y;
    float f76 = CB0[26].w * f35;
    vec3 f77 = reflect(-f73, f41);
    vec3 f78 = normalize(f42 + f73);
    float f79 = clamp(f43 * ((f43 > 0.0) ? mix(f54, mix(min((f63 <= f67) ? 1.0 : clamp(((f68 / (f68 + (f69 * f69))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f64 <= f70) ? 1.0 : clamp(((f71 / (f71 + (f72 * f72))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f54, clamp((length(f46 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)), CB0[47].x) : 0.0), 0.0, 1.0);
    float f80 = f75 * f75;
    float f81 = max(0.001000000047497451305389404296875, dot(f41, f78));
    float f82 = dot(f42, f78);
    float f83 = 1.0 - f82;
    float f84 = f83 * f83;
    float f85 = (f84 * f84) * f83;
    vec3 f86 = vec3(f85) + (vec3(0.039999999105930328369140625) * (1.0 - f85));
    float f87 = f80 * f80;
    float f88 = (((f81 * f87) - f81) * f81) + 1.0;
    float f89 = f75 * 5.0;
    vec3 f90 = vec4(f77, f89).xyz;
    vec4 f91 = texture(PrecomputedBRDFTexture, vec2(f75, max(9.9999997473787516355514526367188e-05, dot(f41, f73))));
    float f92 = f91.x;
    float f93 = f91.y;
    vec3 f94 = ((vec3(0.039999999105930328369140625) * f92) + vec3(f93)) / vec3(f92 + f93);
    vec3 f95 = f94 * f76;
    vec3 f96 = f41 * f41;
    bvec3 f97 = lessThan(f41, vec3(0.0));
    vec3 f98 = vec3(f97.x ? f96.x : vec3(0.0).x, f97.y ? f96.y : vec3(0.0).y, f97.z ? f96.z : vec3(0.0).z);
    vec3 f99 = f96 - f98;
    float f100 = f99.x;
    float f101 = f99.y;
    float f102 = f99.z;
    float f103 = f98.x;
    float f104 = f98.y;
    float f105 = f98.z;
    vec3 f106 = (mix(textureLod(PrefilteredEnvIndoorTexture, f90, f89).xyz * f52, textureLod(PrefilteredEnvTexture, f90, f89).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f77.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f53)) * f94) * f76;
    vec3 f107 = ((((((((vec3(1.0) - (f86 * f76)) * CB0[10].xyz) * f79) + ((vec3(1.0) - f95) * (((((((CB0[35].xyz * f100) + (CB0[37].xyz * f101)) + (CB0[39].xyz * f102)) + (CB0[36].xyz * f103)) + (CB0[38].xyz * f104)) + (CB0[40].xyz * f105)) + (((((((CB0[29].xyz * f100) + (CB0[31].xyz * f101)) + (CB0[33].xyz * f102)) + (CB0[30].xyz * f103)) + (CB0[32].xyz * f104)) + (CB0[34].xyz * f105)) * f53)))) + ((CB0[27].xyz + (CB0[28].xyz * f53)) * (f45 * f45))) + vec3((f28.z * 2.0) * f35)) * f74) + (((((f86 * (((f87 + (f87 * f87)) / (((f88 * f88) * ((f82 * 3.0) + 0.5)) * ((f81 * 0.75) + 0.25))) * f79)) * CB0[10].xyz) * f35) * VARYING0.w) + f106)) + ((f52 * mix(f74, f106 * (1.0 / (max(max(f106.x, f106.y), f106.z) + 0.00999999977648258209228515625)), f95 * (f76 * (1.0 - f53)))) * f45);
    vec4 f108 = vec4(f107.x, f107.y, f107.z, vec4(0.0).w);
    f108.w = 1.0;
    float f109 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f110 = textureLod(PrefilteredEnvTexture, vec4(-f34, 0.0).xyz, max(CB0[13].y, f109) * 5.0).xyz;
    bvec3 f111 = bvec3(CB0[13].w != 0.0);
    vec3 f112 = sqrt(clamp(mix(vec3(f111.x ? CB0[14].xyz.x : f110.x, f111.y ? CB0[14].xyz.y : f110.y, f111.z ? CB0[14].xyz.z : f110.z), f108.xyz, vec3(f109)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f112.x, f112.y, f112.z, f108.w);
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$AOMapTexture=s10
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$SpecularMapTexture=s2
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
