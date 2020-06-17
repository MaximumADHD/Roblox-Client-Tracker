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
    vec2 f2 = texture(NormalMapTexture, f0).wy * 2.0;
    vec2 f3 = f2 - vec2(1.0);
    float f4 = sqrt(clamp(1.0 + dot(vec2(1.0) - f2, f3), 0.0, 1.0));
    vec2 f5 = ((vec3(f3, f4).xy + (vec3((texture(NormalDetailMapTexture, VARYING0 * CB2[0].x).wy * 2.0) - vec2(1.0), 0.0).xy * (clamp(VARYING2.w - 0.5, 0.0, 1.0) * clamp(1.0 - (2.0 * VARYING7.w), 0.0, 1.0)))).xy * f1).xy * CB2[3].w;
    vec3 f6 = normalize(((VARYING6.xyz * f5.x) + (cross(VARYING5.xyz, VARYING6.xyz) * f5.y)) + (VARYING5.xyz * f4));
    vec3 f7 = -CB0[11].xyz;
    float f8 = dot(f6, f7);
    vec3 f9 = vec4(VARYING2.xyz * (texture(DiffuseMapTexture, f0).x * 2.0), VARYING2.w).xyz;
    vec3 f10 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f11 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f12 = VARYING3.yzx - (VARYING3.yzx * f11);
    vec4 f13 = vec4(clamp(f11, 0.0, 1.0));
    vec4 f14 = mix(texture(LightMapTexture, f12), vec4(0.0), f13);
    vec4 f15 = mix(texture(LightGridSkylightTexture, f12), vec4(1.0), f13);
    vec3 f16 = (f14.xyz * (f14.w * 120.0)).xyz;
    float f17 = f15.x;
    float f18 = f15.y;
    vec3 f19 = f10 - CB0[41].xyz;
    vec3 f20 = f10 - CB0[42].xyz;
    vec3 f21 = f10 - CB0[43].xyz;
    vec4 f22 = vec4(f10, 1.0) * mat4(CB8[((dot(f19, f19) < CB0[41].w) ? 0 : ((dot(f20, f20) < CB0[42].w) ? 1 : ((dot(f21, f21) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f19, f19) < CB0[41].w) ? 0 : ((dot(f20, f20) < CB0[42].w) ? 1 : ((dot(f21, f21) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f19, f19) < CB0[41].w) ? 0 : ((dot(f20, f20) < CB0[42].w) ? 1 : ((dot(f21, f21) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f19, f19) < CB0[41].w) ? 0 : ((dot(f20, f20) < CB0[42].w) ? 1 : ((dot(f21, f21) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f23 = textureLod(ShadowAtlasTexture, f22.xy, 0.0);
    vec2 f24 = vec2(0.0);
    f24.x = CB0[45].z;
    vec2 f25 = f24;
    f25.y = CB0[45].w;
    float f26 = (2.0 * f22.z) - 1.0;
    float f27 = exp(CB0[45].z * f26);
    float f28 = -exp((-CB0[45].w) * f26);
    vec2 f29 = (f25 * CB0[46].y) * vec2(f27, f28);
    vec2 f30 = f29 * f29;
    float f31 = f23.x;
    float f32 = max(f23.y - (f31 * f31), f30.x);
    float f33 = f27 - f31;
    float f34 = f23.z;
    float f35 = max(f23.w - (f34 * f34), f30.y);
    float f36 = f28 - f34;
    float f37 = length(VARYING4.xyz);
    vec3 f38 = VARYING4.xyz / vec3(f37);
    float f39 = CB0[26].w * f1;
    float f40 = max(CB2[0].y, 0.04500000178813934326171875);
    vec3 f41 = reflect(-f38, f6);
    float f42 = (VARYING7.w != 0.0) ? 0.0 : (f40 * 5.0);
    vec3 f43 = vec4(f41, f42).xyz;
    vec3 f44 = textureLod(PrefilteredEnvTexture, f43, f42).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f41.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec4 f45 = texture(PrecomputedBRDFTexture, vec2(f40, max(9.9999997473787516355514526367188e-05, dot(f6, f38))));
    vec3 f46 = mix((f9 * f9).xyz, f44, vec3(VARYING7.w));
    vec3 f47 = normalize(f7 + f38);
    float f48 = clamp(f8 * ((f8 > 0.0) ? mix(f18, mix(min((f27 <= f31) ? 1.0 : clamp(((f32 / (f32 + (f33 * f33))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f28 <= f34) ? 1.0 : clamp(((f35 / (f35 + (f36 * f36))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f18, clamp((length(f10 - CB0[7].xyz) * CB0[45].y) - (CB0[45].x * CB0[45].y), 0.0, 1.0)), CB0[46].x) : 0.0), 0.0, 1.0);
    float f49 = f40 * f40;
    float f50 = max(0.001000000047497451305389404296875, dot(f6, f47));
    float f51 = dot(f7, f47);
    float f52 = 1.0 - f51;
    float f53 = f52 * f52;
    float f54 = (f53 * f53) * f52;
    vec3 f55 = vec3(f54) + (vec3(0.039999999105930328369140625) * (1.0 - f54));
    float f56 = f49 * f49;
    float f57 = (((f50 * f56) - f50) * f50) + 1.0;
    float f58 = f45.x;
    float f59 = f45.y;
    vec3 f60 = ((vec3(0.039999999105930328369140625) * f58) + vec3(f59)) / vec3(f58 + f59);
    vec3 f61 = f60 * f39;
    vec3 f62 = f6 * f6;
    bvec3 f63 = lessThan(f6, vec3(0.0));
    vec3 f64 = vec3(f63.x ? f62.x : vec3(0.0).x, f63.y ? f62.y : vec3(0.0).y, f63.z ? f62.z : vec3(0.0).z);
    vec3 f65 = f62 - f64;
    float f66 = f65.x;
    float f67 = f65.y;
    float f68 = f65.z;
    float f69 = f64.x;
    float f70 = f64.y;
    float f71 = f64.z;
    vec3 f72 = (mix(textureLod(PrefilteredEnvIndoorTexture, f43, f42).xyz * f16, f44, vec3(f17)) * f60) * f39;
    vec3 f73 = (((((((vec3(1.0) - (f55 * f39)) * CB0[10].xyz) * f48) + ((vec3(1.0) - f61) * (((((((CB0[35].xyz * f66) + (CB0[37].xyz * f67)) + (CB0[39].xyz * f68)) + (CB0[36].xyz * f69)) + (CB0[38].xyz * f70)) + (CB0[40].xyz * f71)) + (((((((CB0[29].xyz * f66) + (CB0[31].xyz * f67)) + (CB0[33].xyz * f68)) + (CB0[30].xyz * f69)) + (CB0[32].xyz * f70)) + (CB0[34].xyz * f71)) * f17)))) + (CB0[27].xyz + (CB0[28].xyz * f17))) * f46) + (((f55 * (((f56 + (f56 * f56)) / (((f57 * f57) * ((f51 * 3.0) + 0.5)) * ((f50 * 0.75) + 0.25))) * f48)) * CB0[10].xyz) + f72)) + (f16 * mix(f46, f72 * (1.0 / (max(max(f72.x, f72.y), f72.z) + 0.00999999977648258209228515625)), f61 * (f39 * (1.0 - f17))));
    vec4 f74 = vec4(f73.x, f73.y, f73.z, vec4(0.0).w);
    f74.w = VARYING2.w;
    float f75 = clamp(exp2((CB0[13].z * f37) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f76 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f75) * 5.0).xyz;
    bvec3 f77 = bvec3(CB0[13].w != 0.0);
    vec3 f78 = sqrt(clamp(mix(vec3(f77.x ? CB0[14].xyz.x : f76.x, f77.y ? CB0[14].xyz.y : f76.y, f77.z ? CB0[14].xyz.z : f76.z), f74.xyz, vec3(f75)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f79 = vec4(f78.x, f78.y, f78.z, f74.w);
    f79.w = VARYING2.w;
    _entryPointOutput = f79;
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
