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
    float f36 = f35.x;
    vec4 f37 = f29.yxzw;
    f37.y = f36;
    float f38 = f35.y;
    vec4 f39 = f37;
    f39.z = f38;
    vec2 f40 = f30.xz - vec2(0.5);
    float f41 = f40.x;
    vec4 f42 = f30.yxzw;
    f42.y = f41;
    float f43 = f40.y;
    vec4 f44 = f42;
    f44.z = f43;
    vec2 f45 = f31.xz - vec2(0.5);
    float f46 = f45.x;
    vec4 f47 = f31.yxzw;
    f47.y = f46;
    float f48 = f45.y;
    vec4 f49 = f47;
    f49.z = f48;
    vec3 f50;
    vec4 f51;
    if (!(CB4[f32 * 1 + 0].w == 0.0))
    {
        f51 = f39;
        f50 = mix(vec3(1.0), CB4[f32 * 1 + 0].xyz, vec3(f29.w)) * f5.x;
    }
    else
    {
        vec4 f52 = f39;
        f52.x = CB4[f32 * 1 + 0].x * f29.y;
        vec4 f53 = f52;
        f53.y = (CB4[f32 * 1 + 0].y * f36) - (CB4[f32 * 1 + 0].z * f38);
        vec4 f54 = f53;
        f54.z = (CB4[f32 * 1 + 0].z * f36) + (CB4[f32 * 1 + 0].y * f38);
        f51 = f54;
        f50 = vec3(f5.x);
    }
    vec3 f55;
    vec4 f56;
    if (!(CB4[f33 * 1 + 0].w == 0.0))
    {
        f56 = f44;
        f55 = f50 + (mix(vec3(1.0), CB4[f33 * 1 + 0].xyz, vec3(f30.w)) * f5.y);
    }
    else
    {
        vec4 f57 = f44;
        f57.x = CB4[f33 * 1 + 0].x * f30.y;
        vec4 f58 = f57;
        f58.y = (CB4[f33 * 1 + 0].y * f41) - (CB4[f33 * 1 + 0].z * f43);
        vec4 f59 = f58;
        f59.z = (CB4[f33 * 1 + 0].z * f41) + (CB4[f33 * 1 + 0].y * f43);
        f56 = f59;
        f55 = f50 + vec3(f5.y);
    }
    vec3 f60;
    vec4 f61;
    if (!(CB4[f34 * 1 + 0].w == 0.0))
    {
        f61 = f49;
        f60 = f55 + (mix(vec3(1.0), CB4[f34 * 1 + 0].xyz, vec3(f31.w)) * f5.z);
    }
    else
    {
        vec4 f62 = f49;
        f62.x = CB4[f34 * 1 + 0].x * f31.y;
        vec4 f63 = f62;
        f63.y = (CB4[f34 * 1 + 0].y * f46) - (CB4[f34 * 1 + 0].z * f48);
        vec4 f64 = f63;
        f64.z = (CB4[f34 * 1 + 0].z * f46) + (CB4[f34 * 1 + 0].y * f48);
        f61 = f64;
        f60 = f55 + vec3(f5.z);
    }
    vec4 f65 = ((f51 * f5.x) + (f56 * f5.y)) + (f61 * f5.z);
    float f66 = f65.x;
    float f67 = f66 - f65.z;
    vec3 f68 = vec4(vec3(f67, f66, f67) + (vec3(f65.yzy) * vec3(1.0, 1.0, -1.0)), 0.0).xyz * f60;
    vec4 f69 = vec4(0.0);
    f69.x = f68.x;
    vec4 f70 = f69;
    f70.y = f68.y;
    vec4 f71 = f70;
    f71.z = f68.z;
    vec3 f72 = f71.xyz * f71.xyz;
    vec3 f73 = CB0[7].xyz - VARYING5.xyz;
    float f74 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec4 f75 = texture(NormalMapTexture, f0);
    vec4 f76 = texture(NormalMapTexture, f2);
    vec4 f77 = texture(NormalMapTexture, VARYING3.xyz);
    float f78 = -VARYING6.x;
    vec2 f79 = (((f75 * f5.x) + (f76 * f5.y)) + (f77 * f5.z)).wy * 2.0;
    vec2 f80 = f79 - vec2(1.0);
    vec3 f81 = normalize(((vec3(f80, sqrt(clamp(1.0 + dot(vec2(1.0) - f79, f80), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f5, f5))) + vec3(0.0, 0.0, 1.0));
    vec3 f82 = vec3(dot(VARYING7, f5));
    vec3 f83 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f78), vec3(VARYING6.y, f78, 0.0), f82) * f81.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f82) * f81.y)) + (VARYING6 * f81.z)), 0.0).xyz;
    vec3 f84 = -CB0[11].xyz;
    float f85 = dot(f83, f84);
    vec3 f86 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f87 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f88 = VARYING4.yzx - (VARYING4.yzx * f87);
    vec4 f89 = texture(LightMapTexture, f88);
    vec4 f90 = texture(LightGridSkylightTexture, f88);
    vec4 f91 = vec4(clamp(f87, 0.0, 1.0));
    vec4 f92 = mix(f89, vec4(0.0), f91);
    vec4 f93 = mix(f90, vec4(1.0), f91);
    float f94 = f93.x;
    float f95 = f93.y;
    vec3 f96 = f86 - CB0[41].xyz;
    vec3 f97 = f86 - CB0[42].xyz;
    vec3 f98 = f86 - CB0[43].xyz;
    vec4 f99 = vec4(f86, 1.0) * mat4(CB8[((dot(f96, f96) < CB0[41].w) ? 0 : ((dot(f97, f97) < CB0[42].w) ? 1 : ((dot(f98, f98) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f96, f96) < CB0[41].w) ? 0 : ((dot(f97, f97) < CB0[42].w) ? 1 : ((dot(f98, f98) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f96, f96) < CB0[41].w) ? 0 : ((dot(f97, f97) < CB0[42].w) ? 1 : ((dot(f98, f98) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f96, f96) < CB0[41].w) ? 0 : ((dot(f97, f97) < CB0[42].w) ? 1 : ((dot(f98, f98) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f100 = textureLod(ShadowAtlasTexture, f99.xy, 0.0);
    vec2 f101 = vec2(0.0);
    f101.x = CB0[46].z;
    vec2 f102 = f101;
    f102.y = CB0[46].w;
    float f103 = (2.0 * f99.z) - 1.0;
    float f104 = exp(CB0[46].z * f103);
    float f105 = -exp((-CB0[46].w) * f103);
    vec2 f106 = (f102 * CB0[47].y) * vec2(f104, f105);
    vec2 f107 = f106 * f106;
    float f108 = f100.x;
    float f109 = max(f100.y - (f108 * f108), f107.x);
    float f110 = f104 - f108;
    float f111 = f100.z;
    float f112 = max(f100.w - (f111 * f111), f107.y);
    float f113 = f105 - f111;
    vec3 f114 = normalize(f73);
    float f115 = f28.y;
    float f116 = f28.x;
    vec3 f117 = mix(vec3(0.039999999105930328369140625), f72, vec3(f116));
    float f118 = CB0[26].w * f74;
    vec3 f119 = reflect(-f114, f83);
    vec3 f120 = normalize(f84 + f114);
    float f121 = clamp((f85 * CB0[9].w) * (((f85 * CB0[47].x) > 0.0) ? mix(min((f104 <= f108) ? 1.0 : clamp(((f109 / (f109 + (f110 * f110))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f105 <= f111) ? 1.0 : clamp(((f112 / (f112 + (f113 * f113))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f95, clamp((length(f86 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f95), 0.0, 1.0);
    float f122 = f115 * f115;
    float f123 = max(0.001000000047497451305389404296875, dot(f83, f120));
    float f124 = dot(f84, f120);
    float f125 = 1.0 - f124;
    float f126 = f125 * f125;
    float f127 = (f126 * f126) * f125;
    vec3 f128 = vec3(f127) + (f117 * (1.0 - f127));
    float f129 = f122 * f122;
    float f130 = (((f123 * f129) - f123) * f123) + 1.0;
    float f131 = 1.0 - f116;
    float f132 = f118 * f131;
    vec3 f133 = vec3(f131);
    float f134 = f115 * 5.0;
    vec3 f135 = vec4(f119, f134).xyz;
    vec3 f136 = textureLod(PrefilteredEnvIndoorTexture, f135, f134).xyz;
    vec3 f137;
    if (CB0[27].w == 0.0)
    {
        f137 = f136;
    }
    else
    {
        f137 = mix(f136, textureLod(PrefilteredEnvBlendTargetTexture, f135, f134).xyz, vec3(CB0[27].w));
    }
    vec4 f138 = texture(PrecomputedBRDFTexture, vec2(f115, max(9.9999997473787516355514526367188e-05, dot(f83, f114))));
    float f139 = f138.x;
    float f140 = f138.y;
    vec3 f141 = ((f117 * f139) + vec3(f140)) / vec3(f139 + f140);
    vec3 f142 = f83 * f83;
    bvec3 f143 = lessThan(f83, vec3(0.0));
    vec3 f144 = vec3(f143.x ? f142.x : vec3(0.0).x, f143.y ? f142.y : vec3(0.0).y, f143.z ? f142.z : vec3(0.0).z);
    vec3 f145 = f142 - f144;
    float f146 = f145.x;
    float f147 = f145.y;
    float f148 = f145.z;
    float f149 = f144.x;
    float f150 = f144.y;
    float f151 = f144.z;
    vec3 f152 = ((((((((f133 - (f128 * f132)) * CB0[10].xyz) * f121) + ((f92.xyz * (f92.w * 120.0)) * 1.0)) + ((f133 - (f141 * f132)) * (((((((CB0[35].xyz * f146) + (CB0[37].xyz * f147)) + (CB0[39].xyz * f148)) + (CB0[36].xyz * f149)) + (CB0[38].xyz * f150)) + (CB0[40].xyz * f151)) + (((((((CB0[29].xyz * f146) + (CB0[31].xyz * f147)) + (CB0[33].xyz * f148)) + (CB0[30].xyz * f149)) + (CB0[32].xyz * f150)) + (CB0[34].xyz * f151)) * f94)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f94))) + vec3((f28.z * 2.0) * f74)) * f72) + ((((((f128 * (((f129 + (f129 * f129)) / (((f130 * f130) * ((f124 * 3.0) + 0.5)) * ((f123 * 0.75) + 0.25))) * f121)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * f74) * VARYING0.w) + ((mix(f137, textureLod(PrefilteredEnvTexture, f135, f134).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f119.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f94)) * f141) * f118));
    vec4 f153 = vec4(0.0);
    f153.x = f152.x;
    vec4 f154 = f153;
    f154.y = f152.y;
    vec4 f155 = f154;
    f155.z = f152.z;
    vec4 f156 = f155;
    f156.w = 1.0;
    float f157 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f158 = textureLod(PrefilteredEnvTexture, vec4(-f73, 0.0).xyz, max(CB0[13].y, f157) * 5.0).xyz;
    bvec3 f159 = bvec3(!(CB0[13].w == 0.0));
    vec3 f160 = mix(vec3(f159.x ? CB0[14].xyz.x : f158.x, f159.y ? CB0[14].xyz.y : f158.y, f159.z ? CB0[14].xyz.z : f158.z), f156.xyz, vec3(f157));
    vec4 f161 = f156;
    f161.x = f160.x;
    vec4 f162 = f161;
    f162.y = f160.y;
    vec4 f163 = f162;
    f163.z = f160.z;
    vec3 f164 = sqrt(clamp(f163.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f165 = f163;
    f165.x = f164.x;
    vec4 f166 = f165;
    f166.y = f164.y;
    vec4 f167 = f166;
    f167.z = f164.z;
    _entryPointOutput = f167;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
