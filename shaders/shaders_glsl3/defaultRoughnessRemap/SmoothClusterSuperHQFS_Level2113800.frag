#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
uniform vec4 CB0[53];
uniform vec4 CB8[24];
uniform vec4 CB4[63];
uniform vec4 CB5[63];
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
    vec2 f78 = (((f75 * f5.x) + (f76 * f5.y)) + (f77 * f5.z)).wy * 2.0;
    vec2 f79 = f78 - vec2(1.0);
    vec3 f80 = normalize(((vec3(f79, sqrt(clamp(1.0 + dot(vec2(1.0) - f78, f79), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f5, f5))) + vec3(0.0, 0.0, 1.0));
    vec3 f81 = vec3(dot(VARYING7, f5));
    vec3 f82 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f81) * f80.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f81) * f80.y)) + (VARYING6 * f80.z)), 0.0).xyz;
    vec3 f83 = -CB0[11].xyz;
    float f84 = dot(f82, f83);
    vec3 f85 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f86 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f87 = VARYING4.yzx - (VARYING4.yzx * f86);
    vec4 f88 = texture(LightMapTexture, f87);
    vec4 f89 = texture(LightGridSkylightTexture, f87);
    vec4 f90 = vec4(clamp(f86, 0.0, 1.0));
    vec4 f91 = mix(f88, vec4(0.0), f90);
    vec4 f92 = mix(f89, vec4(1.0), f90);
    float f93 = f92.x;
    float f94 = f92.y;
    vec3 f95 = f85 - CB0[41].xyz;
    vec3 f96 = f85 - CB0[42].xyz;
    vec3 f97 = f85 - CB0[43].xyz;
    vec4 f98 = vec4(f85, 1.0) * mat4(CB8[((dot(f95, f95) < CB0[41].w) ? 0 : ((dot(f96, f96) < CB0[42].w) ? 1 : ((dot(f97, f97) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f95, f95) < CB0[41].w) ? 0 : ((dot(f96, f96) < CB0[42].w) ? 1 : ((dot(f97, f97) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f95, f95) < CB0[41].w) ? 0 : ((dot(f96, f96) < CB0[42].w) ? 1 : ((dot(f97, f97) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f95, f95) < CB0[41].w) ? 0 : ((dot(f96, f96) < CB0[42].w) ? 1 : ((dot(f97, f97) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f99 = textureLod(ShadowAtlasTexture, f98.xy, 0.0);
    vec2 f100 = vec2(0.0);
    f100.x = CB0[46].z;
    vec2 f101 = f100;
    f101.y = CB0[46].w;
    float f102 = (2.0 * f98.z) - 1.0;
    float f103 = exp(CB0[46].z * f102);
    float f104 = -exp((-CB0[46].w) * f102);
    vec2 f105 = (f101 * CB0[47].y) * vec2(f103, f104);
    vec2 f106 = f105 * f105;
    float f107 = f99.x;
    float f108 = max(f99.y - (f107 * f107), f106.x);
    float f109 = f103 - f107;
    float f110 = f99.z;
    float f111 = max(f99.w - (f110 * f110), f106.y);
    float f112 = f104 - f110;
    vec3 f113 = normalize(f73);
    float f114 = 0.08900000154972076416015625 + (f28.y * 0.9110000133514404296875);
    float f115 = f28.x;
    vec3 f116 = mix(vec3(0.039999999105930328369140625), f72, vec3(f115));
    float f117 = CB0[26].w * f74;
    vec3 f118 = reflect(-f113, f82);
    vec3 f119 = normalize(f83 + f113);
    float f120 = clamp((f84 * CB0[9].w) * (((f84 * CB0[47].x) > 0.0) ? mix(min((f103 <= f107) ? 1.0 : clamp(((f108 / (f108 + (f109 * f109))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f104 <= f110) ? 1.0 : clamp(((f111 / (f111 + (f112 * f112))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f94, clamp((length(f85 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f94), 0.0, 1.0);
    float f121 = f114 * f114;
    float f122 = max(0.001000000047497451305389404296875, dot(f82, f119));
    float f123 = dot(f83, f119);
    float f124 = 1.0 - f123;
    float f125 = f124 * f124;
    float f126 = (f125 * f125) * f124;
    vec3 f127 = vec3(f126) + (f116 * (1.0 - f126));
    float f128 = f121 * f121;
    float f129 = (((f122 * f128) - f122) * f122) + 1.0;
    float f130 = 1.0 - f115;
    float f131 = f117 * f130;
    vec3 f132 = vec3(f130);
    float f133 = f114 * 5.0;
    vec3 f134 = vec4(f118, f133).xyz;
    vec3 f135 = textureLod(PrefilteredEnvIndoorTexture, f134, f133).xyz;
    vec3 f136;
    if (CB0[27].w == 0.0)
    {
        f136 = f135;
    }
    else
    {
        f136 = mix(f135, textureLod(PrefilteredEnvBlendTargetTexture, f134, f133).xyz, vec3(CB0[27].w));
    }
    vec4 f137 = texture(PrecomputedBRDFTexture, vec2(f114, max(9.9999997473787516355514526367188e-05, dot(f82, f113))));
    float f138 = f137.x;
    float f139 = f137.y;
    vec3 f140 = ((f116 * f138) + vec3(f139)) / vec3(f138 + f139);
    vec3 f141 = f82 * f82;
    bvec3 f142 = lessThan(f82, vec3(0.0));
    vec3 f143 = vec3(f142.x ? f141.x : vec3(0.0).x, f142.y ? f141.y : vec3(0.0).y, f142.z ? f141.z : vec3(0.0).z);
    vec3 f144 = f141 - f143;
    float f145 = f144.x;
    float f146 = f144.y;
    float f147 = f144.z;
    float f148 = f143.x;
    float f149 = f143.y;
    float f150 = f143.z;
    vec3 f151 = ((((((((f132 - (f127 * f131)) * CB0[10].xyz) * f120) + ((f91.xyz * (f91.w * 120.0)) * 1.0)) + ((f132 - (f140 * f131)) * (((((((CB0[35].xyz * f145) + (CB0[37].xyz * f146)) + (CB0[39].xyz * f147)) + (CB0[36].xyz * f148)) + (CB0[38].xyz * f149)) + (CB0[40].xyz * f150)) + (((((((CB0[29].xyz * f145) + (CB0[31].xyz * f146)) + (CB0[33].xyz * f147)) + (CB0[30].xyz * f148)) + (CB0[32].xyz * f149)) + (CB0[34].xyz * f150)) * f93)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f93))) + vec3((f28.z * 2.0) * f74)) * f72) + ((((((f127 * (((f128 + (f128 * f128)) / (((f129 * f129) * ((f123 * 3.0) + 0.5)) * ((f122 * 0.75) + 0.25))) * f120)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * f74) * VARYING0.w) + ((mix(f136, textureLod(PrefilteredEnvTexture, f134, f133).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f118.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f93)) * f140) * f117));
    vec4 f152 = vec4(0.0);
    f152.x = f151.x;
    vec4 f153 = f152;
    f153.y = f151.y;
    vec4 f154 = f153;
    f154.z = f151.z;
    vec4 f155 = f154;
    f155.w = 1.0;
    float f156 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f157 = textureLod(PrefilteredEnvTexture, vec4(-f73, 0.0).xyz, max(CB0[13].y, f156) * 5.0).xyz;
    bvec3 f158 = bvec3(!(CB0[13].w == 0.0));
    vec3 f159 = mix(vec3(f158.x ? CB0[14].xyz.x : f157.x, f158.y ? CB0[14].xyz.y : f157.y, f158.z ? CB0[14].xyz.z : f157.z), f155.xyz, vec3(f156));
    vec4 f160 = f155;
    f160.x = f159.x;
    vec4 f161 = f160;
    f161.y = f159.y;
    vec4 f162 = f161;
    f162.z = f159.z;
    vec3 f163 = sqrt(clamp(f162.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f164 = f162;
    f164.x = f163.x;
    vec4 f165 = f164;
    f165.y = f163.y;
    vec4 f166 = f165;
    f166.z = f163.z;
    _entryPointOutput = f166;
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
