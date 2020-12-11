#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
uniform vec4 CB0[53];
uniform vec4 CB8[24];
uniform vec4 CB4[36];
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
in vec4 VARYING9;
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
    int f32 = int(VARYING9.x + 0.5);
    int f33 = int(VARYING9.y + 0.5);
    int f34 = int(VARYING9.z + 0.5);
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
    vec3 f57 = CB0[7].xyz - VARYING5.xyz;
    float f58 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    float f59 = -VARYING6.x;
    vec2 f60 = (((texture(NormalMapTexture, f0) * f5.x) + (texture(NormalMapTexture, f2) * f5.y)) + (texture(NormalMapTexture, VARYING3.xyz) * f5.z)).wy * 2.0;
    vec2 f61 = f60 - vec2(1.0);
    vec3 f62 = normalize(((vec3(f61, sqrt(clamp(1.0 + dot(vec2(1.0) - f60, f61), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f5, f5))) + vec3(0.0, 0.0, 1.0));
    vec3 f63 = vec3(dot(VARYING7, f5));
    vec3 f64 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f59), vec3(VARYING6.y, f59, 0.0), f63) * f62.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f63) * f62.y)) + (VARYING6 * f62.z)), 0.0).xyz;
    vec3 f65 = -CB0[11].xyz;
    float f66 = dot(f64, f65);
    vec4 f67 = texture(AOMapTexture, gl_FragCoord.xy * CB0[45].xy);
    float f68 = f67.x;
    vec3 f69 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f70 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f71 = VARYING4.yzx - (VARYING4.yzx * f70);
    vec4 f72 = vec4(clamp(f70, 0.0, 1.0));
    vec4 f73 = mix(texture(LightMapTexture, f71), vec4(0.0), f72);
    vec4 f74 = mix(texture(LightGridSkylightTexture, f71), vec4(1.0), f72);
    vec3 f75 = (f73.xyz * (f73.w * 120.0)).xyz;
    float f76 = f74.x;
    float f77 = f74.y;
    vec3 f78 = f69 - CB0[41].xyz;
    vec3 f79 = f69 - CB0[42].xyz;
    vec3 f80 = f69 - CB0[43].xyz;
    vec4 f81 = vec4(f69, 1.0) * mat4(CB8[((dot(f78, f78) < CB0[41].w) ? 0 : ((dot(f79, f79) < CB0[42].w) ? 1 : ((dot(f80, f80) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f78, f78) < CB0[41].w) ? 0 : ((dot(f79, f79) < CB0[42].w) ? 1 : ((dot(f80, f80) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f78, f78) < CB0[41].w) ? 0 : ((dot(f79, f79) < CB0[42].w) ? 1 : ((dot(f80, f80) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f78, f78) < CB0[41].w) ? 0 : ((dot(f79, f79) < CB0[42].w) ? 1 : ((dot(f80, f80) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f82 = textureLod(ShadowAtlasTexture, f81.xy, 0.0);
    vec2 f83 = vec2(0.0);
    f83.x = CB0[46].z;
    vec2 f84 = f83;
    f84.y = CB0[46].w;
    float f85 = (2.0 * f81.z) - 1.0;
    float f86 = exp(CB0[46].z * f85);
    float f87 = -exp((-CB0[46].w) * f85);
    vec2 f88 = (f84 * CB0[47].y) * vec2(f86, f87);
    vec2 f89 = f88 * f88;
    float f90 = f82.x;
    float f91 = max(f82.y - (f90 * f90), f89.x);
    float f92 = f86 - f90;
    float f93 = f82.z;
    float f94 = max(f82.w - (f93 * f93), f89.y);
    float f95 = f87 - f93;
    vec3 f96 = normalize(f57);
    vec3 f97 = (f56 * f56).xyz;
    float f98 = f28.y;
    float f99 = CB0[26].w * f58;
    vec3 f100 = reflect(-f96, f64);
    vec3 f101 = normalize(f65 + f96);
    float f102 = clamp(f66 * ((f66 > 0.0) ? mix(f77, mix(min((f86 <= f90) ? 1.0 : clamp(((f91 / (f91 + (f92 * f92))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f87 <= f93) ? 1.0 : clamp(((f94 / (f94 + (f95 * f95))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f77, clamp((length(f69 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)), CB0[47].x) : 0.0), 0.0, 1.0);
    float f103 = f98 * f98;
    float f104 = max(0.001000000047497451305389404296875, dot(f64, f101));
    float f105 = dot(f65, f101);
    float f106 = 1.0 - f105;
    float f107 = f106 * f106;
    float f108 = (f107 * f107) * f106;
    vec3 f109 = vec3(f108) + (vec3(0.039999999105930328369140625) * (1.0 - f108));
    float f110 = f103 * f103;
    float f111 = (((f104 * f110) - f104) * f104) + 1.0;
    float f112 = f98 * 5.0;
    vec3 f113 = vec4(f100, f112).xyz;
    vec4 f114 = texture(PrecomputedBRDFTexture, vec2(f98, max(9.9999997473787516355514526367188e-05, dot(f64, f96))));
    float f115 = f114.x;
    float f116 = f114.y;
    vec3 f117 = ((vec3(0.039999999105930328369140625) * f115) + vec3(f116)) / vec3(f115 + f116);
    vec3 f118 = f117 * f99;
    vec3 f119 = f64 * f64;
    bvec3 f120 = lessThan(f64, vec3(0.0));
    vec3 f121 = vec3(f120.x ? f119.x : vec3(0.0).x, f120.y ? f119.y : vec3(0.0).y, f120.z ? f119.z : vec3(0.0).z);
    vec3 f122 = f119 - f121;
    float f123 = f122.x;
    float f124 = f122.y;
    float f125 = f122.z;
    float f126 = f121.x;
    float f127 = f121.y;
    float f128 = f121.z;
    vec3 f129 = (mix(textureLod(PrefilteredEnvIndoorTexture, f113, f112).xyz * f75, textureLod(PrefilteredEnvTexture, f113, f112).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f100.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f76)) * f117) * f99;
    vec3 f130 = ((((((((vec3(1.0) - (f109 * f99)) * CB0[10].xyz) * f102) + ((vec3(1.0) - f118) * (((((((CB0[35].xyz * f123) + (CB0[37].xyz * f124)) + (CB0[39].xyz * f125)) + (CB0[36].xyz * f126)) + (CB0[38].xyz * f127)) + (CB0[40].xyz * f128)) + (((((((CB0[29].xyz * f123) + (CB0[31].xyz * f124)) + (CB0[33].xyz * f125)) + (CB0[30].xyz * f126)) + (CB0[32].xyz * f127)) + (CB0[34].xyz * f128)) * f76)))) + ((CB0[27].xyz + (CB0[28].xyz * f76)) * (f68 * f68))) + vec3((f28.z * 2.0) * f58)) * f97) + (((((f109 * (((f110 + (f110 * f110)) / (((f111 * f111) * ((f105 * 3.0) + 0.5)) * ((f104 * 0.75) + 0.25))) * f102)) * CB0[10].xyz) * f58) * VARYING0.w) + f129)) + ((f75 * mix(f97, f129 * (1.0 / (max(max(f129.x, f129.y), f129.z) + 0.00999999977648258209228515625)), f118 * (f99 * (1.0 - f76)))) * f68);
    vec4 f131 = vec4(f130.x, f130.y, f130.z, vec4(0.0).w);
    f131.w = 1.0;
    float f132 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f133 = textureLod(PrefilteredEnvTexture, vec4(-f57, 0.0).xyz, max(CB0[13].y, f132) * 5.0).xyz;
    bvec3 f134 = bvec3(CB0[13].w != 0.0);
    vec3 f135 = sqrt(clamp(mix(vec3(f134.x ? CB0[14].xyz.x : f133.x, f134.y ? CB0[14].xyz.y : f133.y, f134.z ? CB0[14].xyz.z : f133.z), f131.xyz, vec3(f132)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f135.x, f135.y, f135.z, f131.w);
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
