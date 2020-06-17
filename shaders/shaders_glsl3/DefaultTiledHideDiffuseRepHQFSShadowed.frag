#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
#include <MaterialParams.h>
uniform vec4 CB0[52];
uniform vec4 CB8[24];
uniform vec4 CB2[4];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D StudsMapTexture;
uniform sampler2D SpecularMapTexture;

in vec2 VARYING0;
in vec2 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
in float VARYING8;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = VARYING1;
    f0.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float f1 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec2 f2 = VARYING0 * CB2[0].x;
    vec4 f3 = mix(texture(DiffuseMapTexture, f2 * CB2[1].y), texture(DiffuseMapTexture, f2), vec4(clamp((clamp(1.0 - (VARYING4.w * 0.0033333334140479564666748046875), 0.0, 1.0) * CB2[3].x) - (CB2[2].x * CB2[3].x), 0.0, 1.0)));
    vec2 f4 = texture(NormalMapTexture, f2).wy * 2.0;
    vec2 f5 = f4 - vec2(1.0);
    float f6 = sqrt(clamp(1.0 + dot(vec2(1.0) - f4, f5), 0.0, 1.0));
    vec2 f7 = (vec3(f5, f6).xy + (vec3((texture(NormalDetailMapTexture, f2 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x)).xy * f1;
    float f8 = f7.x;
    vec4 f9 = texture(SpecularMapTexture, f2);
    vec3 f10 = normalize(((VARYING6.xyz * f8) + (cross(VARYING5.xyz, VARYING6.xyz) * f7.y)) + (VARYING5.xyz * f6));
    vec3 f11 = -CB0[11].xyz;
    float f12 = dot(f10, f11);
    vec3 f13 = vec4(((mix(vec3(1.0), VARYING2.xyz, vec3(clamp(f3.w + CB2[2].w, 0.0, 1.0))) * f3.xyz) * (1.0 + (f8 * CB2[0].z))) * (texture(StudsMapTexture, f0).x * 2.0), VARYING2.w).xyz;
    vec3 f14 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f15 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f16 = VARYING3.yzx - (VARYING3.yzx * f15);
    vec4 f17 = vec4(clamp(f15, 0.0, 1.0));
    vec4 f18 = mix(texture(LightMapTexture, f16), vec4(0.0), f17);
    vec4 f19 = mix(texture(LightGridSkylightTexture, f16), vec4(1.0), f17);
    vec3 f20 = (f18.xyz * (f18.w * 120.0)).xyz;
    float f21 = f19.x;
    float f22 = f19.y;
    vec3 f23 = f14 - CB0[41].xyz;
    vec3 f24 = f14 - CB0[42].xyz;
    vec3 f25 = f14 - CB0[43].xyz;
    vec4 f26 = vec4(f14, 1.0) * mat4(CB8[((dot(f23, f23) < CB0[41].w) ? 0 : ((dot(f24, f24) < CB0[42].w) ? 1 : ((dot(f25, f25) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f23, f23) < CB0[41].w) ? 0 : ((dot(f24, f24) < CB0[42].w) ? 1 : ((dot(f25, f25) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f23, f23) < CB0[41].w) ? 0 : ((dot(f24, f24) < CB0[42].w) ? 1 : ((dot(f25, f25) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f23, f23) < CB0[41].w) ? 0 : ((dot(f24, f24) < CB0[42].w) ? 1 : ((dot(f25, f25) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f27 = textureLod(ShadowAtlasTexture, f26.xy, 0.0);
    vec2 f28 = vec2(0.0);
    f28.x = CB0[45].z;
    vec2 f29 = f28;
    f29.y = CB0[45].w;
    float f30 = (2.0 * f26.z) - 1.0;
    float f31 = exp(CB0[45].z * f30);
    float f32 = -exp((-CB0[45].w) * f30);
    vec2 f33 = (f29 * CB0[46].y) * vec2(f31, f32);
    vec2 f34 = f33 * f33;
    float f35 = f27.x;
    float f36 = max(f27.y - (f35 * f35), f34.x);
    float f37 = f31 - f35;
    float f38 = f27.z;
    float f39 = max(f27.w - (f38 * f38), f34.y);
    float f40 = f32 - f38;
    float f41 = length(VARYING4.xyz);
    vec3 f42 = VARYING4.xyz / vec3(f41);
    vec3 f43 = (f13 * f13).xyz;
    float f44 = CB0[26].w * f1;
    float f45 = max(f9.y, 0.04500000178813934326171875);
    vec3 f46 = reflect(-f42, f10);
    float f47 = f45 * 5.0;
    vec3 f48 = vec4(f46, f47).xyz;
    vec4 f49 = texture(PrecomputedBRDFTexture, vec2(f45, max(9.9999997473787516355514526367188e-05, dot(f10, f42))));
    float f50 = f9.x * f44;
    vec3 f51 = mix(vec3(0.039999999105930328369140625), f43, vec3(f50));
    vec3 f52 = normalize(f11 + f42);
    float f53 = clamp(f12 * ((f12 > 0.0) ? mix(f22, mix(min((f31 <= f35) ? 1.0 : clamp(((f36 / (f36 + (f37 * f37))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f32 <= f38) ? 1.0 : clamp(((f39 / (f39 + (f40 * f40))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f22, clamp((length(f14 - CB0[7].xyz) * CB0[45].y) - (CB0[45].x * CB0[45].y), 0.0, 1.0)), CB0[46].x) : 0.0), 0.0, 1.0);
    float f54 = f45 * f45;
    float f55 = max(0.001000000047497451305389404296875, dot(f10, f52));
    float f56 = dot(f11, f52);
    float f57 = 1.0 - f56;
    float f58 = f57 * f57;
    float f59 = (f58 * f58) * f57;
    vec3 f60 = vec3(f59) + (f51 * (1.0 - f59));
    float f61 = f54 * f54;
    float f62 = (((f55 * f61) - f55) * f55) + 1.0;
    float f63 = 1.0 - f50;
    float f64 = f44 * f63;
    vec3 f65 = vec3(f63);
    float f66 = f49.x;
    float f67 = f49.y;
    vec3 f68 = ((f51 * f66) + vec3(f67)) / vec3(f66 + f67);
    vec3 f69 = f65 - (f68 * f64);
    vec3 f70 = f10 * f10;
    bvec3 f71 = lessThan(f10, vec3(0.0));
    vec3 f72 = vec3(f71.x ? f70.x : vec3(0.0).x, f71.y ? f70.y : vec3(0.0).y, f71.z ? f70.z : vec3(0.0).z);
    vec3 f73 = f70 - f72;
    float f74 = f73.x;
    float f75 = f73.y;
    float f76 = f73.z;
    float f77 = f72.x;
    float f78 = f72.y;
    float f79 = f72.z;
    vec3 f80 = (mix(textureLod(PrefilteredEnvIndoorTexture, f48, f47).xyz * f20, textureLod(PrefilteredEnvTexture, f48, f47).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f46.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f21)) * f68) * f44;
    vec3 f81 = (((((((f65 - (f60 * f64)) * CB0[10].xyz) * f53) + (f69 * (((((((CB0[35].xyz * f74) + (CB0[37].xyz * f75)) + (CB0[39].xyz * f76)) + (CB0[36].xyz * f77)) + (CB0[38].xyz * f78)) + (CB0[40].xyz * f79)) + (((((((CB0[29].xyz * f74) + (CB0[31].xyz * f75)) + (CB0[33].xyz * f76)) + (CB0[30].xyz * f77)) + (CB0[32].xyz * f78)) + (CB0[34].xyz * f79)) * f21)))) + (CB0[27].xyz + (CB0[28].xyz * f21))) * f43) + (((f60 * (((f61 + (f61 * f61)) / (((f62 * f62) * ((f56 * 3.0) + 0.5)) * ((f55 * 0.75) + 0.25))) * f53)) * CB0[10].xyz) + f80)) + (f20 * mix(f43, f80 * (1.0 / (max(max(f80.x, f80.y), f80.z) + 0.00999999977648258209228515625)), (vec3(1.0) - f69) * (f44 * (1.0 - f21))));
    vec4 f82 = vec4(f81.x, f81.y, f81.z, vec4(0.0).w);
    f82.w = VARYING2.w;
    float f83 = clamp(exp2((CB0[13].z * f41) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f84 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f83) * 5.0).xyz;
    bvec3 f85 = bvec3(CB0[13].w != 0.0);
    vec3 f86 = sqrt(clamp(mix(vec3(f85.x ? CB0[14].xyz.x : f84.x, f85.y ? CB0[14].xyz.y : f84.y, f85.z ? CB0[14].xyz.z : f84.z), f82.xyz, vec3(f83)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f87 = vec4(f86.x, f86.y, f86.z, f82.w);
    f87.w = VARYING2.w;
    _entryPointOutput = f87;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$StudsMapTexture=s0
//$$SpecularMapTexture=s5
