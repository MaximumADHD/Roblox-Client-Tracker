#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[52];
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
    vec2 f0 = VARYING1;
    f0.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    float f1 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec2 f2 = texture(NormalMapTexture, f0).wy * 2.0;
    vec2 f3 = f2 - vec2(1.0);
    float f4 = sqrt(clamp(1.0 + dot(vec2(1.0) - f2, f3), 0.0, 1.0));
    vec2 f5 = ((vec3(f3, f4).xy + (vec3((texture(NormalDetailMapTexture, VARYING0 * CB2[0].x).wy * 2.0) - vec2(1.0), 0.0).xy * (clamp(VARYING2.w - 0.5, 0.0, 1.0) * clamp(1.0 - (2.0 * VARYING7.w), 0.0, 1.0)))).xy * f1).xy * CB2[3].w;
    vec3 f6 = normalize(((VARYING6.xyz * f5.x) + (cross(VARYING5.xyz, VARYING6.xyz) * f5.y)) + (VARYING5.xyz * f4));
    vec3 f7 = vec4(VARYING2.xyz * (texture(DiffuseMapTexture, f0).x * 2.0), VARYING2.w).xyz;
    vec3 f8 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f9 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f10 = VARYING3.yzx - (VARYING3.yzx * f9);
    vec4 f11 = vec4(clamp(f9, 0.0, 1.0));
    vec4 f12 = mix(texture(LightMapTexture, f10), vec4(0.0), f11);
    vec4 f13 = mix(texture(LightGridSkylightTexture, f10), vec4(1.0), f11);
    vec3 f14 = (f12.xyz * (f12.w * 120.0)).xyz;
    float f15 = f13.x;
    vec4 f16 = texture(ShadowMapTexture, f8.xy);
    float f17 = f8.z;
    float f18 = length(VARYING4.xyz);
    vec3 f19 = VARYING4.xyz / vec3(f18);
    float f20 = CB0[26].w * f1;
    float f21 = max(CB2[0].y, 0.04500000178813934326171875);
    vec3 f22 = reflect(-f19, f6);
    float f23 = (VARYING7.w != 0.0) ? 0.0 : (f21 * 5.0);
    vec3 f24 = vec4(f22, f23).xyz;
    vec3 f25 = textureLod(PrefilteredEnvTexture, f24, f23).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f22.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec4 f26 = texture(PrecomputedBRDFTexture, vec2(f21, max(9.9999997473787516355514526367188e-05, dot(f6, f19))));
    vec3 f27 = mix((f7 * f7).xyz, f25, vec3(VARYING7.w));
    vec3 f28 = -CB0[11].xyz;
    float f29 = dot(f6, f28) * ((1.0 - ((step(f16.x, f17) * clamp(CB0[24].z + (CB0[24].w * abs(f17 - 0.5)), 0.0, 1.0)) * f16.y)) * f13.y);
    vec3 f30 = normalize(f28 + f19);
    float f31 = clamp(f29, 0.0, 1.0);
    float f32 = f21 * f21;
    float f33 = max(0.001000000047497451305389404296875, dot(f6, f30));
    float f34 = dot(f28, f30);
    float f35 = 1.0 - f34;
    float f36 = f35 * f35;
    float f37 = (f36 * f36) * f35;
    vec3 f38 = vec3(f37) + (vec3(0.039999999105930328369140625) * (1.0 - f37));
    float f39 = f32 * f32;
    float f40 = (((f33 * f39) - f33) * f33) + 1.0;
    float f41 = f26.x;
    float f42 = f26.y;
    vec3 f43 = ((vec3(0.039999999105930328369140625) * f41) + vec3(f42)) / vec3(f41 + f42);
    vec3 f44 = f43 * f20;
    vec3 f45 = f6 * f6;
    bvec3 f46 = lessThan(f6, vec3(0.0));
    vec3 f47 = vec3(f46.x ? f45.x : vec3(0.0).x, f46.y ? f45.y : vec3(0.0).y, f46.z ? f45.z : vec3(0.0).z);
    vec3 f48 = f45 - f47;
    float f49 = f48.x;
    float f50 = f48.y;
    float f51 = f48.z;
    float f52 = f47.x;
    float f53 = f47.y;
    float f54 = f47.z;
    vec3 f55 = (mix(textureLod(PrefilteredEnvIndoorTexture, f24, f23).xyz * f14, f25, vec3(f15)) * f43) * f20;
    vec3 f56 = ((((((((vec3(1.0) - (f38 * f20)) * CB0[10].xyz) * f31) + (CB0[12].xyz * clamp(-f29, 0.0, 1.0))) + ((vec3(1.0) - f44) * (((((((CB0[35].xyz * f49) + (CB0[37].xyz * f50)) + (CB0[39].xyz * f51)) + (CB0[36].xyz * f52)) + (CB0[38].xyz * f53)) + (CB0[40].xyz * f54)) + (((((((CB0[29].xyz * f49) + (CB0[31].xyz * f50)) + (CB0[33].xyz * f51)) + (CB0[30].xyz * f52)) + (CB0[32].xyz * f53)) + (CB0[34].xyz * f54)) * f15)))) + (CB0[27].xyz + (CB0[28].xyz * f15))) * f27) + (((f38 * (((f39 + (f39 * f39)) / (((f40 * f40) * ((f34 * 3.0) + 0.5)) * ((f33 * 0.75) + 0.25))) * f31)) * CB0[10].xyz) + f55)) + (f14 * mix(f27, f55 * (1.0 / (max(max(f55.x, f55.y), f55.z) + 0.00999999977648258209228515625)), f44 * (f20 * (1.0 - f15))));
    vec4 f57 = vec4(f56.x, f56.y, f56.z, vec4(0.0).w);
    f57.w = VARYING2.w;
    float f58 = clamp(exp2((CB0[13].z * f18) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
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
