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
    float f38 = dot(f14, f37) * ((1.0 - ((step(f35.x, f36) * clamp(CB0[29].z + (CB0[29].w * abs(f36 - 0.5)), 0.0, 1.0)) * f35.y)) * f33.y);
    vec3 f39 = normalize(f21 + f37);
    float f40 = clamp(f38, 0.0, 1.0);
    float f41 = f23 * f23;
    float f42 = max(0.001000000047497451305389404296875, dot(f14, f39));
    float f43 = dot(f37, f39);
    float f44 = 1.0 - f43;
    float f45 = f44 * f44;
    float f46 = (f45 * f45) * f44;
    vec3 f47 = vec3(f46) + (vec3(0.039999999105930328369140625) * (1.0 - f46));
    float f48 = f41 * f41;
    float f49 = (((f42 * f48) - f42) * f42) + 1.0;
    float f50 = f23 * 5.0;
    vec3 f51 = vec4(f25, f50).xyz;
    vec3 f52 = textureLod(PrefilteredEnvIndoorTexture, f51, f50).xyz;
    vec3 f53;
    if (CB0[32].w == 0.0)
    {
        f53 = f52;
    }
    else
    {
        f53 = mix(f52, textureLod(PrefilteredEnvBlendTargetTexture, f51, f50).xyz, vec3(CB0[32].w));
    }
    vec4 f54 = texture(PrecomputedBRDFTexture, vec2(f23, max(9.9999997473787516355514526367188e-05, dot(f14, f21))));
    float f55 = f54.x;
    float f56 = f54.y;
    vec3 f57 = ((vec3(0.039999999105930328369140625) * f55) + vec3(f56)) / vec3(f55 + f56);
    vec3 f58 = f14 * f14;
    bvec3 f59 = lessThan(f14, vec3(0.0));
    vec3 f60 = vec3(f59.x ? f58.x : vec3(0.0).x, f59.y ? f58.y : vec3(0.0).y, f59.z ? f58.z : vec3(0.0).z);
    vec3 f61 = f58 - f60;
    float f62 = f61.x;
    float f63 = f61.y;
    float f64 = f61.z;
    float f65 = f60.x;
    float f66 = f60.y;
    float f67 = f60.z;
    vec3 f68 = (((((f32.xyz * (f32.w * 120.0)) + ((((vec3(1.0) - (f47 * f22)) * CB0[15].xyz) * f40) + (CB0[17].xyz * clamp(-f38, 0.0, 1.0)))) + (((vec3(1.0) - (f57 * f22)) * (((((((CB0[40].xyz * f62) + (CB0[42].xyz * f63)) + (CB0[44].xyz * f64)) + (CB0[41].xyz * f65)) + (CB0[43].xyz * f66)) + (CB0[45].xyz * f67)) + (((((((CB0[34].xyz * f62) + (CB0[36].xyz * f63)) + (CB0[38].xyz * f64)) + (CB0[35].xyz * f65)) + (CB0[37].xyz * f66)) + (CB0[39].xyz * f67)) * f34))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * f34)) * 1.0)) * f19.xyz) + ((((f47 * (((f48 + (f48 * f48)) / (((f49 * f49) * ((f43 * 3.0) + 0.5)) * ((f42 * 0.75) + 0.25))) * f40)) * CB0[15].xyz) * 1.0) + ((mix(f53, textureLod(PrefilteredEnvTexture, f51, f50).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f25.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f34)) * f57) * f22));
    vec4 f69 = vec4(0.0);
    f69.x = f68.x;
    vec4 f70 = f69;
    f70.y = f68.y;
    vec4 f71 = f70;
    f71.z = f68.z;
    vec4 f72 = f71;
    f72.w = VARYING2.w;
    float f73 = clamp(exp2((CB0[18].z * f20) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f74 = textureLod(PrefilteredEnvTexture, vec4(f24, 0.0).xyz, max(CB0[18].y, f73) * 5.0).xyz;
    bvec3 f75 = bvec3(!(CB0[18].w == 0.0));
    vec3 f76 = mix(vec3(f75.x ? CB0[19].xyz.x : f74.x, f75.y ? CB0[19].xyz.y : f74.y, f75.z ? CB0[19].xyz.z : f74.z), f72.xyz, vec3(f73));
    vec4 f77 = f72;
    f77.x = f76.x;
    vec4 f78 = f77;
    f78.y = f76.y;
    vec4 f79 = f78;
    f79.z = f76.z;
    vec3 f80 = sqrt(clamp(f79.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f81 = f79;
    f81.x = f80.x;
    vec4 f82 = f81;
    f82.y = f80.y;
    vec4 f83 = f82;
    f83.z = f80.z;
    vec4 f84 = f83;
    f84.w = VARYING2.w;
    _entryPointOutput = f84;
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
