#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[52];
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
in vec3 VARYING8;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = vec3(VARYING1.xy, VARYING2.x);
    vec3 f1 = vec3(VARYING1.zw, VARYING2.z);
    vec4 f2 = ((texture(SpecularMapTexture, f0) * VARYING0.x) + (texture(SpecularMapTexture, f1) * VARYING0.y)) + (texture(SpecularMapTexture, VARYING3.xyz) * VARYING0.z);
    vec4 f3 = ((texture(AlbedoMapTexture, f0).yxzw * VARYING0.x) + (texture(AlbedoMapTexture, f1).yxzw * VARYING0.y)) + (texture(AlbedoMapTexture, VARYING3.xyz).yxzw * VARYING0.z);
    vec2 f4 = f3.yz - vec2(0.5);
    float f5 = f3.x;
    float f6 = f5 - f4.y;
    vec3 f7 = vec4(vec3(f6, f5, f6) + (vec3(f4.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f8 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    float f9 = -VARYING6.x;
    vec2 f10 = (((texture(NormalMapTexture, f0) * VARYING0.x) + (texture(NormalMapTexture, f1) * VARYING0.y)) + (texture(NormalMapTexture, VARYING3.xyz) * VARYING0.z)).wy * 2.0;
    vec2 f11 = f10 - vec2(1.0);
    vec3 f12 = vec3(dot(VARYING7, VARYING0.xyz));
    vec3 f13 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f9), vec3(VARYING6.y, f9, 0.0), f12) * f11.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f12) * f11.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - f10, f11), 0.0, 1.0)))), 0.0).xyz;
    vec3 f14 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f15 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f16 = VARYING4.yzx - (VARYING4.yzx * f15);
    vec4 f17 = vec4(clamp(f15, 0.0, 1.0));
    vec4 f18 = mix(texture(LightMapTexture, f16), vec4(0.0), f17);
    vec4 f19 = mix(texture(LightGridSkylightTexture, f16), vec4(1.0), f17);
    float f20 = f19.x;
    vec4 f21 = texture(ShadowMapTexture, f14.xy);
    float f22 = f14.z;
    vec3 f23 = normalize(VARYING8);
    vec3 f24 = (f7 * f7).xyz;
    float f25 = f2.y;
    float f26 = CB0[26].w * f8;
    vec3 f27 = reflect(-f23, f13);
    vec3 f28 = -CB0[11].xyz;
    float f29 = dot(f13, f28) * ((1.0 - ((step(f21.x, f22) * clamp(CB0[24].z + (CB0[24].w * abs(f22 - 0.5)), 0.0, 1.0)) * f21.y)) * f19.y);
    vec3 f30 = normalize(f28 + f23);
    float f31 = clamp(f29, 0.0, 1.0);
    float f32 = f25 * f25;
    float f33 = max(0.001000000047497451305389404296875, dot(f13, f30));
    float f34 = dot(f28, f30);
    float f35 = 1.0 - f34;
    float f36 = f35 * f35;
    float f37 = (f36 * f36) * f35;
    vec3 f38 = vec3(f37) + (vec3(0.039999999105930328369140625) * (1.0 - f37));
    float f39 = f32 * f32;
    float f40 = (((f33 * f39) - f33) * f33) + 1.0;
    float f41 = f25 * 5.0;
    vec3 f42 = vec4(f27, f41).xyz;
    vec4 f43 = texture(PrecomputedBRDFTexture, vec2(f25, max(9.9999997473787516355514526367188e-05, dot(f13, f23))));
    float f44 = f43.x;
    float f45 = f43.y;
    vec3 f46 = ((vec3(0.039999999105930328369140625) * f44) + vec3(f45)) / vec3(f44 + f45);
    vec3 f47 = f46 * f26;
    vec3 f48 = f13 * f13;
    bvec3 f49 = lessThan(f13, vec3(0.0));
    vec3 f50 = vec3(f49.x ? f48.x : vec3(0.0).x, f49.y ? f48.y : vec3(0.0).y, f49.z ? f48.z : vec3(0.0).z);
    vec3 f51 = f48 - f50;
    float f52 = f51.x;
    float f53 = f51.y;
    float f54 = f51.z;
    float f55 = f50.x;
    float f56 = f50.y;
    float f57 = f50.z;
    vec3 f58 = ((((((CB0[35].xyz * f52) + (CB0[37].xyz * f53)) + (CB0[39].xyz * f54)) + (CB0[36].xyz * f55)) + (CB0[38].xyz * f56)) + (CB0[40].xyz * f57)) + (((((((CB0[29].xyz * f52) + (CB0[31].xyz * f53)) + (CB0[33].xyz * f54)) + (CB0[30].xyz * f55)) + (CB0[32].xyz * f56)) + (CB0[34].xyz * f57)) * f20);
    vec3 f59 = (mix(textureLod(PrefilteredEnvIndoorTexture, f42, f41).xyz, textureLod(PrefilteredEnvTexture, f42, f41).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f27.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f20)) * f46) * f26;
    vec3 f60 = (((((((((vec3(1.0) - (f38 * f26)) * CB0[10].xyz) * f31) + (CB0[12].xyz * clamp(-f29, 0.0, 1.0))) + (((vec3(1.0) - f47) * f58) * CB0[25].w)) + (CB0[27].xyz + (CB0[28].xyz * f20))) + vec3((f2.z * 2.0) * f8)) * f24) + (((((f38 * (((f39 + (f39 * f39)) / (((f40 * f40) * ((f34 * 3.0) + 0.5)) * ((f33 * 0.75) + 0.25))) * f31)) * CB0[10].xyz) * f8) * VARYING0.w) + f59)) + ((f18.xyz * (f18.w * 120.0)).xyz * mix(f24, f59 * (1.0 / (max(max(f58.x, f58.y), f58.z) + 0.00999999977648258209228515625)), f47 * (f26 * (1.0 - f20))));
    vec4 f61 = vec4(f60.x, f60.y, f60.z, vec4(0.0).w);
    f61.w = 1.0;
    float f62 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f63 = textureLod(PrefilteredEnvTexture, vec4(-VARYING8, 0.0).xyz, max(CB0[13].y, f62) * 5.0).xyz;
    bvec3 f64 = bvec3(CB0[13].w != 0.0);
    vec3 f65 = sqrt(clamp(mix(vec3(f64.x ? CB0[14].xyz.x : f63.x, f64.y ? CB0[14].xyz.y : f63.y, f64.z ? CB0[14].xyz.z : f63.z), f61.xyz, vec3(f62)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f65.x, f65.y, f65.z, f61.w);
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
