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
    vec4 f0 = texture(DiffuseMapTexture, VARYING0) * VARYING1;
    vec3 f1 = normalize(VARYING4.xyz) * (gl_FrontFacing ? 1.0 : (-1.0));
    vec3 f2 = f0.xyz;
    vec3 f3 = f2 * f2;
    vec4 f4 = f0;
    f4.x = f3.x;
    vec4 f5 = f4;
    f5.y = f3.y;
    vec4 f6 = f5;
    f6.z = f3.z;
    float f7 = length(VARYING3.xyz);
    vec3 f8 = VARYING3.xyz / vec3(f7);
    float f9 = CB0[31].w * clamp(1.0 - (VARYING3.w * CB0[28].y), 0.0, 1.0);
    float f10 = 0.08900000154972076416015625 + (VARYING4.w * 0.9110000133514404296875);
    vec3 f11 = -f8;
    vec3 f12 = reflect(f11, f1);
    float f13 = VARYING5.w * f9;
    vec3 f14 = mix(vec3(0.039999999105930328369140625), f6.xyz, vec3(f13));
    vec3 f15 = VARYING5.xyz - (CB0[16].xyz * VARYING2.w);
    float f16 = clamp(dot(step(CB0[24].xyz, abs(VARYING2.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f17 = VARYING2.yzx - (VARYING2.yzx * f16);
    vec4 f18 = texture(LightMapTexture, f17);
    vec4 f19 = texture(LightGridSkylightTexture, f17);
    vec4 f20 = vec4(clamp(f16, 0.0, 1.0));
    vec4 f21 = mix(f18, vec4(0.0), f20);
    vec4 f22 = mix(f19, vec4(1.0), f20);
    float f23 = f22.x;
    vec4 f24 = texture(ShadowMapTexture, f15.xy);
    float f25 = f15.z;
    vec3 f26 = -CB0[16].xyz;
    float f27 = dot(f1, f26) * ((1.0 - ((step(f24.x, f25) * clamp(CB0[29].z + (CB0[29].w * abs(f25 - 0.5)), 0.0, 1.0)) * f24.y)) * f22.y);
    vec3 f28 = normalize(f8 + f26);
    float f29 = clamp(f27, 0.0, 1.0);
    float f30 = f10 * f10;
    float f31 = max(0.001000000047497451305389404296875, dot(f1, f28));
    float f32 = dot(f26, f28);
    float f33 = 1.0 - f32;
    float f34 = f33 * f33;
    float f35 = (f34 * f34) * f33;
    vec3 f36 = vec3(f35) + (f14 * (1.0 - f35));
    float f37 = f30 * f30;
    float f38 = (((f31 * f37) - f31) * f31) + 1.0;
    float f39 = 1.0 - f13;
    float f40 = f9 * f39;
    vec3 f41 = vec3(f39);
    float f42 = f10 * 5.0;
    vec3 f43 = vec4(f12, f42).xyz;
    vec3 f44 = textureLod(PrefilteredEnvIndoorTexture, f43, f42).xyz;
    vec3 f45;
    if (CB0[32].w == 0.0)
    {
        f45 = f44;
    }
    else
    {
        f45 = mix(f44, textureLod(PrefilteredEnvBlendTargetTexture, f43, f42).xyz, vec3(CB0[32].w));
    }
    vec4 f46 = texture(PrecomputedBRDFTexture, vec2(f10, max(9.9999997473787516355514526367188e-05, dot(f1, f8))));
    float f47 = f46.x;
    float f48 = f46.y;
    vec3 f49 = ((f14 * f47) + vec3(f48)) / vec3(f47 + f48);
    vec3 f50 = f1 * f1;
    bvec3 f51 = lessThan(f1, vec3(0.0));
    vec3 f52 = vec3(f51.x ? f50.x : vec3(0.0).x, f51.y ? f50.y : vec3(0.0).y, f51.z ? f50.z : vec3(0.0).z);
    vec3 f53 = f50 - f52;
    float f54 = f53.x;
    float f55 = f53.y;
    float f56 = f53.z;
    float f57 = f52.x;
    float f58 = f52.y;
    float f59 = f52.z;
    vec3 f60 = (((((f21.xyz * (f21.w * 120.0)) + ((((f41 - (f36 * f40)) * CB0[15].xyz) * f29) + (CB0[17].xyz * (f39 * clamp(-f27, 0.0, 1.0))))) + (((f41 - (f49 * f40)) * ((((((((CB0[40].xyz * f54) + (CB0[42].xyz * f55)) + (CB0[44].xyz * f56)) + (CB0[41].xyz * f57)) + (CB0[43].xyz * f58)) + (CB0[45].xyz * f59)) * CB0[30].w) + ((((((((CB0[34].xyz * f54) + (CB0[36].xyz * f55)) + (CB0[38].xyz * f56)) + (CB0[35].xyz * f57)) + (CB0[37].xyz * f58)) + (CB0[39].xyz * f59)) * CB0[30].w) * f23))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * f23)) * 1.0)) * f6.xyz) + ((((f36 * (((f37 + (f37 * f37)) / (((f38 * f38) * ((f32 * 3.0) + 0.5)) * ((f31 * 0.75) + 0.25))) * f29)) * CB0[15].xyz) * 1.0) + ((mix(f45, textureLod(PrefilteredEnvTexture, f43, f42).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f12.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f23)) * f49) * f9));
    vec4 f61 = vec4(0.0);
    f61.x = f60.x;
    vec4 f62 = f61;
    f62.y = f60.y;
    vec4 f63 = f62;
    f63.z = f60.z;
    vec4 f64 = f63;
    f64.w = 1.0;
    float f65 = clamp(exp2((CB0[18].z * f7) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f66 = textureLod(PrefilteredEnvTexture, vec4(f11, 0.0).xyz, max(CB0[18].y, f65) * 5.0).xyz;
    bvec3 f67 = bvec3(!(CB0[18].w == 0.0));
    vec3 f68 = mix(vec3(f67.x ? CB0[19].xyz.x : f66.x, f67.y ? CB0[19].xyz.y : f66.y, f67.z ? CB0[19].xyz.z : f66.z), f64.xyz, vec3(f65));
    vec4 f69 = f64;
    f69.x = f68.x;
    vec4 f70 = f69;
    f70.y = f68.y;
    vec4 f71 = f70;
    f71.z = f68.z;
    vec3 f72 = sqrt(clamp(f71.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f73 = f71;
    f73.x = f72.x;
    vec4 f74 = f73;
    f74.y = f72.y;
    vec4 f75 = f74;
    f75.z = f72.z;
    vec4 f76 = f75;
    f76.w = 1.0;
    _entryPointOutput = f76;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
