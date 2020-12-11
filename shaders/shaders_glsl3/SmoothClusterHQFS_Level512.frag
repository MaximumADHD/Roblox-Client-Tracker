#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
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
    vec3 f9 = normalize(VARYING6);
    vec3 f10 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f11 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f12 = VARYING4.yzx - (VARYING4.yzx * f11);
    vec4 f13 = vec4(clamp(f11, 0.0, 1.0));
    vec4 f14 = mix(texture(LightMapTexture, f12), vec4(0.0), f13);
    vec4 f15 = mix(texture(LightGridSkylightTexture, f12), vec4(1.0), f13);
    float f16 = f15.x;
    vec4 f17 = texture(ShadowMapTexture, f10.xy);
    float f18 = f10.z;
    vec3 f19 = normalize(VARYING8);
    vec3 f20 = (f7 * f7).xyz;
    float f21 = f2.y;
    float f22 = CB0[26].w * f8;
    vec3 f23 = reflect(-f19, f9);
    vec3 f24 = -CB0[11].xyz;
    float f25 = dot(f9, f24) * ((1.0 - ((step(f17.x, f18) * clamp(CB0[24].z + (CB0[24].w * abs(f18 - 0.5)), 0.0, 1.0)) * f17.y)) * f15.y);
    vec3 f26 = normalize(f24 + f19);
    float f27 = clamp(f25, 0.0, 1.0);
    float f28 = f21 * f21;
    float f29 = max(0.001000000047497451305389404296875, dot(f9, f26));
    float f30 = dot(f24, f26);
    float f31 = 1.0 - f30;
    float f32 = f31 * f31;
    float f33 = (f32 * f32) * f31;
    vec3 f34 = vec3(f33) + (vec3(0.039999999105930328369140625) * (1.0 - f33));
    float f35 = f28 * f28;
    float f36 = (((f29 * f35) - f29) * f29) + 1.0;
    float f37 = f21 * 5.0;
    vec3 f38 = vec4(f23, f37).xyz;
    vec4 f39 = texture(PrecomputedBRDFTexture, vec2(f21, max(9.9999997473787516355514526367188e-05, dot(f9, f19))));
    float f40 = f39.x;
    float f41 = f39.y;
    vec3 f42 = ((vec3(0.039999999105930328369140625) * f40) + vec3(f41)) / vec3(f40 + f41);
    vec3 f43 = f42 * f22;
    vec3 f44 = f9 * f9;
    bvec3 f45 = lessThan(f9, vec3(0.0));
    vec3 f46 = vec3(f45.x ? f44.x : vec3(0.0).x, f45.y ? f44.y : vec3(0.0).y, f45.z ? f44.z : vec3(0.0).z);
    vec3 f47 = f44 - f46;
    float f48 = f47.x;
    float f49 = f47.y;
    float f50 = f47.z;
    float f51 = f46.x;
    float f52 = f46.y;
    float f53 = f46.z;
    vec3 f54 = ((((((CB0[35].xyz * f48) + (CB0[37].xyz * f49)) + (CB0[39].xyz * f50)) + (CB0[36].xyz * f51)) + (CB0[38].xyz * f52)) + (CB0[40].xyz * f53)) + (((((((CB0[29].xyz * f48) + (CB0[31].xyz * f49)) + (CB0[33].xyz * f50)) + (CB0[30].xyz * f51)) + (CB0[32].xyz * f52)) + (CB0[34].xyz * f53)) * f16);
    vec3 f55 = (mix(textureLod(PrefilteredEnvIndoorTexture, f38, f37).xyz, textureLod(PrefilteredEnvTexture, f38, f37).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f23.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f16)) * f42) * f22;
    vec3 f56 = (((((((((vec3(1.0) - (f34 * f22)) * CB0[10].xyz) * f27) + (CB0[12].xyz * clamp(-f25, 0.0, 1.0))) + (((vec3(1.0) - f43) * f54) * CB0[25].w)) + ((CB0[27].xyz + (CB0[28].xyz * f16)) * 1.0)) + vec3((f2.z * 2.0) * f8)) * f20) + (((((f34 * (((f35 + (f35 * f35)) / (((f36 * f36) * ((f30 * 3.0) + 0.5)) * ((f29 * 0.75) + 0.25))) * f27)) * CB0[10].xyz) * f8) * VARYING0.w) + f55)) + (((f14.xyz * (f14.w * 120.0)).xyz * mix(f20, f55 * (1.0 / (max(max(f54.x, f54.y), f54.z) + 0.00999999977648258209228515625)), f43 * (f22 * (1.0 - f16)))) * 1.0);
    vec4 f57 = vec4(f56.x, f56.y, f56.z, vec4(0.0).w);
    f57.w = 1.0;
    float f58 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f59 = textureLod(PrefilteredEnvTexture, vec4(-VARYING8, 0.0).xyz, max(CB0[13].y, f58) * 5.0).xyz;
    bvec3 f60 = bvec3(CB0[13].w != 0.0);
    vec3 f61 = sqrt(clamp(mix(vec3(f60.x ? CB0[14].xyz.x : f59.x, f60.y ? CB0[14].xyz.y : f59.y, f60.z ? CB0[14].xyz.z : f59.z), f57.xyz, vec3(f58)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f61.x, f61.y, f61.z, f57.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$SpecularMapTexture=s2
//$$AlbedoMapTexture=s0
