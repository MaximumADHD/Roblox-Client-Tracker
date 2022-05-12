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
    vec3 f35;
    if (!(CB4[f32 * 1 + 0].w == 0.0))
    {
        f35 = (mix(vec3(1.0), CB4[f32 * 1 + 0].xyz, vec3(f29.w)) * f29.xyz) * f5.x;
    }
    else
    {
        vec2 f36 = f29.xz - vec2(0.5);
        float f37 = f36.x;
        float f38 = f36.y;
        float f39 = CB4[f32 * 1 + 0].x * f29.y;
        float f40 = (CB4[f32 * 1 + 0].y * f37) - (CB4[f32 * 1 + 0].z * f38);
        float f41 = (CB4[f32 * 1 + 0].z * f37) + (CB4[f32 * 1 + 0].y * f38);
        float f42 = f39 - f41;
        f35 = (vec3(f42, f39, f42) + (vec3(f40, f41, f40) * vec3(1.0, 1.0, -1.0))) * f5.x;
    }
    vec3 f43;
    if (!(CB4[f33 * 1 + 0].w == 0.0))
    {
        f43 = f35 + ((mix(vec3(1.0), CB4[f33 * 1 + 0].xyz, vec3(f30.w)) * f30.xyz) * f5.y);
    }
    else
    {
        vec2 f44 = f30.xz - vec2(0.5);
        float f45 = f44.x;
        float f46 = f44.y;
        float f47 = CB4[f33 * 1 + 0].x * f30.y;
        float f48 = (CB4[f33 * 1 + 0].y * f45) - (CB4[f33 * 1 + 0].z * f46);
        float f49 = (CB4[f33 * 1 + 0].z * f45) + (CB4[f33 * 1 + 0].y * f46);
        float f50 = f47 - f49;
        f43 = f35 + ((vec3(f50, f47, f50) + (vec3(f48, f49, f48) * vec3(1.0, 1.0, -1.0))) * f5.y);
    }
    vec3 f51;
    if (!(CB4[f34 * 1 + 0].w == 0.0))
    {
        f51 = f43 + ((mix(vec3(1.0), CB4[f34 * 1 + 0].xyz, vec3(f31.w)) * f31.xyz) * f5.z);
    }
    else
    {
        vec2 f52 = f31.xz - vec2(0.5);
        float f53 = f52.x;
        float f54 = f52.y;
        float f55 = CB4[f34 * 1 + 0].x * f31.y;
        float f56 = (CB4[f34 * 1 + 0].y * f53) - (CB4[f34 * 1 + 0].z * f54);
        float f57 = (CB4[f34 * 1 + 0].z * f53) + (CB4[f34 * 1 + 0].y * f54);
        float f58 = f55 - f57;
        f51 = f43 + ((vec3(f58, f55, f58) + (vec3(f56, f57, f56) * vec3(1.0, 1.0, -1.0))) * f5.z);
    }
    vec3 f59 = f51 * f51;
    vec3 f60 = CB0[7].xyz - VARYING5.xyz;
    float f61 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec4 f62 = texture(NormalMapTexture, f0);
    vec4 f63 = texture(NormalMapTexture, f2);
    vec4 f64 = texture(NormalMapTexture, VARYING3.xyz);
    float f65 = -VARYING6.x;
    vec2 f66 = (((f62 * f5.x) + (f63 * f5.y)) + (f64 * f5.z)).wy * 2.0;
    vec2 f67 = f66 - vec2(1.0);
    vec3 f68 = normalize(((vec3(f67, sqrt(clamp(1.0 + dot(vec2(1.0) - f66, f67), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f5, f5))) + vec3(0.0, 0.0, 1.0));
    vec3 f69 = vec3(dot(VARYING7, f5));
    vec3 f70 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f65), vec3(VARYING6.y, f65, 0.0), f69) * f68.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f69) * f68.y)) + (VARYING6 * f68.z)), 0.0).xyz;
    vec3 f71 = -CB0[11].xyz;
    float f72 = dot(f70, f71);
    vec3 f73 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f74 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f75 = VARYING4.yzx - (VARYING4.yzx * f74);
    vec4 f76 = texture(LightMapTexture, f75);
    vec4 f77 = texture(LightGridSkylightTexture, f75);
    vec4 f78 = vec4(clamp(f74, 0.0, 1.0));
    vec4 f79 = mix(f76, vec4(0.0), f78);
    vec4 f80 = mix(f77, vec4(1.0), f78);
    float f81 = f80.x;
    float f82 = f80.y;
    vec3 f83 = f73 - CB0[41].xyz;
    vec3 f84 = f73 - CB0[42].xyz;
    vec3 f85 = f73 - CB0[43].xyz;
    vec4 f86 = vec4(f73, 1.0) * mat4(CB8[((dot(f83, f83) < CB0[41].w) ? 0 : ((dot(f84, f84) < CB0[42].w) ? 1 : ((dot(f85, f85) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f83, f83) < CB0[41].w) ? 0 : ((dot(f84, f84) < CB0[42].w) ? 1 : ((dot(f85, f85) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f83, f83) < CB0[41].w) ? 0 : ((dot(f84, f84) < CB0[42].w) ? 1 : ((dot(f85, f85) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f83, f83) < CB0[41].w) ? 0 : ((dot(f84, f84) < CB0[42].w) ? 1 : ((dot(f85, f85) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f87 = textureLod(ShadowAtlasTexture, f86.xy, 0.0);
    vec2 f88 = vec2(0.0);
    f88.x = CB0[46].z;
    vec2 f89 = f88;
    f89.y = CB0[46].w;
    float f90 = (2.0 * f86.z) - 1.0;
    float f91 = exp(CB0[46].z * f90);
    float f92 = -exp((-CB0[46].w) * f90);
    vec2 f93 = (f89 * CB0[47].y) * vec2(f91, f92);
    vec2 f94 = f93 * f93;
    float f95 = f87.x;
    float f96 = max(f87.y - (f95 * f95), f94.x);
    float f97 = f91 - f95;
    float f98 = f87.z;
    float f99 = max(f87.w - (f98 * f98), f94.y);
    float f100 = f92 - f98;
    vec3 f101 = normalize(f60);
    float f102 = 0.08900000154972076416015625 + (f28.y * 0.9110000133514404296875);
    float f103 = f28.x;
    vec3 f104 = mix(vec3(0.039999999105930328369140625), f59, vec3(f103));
    float f105 = CB0[26].w * f61;
    vec3 f106 = reflect(-f101, f70);
    vec3 f107 = normalize(f71 + f101);
    float f108 = clamp((f72 * CB0[9].w) * (((f72 * CB0[47].x) > 0.0) ? mix(min((f91 <= f95) ? 1.0 : clamp(((f96 / (f96 + (f97 * f97))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f92 <= f98) ? 1.0 : clamp(((f99 / (f99 + (f100 * f100))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f82, clamp((length(f73 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f82), 0.0, 1.0);
    float f109 = f102 * f102;
    float f110 = max(0.001000000047497451305389404296875, dot(f70, f107));
    float f111 = dot(f71, f107);
    float f112 = 1.0 - f111;
    float f113 = f112 * f112;
    float f114 = (f113 * f113) * f112;
    vec3 f115 = vec3(f114) + (f104 * (1.0 - f114));
    float f116 = f109 * f109;
    float f117 = (((f110 * f116) - f110) * f110) + 1.0;
    float f118 = 1.0 - f103;
    float f119 = f105 * f118;
    vec3 f120 = vec3(f118);
    float f121 = f102 * 5.0;
    vec3 f122 = vec4(f106, f121).xyz;
    vec3 f123 = textureLod(PrefilteredEnvIndoorTexture, f122, f121).xyz;
    vec3 f124;
    if (CB0[27].w == 0.0)
    {
        f124 = f123;
    }
    else
    {
        f124 = mix(f123, textureLod(PrefilteredEnvBlendTargetTexture, f122, f121).xyz, vec3(CB0[27].w));
    }
    vec4 f125 = texture(PrecomputedBRDFTexture, vec2(f102, max(9.9999997473787516355514526367188e-05, dot(f70, f101))));
    float f126 = f125.x;
    float f127 = f125.y;
    vec3 f128 = ((f104 * f126) + vec3(f127)) / vec3(f126 + f127);
    vec3 f129 = f70 * f70;
    bvec3 f130 = lessThan(f70, vec3(0.0));
    vec3 f131 = vec3(f130.x ? f129.x : vec3(0.0).x, f130.y ? f129.y : vec3(0.0).y, f130.z ? f129.z : vec3(0.0).z);
    vec3 f132 = f129 - f131;
    float f133 = f132.x;
    float f134 = f132.y;
    float f135 = f132.z;
    float f136 = f131.x;
    float f137 = f131.y;
    float f138 = f131.z;
    vec3 f139 = ((((((((f120 - (f115 * f119)) * CB0[10].xyz) * f108) + ((f79.xyz * (f79.w * 120.0)) * 1.0)) + ((f120 - (f128 * f119)) * (((((((CB0[35].xyz * f133) + (CB0[37].xyz * f134)) + (CB0[39].xyz * f135)) + (CB0[36].xyz * f136)) + (CB0[38].xyz * f137)) + (CB0[40].xyz * f138)) + (((((((CB0[29].xyz * f133) + (CB0[31].xyz * f134)) + (CB0[33].xyz * f135)) + (CB0[30].xyz * f136)) + (CB0[32].xyz * f137)) + (CB0[34].xyz * f138)) * f81)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f81))) + vec3((f28.z * 2.0) * f61)) * f59) + ((((((f115 * (((f116 + (f116 * f116)) / (((f117 * f117) * ((f111 * 3.0) + 0.5)) * ((f110 * 0.75) + 0.25))) * f108)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * f61) * VARYING0.w) + ((mix(f124, textureLod(PrefilteredEnvTexture, f122, f121).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f106.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f81)) * f128) * f105));
    vec4 f140 = vec4(0.0);
    f140.x = f139.x;
    vec4 f141 = f140;
    f141.y = f139.y;
    vec4 f142 = f141;
    f142.z = f139.z;
    vec4 f143 = f142;
    f143.w = 1.0;
    float f144 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f145 = textureLod(PrefilteredEnvTexture, vec4(-f60, 0.0).xyz, max(CB0[13].y, f144) * 5.0).xyz;
    bvec3 f146 = bvec3(!(CB0[13].w == 0.0));
    vec3 f147 = mix(vec3(f146.x ? CB0[14].xyz.x : f145.x, f146.y ? CB0[14].xyz.y : f145.y, f146.z ? CB0[14].xyz.z : f145.z), f143.xyz, vec3(f144));
    vec4 f148 = f143;
    f148.x = f147.x;
    vec4 f149 = f148;
    f149.y = f147.y;
    vec4 f150 = f149;
    f150.z = f147.z;
    vec3 f151 = sqrt(clamp(f150.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f152 = f150;
    f152.x = f151.x;
    vec4 f153 = f152;
    f153.y = f151.y;
    vec4 f154 = f153;
    f154.z = f151.z;
    _entryPointOutput = f154;
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
