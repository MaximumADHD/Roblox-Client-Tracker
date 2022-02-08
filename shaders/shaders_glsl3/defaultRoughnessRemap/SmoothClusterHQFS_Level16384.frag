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
    float f11 = f9.x;
    float f12 = f11 - f10.y;
    vec3 f13 = vec4(vec3(f12, f11, f12) + (vec3(f10.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f14 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec3 f15 = normalize(VARYING6);
    vec3 f16 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f17 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f18 = VARYING4.yzx - (VARYING4.yzx * f17);
    vec4 f19 = texture(LightMapTexture, f18);
    vec4 f20 = texture(LightGridSkylightTexture, f18);
    vec4 f21 = vec4(clamp(f17, 0.0, 1.0));
    vec4 f22 = mix(f19, vec4(0.0), f21);
    vec4 f23 = mix(f20, vec4(1.0), f21);
    float f24 = f23.x;
    vec4 f25 = texture(ShadowMapTexture, f16.xy);
    float f26 = f16.z;
    vec3 f27 = normalize(VARYING8);
    vec3 f28 = (f13 * f13).xyz;
    float f29 = 0.08900000154972076416015625 + (f5.y * 0.9110000133514404296875);
    float f30 = f5.x;
    vec3 f31 = mix(vec3(0.039999999105930328369140625), f28, vec3(f30));
    float f32 = CB0[26].w * f14;
    vec3 f33 = reflect(-f27, f15);
    vec3 f34 = -CB0[11].xyz;
    float f35 = dot(f15, f34) * ((1.0 - ((step(f25.x, f26) * clamp(CB0[24].z + (CB0[24].w * abs(f26 - 0.5)), 0.0, 1.0)) * f25.y)) * f23.y);
    vec3 f36 = normalize(f34 + f27);
    float f37 = clamp(f35, 0.0, 1.0);
    float f38 = f29 * f29;
    float f39 = max(0.001000000047497451305389404296875, dot(f15, f36));
    float f40 = dot(f34, f36);
    float f41 = 1.0 - f40;
    float f42 = f41 * f41;
    float f43 = (f42 * f42) * f41;
    vec3 f44 = vec3(f43) + (f31 * (1.0 - f43));
    float f45 = f38 * f38;
    float f46 = (((f39 * f45) - f39) * f39) + 1.0;
    float f47 = 1.0 - f30;
    float f48 = f32 * f47;
    vec3 f49 = vec3(f47);
    float f50 = f29 * 5.0;
    vec3 f51 = vec4(f33, f50).xyz;
    vec3 f52 = textureLod(PrefilteredEnvIndoorTexture, f51, f50).xyz;
    vec3 f53;
    if (CB0[27].w == 0.0)
    {
        f53 = f52;
    }
    else
    {
        f53 = mix(f52, textureLod(PrefilteredEnvBlendTargetTexture, f51, f50).xyz, vec3(CB0[27].w));
    }
    vec4 f54 = texture(PrecomputedBRDFTexture, vec2(f29, max(9.9999997473787516355514526367188e-05, dot(f15, f27))));
    float f55 = f54.x;
    float f56 = f54.y;
    vec3 f57 = ((f31 * f55) + vec3(f56)) / vec3(f55 + f56);
    vec3 f58 = f15 * f15;
    bvec3 f59 = lessThan(f15, vec3(0.0));
    vec3 f60 = vec3(f59.x ? f58.x : vec3(0.0).x, f59.y ? f58.y : vec3(0.0).y, f59.z ? f58.z : vec3(0.0).z);
    vec3 f61 = f58 - f60;
    float f62 = f61.x;
    float f63 = f61.y;
    float f64 = f61.z;
    float f65 = f60.x;
    float f66 = f60.y;
    float f67 = f60.z;
    vec3 f68 = (((((((((f49 - (f44 * f48)) * CB0[10].xyz) * f37) + (CB0[12].xyz * (f47 * clamp(-f35, 0.0, 1.0)))) + ((f22.xyz * (f22.w * 120.0)).xyz * 1.0)) + ((f49 - (f57 * f48)) * (((((((CB0[35].xyz * f62) + (CB0[37].xyz * f63)) + (CB0[39].xyz * f64)) + (CB0[36].xyz * f65)) + (CB0[38].xyz * f66)) + (CB0[40].xyz * f67)) + (((((((CB0[29].xyz * f62) + (CB0[31].xyz * f63)) + (CB0[33].xyz * f64)) + (CB0[30].xyz * f65)) + (CB0[32].xyz * f66)) + (CB0[34].xyz * f67)) * f24)))) + (CB0[27].xyz + (CB0[28].xyz * f24))) + vec3((f5.z * 2.0) * f14)) * f28) + (((((f44 * (((f45 + (f45 * f45)) / (((f46 * f46) * ((f40 * 3.0) + 0.5)) * ((f39 * 0.75) + 0.25))) * f37)) * CB0[10].xyz) * f14) * VARYING0.w) + ((mix(f53, textureLod(PrefilteredEnvTexture, f51, f50).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f33.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f24)) * f57) * f32));
    vec4 f69 = vec4(f68.x, f68.y, f68.z, vec4(0.0).w);
    f69.w = 1.0;
    float f70 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f71 = textureLod(PrefilteredEnvTexture, vec4(-VARYING8, 0.0).xyz, max(CB0[13].y, f70) * 5.0).xyz;
    bvec3 f72 = bvec3(!(CB0[13].w == 0.0));
    vec3 f73 = sqrt(clamp(mix(vec3(f72.x ? CB0[14].xyz.x : f71.x, f72.y ? CB0[14].xyz.y : f71.y, f72.z ? CB0[14].xyz.z : f71.z), f69.xyz, vec3(f70)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f73.x, f73.y, f73.z, f69.w);
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
