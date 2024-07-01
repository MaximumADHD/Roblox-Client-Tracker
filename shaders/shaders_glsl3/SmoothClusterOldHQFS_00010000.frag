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
    vec3 f4 = vec3(VARYING3.xyz);
    vec4 f5 = texture(SpecularMapTexture, f4);
    vec4 f6 = ((f1 * VARYING0.x) + (f3 * VARYING0.y)) + (f5 * VARYING0.z);
    vec3 f7 = normalize(VARYING6);
    vec4 f8 = ((texture(AlbedoMapTexture, f0).yxzw * VARYING0.x) + (texture(AlbedoMapTexture, f2).yxzw * VARYING0.y)) + (texture(AlbedoMapTexture, f4).yxzw * VARYING0.z);
    vec2 f9 = f8.yz - vec2(0.5);
    float f10 = f9.x;
    float f11 = f9.y;
    float f12 = VARYING9.x * f8.x;
    float f13 = (VARYING9.y * f10) - (VARYING9.z * f11);
    float f14 = (VARYING9.z * f10) + (VARYING9.y * f11);
    float f15 = f12 - f14;
    float f16 = f8.w;
    vec3 f17 = vec4(vec3(f15, f12, f15) + (vec3(f13, f14, f13) * vec3(1.0, 1.0, -1.0)), f16).xyz;
    vec3 f18 = mix(f17, f17 * VARYING9.xyz, vec3(VARYING9.w * f16));
    vec4 f19 = vec4(0.0);
    f19.x = f18.x;
    vec4 f20 = f19;
    f20.y = f18.y;
    vec4 f21 = f20;
    f21.z = f18.z;
    float f22 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec3 f23 = normalize(VARYING8);
    float f24 = 0.08900000154972076416015625 + (f6.y * 0.9110000133514404296875);
    float f25 = CB0[31].w * f22;
    vec3 f26 = reflect(-f23, f7);
    vec3 f27 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f28 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f29 = VARYING4.yzx - (VARYING4.yzx * f28);
    vec4 f30 = texture(LightMapTexture, f29);
    vec4 f31 = texture(LightGridSkylightTexture, f29);
    vec4 f32 = vec4(clamp(f28, 0.0, 1.0));
    vec4 f33 = mix(f30, vec4(0.0), f32);
    vec4 f34 = mix(f31, vec4(1.0), f32);
    float f35 = f34.x;
    vec4 f36 = texture(ShadowMapTexture, f27.xy);
    float f37 = f27.z;
    vec3 f38 = -CB0[16].xyz;
    float f39 = dot(f7, f38) * ((1.0 - ((step(f36.x, f37) * clamp(CB0[29].z + (CB0[29].w * abs(f37 - 0.5)), 0.0, 1.0)) * f36.y)) * f34.y);
    vec3 f40 = normalize(f23 + f38);
    float f41 = clamp(f39, 0.0, 1.0);
    float f42 = f24 * f24;
    float f43 = max(0.001000000047497451305389404296875, dot(f7, f40));
    float f44 = dot(f38, f40);
    float f45 = 1.0 - f44;
    float f46 = f45 * f45;
    float f47 = (f46 * f46) * f45;
    vec3 f48 = vec3(f47) + (vec3(0.039999999105930328369140625) * (1.0 - f47));
    float f49 = f42 * f42;
    float f50 = (((f43 * f49) - f43) * f43) + 1.0;
    float f51 = f24 * 5.0;
    vec3 f52 = vec4(f26, f51).xyz;
    vec3 f53 = textureLod(PrefilteredEnvIndoorTexture, f52, f51).xyz;
    vec3 f54;
    if (CB0[32].w == 0.0)
    {
        f54 = f53;
    }
    else
    {
        f54 = mix(f53, textureLod(PrefilteredEnvBlendTargetTexture, f52, f51).xyz, vec3(CB0[32].w));
    }
    vec4 f55 = texture(PrecomputedBRDFTexture, vec2(f24, max(9.9999997473787516355514526367188e-05, dot(f7, f23))));
    float f56 = f55.x;
    float f57 = f55.y;
    vec3 f58 = ((vec3(0.039999999105930328369140625) * f56) + vec3(f57)) / vec3(f56 + f57);
    vec3 f59 = f7 * f7;
    bvec3 f60 = lessThan(f7, vec3(0.0));
    vec3 f61 = vec3(f60.x ? f59.x : vec3(0.0).x, f60.y ? f59.y : vec3(0.0).y, f60.z ? f59.z : vec3(0.0).z);
    vec3 f62 = f59 - f61;
    float f63 = f62.x;
    float f64 = f62.y;
    float f65 = f62.z;
    float f66 = f61.x;
    float f67 = f61.y;
    float f68 = f61.z;
    vec3 f69 = ((((((f33.xyz * (f33.w * 120.0)) + ((((vec3(1.0) - (f48 * f25)) * CB0[15].xyz) * f41) + (CB0[17].xyz * clamp(-f39, 0.0, 1.0)))) + (((vec3(1.0) - (f58 * f25)) * (((((((CB0[40].xyz * f63) + (CB0[42].xyz * f64)) + (CB0[44].xyz * f65)) + (CB0[41].xyz * f66)) + (CB0[43].xyz * f67)) + (CB0[45].xyz * f68)) + (((((((CB0[34].xyz * f63) + (CB0[36].xyz * f64)) + (CB0[38].xyz * f65)) + (CB0[35].xyz * f66)) + (CB0[37].xyz * f67)) + (CB0[39].xyz * f68)) * f35))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * f35)) * 1.0)) + vec3((f6.z * 2.0) * f22)) * (f21.xyz * f21.xyz)) + (((((f48 * (((f49 + (f49 * f49)) / (((f50 * f50) * ((f44 * 3.0) + 0.5)) * ((f43 * 0.75) + 0.25))) * f41)) * CB0[15].xyz) * 1.0) * (f22 * VARYING0.w)) + ((mix(f54, textureLod(PrefilteredEnvTexture, f52, f51).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f26.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f35)) * f58) * f25));
    vec4 f70 = vec4(0.0);
    f70.x = f69.x;
    vec4 f71 = f70;
    f71.y = f69.y;
    vec4 f72 = f71;
    f72.z = f69.z;
    vec4 f73 = f72;
    f73.w = 1.0;
    float f74 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f75 = textureLod(PrefilteredEnvTexture, vec4(-VARYING8, 0.0).xyz, max(CB0[18].y, f74) * 5.0).xyz;
    bvec3 f76 = bvec3(!(CB0[18].w == 0.0));
    vec3 f77 = mix(vec3(f76.x ? CB0[19].xyz.x : f75.x, f76.y ? CB0[19].xyz.y : f75.y, f76.z ? CB0[19].xyz.z : f75.z), f73.xyz, vec3(f74));
    vec4 f78 = f73;
    f78.x = f77.x;
    vec4 f79 = f78;
    f79.y = f77.y;
    vec4 f80 = f79;
    f80.z = f77.z;
    vec3 f81 = sqrt(clamp(f80.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f82 = f80;
    f82.x = f81.x;
    vec4 f83 = f82;
    f83.y = f81.y;
    vec4 f84 = f83;
    f84.z = f81.z;
    _entryPointOutput = f84;
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
