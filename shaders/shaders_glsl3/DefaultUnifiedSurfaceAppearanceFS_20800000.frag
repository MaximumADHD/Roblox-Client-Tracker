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
    vec2 f7 = f6.wy * 2.0;
    vec2 f8 = f7 - vec2(1.0);
    vec3 f9 = mix(vec3(0.0, 0.0, 1.0), vec3(f8, sqrt(clamp(1.0 + dot(vec2(1.0) - f7, f8), 0.0, 1.0))), vec3(clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y));
    vec4 f10 = texture(SpecularMapTexture, VARYING0);
    float f11 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f12 = VARYING6.xyz * f11;
    vec3 f13 = VARYING5.xyz * f11;
    vec3 f14 = normalize(((f12 * f9.x) + ((cross(f13, f12) * VARYING6.w) * f9.y)) + (f13 * f9.z));
    vec3 f15 = f5.xyz;
    vec3 f16 = f15 * f15;
    vec4 f17 = f5;
    f17.x = f16.x;
    vec4 f18 = f17;
    f18.y = f16.y;
    vec4 f19 = f18;
    f19.z = f16.z;
    float f20 = length(VARYING4.xyz);
    vec3 f21 = VARYING4.xyz / vec3(f20);
    float f22 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f23 = 0.08900000154972076416015625 + (f10.y * 0.9110000133514404296875);
    vec3 f24 = -f21;
    vec3 f25 = reflect(f24, f14);
    float f26 = f10.x * f22;
    vec3 f27 = mix(vec3(0.039999999105930328369140625), f19.xyz, vec3(f26));
    vec3 f28 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f29 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f30 = VARYING3.yzx - (VARYING3.yzx * f29);
    vec4 f31 = texture(LightMapTexture, f30);
    vec4 f32 = texture(LightGridSkylightTexture, f30);
    vec4 f33 = vec4(clamp(f29, 0.0, 1.0));
    vec4 f34 = mix(f31, vec4(0.0), f33);
    vec4 f35 = mix(f32, vec4(1.0), f33);
    float f36 = f35.x;
    vec4 f37 = texture(ShadowMapTexture, f28.xy);
    float f38 = f28.z;
    float f39 = f23 * 5.0;
    vec3 f40 = mat3(vec3(CB0[58].xyz), vec3(CB0[59].xyz), vec3(CB0[60].xyz)) * f25;
    bvec3 f41 = bvec3(!(CB0[58].x == 2.0));
    vec3 f42 = vec4(f25, f39).xyz;
    vec3 f43 = textureLod(PrefilteredEnvIndoorTexture, f42, f39).xyz;
    vec3 f44;
    if (CB0[32].w == 0.0)
    {
        f44 = f43;
    }
    else
    {
        f44 = mix(f43, textureLod(PrefilteredEnvBlendTargetTexture, f42, f39).xyz, vec3(CB0[32].w));
    }
    vec4 f45 = texture(PrecomputedBRDFTexture, vec2(f23, max(9.9999997473787516355514526367188e-05, dot(f14, f21))));
    float f46 = f45.x;
    float f47 = f45.y;
    vec3 f48 = ((f27 * f46) + vec3(f47)) / vec3(f46 + f47);
    float f49 = 1.0 - f26;
    float f50 = f22 * f49;
    vec3 f51 = vec3(f49);
    vec3 f52 = f14 * f14;
    bvec3 f53 = lessThan(f14, vec3(0.0));
    vec3 f54 = vec3(f53.x ? f52.x : vec3(0.0).x, f53.y ? f52.y : vec3(0.0).y, f53.z ? f52.z : vec3(0.0).z);
    vec3 f55 = f52 - f54;
    float f56 = f55.x;
    float f57 = f55.y;
    float f58 = f55.z;
    float f59 = f54.x;
    float f60 = f54.y;
    float f61 = f54.z;
    vec3 f62 = -CB0[16].xyz;
    float f63 = dot(f14, f62) * ((1.0 - ((step(f37.x, f38) * clamp(CB0[29].z + (CB0[29].w * abs(f38 - 0.5)), 0.0, 1.0)) * f37.y)) * f35.y);
    vec3 f64 = normalize(f21 + f62);
    float f65 = clamp(f63, 0.0, 1.0);
    float f66 = f23 * f23;
    float f67 = max(0.001000000047497451305389404296875, dot(f14, f64));
    float f68 = dot(f62, f64);
    float f69 = 1.0 - f68;
    float f70 = f69 * f69;
    float f71 = (f70 * f70) * f69;
    vec3 f72 = vec3(f71) + (f27 * (1.0 - f71));
    float f73 = f66 * f66;
    float f74 = (((f67 * f73) - f67) * f67) + 1.0;
    vec3 f75 = (((((((f51 - (f48 * f50)) * (((((((CB0[40].xyz * f56) + (CB0[42].xyz * f57)) + (CB0[44].xyz * f58)) + (CB0[41].xyz * f59)) + (CB0[43].xyz * f60)) + (CB0[45].xyz * f61)) + (((((((CB0[34].xyz * f56) + (CB0[36].xyz * f57)) + (CB0[38].xyz * f58)) + (CB0[35].xyz * f59)) + (CB0[37].xyz * f60)) + (CB0[39].xyz * f61)) * f36))) * 1.0) + ((CB0[32].xyz + (CB0[33].xyz * f36)) * 1.0)) + ((((f51 - (f72 * f50)) * CB0[15].xyz) * f65) + (CB0[17].xyz * (f49 * clamp(-f63, 0.0, 1.0))))) + (f34.xyz * (f34.w * 120.0))) * f19.xyz) + (((mix(f44, textureLod(PrefilteredEnvTexture, vec4(vec3(f41.x ? f40.x : f25.x, f41.y ? f40.y : f25.y, f41.z ? f40.z : f25.z), f39).xyz, f39).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f25.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f36)) * f48) * f22) + (((f72 * (((f73 + (f73 * f73)) / (((f74 * f74) * ((f68 * 3.0) + 0.5)) * ((f67 * 0.75) + 0.25))) * f65)) * CB0[15].xyz) * 1.0));
    vec4 f76 = vec4(0.0);
    f76.x = f75.x;
    vec4 f77 = f76;
    f77.y = f75.y;
    vec4 f78 = f77;
    f78.z = f75.z;
    float f79 = f5.w;
    vec4 f80 = f78;
    f80.w = f79;
    float f81 = clamp(exp2((CB0[18].z * f20) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f82 = textureLod(PrefilteredEnvTexture, vec4(f24, 0.0).xyz, max(CB0[18].y, f81) * 5.0).xyz;
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
