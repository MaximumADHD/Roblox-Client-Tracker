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
    vec3 f8 = normalize(((VARYING6.xyz * f7.x) + (cross(VARYING5.xyz, VARYING6.xyz) * f7.y)) + (VARYING5.xyz * f6));
    vec3 f9 = vec4(VARYING2.xyz * (texture(DiffuseMapTexture, f2).x * 2.0), VARYING2.w).xyz;
    vec3 f10 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f11 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f12 = VARYING3.yzx - (VARYING3.yzx * f11);
    vec4 f13 = vec4(clamp(f11, 0.0, 1.0));
    vec4 f14 = mix(texture(LightMapTexture, f12), vec4(0.0), f13);
    vec4 f15 = mix(texture(LightGridSkylightTexture, f12), vec4(1.0), f13);
    float f16 = f15.x;
    vec4 f17 = texture(ShadowMapTexture, f10.xy);
    float f18 = f10.z;
    float f19 = CB0[26].w * f3;
    float f20 = max(CB2[0].y, 0.04500000178813934326171875);
    vec3 f21 = reflect(-f1, f8);
    float f22 = (VARYING7.w != 0.0) ? 0.0 : (f20 * 5.0);
    vec3 f23 = vec4(f21, f22).xyz;
    vec3 f24 = textureLod(PrefilteredEnvTexture, f23, f22).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f21.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec4 f25 = texture(PrecomputedBRDFTexture, vec2(f20, max(9.9999997473787516355514526367188e-05, dot(f8, f1))));
    vec3 f26 = mix((f9 * f9).xyz, f24, vec3(VARYING7.w));
    vec3 f27 = -CB0[11].xyz;
    float f28 = dot(f8, f27) * ((1.0 - ((step(f17.x, f18) * clamp(CB0[24].z + (CB0[24].w * abs(f18 - 0.5)), 0.0, 1.0)) * f17.y)) * f15.y);
    vec3 f29 = normalize(f27 + f1);
    float f30 = clamp(f28, 0.0, 1.0);
    float f31 = f20 * f20;
    float f32 = max(0.001000000047497451305389404296875, dot(f8, f29));
    float f33 = dot(f27, f29);
    float f34 = 1.0 - f33;
    float f35 = f34 * f34;
    float f36 = (f35 * f35) * f34;
    vec3 f37 = vec3(f36) + (vec3(0.039999999105930328369140625) * (1.0 - f36));
    float f38 = f31 * f31;
    float f39 = (((f32 * f38) - f32) * f32) + 1.0;
    float f40 = f25.x;
    float f41 = f25.y;
    vec3 f42 = ((vec3(0.039999999105930328369140625) * f40) + vec3(f41)) / vec3(f40 + f41);
    vec3 f43 = f42 * f19;
    vec3 f44 = f8 * f8;
    bvec3 f45 = lessThan(f8, vec3(0.0));
    vec3 f46 = vec3(f45.x ? f44.x : vec3(0.0).x, f45.y ? f44.y : vec3(0.0).y, f45.z ? f44.z : vec3(0.0).z);
    vec3 f47 = f44 - f46;
    float f48 = f47.x;
    float f49 = f47.y;
    float f50 = f47.z;
    float f51 = f46.x;
    float f52 = f46.y;
    float f53 = f46.z;
    vec3 f54 = ((((((CB0[35].xyz * f48) + (CB0[37].xyz * f49)) + (CB0[39].xyz * f50)) + (CB0[36].xyz * f51)) + (CB0[38].xyz * f52)) + (CB0[40].xyz * f53)) + (((((((CB0[29].xyz * f48) + (CB0[31].xyz * f49)) + (CB0[33].xyz * f50)) + (CB0[30].xyz * f51)) + (CB0[32].xyz * f52)) + (CB0[34].xyz * f53)) * f16);
    vec3 f55 = (mix(textureLod(PrefilteredEnvIndoorTexture, f23, f22).xyz, f24, vec3(f16)) * f42) * f19;
    vec3 f56 = ((((((((vec3(1.0) - (f37 * f19)) * CB0[10].xyz) * f30) + (CB0[12].xyz * clamp(-f28, 0.0, 1.0))) + (((vec3(1.0) - f43) * f54) * CB0[25].w)) + ((CB0[27].xyz + (CB0[28].xyz * f16)) * 1.0)) * f26) + (((f37 * (((f38 + (f38 * f38)) / (((f39 * f39) * ((f33 * 3.0) + 0.5)) * ((f32 * 0.75) + 0.25))) * f30)) * CB0[10].xyz) + f55)) + (((f14.xyz * (f14.w * 120.0)).xyz * mix(f26, f55 * (1.0 / (max(max(f54.x, f54.y), f54.z) + 0.00999999977648258209228515625)), f43 * (f19 * (1.0 - f16)))) * 1.0);
    vec4 f57 = vec4(f56.x, f56.y, f56.z, vec4(0.0).w);
    f57.w = VARYING2.w;
    float f58 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f59 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f58) * 5.0).xyz;
    bvec3 f60 = bvec3(CB0[13].w != 0.0);
    vec3 f61 = sqrt(clamp(mix(vec3(f60.x ? CB0[14].xyz.x : f59.x, f60.y ? CB0[14].xyz.y : f59.y, f60.z ? CB0[14].xyz.z : f59.z), f57.xyz, vec3(f58)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f62 = vec4(f61.x, f61.y, f61.z, f57.w);
    f62.w = VARYING2.w;
    _entryPointOutput = f62;
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
