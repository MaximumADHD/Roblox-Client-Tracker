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
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING0);
    float f1 = f0.w;
    vec4 f2 = mix(vec4(f0.xyz, VARYING2.w * f1), vec4(mix(VARYING2.xyz, f0.xyz, vec3(f1)), VARYING2.w), vec4(CB3[0].x));
    vec4 f3 = texture(NormalMapTexture, VARYING0);
    vec2 f4 = f3.wy * 2.0;
    vec2 f5 = f4 - vec2(1.0);
    float f6 = sqrt(clamp(1.0 + dot(vec2(1.0) - f4, f5), 0.0, 1.0));
    vec2 f7 = vec3(f5, f6).xy * clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y;
    vec4 f8 = texture(SpecularMapTexture, VARYING0);
    float f9 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f10 = VARYING6.xyz * f9;
    vec3 f11 = VARYING5.xyz * f9;
    vec3 f12 = normalize(((f10 * f7.x) + ((cross(f11, f10) * VARYING6.w) * f7.y)) + (f11 * f6));
    vec3 f13 = f2.xyz;
    vec3 f14 = f13 * f13;
    vec4 f15 = f2;
    f15.x = f14.x;
    vec4 f16 = f15;
    f16.y = f14.y;
    vec4 f17 = f16;
    f17.z = f14.z;
    float f18 = length(VARYING4.xyz);
    vec3 f19 = VARYING4.xyz / vec3(f18);
    float f20 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f21 = 0.08900000154972076416015625 + (f8.y * 0.9110000133514404296875);
    vec3 f22 = -f19;
    vec3 f23 = reflect(f22, f12);
    float f24 = f8.x * f20;
    vec3 f25 = mix(vec3(0.039999999105930328369140625), f17.xyz, vec3(f24));
    vec3 f26 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f27 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f28 = VARYING3.yzx - (VARYING3.yzx * f27);
    vec4 f29 = texture(LightMapTexture, f28);
    vec4 f30 = texture(LightGridSkylightTexture, f28);
    vec4 f31 = vec4(clamp(f27, 0.0, 1.0));
    vec4 f32 = mix(f29, vec4(0.0), f31);
    vec4 f33 = mix(f30, vec4(1.0), f31);
    float f34 = f33.x;
    vec4 f35 = texture(ShadowMapTexture, f26.xy);
    float f36 = f26.z;
    vec3 f37 = -CB0[16].xyz;
    float f38 = dot(f12, f37) * ((1.0 - ((step(f35.x, f36) * clamp(CB0[29].z + (CB0[29].w * abs(f36 - 0.5)), 0.0, 1.0)) * f35.y)) * f33.y);
    vec3 f39 = normalize(f19 + f37);
    float f40 = clamp(f38, 0.0, 1.0);
    float f41 = f21 * f21;
    float f42 = max(0.001000000047497451305389404296875, dot(f12, f39));
    float f43 = dot(f37, f39);
    float f44 = 1.0 - f43;
    float f45 = f44 * f44;
    float f46 = (f45 * f45) * f44;
    vec3 f47 = vec3(f46) + (f25 * (1.0 - f46));
    float f48 = f41 * f41;
    float f49 = (((f42 * f48) - f42) * f42) + 1.0;
    float f50 = 1.0 - f24;
    float f51 = f20 * f50;
    vec3 f52 = vec3(f50);
    float f53 = f21 * 5.0;
    vec3 f54 = vec4(f23, f53).xyz;
    vec3 f55 = textureLod(PrefilteredEnvIndoorTexture, f54, f53).xyz;
    vec3 f56;
    if (CB0[32].w == 0.0)
    {
        f56 = f55;
    }
    else
    {
        f56 = mix(f55, textureLod(PrefilteredEnvBlendTargetTexture, f54, f53).xyz, vec3(CB0[32].w));
    }
    vec4 f57 = texture(PrecomputedBRDFTexture, vec2(f21, max(9.9999997473787516355514526367188e-05, dot(f12, f19))));
    float f58 = f57.x;
    float f59 = f57.y;
    vec3 f60 = ((f25 * f58) + vec3(f59)) / vec3(f58 + f59);
    vec3 f61 = f12 * f12;
    bvec3 f62 = lessThan(f12, vec3(0.0));
    vec3 f63 = vec3(f62.x ? f61.x : vec3(0.0).x, f62.y ? f61.y : vec3(0.0).y, f62.z ? f61.z : vec3(0.0).z);
    vec3 f64 = f61 - f63;
    float f65 = f64.x;
    float f66 = f64.y;
    float f67 = f64.z;
    float f68 = f63.x;
    float f69 = f63.y;
    float f70 = f63.z;
    vec3 f71 = (((((f32.xyz * (f32.w * 120.0)) + ((((f52 - (f47 * f51)) * CB0[15].xyz) * f40) + (CB0[17].xyz * (f50 * clamp(-f38, 0.0, 1.0))))) + (((f52 - (f60 * f51)) * (((((((CB0[40].xyz * f65) + (CB0[42].xyz * f66)) + (CB0[44].xyz * f67)) + (CB0[41].xyz * f68)) + (CB0[43].xyz * f69)) + (CB0[45].xyz * f70)) + (((((((CB0[34].xyz * f65) + (CB0[36].xyz * f66)) + (CB0[38].xyz * f67)) + (CB0[35].xyz * f68)) + (CB0[37].xyz * f69)) + (CB0[39].xyz * f70)) * f34))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * f34)) * 1.0)) * f17.xyz) + ((((f47 * (((f48 + (f48 * f48)) / (((f49 * f49) * ((f43 * 3.0) + 0.5)) * ((f42 * 0.75) + 0.25))) * f40)) * CB0[15].xyz) * 1.0) + ((mix(f56, textureLod(PrefilteredEnvTexture, f54, f53).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f23.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f34)) * f60) * f20));
    vec4 f72 = vec4(0.0);
    f72.x = f71.x;
    vec4 f73 = f72;
    f73.y = f71.y;
    vec4 f74 = f73;
    f74.z = f71.z;
    float f75 = f2.w;
    vec4 f76 = f74;
    f76.w = f75;
    float f77 = clamp(exp2((CB0[18].z * f18) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f78 = textureLod(PrefilteredEnvTexture, vec4(f22, 0.0).xyz, max(CB0[18].y, f77) * 5.0).xyz;
    bvec3 f79 = bvec3(!(CB0[18].w == 0.0));
    vec3 f80 = mix(vec3(f79.x ? CB0[19].xyz.x : f78.x, f79.y ? CB0[19].xyz.y : f78.y, f79.z ? CB0[19].xyz.z : f78.z), f76.xyz, vec3(f77));
    vec4 f81 = f76;
    f81.x = f80.x;
    vec4 f82 = f81;
    f82.y = f80.y;
    vec4 f83 = f82;
    f83.z = f80.z;
    vec3 f84 = sqrt(clamp(f83.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f85 = f83;
    f85.x = f84.x;
    vec4 f86 = f85;
    f86.y = f84.y;
    vec4 f87 = f86;
    f87.z = f84.z;
    vec4 f88 = f87;
    f88.w = f75;
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
//$$SpecularMapTexture=s5
