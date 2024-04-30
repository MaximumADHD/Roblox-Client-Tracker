#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[57];
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
    vec3 f4 = vec3(VARYING3.xyz);
    vec4 f5 = texture(SpecularMapTexture, f4);
    vec4 f6 = ((f1 * VARYING0.x) + (f3 * VARYING0.y)) + (f5 * VARYING0.z);
    vec3 f7 = normalize(VARYING6);
    vec4 f8 = texture(AlbedoMapTexture, f0);
    vec4 f9 = texture(AlbedoMapTexture, f2);
    vec4 f10 = texture(AlbedoMapTexture, f4);
    vec4 f11 = ((f8.yxzw * VARYING0.x) + (f9.yxzw * VARYING0.y)) + (f10.yxzw * VARYING0.z);
    vec2 f12 = f11.yz - vec2(0.5);
    float f13 = f11.x;
    float f14 = f13 - f12.y;
    vec3 f15 = vec4(vec3(f14, f13, f14) + (vec3(f12.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f16 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec3 f17 = normalize(VARYING8);
    float f18 = 0.08900000154972076416015625 + (f6.y * 0.9110000133514404296875);
    float f19 = CB0[31].w * f16;
    vec3 f20 = reflect(-f17, f7);
    vec3 f21 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f22 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f23 = VARYING4.yzx - (VARYING4.yzx * f22);
    vec4 f24 = texture(LightMapTexture, f23);
    vec4 f25 = texture(LightGridSkylightTexture, f23);
    vec4 f26 = vec4(clamp(f22, 0.0, 1.0));
    vec4 f27 = mix(f24, vec4(0.0), f26);
    vec4 f28 = mix(f25, vec4(1.0), f26);
    float f29 = f28.x;
    vec4 f30 = texture(ShadowMapTexture, f21.xy);
    float f31 = f21.z;
    vec3 f32 = -CB0[16].xyz;
    float f33 = dot(f7, f32) * ((1.0 - ((step(f30.x, f31) * clamp(CB0[29].z + (CB0[29].w * abs(f31 - 0.5)), 0.0, 1.0)) * f30.y)) * f28.y);
    vec3 f34 = normalize(f17 + f32);
    float f35 = clamp(f33, 0.0, 1.0);
    float f36 = f18 * f18;
    float f37 = max(0.001000000047497451305389404296875, dot(f7, f34));
    float f38 = dot(f32, f34);
    float f39 = 1.0 - f38;
    float f40 = f39 * f39;
    float f41 = (f40 * f40) * f39;
    vec3 f42 = vec3(f41) + (vec3(0.039999999105930328369140625) * (1.0 - f41));
    float f43 = f36 * f36;
    float f44 = (((f37 * f43) - f37) * f37) + 1.0;
    float f45 = f18 * 5.0;
    vec3 f46 = vec4(f20, f45).xyz;
    vec3 f47 = textureLod(PrefilteredEnvIndoorTexture, f46, f45).xyz;
    vec3 f48;
    if (CB0[32].w == 0.0)
    {
        f48 = f47;
    }
    else
    {
        f48 = mix(f47, textureLod(PrefilteredEnvBlendTargetTexture, f46, f45).xyz, vec3(CB0[32].w));
    }
    vec4 f49 = texture(PrecomputedBRDFTexture, vec2(f18, max(9.9999997473787516355514526367188e-05, dot(f7, f17))));
    float f50 = f49.x;
    float f51 = f49.y;
    vec3 f52 = ((vec3(0.039999999105930328369140625) * f50) + vec3(f51)) / vec3(f50 + f51);
    vec3 f53 = f7 * f7;
    bvec3 f54 = lessThan(f7, vec3(0.0));
    vec3 f55 = vec3(f54.x ? f53.x : vec3(0.0).x, f54.y ? f53.y : vec3(0.0).y, f54.z ? f53.z : vec3(0.0).z);
    vec3 f56 = f53 - f55;
    float f57 = f56.x;
    float f58 = f56.y;
    float f59 = f56.z;
    float f60 = f55.x;
    float f61 = f55.y;
    float f62 = f55.z;
    vec3 f63 = ((((((f27.xyz * (f27.w * 120.0)) + ((((vec3(1.0) - (f42 * f19)) * CB0[15].xyz) * f35) + (CB0[17].xyz * clamp(-f33, 0.0, 1.0)))) + (((vec3(1.0) - (f52 * f19)) * ((((((((CB0[40].xyz * f57) + (CB0[42].xyz * f58)) + (CB0[44].xyz * f59)) + (CB0[41].xyz * f60)) + (CB0[43].xyz * f61)) + (CB0[45].xyz * f62)) * CB0[30].w) + ((((((((CB0[34].xyz * f57) + (CB0[36].xyz * f58)) + (CB0[38].xyz * f59)) + (CB0[35].xyz * f60)) + (CB0[37].xyz * f61)) + (CB0[39].xyz * f62)) * CB0[30].w) * f29))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * f29)) * 1.0)) + vec3((f6.z * 2.0) * f16)) * (f15 * f15)) + (((((f42 * (((f43 + (f43 * f43)) / (((f44 * f44) * ((f38 * 3.0) + 0.5)) * ((f37 * 0.75) + 0.25))) * f35)) * CB0[15].xyz) * 1.0) * (f16 * VARYING0.w)) + ((mix(f48, textureLod(PrefilteredEnvTexture, f46, f45).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f20.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f29)) * f52) * f19));
    vec4 f64 = vec4(0.0);
    f64.x = f63.x;
    vec4 f65 = f64;
    f65.y = f63.y;
    vec4 f66 = f65;
    f66.z = f63.z;
    vec4 f67 = f66;
    f67.w = 1.0;
    float f68 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f69 = textureLod(PrefilteredEnvTexture, vec4(-VARYING8, 0.0).xyz, max(CB0[18].y, f68) * 5.0).xyz;
    bvec3 f70 = bvec3(!(CB0[18].w == 0.0));
    vec3 f71 = mix(vec3(f70.x ? CB0[19].xyz.x : f69.x, f70.y ? CB0[19].xyz.y : f69.y, f70.z ? CB0[19].xyz.z : f69.z), f67.xyz, vec3(f68));
    vec4 f72 = f67;
    f72.x = f71.x;
    vec4 f73 = f72;
    f73.y = f71.y;
    vec4 f74 = f73;
    f74.z = f71.z;
    vec3 f75 = sqrt(clamp(f74.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f76 = f74;
    f76.x = f75.x;
    vec4 f77 = f76;
    f77.y = f75.y;
    vec4 f78 = f77;
    f78.z = f75.z;
    _entryPointOutput = f78;
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
