#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[57];
uniform vec4 CB5[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D TranslationMapTexture;
uniform sampler2D AlbedoMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;

in vec4 VARYING0;
in vec3 VARYING1;
in vec4 VARYING2;
in vec3 VARYING3;
in vec3 VARYING4;
in vec4 VARYING5;
in vec2 VARYING6;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = (VARYING6 * vec2(0.03125)) + CB5[0].zw;
    vec4 f1 = texture(TranslationMapTexture, vec4(f0, 0.0, 6.5).xy, 6.5);
    vec3 f2;
    vec3 f3;
    vec3 f4;
    if (f1.w < 0.0)
    {
        f4 = vec3(0.0, 1.0, 0.0);
        f3 = VARYING5.xyz * VARYING5.xyz;
        f2 = VARYING3;
    }
    else
    {
        vec2 f5 = (f0 * f1.z) + f1.xy;
        f4 = texture(SpecularMapTexture, f5).xyz;
        f3 = texture(AlbedoMapTexture, f5).xyz;
        f2 = (texture(NormalMapTexture, f5).xyz * 2.0) - vec3(1.0);
    }
    float f6 = clamp(1.0 - (VARYING2.w * CB0[28].y), 0.0, 1.0);
    vec3 f7 = normalize(VARYING4);
    float f8 = 0.08900000154972076416015625 + (f4.y * 0.9110000133514404296875);
    vec3 f9 = mix(vec3(0.039999999105930328369140625), f3, vec3(f4.x));
    float f10 = CB0[31].w * f6;
    vec3 f11 = reflect(-f7, f2);
    vec3 f12 = VARYING2.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f13 = clamp(dot(step(CB0[24].xyz, abs(VARYING1 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f14 = VARYING1.yzx - (VARYING1.yzx * f13);
    vec4 f15 = texture(LightMapTexture, f14);
    vec4 f16 = texture(LightGridSkylightTexture, f14);
    vec4 f17 = vec4(clamp(f13, 0.0, 1.0));
    vec4 f18 = mix(f15, vec4(0.0), f17);
    vec4 f19 = mix(f16, vec4(1.0), f17);
    float f20 = f19.x;
    vec4 f21 = texture(ShadowMapTexture, f12.xy);
    float f22 = f12.z;
    vec3 f23 = -CB0[16].xyz;
    float f24 = dot(f2, f23) * ((1.0 - ((step(f21.x, f22) * clamp(CB0[29].z + (CB0[29].w * abs(f22 - 0.5)), 0.0, 1.0)) * f21.y)) * f19.y);
    vec3 f25 = normalize(f7 + f23);
    float f26 = clamp(f24, 0.0, 1.0);
    float f27 = f8 * f8;
    float f28 = max(0.001000000047497451305389404296875, dot(f2, f25));
    float f29 = dot(f23, f25);
    float f30 = 1.0 - f29;
    float f31 = f30 * f30;
    float f32 = (f31 * f31) * f30;
    vec3 f33 = vec3(f32) + (f9 * (1.0 - f32));
    float f34 = f27 * f27;
    float f35 = (((f28 * f34) - f28) * f28) + 1.0;
    float f36 = 1.0 - f4.x;
    float f37 = f10 * f36;
    vec3 f38 = vec3(f36);
    float f39 = f8 * 5.0;
    vec3 f40 = vec4(f11, f39).xyz;
    vec3 f41 = textureLod(PrefilteredEnvIndoorTexture, f40, f39).xyz;
    vec3 f42;
    if (CB0[32].w == 0.0)
    {
        f42 = f41;
    }
    else
    {
        f42 = mix(f41, textureLod(PrefilteredEnvBlendTargetTexture, f40, f39).xyz, vec3(CB0[32].w));
    }
    vec4 f43 = texture(PrecomputedBRDFTexture, vec2(f8, max(9.9999997473787516355514526367188e-05, dot(f2, f7))));
    float f44 = f43.x;
    float f45 = f43.y;
    vec3 f46 = ((f9 * f44) + vec3(f45)) / vec3(f44 + f45);
    vec3 f47 = f2 * f2;
    bvec3 f48 = lessThan(f2, vec3(0.0));
    vec3 f49 = vec3(f48.x ? f47.x : vec3(0.0).x, f48.y ? f47.y : vec3(0.0).y, f48.z ? f47.z : vec3(0.0).z);
    vec3 f50 = f47 - f49;
    float f51 = f50.x;
    float f52 = f50.y;
    float f53 = f50.z;
    float f54 = f49.x;
    float f55 = f49.y;
    float f56 = f49.z;
    vec3 f57 = ((((((f18.xyz * (f18.w * 120.0)) + ((((f38 - (f33 * f37)) * CB0[15].xyz) * f26) + (CB0[17].xyz * (f36 * clamp(-f24, 0.0, 1.0))))) + (((f38 - (f46 * f37)) * (((((((CB0[40].xyz * f51) + (CB0[42].xyz * f52)) + (CB0[44].xyz * f53)) + (CB0[41].xyz * f54)) + (CB0[43].xyz * f55)) + (CB0[45].xyz * f56)) + (((((((CB0[34].xyz * f51) + (CB0[36].xyz * f52)) + (CB0[38].xyz * f53)) + (CB0[35].xyz * f54)) + (CB0[37].xyz * f55)) + (CB0[39].xyz * f56)) * f20))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * f20)) * 1.0)) + vec3((f4.z * 2.0) * f6)) * f3) + (((((f33 * (((f34 + (f34 * f34)) / (((f35 * f35) * ((f29 * 3.0) + 0.5)) * ((f28 * 0.75) + 0.25))) * f26)) * CB0[15].xyz) * 1.0) * (f6 * VARYING0.w)) + ((mix(f42, textureLod(PrefilteredEnvTexture, f40, f39).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f11.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f20)) * f46) * f10));
    vec4 f58 = vec4(0.0);
    f58.x = f57.x;
    vec4 f59 = f58;
    f59.y = f57.y;
    vec4 f60 = f59;
    f60.z = f57.z;
    vec4 f61 = f60;
    f61.w = 1.0;
    float f62 = clamp(exp2((CB0[18].z * VARYING2.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f63 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4, 0.0).xyz, max(CB0[18].y, f62) * 5.0).xyz;
    bvec3 f64 = bvec3(!(CB0[18].w == 0.0));
    vec3 f65 = mix(vec3(f64.x ? CB0[19].xyz.x : f63.x, f64.y ? CB0[19].xyz.y : f63.y, f64.z ? CB0[19].xyz.z : f63.z), f61.xyz, vec3(f62));
    vec4 f66 = f61;
    f66.x = f65.x;
    vec4 f67 = f66;
    f67.y = f65.y;
    vec4 f68 = f67;
    f68.z = f65.z;
    _entryPointOutput = f68;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$TranslationMapTexture=s5
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s3
