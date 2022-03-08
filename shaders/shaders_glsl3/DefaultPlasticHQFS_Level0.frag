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
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;

centroid in vec2 VARYING0;
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
    vec4 f4 = texture(NormalMapTexture, f2);
    vec2 f5 = f4.wy * 2.0;
    vec2 f6 = f5 - vec2(1.0);
    float f7 = sqrt(clamp(1.0 + dot(vec2(1.0) - f5, f6), 0.0, 1.0));
    vec3 f8 = vec3(f6, f7);
    vec2 f9 = f8.xy + (vec3((texture(NormalDetailMapTexture, VARYING0 * CB2[0].x).wy * 2.0) - vec2(1.0), 0.0).xy * (clamp(VARYING2.w - 0.5, 0.0, 1.0) * clamp(1.0 - (2.0 * VARYING7.w), 0.0, 1.0)));
    vec3 f10 = f8;
    f10.x = f9.x;
    vec3 f11 = f10;
    f11.y = f9.y;
    vec2 f12 = f11.xy * f3;
    vec3 f13 = f11;
    f13.x = f12.x;
    vec3 f14 = f13;
    f14.y = f12.y;
    vec2 f15 = f14.xy * CB2[3].w;
    vec4 f16 = vec4(VARYING2.xyz * (texture(DiffuseMapTexture, f2).x * 2.0), VARYING2.w);
    float f17 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f18 = VARYING6.xyz * f17;
    vec3 f19 = VARYING5.xyz * f17;
    vec3 f20 = normalize(((f18 * f15.x) + (cross(f19, f18) * f15.y)) + (f19 * f7));
    vec3 f21 = f16.xyz;
    vec3 f22 = f21 * f21;
    vec4 f23 = f16;
    f23.x = f22.x;
    vec4 f24 = f23;
    f24.y = f22.y;
    vec4 f25 = f24;
    f25.z = f22.z;
    vec3 f26 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f27 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f28 = VARYING3.yzx - (VARYING3.yzx * f27);
    vec4 f29 = texture(LightMapTexture, f28);
    vec4 f30 = texture(LightGridSkylightTexture, f28);
    vec4 f31 = vec4(clamp(f27, 0.0, 1.0));
    vec4 f32 = mix(f29, vec4(0.0), f31);
    vec4 f33 = mix(f30, vec4(1.0), f31);
    float f34 = f33.x;
    vec4 f35 = texture(ShadowMapTexture, f26.xy);
    float f36 = f26.z;
    float f37 = CB0[26].w * f3;
    float f38 = max(CB2[0].y, 0.04500000178813934326171875);
    vec3 f39 = reflect(-f1, f20);
    float f40 = (!(VARYING7.w == 0.0)) ? 0.0 : (f38 * 5.0);
    vec3 f41 = vec4(f39, f40).xyz;
    vec3 f42 = textureLod(PrefilteredEnvTexture, f41, f40).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f39.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f43 = textureLod(PrefilteredEnvIndoorTexture, f41, f40).xyz;
    vec3 f44;
    if (CB0[27].w == 0.0)
    {
        f44 = f43;
    }
    else
    {
        f44 = mix(f43, textureLod(PrefilteredEnvBlendTargetTexture, f41, f40).xyz, vec3(CB0[27].w));
    }
    vec4 f45 = texture(PrecomputedBRDFTexture, vec2(f38, max(9.9999997473787516355514526367188e-05, dot(f20, f1))));
    vec3 f46 = -CB0[11].xyz;
    float f47 = (dot(f20, f46) * CB0[9].w) * ((1.0 - ((step(f35.x, f36) * clamp(CB0[24].z + (CB0[24].w * abs(f36 - 0.5)), 0.0, 1.0)) * f35.y)) * f33.y);
    vec3 f48 = normalize(f46 + f1);
    float f49 = clamp(f47, 0.0, 1.0);
    float f50 = f38 * f38;
    float f51 = max(0.001000000047497451305389404296875, dot(f20, f48));
    float f52 = dot(f46, f48);
    float f53 = 1.0 - f52;
    float f54 = f53 * f53;
    float f55 = (f54 * f54) * f53;
    vec3 f56 = vec3(f55) + (vec3(0.039999999105930328369140625) * (1.0 - f55));
    float f57 = f50 * f50;
    float f58 = (((f51 * f57) - f51) * f51) + 1.0;
    float f59 = f45.x;
    float f60 = f45.y;
    vec3 f61 = ((vec3(0.039999999105930328369140625) * f59) + vec3(f60)) / vec3(f59 + f60);
    vec3 f62 = f20 * f20;
    bvec3 f63 = lessThan(f20, vec3(0.0));
    vec3 f64 = vec3(f63.x ? f62.x : vec3(0.0).x, f63.y ? f62.y : vec3(0.0).y, f63.z ? f62.z : vec3(0.0).z);
    vec3 f65 = f62 - f64;
    float f66 = f65.x;
    float f67 = f65.y;
    float f68 = f65.z;
    float f69 = f64.x;
    float f70 = f64.y;
    float f71 = f64.z;
    vec3 f72 = ((((((((vec3(1.0) - (f56 * f37)) * CB0[10].xyz) * f49) + (CB0[12].xyz * clamp(-f47, 0.0, 1.0))) + ((f32.xyz * (f32.w * 120.0)) * 1.0)) + ((vec3(1.0) - (f61 * f37)) * (((((((CB0[35].xyz * f66) + (CB0[37].xyz * f67)) + (CB0[39].xyz * f68)) + (CB0[36].xyz * f69)) + (CB0[38].xyz * f70)) + (CB0[40].xyz * f71)) + (((((((CB0[29].xyz * f66) + (CB0[31].xyz * f67)) + (CB0[33].xyz * f68)) + (CB0[30].xyz * f69)) + (CB0[32].xyz * f70)) + (CB0[34].xyz * f71)) * f34)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f34))) * mix(f25.xyz, f42, vec3(VARYING7.w))) + ((((f56 * (((f57 + (f57 * f57)) / (((f58 * f58) * ((f52 * 3.0) + 0.5)) * ((f51 * 0.75) + 0.25))) * f49)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) + ((mix(f44, f42, vec3(f34)) * f61) * f37));
    vec4 f73 = vec4(0.0);
    f73.x = f72.x;
    vec4 f74 = f73;
    f74.y = f72.y;
    vec4 f75 = f74;
    f75.z = f72.z;
    vec4 f76 = f75;
    f76.w = VARYING2.w;
    float f77 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f78 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f77) * 5.0).xyz;
    bvec3 f79 = bvec3(!(CB0[13].w == 0.0));
    vec3 f80 = mix(vec3(f79.x ? CB0[14].xyz.x : f78.x, f79.y ? CB0[14].xyz.y : f78.y, f79.z ? CB0[14].xyz.z : f78.z), f76.xyz, vec3(f77));
    vec4 f81 = f76;
    f81.x = f80.x;
    vec4 f82 = f81;
    f82.y = f80.y;
    vec4 f83 = f82;
    f83.z = f80.z;
    vec3 f84 = sqrt(clamp(f83.xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f85 = f83;
    f85.x = f84.x;
    vec4 f86 = f85;
    f86.y = f84.y;
    vec4 f87 = f86;
    f87.z = f84.z;
    vec4 f88 = f87;
    f88.w = VARYING2.w;
    _entryPointOutput = f88;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
