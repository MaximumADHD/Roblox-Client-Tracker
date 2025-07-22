#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SAParams.h>
uniform vec4 CB0[61];
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
uniform sampler2D EditableImageRoughnessMapTexture;

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
    vec3 f1 = f0.xyz;
    vec3 f2 = f1 * VARYING8;
    float f3 = f0.w;
    vec3 f4 = vec3(f3);
    vec4 f5 = mix(mix(vec4(f2, VARYING2.w * f3), vec4(mix(VARYING2.xyz, f2, f4), VARYING2.w), vec4(CB3[0].x)), vec4(mix(f1, f2, f4), VARYING2.w), vec4(CB3[0].y));
    vec4 f6 = texture(NormalMapTexture, VARYING0);
    vec3 f7 = mix(vec3(0.0, 0.0, 1.0), (f6.xyz * 2.0) - vec3(1.0), vec3(clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y));
    vec4 f8 = texture(SpecularMapTexture, VARYING0);
    vec4 f9 = texture(EditableImageRoughnessMapTexture, VARYING0);
    float f10 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f11 = VARYING6.xyz * f10;
    vec3 f12 = VARYING5.xyz * f10;
    vec3 f13 = normalize(((f11 * f7.x) + ((cross(f12, f11) * VARYING6.w) * f7.y)) + (f12 * f7.z));
    vec3 f14 = f5.xyz;
    vec3 f15 = f14 * f14;
    vec4 f16 = f5;
    f16.x = f15.x;
    vec4 f17 = f16;
    f17.y = f15.y;
    vec4 f18 = f17;
    f18.z = f15.z;
    float f19 = length(VARYING4.xyz);
    vec3 f20 = VARYING4.xyz / vec3(f19);
    float f21 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f22 = 0.08900000154972076416015625 + (f9.x * 0.9110000133514404296875);
    vec3 f23 = -f20;
    vec3 f24 = reflect(f23, f13);
    float f25 = f8.x * f21;
    vec3 f26 = mix(vec3(0.039999999105930328369140625), f18.xyz, vec3(f25));
    vec3 f27 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f28 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f29 = VARYING3.yzx - (VARYING3.yzx * f28);
    vec4 f30 = texture(LightMapTexture, f29);
    vec4 f31 = texture(LightGridSkylightTexture, f29);
    vec4 f32 = vec4(clamp(f28, 0.0, 1.0));
    vec4 f33 = mix(f30, vec4(0.0), f32);
    vec4 f34 = mix(f31, vec4(1.0), f32);
    float f35 = f34.x;
    vec4 f36 = texture(ShadowMapTexture, f27.xy);
    float f37 = f27.z;
    float f38 = f22 * 5.0;
    vec3 f39 = mat3(vec3(CB0[58].xyz), vec3(CB0[59].xyz), vec3(CB0[60].xyz)) * f24;
    bvec3 f40 = bvec3(!(CB0[58].x == 2.0));
    vec3 f41 = vec4(f24, f38).xyz;
    vec3 f42 = textureLod(PrefilteredEnvIndoorTexture, f41, f38).xyz;
    vec3 f43;
    if (CB0[32].w == 0.0)
    {
        f43 = f42;
    }
    else
    {
        f43 = mix(f42, textureLod(PrefilteredEnvBlendTargetTexture, f41, f38).xyz, vec3(CB0[32].w));
    }
    vec4 f44 = texture(PrecomputedBRDFTexture, vec2(f22, max(9.9999997473787516355514526367188e-05, dot(f13, f20))));
    float f45 = f44.x;
    float f46 = f44.y;
    vec3 f47 = ((f26 * f45) + vec3(f46)) / vec3(f45 + f46);
    float f48 = 1.0 - f25;
    float f49 = f21 * f48;
    vec3 f50 = vec3(f48);
    vec3 f51 = f13 * f13;
    bvec3 f52 = lessThan(f13, vec3(0.0));
    vec3 f53 = vec3(f52.x ? f51.x : vec3(0.0).x, f52.y ? f51.y : vec3(0.0).y, f52.z ? f51.z : vec3(0.0).z);
    vec3 f54 = f51 - f53;
    float f55 = f54.x;
    float f56 = f54.y;
    float f57 = f54.z;
    float f58 = f53.x;
    float f59 = f53.y;
    float f60 = f53.z;
    vec3 f61 = -CB0[16].xyz;
    float f62 = dot(f13, f61) * ((1.0 - ((step(f36.x, f37) * clamp(CB0[29].z + (CB0[29].w * abs(f37 - 0.5)), 0.0, 1.0)) * f36.y)) * f34.y);
    vec3 f63 = normalize(f20 + f61);
    float f64 = clamp(f62, 0.0, 1.0);
    float f65 = f22 * f22;
    float f66 = max(0.001000000047497451305389404296875, dot(f13, f63));
    float f67 = dot(f61, f63);
    float f68 = 1.0 - f67;
    float f69 = f68 * f68;
    float f70 = (f69 * f69) * f68;
    vec3 f71 = vec3(f70) + (f26 * (1.0 - f70));
    float f72 = f65 * f65;
    float f73 = (((f66 * f72) - f66) * f66) + 1.0;
    vec3 f74 = (((((((f50 - (f47 * f49)) * (((((((CB0[40].xyz * f55) + (CB0[42].xyz * f56)) + (CB0[44].xyz * f57)) + (CB0[41].xyz * f58)) + (CB0[43].xyz * f59)) + (CB0[45].xyz * f60)) + (((((((CB0[34].xyz * f55) + (CB0[36].xyz * f56)) + (CB0[38].xyz * f57)) + (CB0[35].xyz * f58)) + (CB0[37].xyz * f59)) + (CB0[39].xyz * f60)) * f35))) * 1.0) + ((CB0[32].xyz + (CB0[33].xyz * f35)) * 1.0)) + ((((f50 - (f71 * f49)) * CB0[15].xyz) * f64) + (CB0[17].xyz * (f48 * clamp(-f62, 0.0, 1.0))))) + (f33.xyz * (f33.w * 120.0))) * f18.xyz) + (((mix(f43, textureLod(PrefilteredEnvTexture, vec4(vec3(f40.x ? f39.x : f24.x, f40.y ? f39.y : f24.y, f40.z ? f39.z : f24.z), f38).xyz, f38).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f24.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f35)) * f47) * f21) + (((f71 * (((f72 + (f72 * f72)) / (((f73 * f73) * ((f67 * 3.0) + 0.5)) * ((f66 * 0.75) + 0.25))) * f64)) * CB0[15].xyz) * 1.0));
    vec4 f75 = vec4(0.0);
    f75.x = f74.x;
    vec4 f76 = f75;
    f76.y = f74.y;
    vec4 f77 = f76;
    f77.z = f74.z;
    float f78 = f5.w;
    vec4 f79 = f77;
    f79.w = f78;
    float f80 = clamp(exp2((CB0[18].z * f19) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f81 = textureLod(PrefilteredEnvTexture, vec4(f23, 0.0).xyz, max(CB0[18].y, f80) * 5.0).xyz;
    bvec3 f82 = bvec3(!(CB0[18].w == 0.0));
    vec3 f83 = mix(vec3(f82.x ? CB0[19].xyz.x : f81.x, f82.y ? CB0[19].xyz.y : f81.y, f82.z ? CB0[19].xyz.z : f81.z), f79.xyz, vec3(f80));
    vec4 f84 = f79;
    f84.x = f83.x;
    vec4 f85 = f84;
    f85.y = f83.y;
    vec4 f86 = f85;
    f86.z = f83.z;
    vec3 f87 = sqrt(clamp(f86.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f88 = f86;
    f88.x = f87.x;
    vec4 f89 = f88;
    f89.y = f87.y;
    vec4 f90 = f89;
    f90.z = f87.z;
    vec4 f91 = f90;
    f91.w = f78;
    _entryPointOutput = f91;
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
//$$EditableImageRoughnessMapTexture=s9
