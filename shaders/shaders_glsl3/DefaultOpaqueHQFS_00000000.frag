#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
out vec4 _entryPointOutput;

void main()
{
    float f0 = length(VARYING3.xyz);
    vec3 f1 = VARYING3.xyz / vec3(f0);
    vec4 f2 = texture(DiffuseMapTexture, VARYING0) * VARYING1;
    vec3 f3 = normalize(VARYING4.xyz) * (gl_FrontFacing ? 1.0 : (-1.0));
    vec3 f4 = f2.xyz;
    vec3 f5 = f4 * f4;
    vec4 f6 = f2;
    f6.x = f5.x;
    vec4 f7 = f6;
    f7.y = f5.y;
    vec4 f8 = f7;
    f8.z = f5.z;
    float f9 = CB0[31].w * clamp(1.0 - (VARYING3.w * CB0[28].y), 0.0, 1.0);
    float f10 = 0.08900000154972076416015625 + (VARYING4.w * 0.9110000133514404296875);
    vec3 f11 = reflect(-f1, f3);
    float f12 = VARYING5.w * f9;
    vec3 f13 = mix(vec3(0.039999999105930328369140625), f8.xyz, vec3(f12));
    vec3 f14 = VARYING5.xyz - (CB0[16].xyz * VARYING2.w);
    float f15 = clamp(dot(step(CB0[24].xyz, abs(VARYING2.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f16 = VARYING2.yzx - (VARYING2.yzx * f15);
    vec4 f17 = texture(LightMapTexture, f16);
    vec4 f18 = texture(LightGridSkylightTexture, f16);
    vec4 f19 = vec4(clamp(f15, 0.0, 1.0));
    vec4 f20 = mix(f17, vec4(0.0), f19);
    vec4 f21 = mix(f18, vec4(1.0), f19);
    float f22 = f21.x;
    vec4 f23 = texture(ShadowMapTexture, f14.xy);
    float f24 = f14.z;
    vec3 f25 = -CB0[16].xyz;
    float f26 = dot(f3, f25) * ((1.0 - ((step(f23.x, f24) * clamp(CB0[29].z + (CB0[29].w * abs(f24 - 0.5)), 0.0, 1.0)) * f23.y)) * f21.y);
    vec3 f27 = normalize(f1 - CB0[16].xyz);
    float f28 = clamp(f26, 0.0, 1.0);
    float f29 = f10 * f10;
    float f30 = max(0.001000000047497451305389404296875, dot(f3, f27));
    float f31 = dot(f25, f27);
    float f32 = 1.0 - f31;
    float f33 = f32 * f32;
    float f34 = (f33 * f33) * f32;
    vec3 f35 = vec3(f34) + (f13 * (1.0 - f34));
    float f36 = f29 * f29;
    float f37 = (((f30 * f36) - f30) * f30) + 1.0;
    float f38 = 1.0 - f12;
    float f39 = f9 * f38;
    vec3 f40 = vec3(f38);
    float f41 = f10 * 5.0;
    vec3 f42 = vec4(f11, f41).xyz;
    vec3 f43 = textureLod(PrefilteredEnvIndoorTexture, f42, f41).xyz;
    vec3 f44;
    if (CB0[32].w == 0.0)
    {
        f44 = f43;
    }
    else
    {
        f44 = mix(f43, textureLod(PrefilteredEnvBlendTargetTexture, f42, f41).xyz, vec3(CB0[32].w));
    }
    vec4 f45 = texture(PrecomputedBRDFTexture, vec2(f10, max(9.9999997473787516355514526367188e-05, dot(f3, f1))));
    float f46 = f45.x;
    float f47 = f45.y;
    vec3 f48 = ((f13 * f46) + vec3(f47)) / vec3(f46 + f47);
    vec3 f49 = f3 * f3;
    bvec3 f50 = lessThan(f3, vec3(0.0));
    vec3 f51 = vec3(f50.x ? f49.x : vec3(0.0).x, f50.y ? f49.y : vec3(0.0).y, f50.z ? f49.z : vec3(0.0).z);
    vec3 f52 = f49 - f51;
    float f53 = f52.x;
    float f54 = f52.y;
    float f55 = f52.z;
    float f56 = f51.x;
    float f57 = f51.y;
    float f58 = f51.z;
    vec3 f59 = ((((((f20.xyz * (f20.w * 120.0)) * 1.0) + ((((f40 - (f35 * f39)) * CB0[15].xyz) * f28) + (CB0[17].xyz * (f38 * clamp(-f26, 0.0, 1.0))))) + ((f40 - (f48 * f39)) * (((((((CB0[40].xyz * f53) + (CB0[42].xyz * f54)) + (CB0[44].xyz * f55)) + (CB0[41].xyz * f56)) + (CB0[43].xyz * f57)) + (CB0[45].xyz * f58)) + (((((((CB0[34].xyz * f53) + (CB0[36].xyz * f54)) + (CB0[38].xyz * f55)) + (CB0[35].xyz * f56)) + (CB0[37].xyz * f57)) + (CB0[39].xyz * f58)) * f22)))) + ((CB0[32].xyz + (CB0[33].xyz * f22)) * 1.0)) * f8.xyz) + ((((f35 * (min((f36 + (f36 * f36)) / (((f37 * f37) * ((f31 * 3.0) + 0.5)) * ((f30 * 0.75) + 0.25)), 65504.0) * f28)) * CB0[15].xyz) * 1.0) + ((mix(f44, textureLod(PrefilteredEnvTexture, f42, f41).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f11.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f22)) * f48) * f9));
    vec4 f60 = vec4(0.0);
    f60.x = f59.x;
    vec4 f61 = f60;
    f61.y = f59.y;
    vec4 f62 = f61;
    f62.z = f59.z;
    vec4 f63 = f62;
    f63.w = 1.0;
    float f64 = clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f65 = textureLod(PrefilteredEnvTexture, vec4(-VARYING3.xyz, 0.0).xyz, max(CB0[18].y, f64) * 5.0).xyz;
    bvec3 f66 = bvec3(!(CB0[18].w == 0.0));
    vec3 f67 = mix(vec3(f66.x ? CB0[19].xyz.x : f65.x, f66.y ? CB0[19].xyz.y : f65.y, f66.z ? CB0[19].xyz.z : f65.z), f63.xyz, vec3(f64));
    vec4 f68 = f63;
    f68.x = f67.x;
    vec4 f69 = f68;
    f69.y = f67.y;
    vec4 f70 = f69;
    f70.z = f67.z;
    vec3 f71 = sqrt(clamp(f70.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f72 = f70;
    f72.x = f71.x;
    vec4 f73 = f72;
    f73.y = f71.y;
    vec4 f74 = f73;
    f74.z = f71.z;
    vec4 f75 = f74;
    f75.w = 1.0;
    _entryPointOutput = f75;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
