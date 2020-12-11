#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[53];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
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
    float f0 = length(VARYING4.xyz);
    vec3 f1 = VARYING4.xyz / vec3(f0);
    vec2 f2 = VARYING1;
    f2.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float f3 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec2 f4 = texture(NormalMapTexture, f2).wy * 2.0;
    vec2 f5 = f4 - vec2(1.0);
    float f6 = sqrt(clamp(1.0 + dot(vec2(1.0) - f4, f5), 0.0, 1.0));
    vec2 f7 = ((vec3(f5, f6).xy + (vec3((texture(NormalDetailMapTexture, VARYING0 * CB2[0].x).wy * 2.0) - vec2(1.0), 0.0).xy * (clamp(VARYING2.w - 0.5, 0.0, 1.0) * clamp(1.0 - (2.0 * VARYING7.w), 0.0, 1.0)))).xy * f3).xy * CB2[3].w;
    float f8 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f9 = VARYING6.xyz * f8;
    vec3 f10 = VARYING5.xyz * f8;
    vec3 f11 = normalize(((f9 * f7.x) + (cross(f10, f9) * f7.y)) + (f10 * f6));
    vec3 f12 = vec4(VARYING2.xyz * (texture(DiffuseMapTexture, f2).x * 2.0), VARYING2.w).xyz;
    vec3 f13 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f14 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f15 = VARYING3.yzx - (VARYING3.yzx * f14);
    vec4 f16 = vec4(clamp(f14, 0.0, 1.0));
    vec4 f17 = mix(texture(LightMapTexture, f15), vec4(0.0), f16);
    vec4 f18 = mix(texture(LightGridSkylightTexture, f15), vec4(1.0), f16);
    float f19 = f18.x;
    vec4 f20 = texture(ShadowMapTexture, f13.xy);
    float f21 = f13.z;
    float f22 = CB0[26].w * f3;
    float f23 = max(CB2[0].y, 0.04500000178813934326171875);
    vec3 f24 = reflect(-f1, f11);
    float f25 = (VARYING7.w != 0.0) ? 0.0 : (f23 * 5.0);
    vec3 f26 = vec4(f24, f25).xyz;
    vec3 f27 = textureLod(PrefilteredEnvTexture, f26, f25).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f24.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec4 f28 = texture(PrecomputedBRDFTexture, vec2(f23, max(9.9999997473787516355514526367188e-05, dot(f11, f1))));
    vec3 f29 = mix((f12 * f12).xyz, f27, vec3(VARYING7.w));
    vec3 f30 = -CB0[11].xyz;
    float f31 = dot(f11, f30) * ((1.0 - ((step(f20.x, f21) * clamp(CB0[24].z + (CB0[24].w * abs(f21 - 0.5)), 0.0, 1.0)) * f20.y)) * f18.y);
    vec3 f32 = normalize(f30 + f1);
    float f33 = clamp(f31, 0.0, 1.0);
    float f34 = f23 * f23;
    float f35 = max(0.001000000047497451305389404296875, dot(f11, f32));
    float f36 = dot(f30, f32);
    float f37 = 1.0 - f36;
    float f38 = f37 * f37;
    float f39 = (f38 * f38) * f37;
    vec3 f40 = vec3(f39) + (vec3(0.039999999105930328369140625) * (1.0 - f39));
    float f41 = f34 * f34;
    float f42 = (((f35 * f41) - f35) * f35) + 1.0;
    float f43 = f28.x;
    float f44 = f28.y;
    vec3 f45 = ((vec3(0.039999999105930328369140625) * f43) + vec3(f44)) / vec3(f43 + f44);
    vec3 f46 = f45 * f22;
    vec3 f47 = f11 * f11;
    bvec3 f48 = lessThan(f11, vec3(0.0));
    vec3 f49 = vec3(f48.x ? f47.x : vec3(0.0).x, f48.y ? f47.y : vec3(0.0).y, f48.z ? f47.z : vec3(0.0).z);
    vec3 f50 = f47 - f49;
    float f51 = f50.x;
    float f52 = f50.y;
    float f53 = f50.z;
    float f54 = f49.x;
    float f55 = f49.y;
    float f56 = f49.z;
    vec3 f57 = ((((((CB0[35].xyz * f51) + (CB0[37].xyz * f52)) + (CB0[39].xyz * f53)) + (CB0[36].xyz * f54)) + (CB0[38].xyz * f55)) + (CB0[40].xyz * f56)) + (((((((CB0[29].xyz * f51) + (CB0[31].xyz * f52)) + (CB0[33].xyz * f53)) + (CB0[30].xyz * f54)) + (CB0[32].xyz * f55)) + (CB0[34].xyz * f56)) * f19);
    vec3 f58 = (mix(textureLod(PrefilteredEnvIndoorTexture, f26, f25).xyz, f27, vec3(f19)) * f45) * f22;
    vec3 f59 = ((((((((vec3(1.0) - (f40 * f22)) * CB0[10].xyz) * f33) + (CB0[12].xyz * clamp(-f31, 0.0, 1.0))) + (((vec3(1.0) - f46) * f57) * CB0[25].w)) + ((CB0[27].xyz + (CB0[28].xyz * f19)) * 1.0)) * f29) + (((f40 * (((f41 + (f41 * f41)) / (((f42 * f42) * ((f36 * 3.0) + 0.5)) * ((f35 * 0.75) + 0.25))) * f33)) * CB0[10].xyz) + f58)) + (((f17.xyz * (f17.w * 120.0)).xyz * mix(f29, f58 * (1.0 / (max(max(f57.x, f57.y), f57.z) + 0.00999999977648258209228515625)), f46 * (f22 * (1.0 - f19)))) * 1.0);
    vec4 f60 = vec4(f59.x, f59.y, f59.z, vec4(0.0).w);
    f60.w = VARYING2.w;
    float f61 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f62 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f61) * 5.0).xyz;
    bvec3 f63 = bvec3(CB0[13].w != 0.0);
    vec3 f64 = sqrt(clamp(mix(vec3(f63.x ? CB0[14].xyz.x : f62.x, f63.y ? CB0[14].xyz.y : f62.y, f63.z ? CB0[14].xyz.z : f62.z), f60.xyz, vec3(f61)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f65 = vec4(f64.x, f64.y, f64.z, f60.w);
    f65.w = VARYING2.w;
    _entryPointOutput = f65;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
