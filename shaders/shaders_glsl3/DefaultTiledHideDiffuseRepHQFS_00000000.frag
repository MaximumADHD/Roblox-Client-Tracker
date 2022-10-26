#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[58];
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
uniform sampler2D SpecularMapTexture;

in vec2 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec3 f1 = VARYING4.xyz / vec3(f0);
    float f2 = clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    vec2 f3 = VARYING0 * CB2[0].x;
    vec4 f4 = mix(texture(DiffuseMapTexture, f3 * CB2[1].y), texture(DiffuseMapTexture, f3), vec4(clamp((clamp(1.0 - (VARYING4.w * 0.0033333334140479564666748046875), 0.0, 1.0) * CB2[3].x) - (CB2[2].x * CB2[3].x), 0.0, 1.0)));
    vec4 f5 = texture(NormalMapTexture, f3);
    vec2 f6 = f5.wy * 2.0;
    vec2 f7 = f6 - vec2(1.0);
    float f8 = sqrt(clamp(1.0 + dot(vec2(1.0) - f6, f7), 0.0, 1.0));
    vec3 f9 = vec3(f7, f8);
    vec2 f10 = f9.xy + (vec3((texture(NormalDetailMapTexture, f3 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f11 = f9;
    f11.x = f10.x;
    vec3 f12 = f11;
    f12.y = f10.y;
    vec2 f13 = f12.xy * f2;
    float f14 = f13.x;
    vec4 f15 = texture(SpecularMapTexture, f3);
    vec4 f16 = vec4((mix(vec3(1.0), VARYING2.xyz, vec3(mix(1.0, f4.w, CB2[3].w))) * f4.xyz) * (1.0 + (f14 * 0.20000000298023223876953125)), VARYING2.w);
    float f17 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f18 = VARYING6.xyz * f17;
    vec3 f19 = VARYING5.xyz * f17;
    vec3 f20 = normalize(((f18 * f14) + (cross(f19, f18) * f13.y)) + (f19 * f8));
    vec3 f21 = f16.xyz;
    vec3 f22 = f21 * f21;
    vec4 f23 = f16;
    f23.x = f22.x;
    vec4 f24 = f23;
    f24.y = f22.y;
    vec4 f25 = f24;
    f25.z = f22.z;
    float f26 = CB0[31].w * f2;
    float f27 = 0.08900000154972076416015625 + (f15.y * 0.9110000133514404296875);
    vec3 f28 = -f1;
    vec3 f29 = reflect(f28, f20);
    float f30 = f15.x * f26;
    vec3 f31 = mix(vec3(0.039999999105930328369140625), f25.xyz, vec3(f30));
    vec3 f32 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f33 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f34 = VARYING3.yzx - (VARYING3.yzx * f33);
    vec4 f35 = texture(LightMapTexture, f34);
    vec4 f36 = texture(LightGridSkylightTexture, f34);
    vec4 f37 = vec4(clamp(f33, 0.0, 1.0));
    vec4 f38 = mix(f35, vec4(0.0), f37);
    vec4 f39 = mix(f36, vec4(1.0), f37);
    float f40 = f39.x;
    vec4 f41 = texture(ShadowMapTexture, f32.xy);
    float f42 = f32.z;
    vec3 f43 = -CB0[16].xyz;
    float f44 = dot(f20, f43) * ((1.0 - ((step(f41.x, f42) * clamp(CB0[29].z + (CB0[29].w * abs(f42 - 0.5)), 0.0, 1.0)) * f41.y)) * f39.y);
    vec3 f45 = normalize(f1 - CB0[16].xyz);
    float f46 = clamp(f44, 0.0, 1.0);
    float f47 = f27 * f27;
    float f48 = max(0.001000000047497451305389404296875, dot(f20, f45));
    float f49 = dot(f43, f45);
    float f50 = 1.0 - f49;
    float f51 = f50 * f50;
    float f52 = (f51 * f51) * f50;
    vec3 f53 = vec3(f52) + (f31 * (1.0 - f52));
    float f54 = f47 * f47;
    float f55 = (((f48 * f54) - f48) * f48) + 1.0;
    float f56 = 1.0 - f30;
    float f57 = f26 * f56;
    vec3 f58 = vec3(f56);
    float f59 = f27 * 5.0;
    vec3 f60 = vec4(f29, f59).xyz;
    vec3 f61 = textureLod(PrefilteredEnvIndoorTexture, f60, f59).xyz;
    vec3 f62;
    if (CB0[32].w == 0.0)
    {
        f62 = f61;
    }
    else
    {
        f62 = mix(f61, textureLod(PrefilteredEnvBlendTargetTexture, f60, f59).xyz, vec3(CB0[32].w));
    }
    vec4 f63 = texture(PrecomputedBRDFTexture, vec2(f27, max(9.9999997473787516355514526367188e-05, dot(f20, f1))));
    float f64 = f63.x;
    float f65 = f63.y;
    vec3 f66 = ((f31 * f64) + vec3(f65)) / vec3(f64 + f65);
    vec3 f67 = f20 * f20;
    bvec3 f68 = lessThan(f20, vec3(0.0));
    vec3 f69 = vec3(f68.x ? f67.x : vec3(0.0).x, f68.y ? f67.y : vec3(0.0).y, f68.z ? f67.z : vec3(0.0).z);
    vec3 f70 = f67 - f69;
    float f71 = f70.x;
    float f72 = f70.y;
    float f73 = f70.z;
    float f74 = f69.x;
    float f75 = f69.y;
    float f76 = f69.z;
    vec3 f77 = ((((((f38.xyz * (f38.w * 120.0)) * 1.0) + ((((f58 - (f53 * f57)) * CB0[15].xyz) * f46) + (CB0[17].xyz * (f56 * clamp(-f44, 0.0, 1.0))))) + ((f58 - (f66 * f57)) * (((((((CB0[40].xyz * f71) + (CB0[42].xyz * f72)) + (CB0[44].xyz * f73)) + (CB0[41].xyz * f74)) + (CB0[43].xyz * f75)) + (CB0[45].xyz * f76)) + (((((((CB0[34].xyz * f71) + (CB0[36].xyz * f72)) + (CB0[38].xyz * f73)) + (CB0[35].xyz * f74)) + (CB0[37].xyz * f75)) + (CB0[39].xyz * f76)) * f40)))) + ((CB0[32].xyz + (CB0[33].xyz * f40)) * 1.0)) * f25.xyz) + ((((f53 * (((f54 + (f54 * f54)) / max(((f55 * f55) * ((f49 * 3.0) + 0.5)) * ((f48 * 0.75) + 0.25), 3.0999999580672010779380798339844e-05)) * f46)) * CB0[15].xyz) * 1.0) + ((mix(f62, textureLod(PrefilteredEnvTexture, f60, f59).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f29.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f40)) * f66) * f26));
    vec4 f78 = vec4(0.0);
    f78.x = f77.x;
    vec4 f79 = f78;
    f79.y = f77.y;
    vec4 f80 = f79;
    f80.z = f77.z;
    vec4 f81 = f80;
    f81.w = VARYING2.w;
    float f82 = clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f83 = textureLod(PrefilteredEnvTexture, vec4(f28, 0.0).xyz, max(CB0[18].y, f82) * 5.0).xyz;
    bvec3 f84 = bvec3(!(CB0[18].w == 0.0));
    vec3 f85 = mix(vec3(f84.x ? CB0[19].xyz.x : f83.x, f84.y ? CB0[19].xyz.y : f83.y, f84.z ? CB0[19].xyz.z : f83.z), f81.xyz, vec3(f82));
    vec4 f86 = f81;
    f86.x = f85.x;
    vec4 f87 = f86;
    f87.y = f85.y;
    vec4 f88 = f87;
    f88.z = f85.z;
    vec3 f89 = sqrt(clamp(f88.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f90 = f88;
    f90.x = f89.x;
    vec4 f91 = f90;
    f91.y = f89.y;
    vec4 f92 = f91;
    f92.z = f89.z;
    vec4 f93 = f92;
    f93.w = VARYING2.w;
    _entryPointOutput = f93;
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
//$$SpecularMapTexture=s5
