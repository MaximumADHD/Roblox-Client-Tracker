#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[61];
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
    vec4 f1 = f0 * VARYING2;
    vec4 f2 = texture(NormalMapTexture, VARYING0);
    vec2 f3 = f2.wy * 2.0;
    vec2 f4 = f3 - vec2(1.0);
    vec3 f5 = mix(vec3(0.0, 0.0, 1.0), vec3(f4, sqrt(clamp(1.0 + dot(vec2(1.0) - f3, f4), 0.0, 1.0))), vec3(clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y));
    vec4 f6 = texture(SpecularMapTexture, VARYING0);
    float f7 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f8 = VARYING6.xyz * f7;
    vec3 f9 = VARYING5.xyz * f7;
    vec3 f10 = normalize(((f8 * f5.x) + (cross(f9, f8) * f5.y)) + (f9 * f5.z));
    vec3 f11 = f1.xyz;
    vec3 f12 = f11 * f11;
    vec4 f13 = f1;
    f13.x = f12.x;
    vec4 f14 = f13;
    f14.y = f12.y;
    vec4 f15 = f14;
    f15.z = f12.z;
    float f16 = length(VARYING4.xyz);
    vec3 f17 = VARYING4.xyz / vec3(f16);
    float f18 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f19 = 0.08900000154972076416015625 + (f6.y * 0.9110000133514404296875);
    vec3 f20 = -f17;
    vec3 f21 = reflect(f20, f10);
    float f22 = f6.x * f18;
    vec3 f23 = mix(vec3(0.039999999105930328369140625), f15.xyz, vec3(f22));
    vec3 f24 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f25 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f26 = VARYING3.yzx - (VARYING3.yzx * f25);
    vec4 f27 = texture(LightMapTexture, f26);
    vec4 f28 = texture(LightGridSkylightTexture, f26);
    vec4 f29 = vec4(clamp(f25, 0.0, 1.0));
    vec4 f30 = mix(f27, vec4(0.0), f29);
    vec4 f31 = mix(f28, vec4(1.0), f29);
    float f32 = f31.x;
    vec4 f33 = texture(ShadowMapTexture, f24.xy);
    float f34 = f24.z;
    float f35 = f19 * 5.0;
    vec3 f36 = mat3(vec3(CB0[58].xyz), vec3(CB0[59].xyz), vec3(CB0[60].xyz)) * f21;
    bvec3 f37 = bvec3(!(CB0[58].x == 2.0));
    vec3 f38 = vec4(f21, f35).xyz;
    vec3 f39 = textureLod(PrefilteredEnvIndoorTexture, f38, f35).xyz;
    vec3 f40;
    if (CB0[32].w == 0.0)
    {
        f40 = f39;
    }
    else
    {
        f40 = mix(f39, textureLod(PrefilteredEnvBlendTargetTexture, f38, f35).xyz, vec3(CB0[32].w));
    }
    vec4 f41 = texture(PrecomputedBRDFTexture, vec2(f19, max(9.9999997473787516355514526367188e-05, dot(f10, f17))));
    float f42 = f41.x;
    float f43 = f41.y;
    vec3 f44 = ((f23 * f42) + vec3(f43)) / vec3(f42 + f43);
    float f45 = 1.0 - f22;
    float f46 = f18 * f45;
    vec3 f47 = vec3(f45);
    vec3 f48 = f10 * f10;
    bvec3 f49 = lessThan(f10, vec3(0.0));
    vec3 f50 = vec3(f49.x ? f48.x : vec3(0.0).x, f49.y ? f48.y : vec3(0.0).y, f49.z ? f48.z : vec3(0.0).z);
    vec3 f51 = f48 - f50;
    float f52 = f51.x;
    float f53 = f51.y;
    float f54 = f51.z;
    float f55 = f50.x;
    float f56 = f50.y;
    float f57 = f50.z;
    vec3 f58 = -CB0[16].xyz;
    float f59 = dot(f10, f58) * ((1.0 - ((step(f33.x, f34) * clamp(CB0[29].z + (CB0[29].w * abs(f34 - 0.5)), 0.0, 1.0)) * f33.y)) * f31.y);
    vec3 f60 = normalize(f17 + f58);
    float f61 = clamp(f59, 0.0, 1.0);
    float f62 = f19 * f19;
    float f63 = max(0.001000000047497451305389404296875, dot(f10, f60));
    float f64 = dot(f58, f60);
    float f65 = 1.0 - f64;
    float f66 = f65 * f65;
    float f67 = (f66 * f66) * f65;
    vec3 f68 = vec3(f67) + (f23 * (1.0 - f67));
    float f69 = f62 * f62;
    float f70 = (((f63 * f69) - f63) * f63) + 1.0;
    vec3 f71 = (((((((f47 - (f44 * f46)) * (((((((CB0[40].xyz * f52) + (CB0[42].xyz * f53)) + (CB0[44].xyz * f54)) + (CB0[41].xyz * f55)) + (CB0[43].xyz * f56)) + (CB0[45].xyz * f57)) + (((((((CB0[34].xyz * f52) + (CB0[36].xyz * f53)) + (CB0[38].xyz * f54)) + (CB0[35].xyz * f55)) + (CB0[37].xyz * f56)) + (CB0[39].xyz * f57)) * f32))) * 1.0) + ((CB0[32].xyz + (CB0[33].xyz * f32)) * 1.0)) + ((((f47 - (f68 * f46)) * CB0[15].xyz) * f61) + (CB0[17].xyz * (f45 * clamp(-f59, 0.0, 1.0))))) + (f30.xyz * (f30.w * 120.0))) * f15.xyz) + (((mix(f40, textureLod(PrefilteredEnvTexture, vec4(vec3(f37.x ? f36.x : f21.x, f37.y ? f36.y : f21.y, f37.z ? f36.z : f21.z), f35).xyz, f35).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f21.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f32)) * f44) * f18) + (((f68 * (((f69 + (f69 * f69)) / (((f70 * f70) * ((f64 * 3.0) + 0.5)) * ((f63 * 0.75) + 0.25))) * f61)) * CB0[15].xyz) * 1.0));
    vec4 f72 = vec4(0.0);
    f72.x = f71.x;
    vec4 f73 = f72;
    f73.y = f71.y;
    vec4 f74 = f73;
    f74.z = f71.z;
    float f75 = f1.w;
    vec4 f76 = f74;
    f76.w = f75;
    float f77 = clamp(exp2((CB0[18].z * f16) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f78 = textureLod(PrefilteredEnvTexture, vec4(f20, 0.0).xyz, max(CB0[18].y, f77) * 5.0).xyz;
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
