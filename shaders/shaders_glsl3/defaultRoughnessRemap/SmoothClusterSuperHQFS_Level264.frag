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
    vec4 f50 = f39;
    f50.x = CB4[f32 * 1 + 0].x * f29.y;
    vec4 f51 = f50;
    f51.y = (CB4[f32 * 1 + 0].y * f36) - (CB4[f32 * 1 + 0].z * f38);
    vec4 f52 = f51;
    f52.z = (CB4[f32 * 1 + 0].z * f36) + (CB4[f32 * 1 + 0].y * f38);
    vec4 f53 = f44;
    f53.x = CB4[f33 * 1 + 0].x * f30.y;
    vec4 f54 = f53;
    f54.y = (CB4[f33 * 1 + 0].y * f41) - (CB4[f33 * 1 + 0].z * f43);
    vec4 f55 = f54;
    f55.z = (CB4[f33 * 1 + 0].z * f41) + (CB4[f33 * 1 + 0].y * f43);
    vec4 f56 = f49;
    f56.x = CB4[f34 * 1 + 0].x * f31.y;
    vec4 f57 = f56;
    f57.y = (CB4[f34 * 1 + 0].y * f46) - (CB4[f34 * 1 + 0].z * f48);
    vec4 f58 = f57;
    f58.z = (CB4[f34 * 1 + 0].z * f46) + (CB4[f34 * 1 + 0].y * f48);
    vec4 f59 = ((f52 * f5.x) + (f55 * f5.y)) + (f58 * f5.z);
    float f60 = f59.x;
    float f61 = f60 - f59.z;
    vec3 f62 = vec4(vec3(f61, f60, f61) + (vec3(f59.yzy) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    vec3 f63 = f62 * f62;
    vec3 f64 = CB0[7].xyz - VARYING5.xyz;
    float f65 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec4 f66 = texture(NormalMapTexture, f0);
    vec4 f67 = texture(NormalMapTexture, f2);
    vec4 f68 = texture(NormalMapTexture, VARYING3.xyz);
    vec2 f69 = (((f66 * f5.x) + (f67 * f5.y)) + (f68 * f5.z)).wy * 2.0;
    vec2 f70 = f69 - vec2(1.0);
    vec3 f71 = normalize(((vec3(f70, sqrt(clamp(1.0 + dot(vec2(1.0) - f69, f70), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f5, f5))) + vec3(0.0, 0.0, 1.0));
    vec3 f72 = vec3(dot(VARYING7, f5));
    vec3 f73 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f72) * f71.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f72) * f71.y)) + (VARYING6 * f71.z)), 0.0).xyz;
    vec3 f74 = -CB0[11].xyz;
    float f75 = dot(f73, f74);
    vec3 f76 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f77 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f78 = VARYING4.yzx - (VARYING4.yzx * f77);
    vec4 f79 = texture(LightMapTexture, f78);
    vec4 f80 = texture(LightGridSkylightTexture, f78);
    vec4 f81 = vec4(clamp(f77, 0.0, 1.0));
    vec4 f82 = mix(f79, vec4(0.0), f81);
    vec4 f83 = mix(f80, vec4(1.0), f81);
    float f84 = f83.x;
    float f85 = f83.y;
    vec3 f86 = f76 - CB0[41].xyz;
    vec3 f87 = f76 - CB0[42].xyz;
    vec3 f88 = f76 - CB0[43].xyz;
    vec4 f89 = vec4(f76, 1.0) * mat4(CB8[((dot(f86, f86) < CB0[41].w) ? 0 : ((dot(f87, f87) < CB0[42].w) ? 1 : ((dot(f88, f88) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f86, f86) < CB0[41].w) ? 0 : ((dot(f87, f87) < CB0[42].w) ? 1 : ((dot(f88, f88) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f86, f86) < CB0[41].w) ? 0 : ((dot(f87, f87) < CB0[42].w) ? 1 : ((dot(f88, f88) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f86, f86) < CB0[41].w) ? 0 : ((dot(f87, f87) < CB0[42].w) ? 1 : ((dot(f88, f88) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f90 = textureLod(ShadowAtlasTexture, f89.xy, 0.0);
    vec2 f91 = vec2(0.0);
    f91.x = CB0[46].z;
    vec2 f92 = f91;
    f92.y = CB0[46].w;
    float f93 = (2.0 * f89.z) - 1.0;
    float f94 = exp(CB0[46].z * f93);
    float f95 = -exp((-CB0[46].w) * f93);
    vec2 f96 = (f92 * CB0[47].y) * vec2(f94, f95);
    vec2 f97 = f96 * f96;
    float f98 = f90.x;
    float f99 = max(f90.y - (f98 * f98), f97.x);
    float f100 = f94 - f98;
    float f101 = f90.z;
    float f102 = max(f90.w - (f101 * f101), f97.y);
    float f103 = f95 - f101;
    vec3 f104 = normalize(f64);
    float f105 = 0.08900000154972076416015625 + (f28.y * 0.9110000133514404296875);
    float f106 = f28.x;
    vec3 f107 = mix(vec3(0.039999999105930328369140625), f63, vec3(f106));
    float f108 = CB0[26].w * f65;
    vec3 f109 = reflect(-f104, f73);
    vec3 f110 = normalize(f104 - CB0[11].xyz);
    float f111 = clamp((f75 * CB0[9].w) * (((f75 * CB0[47].x) > 0.0) ? mix(min((f94 <= f98) ? 1.0 : clamp(((f99 / (f99 + (f100 * f100))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f95 <= f101) ? 1.0 : clamp(((f102 / (f102 + (f103 * f103))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f85, clamp((length(f76 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f85), 0.0, 1.0);
    float f112 = f105 * f105;
    float f113 = max(0.001000000047497451305389404296875, dot(f73, f110));
    float f114 = dot(f74, f110);
    float f115 = 1.0 - f114;
    float f116 = f115 * f115;
    float f117 = (f116 * f116) * f115;
    vec3 f118 = vec3(f117) + (f107 * (1.0 - f117));
    float f119 = f112 * f112;
    float f120 = (((f113 * f119) - f113) * f113) + 1.0;
    float f121 = 1.0 - f106;
    float f122 = f108 * f121;
    vec3 f123 = vec3(f121);
    float f124 = f105 * 5.0;
    vec3 f125 = vec4(f109, f124).xyz;
    vec3 f126 = textureLod(PrefilteredEnvIndoorTexture, f125, f124).xyz;
    vec3 f127;
    if (CB0[27].w == 0.0)
    {
        f127 = f126;
    }
    else
    {
        f127 = mix(f126, textureLod(PrefilteredEnvBlendTargetTexture, f125, f124).xyz, vec3(CB0[27].w));
    }
    vec4 f128 = texture(PrecomputedBRDFTexture, vec2(f105, max(9.9999997473787516355514526367188e-05, dot(f73, f104))));
    float f129 = f128.x;
    float f130 = f128.y;
    vec3 f131 = ((f107 * f129) + vec3(f130)) / vec3(f129 + f130);
    vec3 f132 = f73 * f73;
    bvec3 f133 = lessThan(f73, vec3(0.0));
    vec3 f134 = vec3(f133.x ? f132.x : vec3(0.0).x, f133.y ? f132.y : vec3(0.0).y, f133.z ? f132.z : vec3(0.0).z);
    vec3 f135 = f132 - f134;
    float f136 = f135.x;
    float f137 = f135.y;
    float f138 = f135.z;
    float f139 = f134.x;
    float f140 = f134.y;
    float f141 = f134.z;
    vec3 f142 = ((((((((f123 - (f118 * f122)) * CB0[10].xyz) * f111) + ((f82.xyz * (f82.w * 120.0)) * 1.0)) + ((f123 - (f131 * f122)) * (((((((CB0[35].xyz * f136) + (CB0[37].xyz * f137)) + (CB0[39].xyz * f138)) + (CB0[36].xyz * f139)) + (CB0[38].xyz * f140)) + (CB0[40].xyz * f141)) + (((((((CB0[29].xyz * f136) + (CB0[31].xyz * f137)) + (CB0[33].xyz * f138)) + (CB0[30].xyz * f139)) + (CB0[32].xyz * f140)) + (CB0[34].xyz * f141)) * f84)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f84))) + vec3((f28.z * 2.0) * f65)) * f63) + ((((((f118 * (((f119 + (f119 * f119)) / (((f120 * f120) * ((f114 * 3.0) + 0.5)) * ((f113 * 0.75) + 0.25))) * f111)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * f65) * VARYING0.w) + ((mix(f127, textureLod(PrefilteredEnvTexture, f125, f124).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f109.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f84)) * f131) * f108));
    vec4 f143 = vec4(0.0);
    f143.x = f142.x;
    vec4 f144 = f143;
    f144.y = f142.y;
    vec4 f145 = f144;
    f145.z = f142.z;
    vec4 f146 = f145;
    f146.w = 1.0;
    float f147 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f148 = textureLod(PrefilteredEnvTexture, vec4(-f64, 0.0).xyz, max(CB0[13].y, f147) * 5.0).xyz;
    bvec3 f149 = bvec3(!(CB0[13].w == 0.0));
    vec3 f150 = mix(vec3(f149.x ? CB0[14].xyz.x : f148.x, f149.y ? CB0[14].xyz.y : f148.y, f149.z ? CB0[14].xyz.z : f148.z), f146.xyz, vec3(f147));
    vec4 f151 = f146;
    f151.x = f150.x;
    vec4 f152 = f151;
    f152.y = f150.y;
    vec4 f153 = f152;
    f153.z = f150.z;
    vec3 f154 = sqrt(clamp(f153.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f155 = f153;
    f155.x = f154.x;
    vec4 f156 = f155;
    f156.y = f154.y;
    vec4 f157 = f156;
    f157.z = f154.z;
    _entryPointOutput = f157;
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
