#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <PartMaterialParams.h>
uniform vec4 CB0[61];
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

in vec2 VARYING0;
in vec3 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = VARYING1.xy;
    f0.y = (fract(VARYING1.y) + VARYING1.z) * 0.25;
    vec4 f1 = texture(NormalMapTexture, f0);
    vec2 f2 = f1.wy * 2.0;
    vec2 f3 = f2 - vec2(1.0);
    float f4 = sqrt(clamp(1.0 + dot(vec2(1.0) - f2, f3), 0.0, 1.0));
    vec3 f5 = vec3(f3, f4);
    vec2 f6 = f5.xy + (vec3((texture(NormalDetailMapTexture, VARYING0 * CB2[0].x).wy * 2.0) - vec2(1.0), 0.0).xy * (clamp(VARYING2.w - 0.5, 0.0, 1.0) * clamp(1.0 - (2.0 * VARYING7.w), 0.0, 1.0)));
    vec3 f7 = f5;
    f7.x = f6.x;
    vec3 f8 = f7;
    f8.y = f6.y;
    vec2 f9 = f8.xy * (clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y * CB2[3].w);
    vec4 f10 = vec4(VARYING2.xyz * (texture(DiffuseMapTexture, f0).x * 2.0), VARYING2.w);
    float f11 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f12 = VARYING6.xyz * f11;
    vec3 f13 = VARYING5.xyz * f11;
    vec3 f14 = normalize(((f12 * f9.x) + (cross(f13, f12) * f9.y)) + (f13 * f4));
    vec3 f15 = f10.xyz;
    vec3 f16 = f15 * f15;
    vec4 f17 = f10;
    f17.x = f16.x;
    vec4 f18 = f17;
    f18.y = f16.y;
    vec4 f19 = f18;
    f19.z = f16.z;
    float f20 = length(VARYING4.xyz);
    vec3 f21 = VARYING4.xyz / vec3(f20);
    float f22 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f23 = 0.08900000154972076416015625 + (CB2[0].y * 0.9110000133514404296875);
    vec3 f24 = -f21;
    vec3 f25 = reflect(f24, f14);
    float f26 = (!(VARYING7.w == 0.0)) ? 0.0 : (f23 * 5.0);
    vec3 f27 = mat3(vec3(CB0[58].xyz), vec3(CB0[59].xyz), vec3(CB0[60].xyz)) * f25;
    bvec3 f28 = bvec3(!(CB0[58].x == 2.0));
    vec3 f29 = textureLod(PrefilteredEnvTexture, vec4(vec3(f28.x ? f27.x : f25.x, f28.y ? f27.y : f25.y, f28.z ? f27.z : f25.z), f26).xyz, f26).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f25.y * 1.58823525905609130859375, 0.0, 1.0)));
    vec3 f30 = vec4(f25, f26).xyz;
    vec3 f31 = textureLod(PrefilteredEnvIndoorTexture, f30, f26).xyz;
    vec3 f32;
    if (CB0[32].w == 0.0)
    {
        f32 = f31;
    }
    else
    {
        f32 = mix(f31, textureLod(PrefilteredEnvBlendTargetTexture, f30, f26).xyz, vec3(CB0[32].w));
    }
    vec4 f33 = texture(PrecomputedBRDFTexture, vec2(f23, max(9.9999997473787516355514526367188e-05, dot(f14, f21))));
    vec3 f34 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f35 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f36 = VARYING3.yzx - (VARYING3.yzx * f35);
    vec4 f37 = vec4(clamp(f35, 0.0, 1.0));
    vec4 f38 = mix(texture(LightMapTexture, f36), vec4(0.0), f37);
    vec4 f39 = mix(texture(LightGridSkylightTexture, f36), vec4(1.0), f37);
    float f40 = f39.x;
    vec4 f41 = texture(ShadowMapTexture, f34.xy);
    float f42 = f34.z;
    float f43 = f33.x;
    float f44 = f33.y;
    vec3 f45 = ((vec3(0.039999999105930328369140625) * f43) + vec3(f44)) / vec3(f43 + f44);
    vec3 f46 = f14 * f14;
    bvec3 f47 = lessThan(f14, vec3(0.0));
    vec3 f48 = vec3(f47.x ? f46.x : vec3(0.0).x, f47.y ? f46.y : vec3(0.0).y, f47.z ? f46.z : vec3(0.0).z);
    vec3 f49 = f46 - f48;
    float f50 = f49.x;
    float f51 = f49.y;
    float f52 = f49.z;
    float f53 = f48.x;
    float f54 = f48.y;
    float f55 = f48.z;
    vec3 f56 = -CB0[16].xyz;
    float f57 = dot(f14, f56) * ((1.0 - ((step(f41.x, f42) * clamp(CB0[29].z + (CB0[29].w * abs(f42 - 0.5)), 0.0, 1.0)) * f41.y)) * f39.y);
    vec3 f58 = normalize(f21 + f56);
    float f59 = clamp(f57, 0.0, 1.0);
    float f60 = f23 * f23;
    float f61 = max(0.001000000047497451305389404296875, dot(f14, f58));
    float f62 = dot(f56, f58);
    float f63 = 1.0 - f62;
    float f64 = f63 * f63;
    float f65 = (f64 * f64) * f63;
    vec3 f66 = vec3(f65) + (vec3(0.039999999105930328369140625) * (1.0 - f65));
    float f67 = f60 * f60;
    float f68 = (((f61 * f67) - f61) * f61) + 1.0;
    vec3 f69 = (((((((vec3(1.0) - (f45 * f22)) * (((((((CB0[40].xyz * f50) + (CB0[42].xyz * f51)) + (CB0[44].xyz * f52)) + (CB0[41].xyz * f53)) + (CB0[43].xyz * f54)) + (CB0[45].xyz * f55)) + (((((((CB0[34].xyz * f50) + (CB0[36].xyz * f51)) + (CB0[38].xyz * f52)) + (CB0[35].xyz * f53)) + (CB0[37].xyz * f54)) + (CB0[39].xyz * f55)) * f40))) * 1.0) + ((CB0[32].xyz + (CB0[33].xyz * f40)) * 1.0)) + ((((vec3(1.0) - (f66 * f22)) * CB0[15].xyz) * f59) + (CB0[17].xyz * clamp(-f57, 0.0, 1.0)))) + (f38.xyz * (f38.w * 120.0))) * mix(f19.xyz, f29, vec3(VARYING7.w))) + (((mix(f32, f29, vec3(f40)) * f45) * f22) + (((f66 * (((f67 + (f67 * f67)) / (((f68 * f68) * ((f62 * 3.0) + 0.5)) * ((f61 * 0.75) + 0.25))) * f59)) * CB0[15].xyz) * 1.0));
    vec4 f70 = vec4(0.0);
    f70.x = f69.x;
    vec4 f71 = f70;
    f71.y = f69.y;
    vec4 f72 = f71;
    f72.z = f69.z;
    vec4 f73 = f72;
    f73.w = VARYING2.w;
    float f74 = clamp(exp2((CB0[18].z * f20) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f75 = textureLod(PrefilteredEnvTexture, vec4(f24, 0.0).xyz, max(CB0[18].y, f74) * 5.0).xyz;
    bvec3 f76 = bvec3(!(CB0[18].w == 0.0));
    vec3 f77 = mix(vec3(f76.x ? CB0[19].xyz.x : f75.x, f76.y ? CB0[19].xyz.y : f75.y, f76.z ? CB0[19].xyz.z : f75.z), f73.xyz, vec3(f74));
    vec4 f78 = f73;
    f78.x = f77.x;
    vec4 f79 = f78;
    f79.y = f77.y;
    vec4 f80 = f79;
    f80.z = f77.z;
    vec3 f81 = sqrt(clamp(f80.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f82 = f80;
    f82.x = f81.x;
    vec4 f83 = f82;
    f83.y = f81.y;
    vec4 f84 = f83;
    f84.z = f81.z;
    vec4 f85 = f84;
    f85.w = VARYING2.w;
    _entryPointOutput = f85;
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
