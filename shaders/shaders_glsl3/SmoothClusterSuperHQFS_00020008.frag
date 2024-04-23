#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowTransformGPU.h>
uniform vec4 CB0[57];
uniform vec4 CB4[63];
uniform vec4 CB5[63];
uniform vec4 CB8[24];
uniform sampler2D ShadowAtlasTexture;
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
in vec4 VARYING8;
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
    if (VARYING8.w < 1.0)
    {
        ivec3 f7 = ivec3(VARYING8.xyz + vec3(0.5));
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
        f6 = mix(vec3(f21, f22, f23) / vec3((f21 + f22) + f23), VARYING0.xyz, vec3(clamp((sqrt(max(dot(f24, f24), dot(f25, f25))) * 7.0) + clamp(VARYING8.w, 0.0, 1.0), 0.0, 1.0)));
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
    int f38 = int(VARYING8.x + 0.5);
    int f39 = int(VARYING8.y + 0.5);
    int f40 = int(VARYING8.z + 0.5);
    vec3 f41;
    if (!(CB4[f38 * 1 + 0].w == 0.0))
    {
        f41 = (mix(vec3(1.0), CB4[f38 * 1 + 0].xyz, vec3(f35.w)) * f35.xyz) * f6.x;
    }
    else
    {
        vec2 f42 = f35.xz - vec2(0.5);
        float f43 = f42.x;
        float f44 = f42.y;
        float f45 = CB4[f38 * 1 + 0].x * f35.y;
        float f46 = (CB4[f38 * 1 + 0].y * f43) - (CB4[f38 * 1 + 0].z * f44);
        float f47 = (CB4[f38 * 1 + 0].z * f43) + (CB4[f38 * 1 + 0].y * f44);
        float f48 = f45 - f47;
        f41 = (vec3(f48, f45, f48) + (vec3(f46, f47, f46) * vec3(1.0, 1.0, -1.0))) * f6.x;
    }
    vec3 f49;
    if (!(CB4[f39 * 1 + 0].w == 0.0))
    {
        f49 = f41 + ((mix(vec3(1.0), CB4[f39 * 1 + 0].xyz, vec3(f36.w)) * f36.xyz) * f6.y);
    }
    else
    {
        vec2 f50 = f36.xz - vec2(0.5);
        float f51 = f50.x;
        float f52 = f50.y;
        float f53 = CB4[f39 * 1 + 0].x * f36.y;
        float f54 = (CB4[f39 * 1 + 0].y * f51) - (CB4[f39 * 1 + 0].z * f52);
        float f55 = (CB4[f39 * 1 + 0].z * f51) + (CB4[f39 * 1 + 0].y * f52);
        float f56 = f53 - f55;
        f49 = f41 + ((vec3(f56, f53, f56) + (vec3(f54, f55, f54) * vec3(1.0, 1.0, -1.0))) * f6.y);
    }
    vec3 f57;
    if (!(CB4[f40 * 1 + 0].w == 0.0))
    {
        f57 = f49 + ((mix(vec3(1.0), CB4[f40 * 1 + 0].xyz, vec3(f37.w)) * f37.xyz) * f6.z);
    }
    else
    {
        vec2 f58 = f37.xz - vec2(0.5);
        float f59 = f58.x;
        float f60 = f58.y;
        float f61 = CB4[f40 * 1 + 0].x * f37.y;
        float f62 = (CB4[f40 * 1 + 0].y * f59) - (CB4[f40 * 1 + 0].z * f60);
        float f63 = (CB4[f40 * 1 + 0].z * f59) + (CB4[f40 * 1 + 0].y * f60);
        float f64 = f61 - f63;
        f57 = f49 + ((vec3(f64, f61, f64) + (vec3(f62, f63, f62) * vec3(1.0, 1.0, -1.0))) * f6.z);
    }
    vec3 f65 = f57 * f57;
    vec3 f66 = CB0[11].xyz - VARYING5.xyz;
    float f67 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec3 f68 = -CB0[16].xyz;
    float f69 = dot(f34, f68);
    vec3 f70 = normalize(f66);
    float f71 = 0.08900000154972076416015625 + (f26.y * 0.9110000133514404296875);
    float f72 = f26.x;
    vec3 f73 = mix(vec3(0.039999999105930328369140625), f65, vec3(f72));
    float f74 = CB0[31].w * f67;
    vec3 f75 = reflect(-f70, f34);
    vec3 f76 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f77 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f78 = VARYING4.yzx - (VARYING4.yzx * f77);
    vec4 f79 = texture(LightMapTexture, f78);
    vec4 f80 = texture(LightGridSkylightTexture, f78);
    vec4 f81 = vec4(clamp(f77, 0.0, 1.0));
    vec4 f82 = mix(f79, vec4(0.0), f81);
    vec4 f83 = mix(f80, vec4(1.0), f81);
    vec3 f84 = f82.xyz * (f82.w * 120.0);
    float f85 = f83.x;
    float f86 = f83.y;
    vec3 f87 = f76 - CB0[46].xyz;
    vec3 f88 = f76 - CB0[47].xyz;
    vec3 f89 = f76 - CB0[48].xyz;
    vec4 f90 = vec4(f76, 1.0) * mat4(CB8[((dot(f87, f87) < CB0[46].w) ? 0 : ((dot(f88, f88) < CB0[47].w) ? 1 : ((dot(f89, f89) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f87, f87) < CB0[46].w) ? 0 : ((dot(f88, f88) < CB0[47].w) ? 1 : ((dot(f89, f89) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f87, f87) < CB0[46].w) ? 0 : ((dot(f88, f88) < CB0[47].w) ? 1 : ((dot(f89, f89) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f87, f87) < CB0[46].w) ? 0 : ((dot(f88, f88) < CB0[47].w) ? 1 : ((dot(f89, f89) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f91 = textureLod(ShadowAtlasTexture, f90.xy, 0.0);
    vec2 f92 = vec2(0.0);
    f92.x = CB0[51].z;
    vec2 f93 = f92;
    f93.y = CB0[51].w;
    float f94 = (2.0 * f90.z) - 1.0;
    float f95 = exp(CB0[51].z * f94);
    float f96 = -exp((-CB0[51].w) * f94);
    vec2 f97 = (f93 * CB0[52].y) * vec2(f95, f96);
    vec2 f98 = f97 * f97;
    float f99 = f91.x;
    float f100 = max(f91.y - (f99 * f99), f98.x);
    float f101 = f95 - f99;
    float f102 = f91.z;
    float f103 = max(f91.w - (f102 * f102), f98.y);
    float f104 = f96 - f102;
    float f105 = (f69 * CB0[14].w) * (((f69 * CB0[52].x) > 0.0) ? mix(min((f95 <= f99) ? 1.0 : clamp(((f100 / (f100 + (f101 * f101))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f96 <= f102) ? 1.0 : clamp(((f103 / (f103 + (f104 * f104))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f86, clamp((length(f76 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f86);
    vec3 f106;
    vec3 f107;
    if (f105 > 0.0)
    {
        vec3 f108 = normalize(f70 + f68);
        float f109 = clamp(f105, 0.0, 1.0);
        float f110 = f71 * f71;
        float f111 = max(0.001000000047497451305389404296875, dot(f34, f108));
        float f112 = dot(f68, f108);
        float f113 = 1.0 - f112;
        float f114 = f113 * f113;
        float f115 = (f114 * f114) * f113;
        vec3 f116 = vec3(f115) + (f73 * (1.0 - f115));
        float f117 = f110 * f110;
        float f118 = (((f111 * f117) - f111) * f111) + 1.0;
        float f119 = 1.0 - f72;
        f107 = f84 + (((vec3(f119) - (f116 * (f74 * f119))) * CB0[15].xyz) * f109);
        f106 = ((f116 * (((f117 + (f117 * f117)) / (((f118 * f118) * ((f112 * 3.0) + 0.5)) * ((f111 * 0.75) + 0.25))) * f109)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f107 = f84;
        f106 = vec3(0.0);
    }
    float f120 = f71 * 5.0;
    vec3 f121 = vec4(f75, f120).xyz;
    vec3 f122 = textureLod(PrefilteredEnvIndoorTexture, f121, f120).xyz;
    vec3 f123;
    if (CB0[32].w == 0.0)
    {
        f123 = f122;
    }
    else
    {
        f123 = mix(f122, textureLod(PrefilteredEnvBlendTargetTexture, f121, f120).xyz, vec3(CB0[32].w));
    }
    vec4 f124 = texture(PrecomputedBRDFTexture, vec2(f71, max(9.9999997473787516355514526367188e-05, dot(f34, f70))));
    float f125 = f124.x;
    float f126 = f124.y;
    vec3 f127 = ((f73 * f125) + vec3(f126)) / vec3(f125 + f126);
    float f128 = 1.0 - f72;
    vec3 f129 = f34 * f34;
    bvec3 f130 = lessThan(f34, vec3(0.0));
    vec3 f131 = vec3(f130.x ? f129.x : vec3(0.0).x, f130.y ? f129.y : vec3(0.0).y, f130.z ? f129.z : vec3(0.0).z);
    vec3 f132 = f129 - f131;
    float f133 = f132.x;
    float f134 = f132.y;
    float f135 = f132.z;
    float f136 = f131.x;
    float f137 = f131.y;
    float f138 = f131.z;
    vec3 f139 = ((((f107 + (((vec3(f128) - (f127 * (f74 * f128))) * (((((((CB0[40].xyz * f133) + (CB0[42].xyz * f134)) + (CB0[44].xyz * f135)) + (CB0[41].xyz * f136)) + (CB0[43].xyz * f137)) + (CB0[45].xyz * f138)) + (((((((CB0[34].xyz * f133) + (CB0[36].xyz * f134)) + (CB0[38].xyz * f135)) + (CB0[35].xyz * f136)) + (CB0[37].xyz * f137)) + (CB0[39].xyz * f138)) * f85))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f85 * (2.0 - CB0[14].w)))) * 1.0)) + vec3((f26.z * 2.0) * f67)) * f65) + ((f106 * (f67 * VARYING0.w)) + ((mix(f123, textureLod(PrefilteredEnvTexture, f121, f120).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f75.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f85)) * f127) * f74));
    vec4 f140 = vec4(0.0);
    f140.x = f139.x;
    vec4 f141 = f140;
    f141.y = f139.y;
    vec4 f142 = f141;
    f142.z = f139.z;
    vec4 f143 = f142;
    f143.w = 1.0;
    float f144 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f145 = textureLod(PrefilteredEnvTexture, vec4(-f66, 0.0).xyz, max(CB0[18].y, f144) * 5.0).xyz;
    bvec3 f146 = bvec3(!(CB0[18].w == 0.0));
    vec3 f147 = mix(vec3(f146.x ? CB0[19].xyz.x : f145.x, f146.y ? CB0[19].xyz.y : f145.y, f146.z ? CB0[19].xyz.z : f145.z), f143.xyz, vec3(f144));
    vec4 f148 = f143;
    f148.x = f147.x;
    vec4 f149 = f148;
    f149.y = f147.y;
    vec4 f150 = f149;
    f150.z = f147.z;
    vec3 f151 = sqrt(clamp(f150.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
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
//$$NormalMapTexture=s4
//$$AlbedoMapTexture=s0
