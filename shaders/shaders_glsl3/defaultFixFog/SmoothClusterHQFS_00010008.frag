#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowTransformGPU.h>
uniform vec4 CB0[57];
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
    vec3 f4 = vec3(VARYING3.xyz);
    vec4 f5 = texture(SpecularMapTexture, f4);
    vec4 f6 = ((f1 * VARYING0.x) + (f3 * VARYING0.y)) + (f5 * VARYING0.z);
    vec3 f7 = normalize(VARYING6);
    vec4 f8 = ((texture(AlbedoMapTexture, f0).yxzw * VARYING0.x) + (texture(AlbedoMapTexture, f2).yxzw * VARYING0.y)) + (texture(AlbedoMapTexture, f4).yxzw * VARYING0.z);
    vec2 f9 = f8.yz - vec2(0.5);
    float f10 = f9.x;
    float f11 = f9.y;
    float f12 = VARYING8.x * f8.x;
    float f13 = (VARYING8.y * f10) - (VARYING8.z * f11);
    float f14 = (VARYING8.z * f10) + (VARYING8.y * f11);
    float f15 = f12 - f14;
    float f16 = f8.w;
    vec3 f17 = vec4(vec3(f15, f12, f15) + (vec3(f13, f14, f13) * vec3(1.0, 1.0, -1.0)), f16).xyz;
    vec3 f18 = mix(f17, f17 * VARYING8.xyz, vec3(VARYING8.w * f16));
    vec4 f19 = vec4(0.0);
    f19.x = f18.x;
    vec4 f20 = f19;
    f20.y = f18.y;
    vec4 f21 = f20;
    f21.z = f18.z;
    vec3 f22 = CB0[11].xyz - VARYING5.xyz;
    float f23 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec3 f24 = -CB0[16].xyz;
    float f25 = dot(f7, f24);
    vec3 f26 = normalize(f22);
    float f27 = 0.08900000154972076416015625 + (f6.y * 0.9110000133514404296875);
    float f28 = CB0[31].w * f23;
    vec3 f29 = reflect(-f26, f7);
    vec3 f30 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f31 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f32 = VARYING4.yzx - (VARYING4.yzx * f31);
    vec4 f33 = texture(LightMapTexture, f32);
    vec4 f34 = texture(LightGridSkylightTexture, f32);
    vec4 f35 = vec4(clamp(f31, 0.0, 1.0));
    vec4 f36 = mix(f33, vec4(0.0), f35);
    vec4 f37 = mix(f34, vec4(1.0), f35);
    vec3 f38 = f36.xyz * (f36.w * 120.0);
    float f39 = f37.x;
    float f40 = f37.y;
    vec3 f41 = f30 - CB0[46].xyz;
    vec3 f42 = f30 - CB0[47].xyz;
    vec3 f43 = f30 - CB0[48].xyz;
    vec4 f44 = vec4(f30, 1.0) * mat4(CB8[((dot(f41, f41) < CB0[46].w) ? 0 : ((dot(f42, f42) < CB0[47].w) ? 1 : ((dot(f43, f43) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f41, f41) < CB0[46].w) ? 0 : ((dot(f42, f42) < CB0[47].w) ? 1 : ((dot(f43, f43) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f41, f41) < CB0[46].w) ? 0 : ((dot(f42, f42) < CB0[47].w) ? 1 : ((dot(f43, f43) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f41, f41) < CB0[46].w) ? 0 : ((dot(f42, f42) < CB0[47].w) ? 1 : ((dot(f43, f43) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f45 = textureLod(ShadowAtlasTexture, f44.xy, 0.0);
    vec2 f46 = vec2(0.0);
    f46.x = CB0[51].z;
    vec2 f47 = f46;
    f47.y = CB0[51].w;
    float f48 = (2.0 * f44.z) - 1.0;
    float f49 = exp(CB0[51].z * f48);
    float f50 = -exp((-CB0[51].w) * f48);
    vec2 f51 = (f47 * CB0[52].y) * vec2(f49, f50);
    vec2 f52 = f51 * f51;
    float f53 = f45.x;
    float f54 = max(f45.y - (f53 * f53), f52.x);
    float f55 = f49 - f53;
    float f56 = f45.z;
    float f57 = max(f45.w - (f56 * f56), f52.y);
    float f58 = f50 - f56;
    float f59 = (f25 * CB0[14].w) * (((f25 * CB0[52].x) > 0.0) ? mix(min((f49 <= f53) ? 1.0 : clamp(((f54 / (f54 + (f55 * f55))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f50 <= f56) ? 1.0 : clamp(((f57 / (f57 + (f58 * f58))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f40, clamp((length(f30 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f40);
    vec3 f60;
    vec3 f61;
    if (f59 > 0.0)
    {
        vec3 f62 = normalize(f26 + f24);
        float f63 = clamp(f59, 0.0, 1.0);
        float f64 = f27 * f27;
        float f65 = max(0.001000000047497451305389404296875, dot(f7, f62));
        float f66 = dot(f24, f62);
        float f67 = 1.0 - f66;
        float f68 = f67 * f67;
        float f69 = (f68 * f68) * f67;
        vec3 f70 = vec3(f69) + (vec3(0.039999999105930328369140625) * (1.0 - f69));
        float f71 = f64 * f64;
        float f72 = (((f65 * f71) - f65) * f65) + 1.0;
        f61 = f38 + (((vec3(1.0) - (f70 * f28)) * CB0[15].xyz) * f63);
        f60 = ((f70 * (((f71 + (f71 * f71)) / (((f72 * f72) * ((f66 * 3.0) + 0.5)) * ((f65 * 0.75) + 0.25))) * f63)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f61 = f38;
        f60 = vec3(0.0);
    }
    float f73 = f27 * 5.0;
    vec3 f74 = vec4(f29, f73).xyz;
    vec3 f75 = textureLod(PrefilteredEnvIndoorTexture, f74, f73).xyz;
    vec3 f76;
    if (CB0[32].w == 0.0)
    {
        f76 = f75;
    }
    else
    {
        f76 = mix(f75, textureLod(PrefilteredEnvBlendTargetTexture, f74, f73).xyz, vec3(CB0[32].w));
    }
    vec4 f77 = texture(PrecomputedBRDFTexture, vec2(f27, max(9.9999997473787516355514526367188e-05, dot(f7, f26))));
    float f78 = f77.x;
    float f79 = f77.y;
    vec3 f80 = ((vec3(0.039999999105930328369140625) * f78) + vec3(f79)) / vec3(f78 + f79);
    vec3 f81 = f7 * f7;
    bvec3 f82 = lessThan(f7, vec3(0.0));
    vec3 f83 = vec3(f82.x ? f81.x : vec3(0.0).x, f82.y ? f81.y : vec3(0.0).y, f82.z ? f81.z : vec3(0.0).z);
    vec3 f84 = f81 - f83;
    float f85 = f84.x;
    float f86 = f84.y;
    float f87 = f84.z;
    float f88 = f83.x;
    float f89 = f83.y;
    float f90 = f83.z;
    vec3 f91 = ((((f61 + (((vec3(1.0) - (f80 * f28)) * ((((((((CB0[40].xyz * f85) + (CB0[42].xyz * f86)) + (CB0[44].xyz * f87)) + (CB0[41].xyz * f88)) + (CB0[43].xyz * f89)) + (CB0[45].xyz * f90)) * CB0[30].w) + ((((((((CB0[34].xyz * f85) + (CB0[36].xyz * f86)) + (CB0[38].xyz * f87)) + (CB0[35].xyz * f88)) + (CB0[37].xyz * f89)) + (CB0[39].xyz * f90)) * CB0[30].w) * f39))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * (f39 * (2.0 - CB0[14].w)))) * 1.0)) + vec3((f6.z * 2.0) * f23)) * (f21.xyz * f21.xyz)) + ((f60 * (f23 * VARYING0.w)) + ((mix(f76, textureLod(PrefilteredEnvTexture, f74, f73).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f29.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f39)) * f80) * f28));
    vec4 f92 = vec4(0.0);
    f92.x = f91.x;
    vec4 f93 = f92;
    f93.y = f91.y;
    vec4 f94 = f93;
    f94.z = f91.z;
    vec4 f95 = f94;
    f95.w = 1.0;
    float f96 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f97 = textureLod(PrefilteredEnvTexture, vec4(-f22, 0.0).xyz, max(CB0[18].y, f96) * 5.0).xyz;
    bvec3 f98 = bvec3(!(CB0[18].w == 0.0));
    vec3 f99 = mix(vec3(f98.x ? CB0[19].xyz.x : f97.x, f98.y ? CB0[19].xyz.y : f97.y, f98.z ? CB0[19].xyz.z : f97.z), f95.xyz, vec3(f96));
    vec4 f100 = f95;
    f100.x = f99.x;
    vec4 f101 = f100;
    f101.y = f99.y;
    vec4 f102 = f101;
    f102.z = f99.z;
    vec3 f103 = sqrt(clamp(f102.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f104 = f102;
    f104.x = f103.x;
    vec4 f105 = f104;
    f105.y = f103.y;
    vec4 f106 = f105;
    f106.z = f103.z;
    _entryPointOutput = f106;
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
