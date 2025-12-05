#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SurfaceAppearanceConsts.h>
uniform vec4 CB0[61];
uniform vec4 CB3[2];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;
uniform sampler2D EditableImageRoughnessMapTexture;
uniform sampler2D EditableImageEmissiveMaskTexture;

in vec2 VARYING0;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(NormalMapTexture, VARYING0);
    vec3 f1 = mix(vec3(0.0, 0.0, 1.0), (f0.xyz * 2.0) - vec3(1.0), vec3(clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y));
    vec4 f2 = texture(SpecularMapTexture, VARYING0);
    vec4 f3 = texture(EditableImageRoughnessMapTexture, VARYING0);
    vec4 f4 = texture(EditableImageEmissiveMaskTexture, VARYING0);
    vec4 f5 = vec4(texture(DiffuseMapTexture, VARYING0).xyz, 1.0);
    float f6 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f7 = VARYING6.xyz * f6;
    vec3 f8 = VARYING5.xyz * f6;
    vec3 f9 = normalize(((f7 * f1.x) + ((cross(f8, f7) * VARYING6.w) * f1.y)) + (f8 * f1.z));
    vec3 f10 = f5.xyz;
    vec3 f11 = f10 * f10;
    vec4 f12 = f5;
    f12.x = f11.x;
    vec4 f13 = f12;
    f13.y = f11.y;
    vec4 f14 = f13;
    f14.z = f11.z;
    float f15 = length(VARYING4.xyz);
    vec3 f16 = VARYING4.xyz / vec3(f15);
    float f17 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f18 = 0.08900000154972076416015625 + (f3.x * 0.9110000133514404296875);
    vec3 f19 = -f16;
    vec3 f20 = reflect(f19, f9);
    float f21 = f2.x * f17;
    vec3 f22 = mix(vec3(0.039999999105930328369140625), f14.xyz, vec3(f21));
    vec3 f23 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f24 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f25 = VARYING3.yzx - (VARYING3.yzx * f24);
    vec4 f26 = texture(LightMapTexture, f25);
    vec4 f27 = texture(LightGridSkylightTexture, f25);
    vec4 f28 = vec4(clamp(f24, 0.0, 1.0));
    vec4 f29 = mix(f26, vec4(0.0), f28);
    vec4 f30 = mix(f27, vec4(1.0), f28);
    float f31 = f30.x;
    vec4 f32 = texture(ShadowMapTexture, f23.xy);
    float f33 = f23.z;
    float f34 = f18 * 5.0;
    vec3 f35 = mat3(vec3(CB0[58].xyz), vec3(CB0[59].xyz), vec3(CB0[60].xyz)) * f20;
    bvec3 f36 = bvec3(!(CB0[58].x == 2.0));
    vec3 f37 = vec4(f20, f34).xyz;
    vec3 f38 = textureLod(PrefilteredEnvIndoorTexture, f37, f34).xyz;
    vec3 f39;
    if (CB0[32].w == 0.0)
    {
        f39 = f38;
    }
    else
    {
        f39 = mix(f38, textureLod(PrefilteredEnvBlendTargetTexture, f37, f34).xyz, vec3(CB0[32].w));
    }
    vec4 f40 = texture(PrecomputedBRDFTexture, vec2(f18, max(9.9999997473787516355514526367188e-05, dot(f9, f16))));
    float f41 = f40.x;
    float f42 = f40.y;
    vec3 f43 = ((f22 * f41) + vec3(f42)) / vec3(f41 + f42);
    float f44 = 1.0 - f21;
    float f45 = f17 * f44;
    vec3 f46 = vec3(f44);
    vec3 f47 = f9 * f9;
    bvec3 f48 = lessThan(f9, vec3(0.0));
    vec3 f49 = vec3(f48.x ? f47.x : vec3(0.0).x, f48.y ? f47.y : vec3(0.0).y, f48.z ? f47.z : vec3(0.0).z);
    vec3 f50 = f47 - f49;
    float f51 = f50.x;
    float f52 = f50.y;
    float f53 = f50.z;
    float f54 = f49.x;
    float f55 = f49.y;
    float f56 = f49.z;
    vec3 f57 = -CB0[16].xyz;
    float f58 = dot(f9, f57) * ((1.0 - ((step(f32.x, f33) * clamp(CB0[29].z + (CB0[29].w * abs(f33 - 0.5)), 0.0, 1.0)) * f32.y)) * f30.y);
    vec3 f59 = normalize(f16 + f57);
    float f60 = clamp(f58, 0.0, 1.0);
    float f61 = f18 * f18;
    float f62 = max(0.001000000047497451305389404296875, dot(f9, f59));
    float f63 = dot(f57, f59);
    float f64 = 1.0 - f63;
    float f65 = f64 * f64;
    float f66 = (f65 * f65) * f64;
    vec3 f67 = vec3(f66) + (f22 * (1.0 - f66));
    float f68 = f61 * f61;
    float f69 = (((f62 * f68) - f62) * f62) + 1.0;
    vec3 f70 = ((((((CB3[1].xyz * f4.x) + (((f46 - (f43 * f45)) * (((((((CB0[40].xyz * f51) + (CB0[42].xyz * f52)) + (CB0[44].xyz * f53)) + (CB0[41].xyz * f54)) + (CB0[43].xyz * f55)) + (CB0[45].xyz * f56)) + (((((((CB0[34].xyz * f51) + (CB0[36].xyz * f52)) + (CB0[38].xyz * f53)) + (CB0[35].xyz * f54)) + (CB0[37].xyz * f55)) + (CB0[39].xyz * f56)) * f31))) * 1.0)) + ((CB0[32].xyz + (CB0[33].xyz * f31)) * 1.0)) + ((((f46 - (f67 * f45)) * CB0[15].xyz) * f60) + (CB0[17].xyz * (f44 * clamp(-f58, 0.0, 1.0))))) + (f29.xyz * (f29.w * 120.0))) * f14.xyz) + (((mix(f39, textureLod(PrefilteredEnvTexture, vec4(vec3(f36.x ? f35.x : f20.x, f36.y ? f35.y : f20.y, f36.z ? f35.z : f20.z), f34).xyz, f34).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f20.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f31)) * f43) * f17) + (((f67 * (((f68 + (f68 * f68)) / (((f69 * f69) * ((f63 * 3.0) + 0.5)) * ((f62 * 0.75) + 0.25))) * f60)) * CB0[15].xyz) * 1.0));
    vec4 f71 = vec4(0.0);
    f71.x = f70.x;
    vec4 f72 = f71;
    f72.y = f70.y;
    vec4 f73 = f72;
    f73.z = f70.z;
    vec4 f74 = f73;
    f74.w = 1.0;
    float f75 = clamp(exp2((CB0[18].z * f15) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f76 = textureLod(PrefilteredEnvTexture, vec4(f19, 0.0).xyz, max(CB0[18].y, f75) * 5.0).xyz;
    bvec3 f77 = bvec3(!(CB0[18].w == 0.0));
    vec3 f78 = mix(vec3(f77.x ? CB0[19].xyz.x : f76.x, f77.y ? CB0[19].xyz.y : f76.y, f77.z ? CB0[19].xyz.z : f76.z), f74.xyz, vec3(f75));
    vec4 f79 = f74;
    f79.x = f78.x;
    vec4 f80 = f79;
    f80.y = f78.y;
    vec4 f81 = f80;
    f81.z = f78.z;
    vec3 f82 = sqrt(clamp(f81.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f83 = f81;
    f83.x = f82.x;
    vec4 f84 = f83;
    f84.y = f82.y;
    vec4 f85 = f84;
    f85.z = f82.z;
    vec4 f86 = f85;
    f86.w = 1.0;
    _entryPointOutput = f86;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5
//$$EditableImageRoughnessMapTexture=s9
//$$EditableImageEmissiveMaskTexture=s10
