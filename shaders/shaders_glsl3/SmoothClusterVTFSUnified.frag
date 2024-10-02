#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
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
in vec4 VARYING1;
in vec3 VARYING2;
in vec3 VARYING3;
in vec4 VARYING4;
in vec2 VARYING5;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = (VARYING5 * vec2(0.03125)) + CB5[0].zw;
    bool f1 = CB5[0].z < 0.0;
    vec4 f2;
    if (!f1)
    {
        f2 = texture(TranslationMapTexture, vec4(f0, 0.0, 6.5).xy, 6.5);
    }
    else
    {
        f2 = vec4(0.0);
    }
    vec3 f3;
    vec3 f4;
    vec3 f5;
    if (((f2.w < 0.0) || f1) || (VARYING0.w > 0.0))
    {
        f5 = vec3(0.0, 1.0, 0.0);
        f4 = VARYING4.xyz * VARYING4.xyz;
        f3 = VARYING2;
    }
    else
    {
        vec2 f6 = (f0 * f2.z) + f2.xy;
        f5 = texture(SpecularMapTexture, f6).xyz;
        f4 = texture(AlbedoMapTexture, f6).xyz;
        f3 = (texture(NormalMapTexture, f6).xyz * 2.0) - vec3(1.0);
    }
    float f7 = clamp(1.0 - (VARYING1.w * CB0[28].y), 0.0, 1.0);
    vec3 f8 = normalize(VARYING3);
    float f9 = 0.08900000154972076416015625 + (f5.y * 0.9110000133514404296875);
    vec3 f10 = mix(vec3(0.039999999105930328369140625), f4, vec3(f5.x));
    float f11 = CB0[31].w * f7;
    vec3 f12 = VARYING1.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f13 = clamp(dot(step(CB0[24].xyz, abs(VARYING0.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f14 = VARYING0.yzx - (VARYING0.yzx * f13);
    vec4 f15 = texture(LightMapTexture, f14);
    vec4 f16 = texture(LightGridSkylightTexture, f14);
    vec4 f17 = vec4(clamp(f13, 0.0, 1.0));
    vec4 f18 = mix(f15, vec4(0.0), f17);
    vec4 f19 = mix(f16, vec4(1.0), f17);
    float f20 = f19.x;
    vec4 f21 = texture(ShadowMapTexture, f12.xy);
    float f22 = f12.z;
    vec3 f23 = reflect(-f8, f3);
    float f24 = f9 * 5.0;
    vec3 f25 = vec4(f23, f24).xyz;
    vec3 f26 = textureLod(PrefilteredEnvIndoorTexture, f25, f24).xyz;
    vec3 f27;
    if (CB0[32].w == 0.0)
    {
        f27 = f26;
    }
    else
    {
        f27 = mix(f26, textureLod(PrefilteredEnvBlendTargetTexture, f25, f24).xyz, vec3(CB0[32].w));
    }
    vec4 f28 = texture(PrecomputedBRDFTexture, vec2(f9, max(9.9999997473787516355514526367188e-05, dot(f3, f8))));
    float f29 = f28.x;
    float f30 = f28.y;
    vec3 f31 = ((f10 * f29) + vec3(f30)) / vec3(f29 + f30);
    float f32 = 1.0 - f5.x;
    float f33 = f11 * f32;
    vec3 f34 = vec3(f32);
    vec3 f35 = f3 * f3;
    bvec3 f36 = lessThan(f3, vec3(0.0));
    vec3 f37 = vec3(f36.x ? f35.x : vec3(0.0).x, f36.y ? f35.y : vec3(0.0).y, f36.z ? f35.z : vec3(0.0).z);
    vec3 f38 = f35 - f37;
    float f39 = f38.x;
    float f40 = f38.y;
    float f41 = f38.z;
    float f42 = f37.x;
    float f43 = f37.y;
    float f44 = f37.z;
    vec3 f45 = -CB0[16].xyz;
    float f46 = dot(f3, f45) * ((1.0 - ((step(f21.x, f22) * clamp(CB0[29].z + (CB0[29].w * abs(f22 - 0.5)), 0.0, 1.0)) * f21.y)) * f19.y);
    vec3 f47 = normalize(f8 + f45);
    float f48 = clamp(f46, 0.0, 1.0);
    float f49 = f9 * f9;
    float f50 = max(0.001000000047497451305389404296875, dot(f3, f47));
    float f51 = dot(f45, f47);
    float f52 = 1.0 - f51;
    float f53 = f52 * f52;
    float f54 = (f53 * f53) * f52;
    vec3 f55 = vec3(f54) + (f10 * (1.0 - f54));
    float f56 = f49 * f49;
    float f57 = (((f50 * f56) - f50) * f50) + 1.0;
    vec3 f58 = (((((vec3((f5.z * 2.0) * f7) + (((f34 - (f31 * f33)) * (((((((CB0[40].xyz * f39) + (CB0[42].xyz * f40)) + (CB0[44].xyz * f41)) + (CB0[41].xyz * f42)) + (CB0[43].xyz * f43)) + (CB0[45].xyz * f44)) + (((((((CB0[34].xyz * f39) + (CB0[36].xyz * f40)) + (CB0[38].xyz * f41)) + (CB0[35].xyz * f42)) + (CB0[37].xyz * f43)) + (CB0[39].xyz * f44)) * f20))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * f20)) * 1.0)) + ((((f34 - (f55 * f33)) * CB0[15].xyz) * f48) + (CB0[17].xyz * (f32 * clamp(-f46, 0.0, 1.0))))) + (f18.xyz * (f18.w * 120.0))) * f4) + (((mix(f27, textureLod(PrefilteredEnvTexture, f25, f24).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f23.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f20)) * f31) * f11) + (((f55 * (((f56 + (f56 * f56)) / (((f57 * f57) * ((f51 * 3.0) + 0.5)) * ((f50 * 0.75) + 0.25))) * f48)) * CB0[15].xyz) * 1.0));
    vec4 f59 = vec4(0.0);
    f59.x = f58.x;
    vec4 f60 = f59;
    f60.y = f58.y;
    vec4 f61 = f60;
    f61.z = f58.z;
    vec4 f62 = f61;
    f62.w = 1.0;
    float f63 = clamp(exp2((CB0[18].z * VARYING1.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f64 = textureLod(PrefilteredEnvTexture, vec4(-VARYING3, 0.0).xyz, max(CB0[18].y, f63) * 5.0).xyz;
    bvec3 f65 = bvec3(!(CB0[18].w == 0.0));
    vec3 f66 = mix(vec3(f65.x ? CB0[19].xyz.x : f64.x, f65.y ? CB0[19].xyz.y : f64.y, f65.z ? CB0[19].xyz.z : f64.z), f62.xyz, vec3(f63));
    vec4 f67 = f62;
    f67.x = f66.x;
    vec4 f68 = f67;
    f68.y = f66.y;
    vec4 f69 = f68;
    f69.z = f66.z;
    vec3 f70 = sqrt(clamp(f69.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f71 = f69;
    f71.x = f70.x;
    vec4 f72 = f71;
    f72.y = f70.y;
    vec4 f73 = f72;
    f73.z = f70.z;
    _entryPointOutput = f73;
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
