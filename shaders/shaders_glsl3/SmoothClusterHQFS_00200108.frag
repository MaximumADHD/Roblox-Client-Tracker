#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
uniform vec4 CB0[58];
uniform vec4 CB8[24];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2DArray SpecularMapTexture;
uniform sampler2DArray AlbedoMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec3 VARYING4;
in vec4 VARYING5;
in vec3 VARYING6;
in vec4 VARYING8;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = vec3(VARYING1.xy, VARYING2.x);
    vec4 f1 = texture(SpecularMapTexture, f0);
    vec3 f2 = vec3(VARYING1.zw, VARYING2.z);
    vec4 f3 = texture(SpecularMapTexture, f2);
    vec4 f4 = texture(SpecularMapTexture, VARYING3.xyz);
    vec4 f5 = ((f1 * VARYING0.x) + (f3 * VARYING0.y)) + (f4 * VARYING0.z);
    vec4 f6 = ((texture(AlbedoMapTexture, f0).yxzw * VARYING0.x) + (texture(AlbedoMapTexture, f2).yxzw * VARYING0.y)) + (texture(AlbedoMapTexture, VARYING3.xyz).yxzw * VARYING0.z);
    vec2 f7 = f6.yz - vec2(0.5);
    float f8 = f7.x;
    float f9 = f7.y;
    float f10 = VARYING8.x * f6.x;
    float f11 = (VARYING8.y * f8) - (VARYING8.z * f9);
    float f12 = (VARYING8.z * f8) + (VARYING8.y * f9);
    float f13 = f10 - f12;
    float f14 = f6.w;
    vec3 f15 = vec4(vec3(f13, f10, f13) + (vec3(f11, f12, f11) * vec3(1.0, 1.0, -1.0)), f14).xyz;
    vec3 f16 = mix(f15, f15 * VARYING8.xyz, vec3(VARYING8.w * f14));
    vec4 f17 = vec4(0.0);
    f17.x = f16.x;
    vec4 f18 = f17;
    f18.y = f16.y;
    vec4 f19 = f18;
    f19.z = f16.z;
    vec3 f20 = CB0[11].xyz - VARYING5.xyz;
    float f21 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec3 f22 = normalize(VARYING6);
    vec3 f23 = -CB0[16].xyz;
    float f24 = dot(f22, f23);
    vec3 f25 = normalize(f20);
    float f26 = 0.08900000154972076416015625 + (f5.y * 0.9110000133514404296875);
    float f27 = CB0[31].w * f21;
    vec3 f28 = reflect(-f25, f22);
    vec3 f29 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f30 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f31 = VARYING4.yzx - (VARYING4.yzx * f30);
    vec4 f32 = texture(LightMapTexture, f31);
    vec4 f33 = texture(LightGridSkylightTexture, f31);
    vec4 f34 = vec4(clamp(f30, 0.0, 1.0));
    vec4 f35 = mix(f32, vec4(0.0), f34);
    vec4 f36 = mix(f33, vec4(1.0), f34);
    float f37 = f36.x;
    float f38 = f36.y;
    vec3 f39 = f29 - CB0[46].xyz;
    vec3 f40 = f29 - CB0[47].xyz;
    vec3 f41 = f29 - CB0[48].xyz;
    vec4 f42 = vec4(f29, 1.0) * mat4(CB8[((dot(f39, f39) < CB0[46].w) ? 0 : ((dot(f40, f40) < CB0[47].w) ? 1 : ((dot(f41, f41) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f39, f39) < CB0[46].w) ? 0 : ((dot(f40, f40) < CB0[47].w) ? 1 : ((dot(f41, f41) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f39, f39) < CB0[46].w) ? 0 : ((dot(f40, f40) < CB0[47].w) ? 1 : ((dot(f41, f41) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f39, f39) < CB0[46].w) ? 0 : ((dot(f40, f40) < CB0[47].w) ? 1 : ((dot(f41, f41) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f43 = textureLod(ShadowAtlasTexture, f42.xy, 0.0);
    vec2 f44 = vec2(0.0);
    f44.x = CB0[51].z;
    vec2 f45 = f44;
    f45.y = CB0[51].w;
    float f46 = (2.0 * f42.z) - 1.0;
    float f47 = exp(CB0[51].z * f46);
    float f48 = -exp((-CB0[51].w) * f46);
    vec2 f49 = (f45 * CB0[52].y) * vec2(f47, f48);
    vec2 f50 = f49 * f49;
    float f51 = f43.x;
    float f52 = max(f43.y - (f51 * f51), f50.x);
    float f53 = f47 - f51;
    float f54 = f43.z;
    float f55 = max(f43.w - (f54 * f54), f50.y);
    float f56 = f48 - f54;
    vec3 f57 = normalize(f25 - CB0[16].xyz);
    float f58 = clamp((f24 * CB0[14].w) * (((f24 * CB0[52].x) > 0.0) ? mix(min((f47 <= f51) ? 1.0 : clamp(((f52 / (f52 + (f53 * f53))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f48 <= f54) ? 1.0 : clamp(((f55 / (f55 + (f56 * f56))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f38, clamp((length(f29 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f38), 0.0, 1.0);
    float f59 = f26 * f26;
    float f60 = max(0.001000000047497451305389404296875, dot(f22, f57));
    float f61 = dot(f23, f57);
    float f62 = 1.0 - f61;
    float f63 = f62 * f62;
    float f64 = (f63 * f63) * f62;
    vec3 f65 = vec3(f64) + (vec3(0.039999999105930328369140625) * (1.0 - f64));
    float f66 = f59 * f59;
    float f67 = (((f60 * f66) - f60) * f60) + 1.0;
    float f68 = f26 * 5.0;
    vec3 f69 = vec4(f28, f68).xyz;
    vec3 f70 = textureLod(PrefilteredEnvIndoorTexture, f69, f68).xyz;
    vec3 f71;
    if (CB0[32].w == 0.0)
    {
        f71 = f70;
    }
    else
    {
        f71 = mix(f70, textureLod(PrefilteredEnvBlendTargetTexture, f69, f68).xyz, vec3(CB0[32].w));
    }
    vec4 f72 = texture(PrecomputedBRDFTexture, vec2(f26, max(9.9999997473787516355514526367188e-05, dot(f22, f25))));
    float f73 = f72.x;
    float f74 = f72.y;
    vec3 f75 = ((vec3(0.039999999105930328369140625) * f73) + vec3(f74)) / vec3(f73 + f74);
    vec3 f76 = f22 * f22;
    bvec3 f77 = lessThan(f22, vec3(0.0));
    vec3 f78 = vec3(f77.x ? f76.x : vec3(0.0).x, f77.y ? f76.y : vec3(0.0).y, f77.z ? f76.z : vec3(0.0).z);
    vec3 f79 = f76 - f78;
    float f80 = f79.x;
    float f81 = f79.y;
    float f82 = f79.z;
    float f83 = f78.x;
    float f84 = f78.y;
    float f85 = f78.z;
    vec3 f86 = (((((((f35.xyz * (f35.w * 120.0)) * 1.0) + (((vec3(1.0) - (f65 * f27)) * CB0[15].xyz) * f58)) + ((vec3(1.0) - (f75 * f27)) * (((((((CB0[40].xyz * f80) + (CB0[42].xyz * f81)) + (CB0[44].xyz * f82)) + (CB0[41].xyz * f83)) + (CB0[43].xyz * f84)) + (CB0[45].xyz * f85)) + (((((((CB0[34].xyz * f80) + (CB0[36].xyz * f81)) + (CB0[38].xyz * f82)) + (CB0[35].xyz * f83)) + (CB0[37].xyz * f84)) + (CB0[39].xyz * f85)) * f37)))) + (CB0[32].xyz + ((CB0[33].xyz * (2.0 - CB0[14].w)) * f37))) + vec3((f5.z * 2.0) * f21)) * (f19.xyz * f19.xyz)) + (((((f65 * (min((f66 + (f66 * f66)) / (((f67 * f67) * ((f61 * 3.0) + 0.5)) * ((f60 * 0.75) + 0.25)), 65504.0) * f58)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w)) * (f21 * VARYING0.w)) + ((mix(f71, textureLod(PrefilteredEnvTexture, f69, f68).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f28.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f37)) * f75) * f27));
    vec4 f87 = vec4(0.0);
    f87.x = f86.x;
    vec4 f88 = f87;
    f88.y = f86.y;
    vec4 f89 = f88;
    f89.z = f86.z;
    vec4 f90 = f89;
    f90.w = 1.0;
    float f91 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f92 = textureLod(PrefilteredEnvTexture, vec4(-f20, 0.0).xyz, max(CB0[18].y, f91) * 5.0).xyz;
    bvec3 f93 = bvec3(!(CB0[18].w == 0.0));
    vec3 f94 = mix(vec3(f93.x ? CB0[19].xyz.x : f92.x, f93.y ? CB0[19].xyz.y : f92.y, f93.z ? CB0[19].xyz.z : f92.z), f90.xyz, vec3(f91));
    vec4 f95 = f90;
    f95.x = f94.x;
    vec4 f96 = f95;
    f96.y = f94.y;
    vec4 f97 = f96;
    f97.z = f94.z;
    vec3 f98 = sqrt(clamp(f97.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f99 = f97;
    f99.x = f98.x;
    vec4 f100 = f99;
    f100.y = f98.y;
    vec4 f101 = f100;
    f101.z = f98.z;
    _entryPointOutput = f101;
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
