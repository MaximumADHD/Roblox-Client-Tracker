#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
out vec4 _entryPointOutput;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec3 f1 = VARYING4.xyz / vec3(f0);
    vec4 f2 = texture(DiffuseMapTexture, VARYING0) * VARYING2;
    vec3 f3 = normalize(VARYING5.xyz) * (gl_FrontFacing ? 1.0 : (-1.0));
    vec3 f4 = f2.xyz;
    vec3 f5 = f4 * f4;
    vec4 f6 = f2;
    f6.x = f5.x;
    vec4 f7 = f6;
    f7.y = f5.y;
    vec4 f8 = f7;
    f8.z = f5.z;
    vec3 f9 = VARYING6.xyz - (CB0[11].xyz * VARYING3.w);
    float f10 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f11 = VARYING3.yzx - (VARYING3.yzx * f10);
    vec4 f12 = texture(LightMapTexture, f11);
    vec4 f13 = texture(LightGridSkylightTexture, f11);
    vec4 f14 = vec4(clamp(f10, 0.0, 1.0));
    vec4 f15 = mix(f12, vec4(0.0), f14);
    vec4 f16 = mix(f13, vec4(1.0), f14);
    float f17 = f16.x;
    vec4 f18 = texture(ShadowMapTexture, f9.xy);
    float f19 = f9.z;
    float f20 = CB0[26].w * clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    float f21 = 0.08900000154972076416015625 + (VARYING5.w * 0.9110000133514404296875);
    vec3 f22 = reflect(-f1, f3);
    float f23 = VARYING6.w * f20;
    vec3 f24 = mix(vec3(0.039999999105930328369140625), f8.xyz, vec3(f23));
    vec3 f25 = -CB0[11].xyz;
    float f26 = (dot(f3, f25) * CB0[9].w) * ((1.0 - ((step(f18.x, f19) * clamp(CB0[24].z + (CB0[24].w * abs(f19 - 0.5)), 0.0, 1.0)) * f18.y)) * f16.y);
    vec3 f27 = normalize(f1 - CB0[11].xyz);
    float f28 = clamp(f26, 0.0, 1.0);
    float f29 = f21 * f21;
    float f30 = max(0.001000000047497451305389404296875, dot(f3, f27));
    float f31 = dot(f25, f27);
    float f32 = 1.0 - f31;
    float f33 = f32 * f32;
    float f34 = (f33 * f33) * f32;
    vec3 f35 = vec3(f34) + (f24 * (1.0 - f34));
    float f36 = f29 * f29;
    float f37 = (((f30 * f36) - f30) * f30) + 1.0;
    float f38 = 1.0 - f23;
    float f39 = f20 * f38;
    vec3 f40 = vec3(f38);
    float f41 = f21 * 5.0;
    vec3 f42 = vec4(f22, f41).xyz;
    vec3 f43 = textureLod(PrefilteredEnvIndoorTexture, f42, f41).xyz;
    vec3 f44;
    if (CB0[27].w == 0.0)
    {
        f44 = f43;
    }
    else
    {
        f44 = mix(f43, textureLod(PrefilteredEnvBlendTargetTexture, f42, f41).xyz, vec3(CB0[27].w));
    }
    vec4 f45 = texture(PrecomputedBRDFTexture, vec2(f21, max(9.9999997473787516355514526367188e-05, dot(f3, f1))));
    float f46 = f45.x;
    float f47 = f45.y;
    vec3 f48 = ((f24 * f46) + vec3(f47)) / vec3(f46 + f47);
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
    vec3 f59 = ((((((((f40 - (f35 * f39)) * CB0[10].xyz) * f28) + (CB0[12].xyz * (f38 * clamp(-f26, 0.0, 1.0)))) + ((f15.xyz * (f15.w * 120.0)) * 1.0)) + ((f40 - (f48 * f39)) * (((((((CB0[35].xyz * f53) + (CB0[37].xyz * f54)) + (CB0[39].xyz * f55)) + (CB0[36].xyz * f56)) + (CB0[38].xyz * f57)) + (CB0[40].xyz * f58)) + (((((((CB0[29].xyz * f53) + (CB0[31].xyz * f54)) + (CB0[33].xyz * f55)) + (CB0[30].xyz * f56)) + (CB0[32].xyz * f57)) + (CB0[34].xyz * f58)) * f17)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f17))) * f8.xyz) + ((((f35 * (((f36 + (f36 * f36)) / (((f37 * f37) * ((f31 * 3.0) + 0.5)) * ((f30 * 0.75) + 0.25))) * f28)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) + ((mix(f44, textureLod(PrefilteredEnvTexture, f42, f41).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f22.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f17)) * f48) * f20));
    vec4 f60 = vec4(0.0);
    f60.x = f59.x;
    vec4 f61 = f60;
    f61.y = f59.y;
    vec4 f62 = f61;
    f62.z = f59.z;
    vec4 f63 = f62;
    f63.w = 1.0;
    float f64 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f65 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f64) * 5.0).xyz;
    bvec3 f66 = bvec3(!(CB0[13].w == 0.0));
    vec3 f67 = mix(vec3(f66.x ? CB0[14].xyz.x : f65.x, f66.y ? CB0[14].xyz.y : f65.y, f66.z ? CB0[14].xyz.z : f65.z), f63.xyz, vec3(f64));
    vec4 f68 = f63;
    f68.x = f67.x;
    vec4 f69 = f68;
    f69.y = f67.y;
    vec4 f70 = f69;
    f70.z = f67.z;
    vec3 f71 = sqrt(clamp(f70.xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
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
