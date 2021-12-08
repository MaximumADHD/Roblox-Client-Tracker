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
in vec4 VARYING9;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = vec3(VARYING1.xy, VARYING2.x);
    vec3 f1 = vec3(VARYING1.zw, VARYING2.z);
    vec4 f2 = ((texture(SpecularMapTexture, f0) * VARYING0.x) + (texture(SpecularMapTexture, f1) * VARYING0.y)) + (texture(SpecularMapTexture, VARYING3.xyz) * VARYING0.z);
    vec4 f3 = ((texture(AlbedoMapTexture, f0).yxzw * VARYING0.x) + (texture(AlbedoMapTexture, f1).yxzw * VARYING0.y)) + (texture(AlbedoMapTexture, VARYING3.xyz).yxzw * VARYING0.z);
    vec2 f4 = f3.yz - vec2(0.5);
    float f5 = VARYING9.x * f3.x;
    float f6 = f4.x;
    float f7 = f4.y;
    float f8 = (VARYING9.y * f6) - (VARYING9.z * f7);
    float f9 = (VARYING9.z * f6) + (VARYING9.y * f7);
    float f10 = f5 - f9;
    vec3 f11 = vec4(vec3(f10, f5, f10) + (vec3(f8, f9, f8) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f12 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec3 f13 = normalize(VARYING6);
    vec3 f14 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f15 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f16 = VARYING4.yzx - (VARYING4.yzx * f15);
    vec4 f17 = vec4(clamp(f15, 0.0, 1.0));
    vec4 f18 = mix(texture(LightMapTexture, f16), vec4(0.0), f17);
    vec4 f19 = mix(texture(LightGridSkylightTexture, f16), vec4(1.0), f17);
    vec3 f20 = (f18.xyz * (f18.w * 120.0)).xyz;
    float f21 = f19.x;
    vec4 f22 = texture(ShadowMapTexture, f14.xy);
    float f23 = f14.z;
    vec3 f24 = normalize(VARYING8);
    vec3 f25 = (f11 * f11).xyz;
    float f26 = f2.y;
    float f27 = f2.x;
    vec3 f28 = mix(vec3(0.039999999105930328369140625), f25, vec3(f27));
    float f29 = CB0[26].w * f12;
    vec3 f30 = reflect(-f24, f13);
    vec3 f31 = -CB0[11].xyz;
    float f32 = dot(f13, f31) * ((1.0 - ((step(f22.x, f23) * clamp(CB0[24].z + (CB0[24].w * abs(f23 - 0.5)), 0.0, 1.0)) * f22.y)) * f19.y);
    vec3 f33 = normalize(f31 + f24);
    float f34 = clamp(f32, 0.0, 1.0);
    float f35 = f26 * f26;
    float f36 = max(0.001000000047497451305389404296875, dot(f13, f33));
    float f37 = dot(f31, f33);
    float f38 = 1.0 - f37;
    float f39 = f38 * f38;
    float f40 = (f39 * f39) * f38;
    vec3 f41 = vec3(f40) + (f28 * (1.0 - f40));
    float f42 = f35 * f35;
    float f43 = (((f36 * f42) - f36) * f36) + 1.0;
    float f44 = 1.0 - f27;
    float f45 = f29 * f44;
    vec3 f46 = vec3(f44);
    float f47 = f26 * 5.0;
    vec3 f48 = vec4(f30, f47).xyz;
    vec4 f49 = texture(PrecomputedBRDFTexture, vec2(f26, max(9.9999997473787516355514526367188e-05, dot(f13, f24))));
    float f50 = f49.x;
    float f51 = f49.y;
    vec3 f52 = ((f28 * f50) + vec3(f51)) / vec3(f50 + f51);
    vec3 f53 = f46 - (f52 * f45);
    vec3 f54 = f13 * f13;
    bvec3 f55 = lessThan(f13, vec3(0.0));
    vec3 f56 = vec3(f55.x ? f54.x : vec3(0.0).x, f55.y ? f54.y : vec3(0.0).y, f55.z ? f54.z : vec3(0.0).z);
    vec3 f57 = f54 - f56;
    float f58 = f57.x;
    float f59 = f57.y;
    float f60 = f57.z;
    float f61 = f56.x;
    float f62 = f56.y;
    float f63 = f56.z;
    vec3 f64 = (mix(textureLod(PrefilteredEnvIndoorTexture, f48, f47).xyz * f20, textureLod(PrefilteredEnvTexture, f48, f47).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f30.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f21)) * f52) * f29;
    vec3 f65 = (((((((((f46 - (f41 * f45)) * CB0[10].xyz) * f34) + (CB0[12].xyz * (f44 * clamp(-f32, 0.0, 1.0)))) + (f53 * (((((((CB0[35].xyz * f58) + (CB0[37].xyz * f59)) + (CB0[39].xyz * f60)) + (CB0[36].xyz * f61)) + (CB0[38].xyz * f62)) + (CB0[40].xyz * f63)) + (((((((CB0[29].xyz * f58) + (CB0[31].xyz * f59)) + (CB0[33].xyz * f60)) + (CB0[30].xyz * f61)) + (CB0[32].xyz * f62)) + (CB0[34].xyz * f63)) * f21)))) + (CB0[27].xyz + (CB0[28].xyz * f21))) + vec3((f2.z * 2.0) * f12)) * f25) + (((((f41 * (((f42 + (f42 * f42)) / (((f43 * f43) * ((f37 * 3.0) + 0.5)) * ((f36 * 0.75) + 0.25))) * f34)) * CB0[10].xyz) * f12) * VARYING0.w) + f64)) + ((f20 * mix(f25, f64 * (1.0 / (max(max(f64.x, f64.y), f64.z) + 0.00999999977648258209228515625)), (vec3(1.0) - f53) * (f29 * (1.0 - f21)))) * 1.0);
    vec4 f66 = vec4(f65.x, f65.y, f65.z, vec4(0.0).w);
    f66.w = 1.0;
    float f67 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f68 = textureLod(PrefilteredEnvTexture, vec4(-VARYING8, 0.0).xyz, max(CB0[13].y, f67) * 5.0).xyz;
    bvec3 f69 = bvec3(!(CB0[13].w == 0.0));
    vec3 f70 = sqrt(clamp(mix(vec3(f69.x ? CB0[14].xyz.x : f68.x, f69.y ? CB0[14].xyz.y : f68.y, f69.z ? CB0[14].xyz.z : f68.z), f66.xyz, vec3(f67)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f70.x, f70.y, f70.z, f66.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$SpecularMapTexture=s2
//$$AlbedoMapTexture=s0
