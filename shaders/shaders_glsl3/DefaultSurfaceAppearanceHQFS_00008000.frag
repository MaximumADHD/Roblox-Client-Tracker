#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SAParams.h>
uniform vec4 CB0[57];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;

in vec2 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
in vec3 VARYING8;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING0);
    vec3 f1 = f0.xyz * VARYING8;
    float f2 = f1.x;
    vec4 f3 = f0;
    f3.x = f2;
    vec4 f4 = f3;
    f4.y = f1.y;
    vec4 f5 = f4;
    f5.z = f1.z;
    float f6 = f0.w;
    vec4 f7 = mix(vec4(f2, f1.yz, VARYING2.w * f6), vec4(mix(VARYING2.xyz, f5.xyz, vec3(f6)), VARYING2.w), vec4(CB3[0].x));
    vec4 f8 = texture(NormalMapTexture, VARYING0);
    vec2 f9 = f8.wy * 2.0;
    vec2 f10 = f9 - vec2(1.0);
    vec3 f11 = mix(vec3(0.0, 0.0, 1.0), vec3(f10, sqrt(clamp(1.0 + dot(vec2(1.0) - f9, f10), 0.0, 1.0))), vec3(clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y));
    vec4 f12 = texture(SpecularMapTexture, VARYING0);
    float f13 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f14 = VARYING6.xyz * f13;
    vec3 f15 = VARYING5.xyz * f13;
    vec3 f16 = normalize(((f14 * f11.x) + ((cross(f15, f14) * VARYING6.w) * f11.y)) + (f15 * f11.z));
    vec3 f17 = f7.xyz;
    vec3 f18 = f17 * f17;
    vec4 f19 = f7;
    f19.x = f18.x;
    vec4 f20 = f19;
    f20.y = f18.y;
    vec4 f21 = f20;
    f21.z = f18.z;
    float f22 = length(VARYING4.xyz);
    vec3 f23 = VARYING4.xyz / vec3(f22);
    float f24 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f25 = 0.08900000154972076416015625 + (f12.y * 0.9110000133514404296875);
    vec3 f26 = -f23;
    vec3 f27 = reflect(f26, f16);
    float f28 = f12.x * f24;
    vec3 f29 = mix(vec3(0.039999999105930328369140625), f21.xyz, vec3(f28));
    vec3 f30 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f31 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f32 = VARYING3.yzx - (VARYING3.yzx * f31);
    vec4 f33 = texture(LightMapTexture, f32);
    vec4 f34 = texture(LightGridSkylightTexture, f32);
    vec4 f35 = vec4(clamp(f31, 0.0, 1.0));
    vec4 f36 = mix(f33, vec4(0.0), f35);
    vec4 f37 = mix(f34, vec4(1.0), f35);
    float f38 = f37.x;
    vec4 f39 = texture(ShadowMapTexture, f30.xy);
    float f40 = f30.z;
    vec3 f41 = -CB0[16].xyz;
    float f42 = dot(f16, f41) * ((1.0 - ((step(f39.x, f40) * clamp(CB0[29].z + (CB0[29].w * abs(f40 - 0.5)), 0.0, 1.0)) * f39.y)) * f37.y);
    vec3 f43 = normalize(f23 + f41);
    float f44 = clamp(f42, 0.0, 1.0);
    float f45 = f25 * f25;
    float f46 = max(0.001000000047497451305389404296875, dot(f16, f43));
    float f47 = dot(f41, f43);
    float f48 = 1.0 - f47;
    float f49 = f48 * f48;
    float f50 = (f49 * f49) * f48;
    vec3 f51 = vec3(f50) + (f29 * (1.0 - f50));
    float f52 = f45 * f45;
    float f53 = (((f46 * f52) - f46) * f46) + 1.0;
    float f54 = 1.0 - f28;
    float f55 = f24 * f54;
    vec3 f56 = vec3(f54);
    float f57 = f25 * 5.0;
    vec3 f58 = vec4(f27, f57).xyz;
    vec3 f59 = textureLod(PrefilteredEnvIndoorTexture, f58, f57).xyz;
    vec3 f60;
    if (CB0[32].w == 0.0)
    {
        f60 = f59;
    }
    else
    {
        f60 = mix(f59, textureLod(PrefilteredEnvBlendTargetTexture, f58, f57).xyz, vec3(CB0[32].w));
    }
    vec4 f61 = texture(PrecomputedBRDFTexture, vec2(f25, max(9.9999997473787516355514526367188e-05, dot(f16, f23))));
    float f62 = f61.x;
    float f63 = f61.y;
    vec3 f64 = ((f29 * f62) + vec3(f63)) / vec3(f62 + f63);
    vec3 f65 = f16 * f16;
    bvec3 f66 = lessThan(f16, vec3(0.0));
    vec3 f67 = vec3(f66.x ? f65.x : vec3(0.0).x, f66.y ? f65.y : vec3(0.0).y, f66.z ? f65.z : vec3(0.0).z);
    vec3 f68 = f65 - f67;
    float f69 = f68.x;
    float f70 = f68.y;
    float f71 = f68.z;
    float f72 = f67.x;
    float f73 = f67.y;
    float f74 = f67.z;
    vec3 f75 = (((((f36.xyz * (f36.w * 120.0)) + ((((f56 - (f51 * f55)) * CB0[15].xyz) * f44) + (CB0[17].xyz * (f54 * clamp(-f42, 0.0, 1.0))))) + (((f56 - (f64 * f55)) * (((((((CB0[40].xyz * f69) + (CB0[42].xyz * f70)) + (CB0[44].xyz * f71)) + (CB0[41].xyz * f72)) + (CB0[43].xyz * f73)) + (CB0[45].xyz * f74)) + (((((((CB0[34].xyz * f69) + (CB0[36].xyz * f70)) + (CB0[38].xyz * f71)) + (CB0[35].xyz * f72)) + (CB0[37].xyz * f73)) + (CB0[39].xyz * f74)) * f38))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * f38)) * 1.0)) * f21.xyz) + ((((f51 * (((f52 + (f52 * f52)) / (((f53 * f53) * ((f47 * 3.0) + 0.5)) * ((f46 * 0.75) + 0.25))) * f44)) * CB0[15].xyz) * 1.0) + ((mix(f60, textureLod(PrefilteredEnvTexture, f58, f57).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f27.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f38)) * f64) * f24));
    vec4 f76 = vec4(0.0);
    f76.x = f75.x;
    vec4 f77 = f76;
    f77.y = f75.y;
    vec4 f78 = f77;
    f78.z = f75.z;
    float f79 = f7.w;
    vec4 f80 = f78;
    f80.w = f79;
    float f81 = clamp(exp2((CB0[18].z * f22) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f82 = textureLod(PrefilteredEnvTexture, vec4(f26, 0.0).xyz, max(CB0[18].y, f81) * 5.0).xyz;
    bvec3 f83 = bvec3(!(CB0[18].w == 0.0));
    vec3 f84 = mix(vec3(f83.x ? CB0[19].xyz.x : f82.x, f83.y ? CB0[19].xyz.y : f82.y, f83.z ? CB0[19].xyz.z : f82.z), f80.xyz, vec3(f81));
    vec4 f85 = f80;
    f85.x = f84.x;
    vec4 f86 = f85;
    f86.y = f84.y;
    vec4 f87 = f86;
    f87.z = f84.z;
    vec3 f88 = sqrt(clamp(f87.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f89 = f87;
    f89.x = f88.x;
    vec4 f90 = f89;
    f90.y = f88.y;
    vec4 f91 = f90;
    f91.z = f88.z;
    vec4 f92 = f91;
    f92.w = f79;
    _entryPointOutput = f92;
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
//$$SpecularMapTexture=s5
