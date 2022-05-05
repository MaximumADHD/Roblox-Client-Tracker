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
    float f63 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec4 f64 = texture(NormalMapTexture, f0);
    vec4 f65 = texture(NormalMapTexture, f2);
    vec4 f66 = texture(NormalMapTexture, VARYING3.xyz);
    float f67 = -VARYING6.x;
    vec2 f68 = (((f64 * f5.x) + (f65 * f5.y)) + (f66 * f5.z)).wy * 2.0;
    vec2 f69 = f68 - vec2(1.0);
    vec3 f70 = normalize(((vec3(f69, sqrt(clamp(1.0 + dot(vec2(1.0) - f68, f69), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f5, f5))) + vec3(0.0, 0.0, 1.0));
    vec3 f71 = vec3(dot(VARYING7, f5));
    vec3 f72 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f67), vec3(VARYING6.y, f67, 0.0), f71) * f70.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f71) * f70.y)) + (VARYING6 * f70.z)), 0.0).xyz;
    vec3 f73 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f74 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f75 = VARYING4.yzx - (VARYING4.yzx * f74);
    vec4 f76 = texture(LightMapTexture, f75);
    vec4 f77 = texture(LightGridSkylightTexture, f75);
    vec4 f78 = vec4(clamp(f74, 0.0, 1.0));
    vec4 f79 = mix(f76, vec4(0.0), f78);
    vec4 f80 = mix(f77, vec4(1.0), f78);
    float f81 = f80.x;
    vec4 f82 = texture(ShadowMapTexture, f73.xy);
    float f83 = f73.z;
    vec3 f84 = normalize(VARYING9);
    float f85 = f28.y;
    float f86 = CB0[26].w * f63;
    vec3 f87 = reflect(-f84, f72);
    vec3 f88 = -CB0[11].xyz;
    float f89 = (dot(f72, f88) * CB0[9].w) * ((1.0 - ((step(f82.x, f83) * clamp(CB0[24].z + (CB0[24].w * abs(f83 - 0.5)), 0.0, 1.0)) * f82.y)) * f80.y);
    vec3 f90 = normalize(f88 + f84);
    float f91 = clamp(f89, 0.0, 1.0);
    float f92 = f85 * f85;
    float f93 = max(0.001000000047497451305389404296875, dot(f72, f90));
    float f94 = dot(f88, f90);
    float f95 = 1.0 - f94;
    float f96 = f95 * f95;
    float f97 = (f96 * f96) * f95;
    vec3 f98 = vec3(f97) + (vec3(0.039999999105930328369140625) * (1.0 - f97));
    float f99 = f92 * f92;
    float f100 = (((f93 * f99) - f93) * f93) + 1.0;
    float f101 = f85 * 5.0;
    vec3 f102 = vec4(f87, f101).xyz;
    vec3 f103 = textureLod(PrefilteredEnvIndoorTexture, f102, f101).xyz;
    vec3 f104;
    if (CB0[27].w == 0.0)
    {
        f104 = f103;
    }
    else
    {
        f104 = mix(f103, textureLod(PrefilteredEnvBlendTargetTexture, f102, f101).xyz, vec3(CB0[27].w));
    }
    vec4 f105 = texture(PrecomputedBRDFTexture, vec2(f85, max(9.9999997473787516355514526367188e-05, dot(f72, f84))));
    float f106 = f105.x;
    float f107 = f105.y;
    vec3 f108 = ((vec3(0.039999999105930328369140625) * f106) + vec3(f107)) / vec3(f106 + f107);
    vec3 f109 = f72 * f72;
    bvec3 f110 = lessThan(f72, vec3(0.0));
    vec3 f111 = vec3(f110.x ? f109.x : vec3(0.0).x, f110.y ? f109.y : vec3(0.0).y, f110.z ? f109.z : vec3(0.0).z);
    vec3 f112 = f109 - f111;
    float f113 = f112.x;
    float f114 = f112.y;
    float f115 = f112.z;
    float f116 = f111.x;
    float f117 = f111.y;
    float f118 = f111.z;
    vec3 f119 = (((((((((vec3(1.0) - (f98 * f86)) * CB0[10].xyz) * f91) + (CB0[12].xyz * clamp(-f89, 0.0, 1.0))) + ((f79.xyz * (f79.w * 120.0)) * 1.0)) + ((vec3(1.0) - (f108 * f86)) * (((((((CB0[35].xyz * f113) + (CB0[37].xyz * f114)) + (CB0[39].xyz * f115)) + (CB0[36].xyz * f116)) + (CB0[38].xyz * f117)) + (CB0[40].xyz * f118)) + (((((((CB0[29].xyz * f113) + (CB0[31].xyz * f114)) + (CB0[33].xyz * f115)) + (CB0[30].xyz * f116)) + (CB0[32].xyz * f117)) + (CB0[34].xyz * f118)) * f81)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f81))) + vec3((f28.z * 2.0) * f63)) * (f62 * f62)) + ((((((f98 * (((f99 + (f99 * f99)) / (((f100 * f100) * ((f94 * 3.0) + 0.5)) * ((f93 * 0.75) + 0.25))) * f91)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * f63) * VARYING0.w) + ((mix(f104, textureLod(PrefilteredEnvTexture, f102, f101).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f87.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f81)) * f108) * f86));
    vec4 f120 = vec4(0.0);
    f120.x = f119.x;
    vec4 f121 = f120;
    f121.y = f119.y;
    vec4 f122 = f121;
    f122.z = f119.z;
    vec4 f123 = f122;
    f123.w = 1.0;
    float f124 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f125 = textureLod(PrefilteredEnvTexture, vec4(-VARYING9, 0.0).xyz, max(CB0[13].y, f124) * 5.0).xyz;
    bvec3 f126 = bvec3(!(CB0[13].w == 0.0));
    vec3 f127 = mix(vec3(f126.x ? CB0[14].xyz.x : f125.x, f126.y ? CB0[14].xyz.y : f125.y, f126.z ? CB0[14].xyz.z : f125.z), f123.xyz, vec3(f124));
    vec4 f128 = f123;
    f128.x = f127.x;
    vec4 f129 = f128;
    f129.y = f127.y;
    vec4 f130 = f129;
    f130.z = f127.z;
    vec3 f131 = sqrt(clamp(f130.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f132 = f130;
    f132.x = f131.x;
    vec4 f133 = f132;
    f133.y = f131.y;
    vec4 f134 = f133;
    f134.z = f131.z;
    _entryPointOutput = f134;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
