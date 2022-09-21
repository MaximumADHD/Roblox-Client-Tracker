#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform vec4 CB4[63];
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
in vec3 VARYING9;
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
    vec3 f9 = (((mix(vec3(1.0), CB4[int(VARYING9.x + 0.5) * 1 + 0].xyz, vec3(f6.w)) * f6.xyz) * VARYING0.x) + ((mix(vec3(1.0), CB4[int(VARYING9.y + 0.5) * 1 + 0].xyz, vec3(f7.w)) * f7.xyz) * VARYING0.y)) + ((mix(vec3(1.0), CB4[int(VARYING9.z + 0.5) * 1 + 0].xyz, vec3(f8.w)) * f8.xyz) * VARYING0.z);
    vec3 f10 = f9 * f9;
    float f11 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec3 f12 = normalize(VARYING6);
    vec3 f13 = normalize(VARYING8);
    float f14 = 0.08900000154972076416015625 + (f5.y * 0.9110000133514404296875);
    float f15 = f5.x;
    vec3 f16 = mix(vec3(0.039999999105930328369140625), f10, vec3(f15));
    float f17 = CB0[31].w * f11;
    vec3 f18 = reflect(-f13, f12);
    vec3 f19 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f20 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f21 = VARYING4.yzx - (VARYING4.yzx * f20);
    vec4 f22 = texture(LightMapTexture, f21);
    vec4 f23 = texture(LightGridSkylightTexture, f21);
    vec4 f24 = vec4(clamp(f20, 0.0, 1.0));
    vec4 f25 = mix(f22, vec4(0.0), f24);
    vec4 f26 = mix(f23, vec4(1.0), f24);
    float f27 = f26.x;
    vec4 f28 = texture(ShadowMapTexture, f19.xy);
    float f29 = f19.z;
    vec3 f30 = -CB0[16].xyz;
    float f31 = (dot(f12, f30) * CB0[14].w) * ((1.0 - ((step(f28.x, f29) * clamp(CB0[29].z + (CB0[29].w * abs(f29 - 0.5)), 0.0, 1.0)) * f28.y)) * f26.y);
    vec3 f32 = normalize(f13 - CB0[16].xyz);
    float f33 = clamp(f31, 0.0, 1.0);
    float f34 = f14 * f14;
    float f35 = max(0.001000000047497451305389404296875, dot(f12, f32));
    float f36 = dot(f30, f32);
    float f37 = 1.0 - f36;
    float f38 = f37 * f37;
    float f39 = (f38 * f38) * f37;
    vec3 f40 = vec3(f39) + (f16 * (1.0 - f39));
    float f41 = f34 * f34;
    float f42 = (((f35 * f41) - f35) * f35) + 1.0;
    float f43 = 1.0 - f15;
    float f44 = f17 * f43;
    vec3 f45 = vec3(f43);
    float f46 = f14 * 5.0;
    vec3 f47 = vec4(f18, f46).xyz;
    vec3 f48 = textureLod(PrefilteredEnvIndoorTexture, f47, f46).xyz;
    vec3 f49;
    if (CB0[32].w == 0.0)
    {
        f49 = f48;
    }
    else
    {
        f49 = mix(f48, textureLod(PrefilteredEnvBlendTargetTexture, f47, f46).xyz, vec3(CB0[32].w));
    }
    vec4 f50 = texture(PrecomputedBRDFTexture, vec2(f14, max(9.9999997473787516355514526367188e-05, dot(f12, f13))));
    float f51 = f50.x;
    float f52 = f50.y;
    vec3 f53 = ((f16 * f51) + vec3(f52)) / vec3(f51 + f52);
    vec3 f54 = f12 * f12;
    bvec3 f55 = lessThan(f12, vec3(0.0));
    vec3 f56 = vec3(f55.x ? f54.x : vec3(0.0).x, f55.y ? f54.y : vec3(0.0).y, f55.z ? f54.z : vec3(0.0).z);
    vec3 f57 = f54 - f56;
    float f58 = f57.x;
    float f59 = f57.y;
    float f60 = f57.z;
    float f61 = f56.x;
    float f62 = f56.y;
    float f63 = f56.z;
    vec3 f64 = (((((((f25.xyz * (f25.w * 120.0)) * 1.0) + ((((f45 - (f40 * f44)) * CB0[15].xyz) * f33) + (CB0[17].xyz * (f43 * clamp(-f31, 0.0, 1.0))))) + ((f45 - (f53 * f44)) * (((((((CB0[40].xyz * f58) + (CB0[42].xyz * f59)) + (CB0[44].xyz * f60)) + (CB0[41].xyz * f61)) + (CB0[43].xyz * f62)) + (CB0[45].xyz * f63)) + (((((((CB0[34].xyz * f58) + (CB0[36].xyz * f59)) + (CB0[38].xyz * f60)) + (CB0[35].xyz * f61)) + (CB0[37].xyz * f62)) + (CB0[39].xyz * f63)) * f27)))) + (CB0[32].xyz + ((CB0[33].xyz * (2.0 - CB0[14].w)) * f27))) + vec3((f5.z * 2.0) * f11)) * f10) + (((((f40 * (((f41 + (f41 * f41)) / (((f42 * f42) * ((f36 * 3.0) + 0.5)) * ((f35 * 0.75) + 0.25))) * f33)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w)) * (f11 * VARYING0.w)) + ((mix(f49, textureLod(PrefilteredEnvTexture, f47, f46).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f18.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f27)) * f53) * f17));
    vec4 f65 = vec4(0.0);
    f65.x = f64.x;
    vec4 f66 = f65;
    f66.y = f64.y;
    vec4 f67 = f66;
    f67.z = f64.z;
    vec4 f68 = f67;
    f68.w = 1.0;
    float f69 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f70 = textureLod(PrefilteredEnvTexture, vec4(-VARYING8, 0.0).xyz, max(CB0[18].y, f69) * 5.0).xyz;
    bvec3 f71 = bvec3(!(CB0[18].w == 0.0));
    vec3 f72 = mix(vec3(f71.x ? CB0[19].xyz.x : f70.x, f71.y ? CB0[19].xyz.y : f70.y, f71.z ? CB0[19].xyz.z : f70.z), f68.xyz, vec3(f69));
    vec4 f73 = f68;
    f73.x = f72.x;
    vec4 f74 = f73;
    f74.y = f72.y;
    vec4 f75 = f74;
    f75.z = f72.z;
    vec3 f76 = sqrt(clamp(f75.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f77 = f75;
    f77.x = f76.x;
    vec4 f78 = f77;
    f78.y = f76.y;
    vec4 f79 = f78;
    f79.z = f76.z;
    _entryPointOutput = f79;
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
