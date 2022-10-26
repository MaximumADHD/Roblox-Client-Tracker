#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform vec4 CB4[63];
uniform vec4 CB5[63];
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
in vec3 VARYING10;
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
        vec3 f11 = vec3(0.0);
        f11.x = clamp((f1.w * CB5[f7 * 1 + 0].x) + CB5[f7 * 1 + 0].y, 0.0, 1.0);
        vec3 f12 = f11;
        f12.y = clamp((f3.w * CB5[f8 * 1 + 0].x) + CB5[f8 * 1 + 0].y, 0.0, 1.0);
        vec3 f13 = f12;
        f13.z = clamp((f4.w * CB5[f9 * 1 + 0].x) + CB5[f9 * 1 + 0].y, 0.0, 1.0);
        vec3 f14 = VARYING0.xyz * f13;
        float f15 = 1.0 / f10;
        float f16 = 0.5 * f10;
        float f17 = f14.x;
        float f18 = f14.y;
        float f19 = f14.z;
        float f20 = clamp(((f17 - max(f18, f19)) + f16) * f15, 0.0, 1.0);
        float f21 = clamp(((f18 - max(f17, f19)) + f16) * f15, 0.0, 1.0);
        float f22 = clamp(((f19 - max(f17, f18)) + f16) * f15, 0.0, 1.0);
        vec2 f23 = dFdx(VARYING1.xy);
        vec2 f24 = dFdy(VARYING1.xy);
        f5 = mix(vec3(f20, f21, f22) / vec3((f20 + f21) + f22), VARYING0.xyz, vec3(clamp((sqrt(max(dot(f23, f23), dot(f24, f24))) * 7.0) + clamp(VARYING8.w, 0.0, 1.0), 0.0, 1.0)));
    }
    else
    {
        f5 = VARYING0.xyz;
    }
    vec4 f25 = ((f1 * f5.x) + (f3 * f5.y)) + (f4 * f5.z);
    vec4 f26 = texture(AlbedoMapTexture, f0);
    vec4 f27 = texture(AlbedoMapTexture, f2);
    vec4 f28 = texture(AlbedoMapTexture, VARYING3.xyz);
    vec3 f29 = (((mix(vec3(1.0), CB4[int(VARYING10.x + 0.5) * 1 + 0].xyz, vec3(f26.w)) * f26.xyz) * f5.x) + ((mix(vec3(1.0), CB4[int(VARYING10.y + 0.5) * 1 + 0].xyz, vec3(f27.w)) * f27.xyz) * f5.y)) + ((mix(vec3(1.0), CB4[int(VARYING10.z + 0.5) * 1 + 0].xyz, vec3(f28.w)) * f28.xyz) * f5.z);
    vec3 f30 = f29 * f29;
    float f31 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec4 f32 = texture(NormalMapTexture, f0);
    vec4 f33 = texture(NormalMapTexture, f2);
    vec4 f34 = texture(NormalMapTexture, VARYING3.xyz);
    vec2 f35 = (((f32 * f5.x) + (f33 * f5.y)) + (f34 * f5.z)).wy * 2.0;
    vec2 f36 = f35 - vec2(1.0);
    vec3 f37 = normalize(((vec3(f36, sqrt(clamp(1.0 + dot(vec2(1.0) - f35, f36), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f5, f5))) + vec3(0.0, 0.0, 1.0));
    vec3 f38 = vec3(dot(VARYING7, f5));
    vec3 f39 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f38) * f37.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f38) * f37.y)) + (VARYING6 * f37.z)), 0.0).xyz;
    vec3 f40 = normalize(VARYING9);
    float f41 = 0.08900000154972076416015625 + (f25.y * 0.9110000133514404296875);
    float f42 = f25.x;
    vec3 f43 = mix(vec3(0.039999999105930328369140625), f30, vec3(f42));
    float f44 = CB0[31].w * f31;
    vec3 f45 = reflect(-f40, f39);
    vec3 f46 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f47 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f48 = VARYING4.yzx - (VARYING4.yzx * f47);
    vec4 f49 = texture(LightMapTexture, f48);
    vec4 f50 = texture(LightGridSkylightTexture, f48);
    vec4 f51 = vec4(clamp(f47, 0.0, 1.0));
    vec4 f52 = mix(f49, vec4(0.0), f51);
    vec4 f53 = mix(f50, vec4(1.0), f51);
    float f54 = f53.x;
    vec4 f55 = texture(ShadowMapTexture, f46.xy);
    float f56 = f46.z;
    vec3 f57 = -CB0[16].xyz;
    float f58 = dot(f39, f57) * ((1.0 - ((step(f55.x, f56) * clamp(CB0[29].z + (CB0[29].w * abs(f56 - 0.5)), 0.0, 1.0)) * f55.y)) * f53.y);
    vec3 f59 = normalize(f40 - CB0[16].xyz);
    float f60 = clamp(f58, 0.0, 1.0);
    float f61 = f41 * f41;
    float f62 = max(0.001000000047497451305389404296875, dot(f39, f59));
    float f63 = dot(f57, f59);
    float f64 = 1.0 - f63;
    float f65 = f64 * f64;
    float f66 = (f65 * f65) * f64;
    vec3 f67 = vec3(f66) + (f43 * (1.0 - f66));
    float f68 = f61 * f61;
    float f69 = (((f62 * f68) - f62) * f62) + 1.0;
    float f70 = 1.0 - f42;
    float f71 = f44 * f70;
    vec3 f72 = vec3(f70);
    float f73 = f41 * 5.0;
    vec3 f74 = vec4(f45, f73).xyz;
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
    vec4 f77 = texture(PrecomputedBRDFTexture, vec2(f41, max(9.9999997473787516355514526367188e-05, dot(f39, f40))));
    float f78 = f77.x;
    float f79 = f77.y;
    vec3 f80 = ((f43 * f78) + vec3(f79)) / vec3(f78 + f79);
    vec3 f81 = f39 * f39;
    bvec3 f82 = lessThan(f39, vec3(0.0));
    vec3 f83 = vec3(f82.x ? f81.x : vec3(0.0).x, f82.y ? f81.y : vec3(0.0).y, f82.z ? f81.z : vec3(0.0).z);
    vec3 f84 = f81 - f83;
    float f85 = f84.x;
    float f86 = f84.y;
    float f87 = f84.z;
    float f88 = f83.x;
    float f89 = f83.y;
    float f90 = f83.z;
    vec3 f91 = (((((((f52.xyz * (f52.w * 120.0)) * 1.0) + ((((f72 - (f67 * f71)) * CB0[15].xyz) * f60) + (CB0[17].xyz * (f70 * clamp(-f58, 0.0, 1.0))))) + ((f72 - (f80 * f71)) * (((((((CB0[40].xyz * f85) + (CB0[42].xyz * f86)) + (CB0[44].xyz * f87)) + (CB0[41].xyz * f88)) + (CB0[43].xyz * f89)) + (CB0[45].xyz * f90)) + (((((((CB0[34].xyz * f85) + (CB0[36].xyz * f86)) + (CB0[38].xyz * f87)) + (CB0[35].xyz * f88)) + (CB0[37].xyz * f89)) + (CB0[39].xyz * f90)) * f54)))) + ((CB0[32].xyz + (CB0[33].xyz * f54)) * 1.0)) + vec3((f25.z * 2.0) * f31)) * f30) + (((((f67 * (((f68 + (f68 * f68)) / max(((f69 * f69) * ((f63 * 3.0) + 0.5)) * ((f62 * 0.75) + 0.25), 3.0999999580672010779380798339844e-05)) * f60)) * CB0[15].xyz) * 1.0) * (f31 * VARYING0.w)) + ((mix(f76, textureLod(PrefilteredEnvTexture, f74, f73).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f45.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f54)) * f80) * f44));
    vec4 f92 = vec4(0.0);
    f92.x = f91.x;
    vec4 f93 = f92;
    f93.y = f91.y;
    vec4 f94 = f93;
    f94.z = f91.z;
    vec4 f95 = f94;
    f95.w = 1.0;
    float f96 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f97 = textureLod(PrefilteredEnvTexture, vec4(-VARYING9, 0.0).xyz, max(CB0[18].y, f96) * 5.0).xyz;
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
