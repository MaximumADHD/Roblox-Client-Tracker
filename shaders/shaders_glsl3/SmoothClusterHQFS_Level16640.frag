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
uniform sampler2DArray SpecularMapTexture;
uniform sampler2DArray AlbedoMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec3 VARYING4;
in vec4 VARYING5;
in vec3 VARYING6;
in vec3 VARYING8;
in vec4 VARYING9;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = vec3(VARYING1.xy, VARYING2.x);
    vec4 f1 = texture(SpecularMapTexture, f0);
    vec3 f2 = vec3(VARYING1.zw, VARYING2.z);
    vec4 f3 = texture(SpecularMapTexture, f2);
    vec4 f4 = texture(SpecularMapTexture, VARYING3.xyz);
    vec4 f5 = ((f1 * VARYING0.x) + (f3 * VARYING0.y)) + (f4 * VARYING0.z);
    vec4 f6 = texture(AlbedoMapTexture, f0);
    vec4 f7 = texture(AlbedoMapTexture, f2);
    vec4 f8 = texture(AlbedoMapTexture, VARYING3.xyz);
    vec4 f9 = ((f6.yxzw * VARYING0.x) + (f7.yxzw * VARYING0.y)) + (f8.yxzw * VARYING0.z);
    vec2 f10 = f9.yz - vec2(0.5);
    float f11 = VARYING9.x * f9.x;
    float f12 = f10.x;
    float f13 = f10.y;
    float f14 = (VARYING9.y * f12) - (VARYING9.z * f13);
    float f15 = (VARYING9.z * f12) + (VARYING9.y * f13);
    float f16 = f11 - f15;
    vec3 f17 = vec4(vec3(f16, f11, f16) + (vec3(f14, f15, f14) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f18 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec3 f19 = normalize(VARYING6);
    vec3 f20 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f21 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f22 = VARYING4.yzx - (VARYING4.yzx * f21);
    vec4 f23 = texture(LightMapTexture, f22);
    vec4 f24 = texture(LightGridSkylightTexture, f22);
    vec4 f25 = vec4(clamp(f21, 0.0, 1.0));
    vec4 f26 = mix(f23, vec4(0.0), f25);
    vec4 f27 = mix(f24, vec4(1.0), f25);
    float f28 = f27.x;
    vec4 f29 = texture(ShadowMapTexture, f20.xy);
    float f30 = f20.z;
    vec3 f31 = normalize(VARYING8);
    vec3 f32 = (f17 * f17).xyz;
    float f33 = f5.y;
    float f34 = f5.x;
    vec3 f35 = mix(vec3(0.039999999105930328369140625), f32, vec3(f34));
    float f36 = CB0[26].w * f18;
    vec3 f37 = reflect(-f31, f19);
    vec3 f38 = -CB0[11].xyz;
    float f39 = dot(f19, f38) * ((1.0 - ((step(f29.x, f30) * clamp(CB0[24].z + (CB0[24].w * abs(f30 - 0.5)), 0.0, 1.0)) * f29.y)) * f27.y);
    vec3 f40 = normalize(f38 + f31);
    float f41 = clamp(f39, 0.0, 1.0);
    float f42 = f33 * f33;
    float f43 = max(0.001000000047497451305389404296875, dot(f19, f40));
    float f44 = dot(f38, f40);
    float f45 = 1.0 - f44;
    float f46 = f45 * f45;
    float f47 = (f46 * f46) * f45;
    vec3 f48 = vec3(f47) + (f35 * (1.0 - f47));
    float f49 = f42 * f42;
    float f50 = (((f43 * f49) - f43) * f43) + 1.0;
    float f51 = 1.0 - f34;
    float f52 = f36 * f51;
    vec3 f53 = vec3(f51);
    float f54 = f33 * 5.0;
    vec3 f55 = vec4(f37, f54).xyz;
    vec3 f56 = textureLod(PrefilteredEnvIndoorTexture, f55, f54).xyz;
    vec3 f57;
    if (CB0[27].w == 0.0)
    {
        f57 = f56;
    }
    else
    {
        f57 = mix(f56, textureLod(PrefilteredEnvBlendTargetTexture, f55, f54).xyz, vec3(CB0[27].w));
    }
    vec4 f58 = texture(PrecomputedBRDFTexture, vec2(f33, max(9.9999997473787516355514526367188e-05, dot(f19, f31))));
    float f59 = f58.x;
    float f60 = f58.y;
    vec3 f61 = ((f35 * f59) + vec3(f60)) / vec3(f59 + f60);
    vec3 f62 = f19 * f19;
    bvec3 f63 = lessThan(f19, vec3(0.0));
    vec3 f64 = vec3(f63.x ? f62.x : vec3(0.0).x, f63.y ? f62.y : vec3(0.0).y, f63.z ? f62.z : vec3(0.0).z);
    vec3 f65 = f62 - f64;
    float f66 = f65.x;
    float f67 = f65.y;
    float f68 = f65.z;
    float f69 = f64.x;
    float f70 = f64.y;
    float f71 = f64.z;
    vec3 f72 = (((((((((f53 - (f48 * f52)) * CB0[10].xyz) * f41) + (CB0[12].xyz * (f51 * clamp(-f39, 0.0, 1.0)))) + ((f26.xyz * (f26.w * 120.0)).xyz * 1.0)) + ((f53 - (f61 * f52)) * (((((((CB0[35].xyz * f66) + (CB0[37].xyz * f67)) + (CB0[39].xyz * f68)) + (CB0[36].xyz * f69)) + (CB0[38].xyz * f70)) + (CB0[40].xyz * f71)) + (((((((CB0[29].xyz * f66) + (CB0[31].xyz * f67)) + (CB0[33].xyz * f68)) + (CB0[30].xyz * f69)) + (CB0[32].xyz * f70)) + (CB0[34].xyz * f71)) * f28)))) + (CB0[27].xyz + (CB0[28].xyz * f28))) + vec3((f5.z * 2.0) * f18)) * f32) + (((((f48 * (((f49 + (f49 * f49)) / (((f50 * f50) * ((f44 * 3.0) + 0.5)) * ((f43 * 0.75) + 0.25))) * f41)) * CB0[10].xyz) * f18) * VARYING0.w) + ((mix(f57, textureLod(PrefilteredEnvTexture, f55, f54).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f37.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f28)) * f61) * f36));
    vec4 f73 = vec4(f72.x, f72.y, f72.z, vec4(0.0).w);
    f73.w = 1.0;
    float f74 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f75 = textureLod(PrefilteredEnvTexture, vec4(-VARYING8, 0.0).xyz, max(CB0[13].y, f74) * 5.0).xyz;
    bvec3 f76 = bvec3(!(CB0[13].w == 0.0));
    vec3 f77 = sqrt(clamp(mix(vec3(f76.x ? CB0[14].xyz.x : f75.x, f76.y ? CB0[14].xyz.y : f75.y, f76.z ? CB0[14].xyz.z : f75.z), f73.xyz, vec3(f74)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f77.x, f77.y, f77.z, f73.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
