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
    vec3 f63 = CB0[7].xyz - VARYING5.xyz;
    float f64 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec4 f65 = texture(NormalMapTexture, f0);
    vec4 f66 = texture(NormalMapTexture, f2);
    vec4 f67 = texture(NormalMapTexture, VARYING3.xyz);
    vec2 f68 = (((f65 * f5.x) + (f66 * f5.y)) + (f67 * f5.z)).wy * 2.0;
    vec2 f69 = f68 - vec2(1.0);
    vec3 f70 = normalize(((vec3(f69, sqrt(clamp(1.0 + dot(vec2(1.0) - f68, f69), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f5, f5))) + vec3(0.0, 0.0, 1.0));
    vec3 f71 = vec3(dot(VARYING7, f5));
    vec3 f72 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f71) * f70.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f71) * f70.y)) + (VARYING6 * f70.z)), 0.0).xyz;
    vec3 f73 = -CB0[11].xyz;
    float f74 = dot(f72, f73);
    vec3 f75 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f76 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f77 = VARYING4.yzx - (VARYING4.yzx * f76);
    vec4 f78 = texture(LightMapTexture, f77);
    vec4 f79 = texture(LightGridSkylightTexture, f77);
    vec4 f80 = vec4(clamp(f76, 0.0, 1.0));
    vec4 f81 = mix(f78, vec4(0.0), f80);
    vec4 f82 = mix(f79, vec4(1.0), f80);
    float f83 = f82.x;
    float f84 = f82.y;
    vec3 f85 = f75 - CB0[41].xyz;
    vec3 f86 = f75 - CB0[42].xyz;
    vec3 f87 = f75 - CB0[43].xyz;
    vec4 f88 = vec4(f75, 1.0) * mat4(CB8[((dot(f85, f85) < CB0[41].w) ? 0 : ((dot(f86, f86) < CB0[42].w) ? 1 : ((dot(f87, f87) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f85, f85) < CB0[41].w) ? 0 : ((dot(f86, f86) < CB0[42].w) ? 1 : ((dot(f87, f87) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f85, f85) < CB0[41].w) ? 0 : ((dot(f86, f86) < CB0[42].w) ? 1 : ((dot(f87, f87) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f85, f85) < CB0[41].w) ? 0 : ((dot(f86, f86) < CB0[42].w) ? 1 : ((dot(f87, f87) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f89 = textureLod(ShadowAtlasTexture, f88.xy, 0.0);
    vec2 f90 = vec2(0.0);
    f90.x = CB0[46].z;
    vec2 f91 = f90;
    f91.y = CB0[46].w;
    float f92 = (2.0 * f88.z) - 1.0;
    float f93 = exp(CB0[46].z * f92);
    float f94 = -exp((-CB0[46].w) * f92);
    vec2 f95 = (f91 * CB0[47].y) * vec2(f93, f94);
    vec2 f96 = f95 * f95;
    float f97 = f89.x;
    float f98 = max(f89.y - (f97 * f97), f96.x);
    float f99 = f93 - f97;
    float f100 = f89.z;
    float f101 = max(f89.w - (f100 * f100), f96.y);
    float f102 = f94 - f100;
    vec3 f103 = normalize(f63);
    float f104 = 0.08900000154972076416015625 + (f28.y * 0.9110000133514404296875);
    float f105 = CB0[26].w * f64;
    vec3 f106 = reflect(-f103, f72);
    vec3 f107 = normalize(f73 + f103);
    float f108 = clamp((f74 * CB0[9].w) * (((f74 * CB0[47].x) > 0.0) ? mix(min((f93 <= f97) ? 1.0 : clamp(((f98 / (f98 + (f99 * f99))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f94 <= f100) ? 1.0 : clamp(((f101 / (f101 + (f102 * f102))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f84, clamp((length(f75 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f84), 0.0, 1.0);
    float f109 = f104 * f104;
    float f110 = max(0.001000000047497451305389404296875, dot(f72, f107));
    float f111 = dot(f73, f107);
    float f112 = 1.0 - f111;
    float f113 = f112 * f112;
    float f114 = (f113 * f113) * f112;
    vec3 f115 = vec3(f114) + (vec3(0.039999999105930328369140625) * (1.0 - f114));
    float f116 = f109 * f109;
    float f117 = (((f110 * f116) - f110) * f110) + 1.0;
    float f118 = f104 * 5.0;
    vec3 f119 = vec4(f106, f118).xyz;
    vec3 f120 = textureLod(PrefilteredEnvIndoorTexture, f119, f118).xyz;
    vec3 f121;
    if (CB0[27].w == 0.0)
    {
        f121 = f120;
    }
    else
    {
        f121 = mix(f120, textureLod(PrefilteredEnvBlendTargetTexture, f119, f118).xyz, vec3(CB0[27].w));
    }
    vec4 f122 = texture(PrecomputedBRDFTexture, vec2(f104, max(9.9999997473787516355514526367188e-05, dot(f72, f103))));
    float f123 = f122.x;
    float f124 = f122.y;
    vec3 f125 = ((vec3(0.039999999105930328369140625) * f123) + vec3(f124)) / vec3(f123 + f124);
    vec3 f126 = f72 * f72;
    bvec3 f127 = lessThan(f72, vec3(0.0));
    vec3 f128 = vec3(f127.x ? f126.x : vec3(0.0).x, f127.y ? f126.y : vec3(0.0).y, f127.z ? f126.z : vec3(0.0).z);
    vec3 f129 = f126 - f128;
    float f130 = f129.x;
    float f131 = f129.y;
    float f132 = f129.z;
    float f133 = f128.x;
    float f134 = f128.y;
    float f135 = f128.z;
    vec3 f136 = ((((((((vec3(1.0) - (f115 * f105)) * CB0[10].xyz) * f108) + ((f81.xyz * (f81.w * 120.0)) * 1.0)) + ((vec3(1.0) - (f125 * f105)) * (((((((CB0[35].xyz * f130) + (CB0[37].xyz * f131)) + (CB0[39].xyz * f132)) + (CB0[36].xyz * f133)) + (CB0[38].xyz * f134)) + (CB0[40].xyz * f135)) + (((((((CB0[29].xyz * f130) + (CB0[31].xyz * f131)) + (CB0[33].xyz * f132)) + (CB0[30].xyz * f133)) + (CB0[32].xyz * f134)) + (CB0[34].xyz * f135)) * f83)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f83))) + vec3((f28.z * 2.0) * f64)) * (f62 * f62)) + ((((((f115 * (((f116 + (f116 * f116)) / (((f117 * f117) * ((f111 * 3.0) + 0.5)) * ((f110 * 0.75) + 0.25))) * f108)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * f64) * VARYING0.w) + ((mix(f121, textureLod(PrefilteredEnvTexture, f119, f118).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f106.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f83)) * f125) * f105));
    vec4 f137 = vec4(0.0);
    f137.x = f136.x;
    vec4 f138 = f137;
    f138.y = f136.y;
    vec4 f139 = f138;
    f139.z = f136.z;
    vec4 f140 = f139;
    f140.w = 1.0;
    float f141 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f142 = textureLod(PrefilteredEnvTexture, vec4(-f63, 0.0).xyz, max(CB0[13].y, f141) * 5.0).xyz;
    bvec3 f143 = bvec3(!(CB0[13].w == 0.0));
    vec3 f144 = mix(vec3(f143.x ? CB0[14].xyz.x : f142.x, f143.y ? CB0[14].xyz.y : f142.y, f143.z ? CB0[14].xyz.z : f142.z), f140.xyz, vec3(f141));
    vec4 f145 = f140;
    f145.x = f144.x;
    vec4 f146 = f145;
    f146.y = f144.y;
    vec4 f147 = f146;
    f147.z = f144.z;
    vec3 f148 = sqrt(clamp(f147.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f149 = f147;
    f149.x = f148.x;
    vec4 f150 = f149;
    f150.y = f148.y;
    vec4 f151 = f150;
    f151.z = f148.z;
    _entryPointOutput = f151;
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
