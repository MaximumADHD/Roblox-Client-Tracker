#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform vec4 CB5[74];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
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
    vec4 f29 = ((texture(AlbedoMapTexture, f0).yxzw * f5.x) + (texture(AlbedoMapTexture, f2).yxzw * f5.y)) + (texture(AlbedoMapTexture, VARYING3.xyz).yxzw * f5.z);
    vec2 f30 = f29.yz - vec2(0.5);
    float f31 = f29.x;
    float f32 = f31 - f30.y;
    vec3 f33 = vec4(vec3(f32, f31, f32) + (vec3(f30.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f34 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    float f35 = -VARYING6.x;
    vec2 f36 = (((texture(NormalMapTexture, f0) * f5.x) + (texture(NormalMapTexture, f2) * f5.y)) + (texture(NormalMapTexture, VARYING3.xyz) * f5.z)).wy * 2.0;
    vec2 f37 = f36 - vec2(1.0);
    vec3 f38 = normalize(((vec3(f37, sqrt(clamp(1.0 + dot(vec2(1.0) - f36, f37), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f5, f5))) + vec3(0.0, 0.0, 1.0));
    vec3 f39 = vec3(dot(VARYING7, f5));
    vec3 f40 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f35), vec3(VARYING6.y, f35, 0.0), f39) * f38.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f39) * f38.y)) + (VARYING6 * f38.z)), 0.0).xyz;
    vec3 f41 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f42 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f43 = VARYING4.yzx - (VARYING4.yzx * f42);
    vec4 f44 = vec4(clamp(f42, 0.0, 1.0));
    vec4 f45 = mix(texture(LightMapTexture, f43), vec4(0.0), f44);
    vec4 f46 = mix(texture(LightGridSkylightTexture, f43), vec4(1.0), f44);
    vec3 f47 = (f45.xyz * (f45.w * 120.0)).xyz;
    float f48 = f46.x;
    vec4 f49 = texture(ShadowMapTexture, f41.xy);
    float f50 = f41.z;
    vec3 f51 = normalize(VARYING9);
    vec3 f52 = (f33 * f33).xyz;
    float f53 = f28.y;
    float f54 = f28.x;
    vec3 f55 = mix(vec3(0.039999999105930328369140625), f52, vec3(f54));
    float f56 = CB0[26].w * f34;
    vec3 f57 = reflect(-f51, f40);
    vec3 f58 = -CB0[11].xyz;
    float f59 = dot(f40, f58) * ((1.0 - ((step(f49.x, f50) * clamp(CB0[24].z + (CB0[24].w * abs(f50 - 0.5)), 0.0, 1.0)) * f49.y)) * f46.y);
    vec3 f60 = normalize(f58 + f51);
    float f61 = clamp(f59, 0.0, 1.0);
    float f62 = f53 * f53;
    float f63 = max(0.001000000047497451305389404296875, dot(f40, f60));
    float f64 = dot(f58, f60);
    float f65 = 1.0 - f64;
    float f66 = f65 * f65;
    float f67 = (f66 * f66) * f65;
    vec3 f68 = vec3(f67) + (f55 * (1.0 - f67));
    float f69 = f62 * f62;
    float f70 = (((f63 * f69) - f63) * f63) + 1.0;
    float f71 = 1.0 - f54;
    float f72 = f56 * f71;
    vec3 f73 = vec3(f71);
    float f74 = f53 * 5.0;
    vec3 f75 = vec4(f57, f74).xyz;
    vec4 f76 = texture(PrecomputedBRDFTexture, vec2(f53, max(9.9999997473787516355514526367188e-05, dot(f40, f51))));
    float f77 = f76.x;
    float f78 = f76.y;
    vec3 f79 = ((f55 * f77) + vec3(f78)) / vec3(f77 + f78);
    vec3 f80 = f73 - (f79 * f72);
    vec3 f81 = f40 * f40;
    bvec3 f82 = lessThan(f40, vec3(0.0));
    vec3 f83 = vec3(f82.x ? f81.x : vec3(0.0).x, f82.y ? f81.y : vec3(0.0).y, f82.z ? f81.z : vec3(0.0).z);
    vec3 f84 = f81 - f83;
    float f85 = f84.x;
    float f86 = f84.y;
    float f87 = f84.z;
    float f88 = f83.x;
    float f89 = f83.y;
    float f90 = f83.z;
    vec3 f91 = (mix(textureLod(PrefilteredEnvIndoorTexture, f75, f74).xyz * f47, textureLod(PrefilteredEnvTexture, f75, f74).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f57.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f48)) * f79) * f56;
    vec3 f92 = (((((((((f73 - (f68 * f72)) * CB0[10].xyz) * f61) + (CB0[12].xyz * (f71 * clamp(-f59, 0.0, 1.0)))) + (f80 * (((((((CB0[35].xyz * f85) + (CB0[37].xyz * f86)) + (CB0[39].xyz * f87)) + (CB0[36].xyz * f88)) + (CB0[38].xyz * f89)) + (CB0[40].xyz * f90)) + (((((((CB0[29].xyz * f85) + (CB0[31].xyz * f86)) + (CB0[33].xyz * f87)) + (CB0[30].xyz * f88)) + (CB0[32].xyz * f89)) + (CB0[34].xyz * f90)) * f48)))) + (CB0[27].xyz + (CB0[28].xyz * f48))) + vec3((f28.z * 2.0) * f34)) * f52) + (((((f68 * (((f69 + (f69 * f69)) / (((f70 * f70) * ((f64 * 3.0) + 0.5)) * ((f63 * 0.75) + 0.25))) * f61)) * CB0[10].xyz) * f34) * VARYING0.w) + f91)) + ((f47 * mix(f52, f91 * (1.0 / (max(max(f91.x, f91.y), f91.z) + 0.00999999977648258209228515625)), (vec3(1.0) - f80) * (f56 * (1.0 - f48)))) * 1.0);
    vec4 f93 = vec4(f92.x, f92.y, f92.z, vec4(0.0).w);
    f93.w = 1.0;
    float f94 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f95 = textureLod(PrefilteredEnvTexture, vec4(-VARYING9, 0.0).xyz, max(CB0[13].y, f94) * 5.0).xyz;
    bvec3 f96 = bvec3(!(CB0[13].w == 0.0));
    vec3 f97 = sqrt(clamp(mix(vec3(f96.x ? CB0[14].xyz.x : f95.x, f96.y ? CB0[14].xyz.y : f95.y, f96.z ? CB0[14].xyz.z : f95.z), f93.xyz, vec3(f94)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f97.x, f97.y, f97.z, f93.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$SpecularMapTexture=s2
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
