#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[61];
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
    vec4 f4 = vec4(texture(DiffuseMapTexture, VARYING0).xyz, 1.0);
    float f5 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f6 = VARYING6.xyz * f5;
    vec3 f7 = VARYING5.xyz * f5;
    vec3 f8 = normalize(((f6 * f1.x) + ((cross(f7, f6) * VARYING6.w) * f1.y)) + (f7 * f1.z));
    vec3 f9 = f4.xyz;
    vec3 f10 = f9 * f9;
    vec4 f11 = f4;
    f11.x = f10.x;
    vec4 f12 = f11;
    f12.y = f10.y;
    vec4 f13 = f12;
    f13.z = f10.z;
    float f14 = length(VARYING4.xyz);
    vec3 f15 = VARYING4.xyz / vec3(f14);
    float f16 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f17 = 0.08900000154972076416015625 + (f3.x * 0.9110000133514404296875);
    vec3 f18 = -f15;
    vec3 f19 = reflect(f18, f8);
    float f20 = f2.x * f16;
    vec3 f21 = mix(vec3(0.039999999105930328369140625), f13.xyz, vec3(f20));
    vec3 f22 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f23 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f24 = VARYING3.yzx - (VARYING3.yzx * f23);
    vec4 f25 = texture(LightMapTexture, f24);
    vec4 f26 = texture(LightGridSkylightTexture, f24);
    vec4 f27 = vec4(clamp(f23, 0.0, 1.0));
    vec4 f28 = mix(f25, vec4(0.0), f27);
    vec4 f29 = mix(f26, vec4(1.0), f27);
    float f30 = f29.x;
    vec4 f31 = texture(ShadowMapTexture, f22.xy);
    float f32 = f22.z;
    float f33 = f17 * 5.0;
    vec3 f34 = mat3(vec3(CB0[58].xyz), vec3(CB0[59].xyz), vec3(CB0[60].xyz)) * f19;
    bvec3 f35 = bvec3(!(CB0[58].x == 2.0));
    vec3 f36 = vec4(f19, f33).xyz;
    vec3 f37 = textureLod(PrefilteredEnvIndoorTexture, f36, f33).xyz;
    vec3 f38;
    if (CB0[32].w == 0.0)
    {
        f38 = f37;
    }
    else
    {
        f38 = mix(f37, textureLod(PrefilteredEnvBlendTargetTexture, f36, f33).xyz, vec3(CB0[32].w));
    }
    vec4 f39 = texture(PrecomputedBRDFTexture, vec2(f17, max(9.9999997473787516355514526367188e-05, dot(f8, f15))));
    float f40 = f39.x;
    float f41 = f39.y;
    vec3 f42 = ((f21 * f40) + vec3(f41)) / vec3(f40 + f41);
    float f43 = 1.0 - f20;
    float f44 = f16 * f43;
    vec3 f45 = vec3(f43);
    vec3 f46 = f8 * f8;
    bvec3 f47 = lessThan(f8, vec3(0.0));
    vec3 f48 = vec3(f47.x ? f46.x : vec3(0.0).x, f47.y ? f46.y : vec3(0.0).y, f47.z ? f46.z : vec3(0.0).z);
    vec3 f49 = f46 - f48;
    float f50 = f49.x;
    float f51 = f49.y;
    float f52 = f49.z;
    float f53 = f48.x;
    float f54 = f48.y;
    float f55 = f48.z;
    vec3 f56 = -CB0[16].xyz;
    float f57 = dot(f8, f56) * ((1.0 - ((step(f31.x, f32) * clamp(CB0[29].z + (CB0[29].w * abs(f32 - 0.5)), 0.0, 1.0)) * f31.y)) * f29.y);
    vec3 f58 = normalize(f15 + f56);
    float f59 = clamp(f57, 0.0, 1.0);
    float f60 = f17 * f17;
    float f61 = max(0.001000000047497451305389404296875, dot(f8, f58));
    float f62 = dot(f56, f58);
    float f63 = 1.0 - f62;
    float f64 = f63 * f63;
    float f65 = (f64 * f64) * f63;
    vec3 f66 = vec3(f65) + (f21 * (1.0 - f65));
    float f67 = f60 * f60;
    float f68 = (((f61 * f67) - f61) * f61) + 1.0;
    vec3 f69 = (((((((f45 - (f42 * f44)) * (((((((CB0[40].xyz * f50) + (CB0[42].xyz * f51)) + (CB0[44].xyz * f52)) + (CB0[41].xyz * f53)) + (CB0[43].xyz * f54)) + (CB0[45].xyz * f55)) + (((((((CB0[34].xyz * f50) + (CB0[36].xyz * f51)) + (CB0[38].xyz * f52)) + (CB0[35].xyz * f53)) + (CB0[37].xyz * f54)) + (CB0[39].xyz * f55)) * f30))) * 1.0) + ((CB0[32].xyz + (CB0[33].xyz * f30)) * 1.0)) + ((((f45 - (f66 * f44)) * CB0[15].xyz) * f59) + (CB0[17].xyz * (f43 * clamp(-f57, 0.0, 1.0))))) + (f28.xyz * (f28.w * 120.0))) * f13.xyz) + (((mix(f38, textureLod(PrefilteredEnvTexture, vec4(vec3(f35.x ? f34.x : f19.x, f35.y ? f34.y : f19.y, f35.z ? f34.z : f19.z), f33).xyz, f33).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f19.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f30)) * f42) * f16) + (((f66 * (((f67 + (f67 * f67)) / (((f68 * f68) * ((f62 * 3.0) + 0.5)) * ((f61 * 0.75) + 0.25))) * f59)) * CB0[15].xyz) * 1.0));
    vec4 f70 = vec4(0.0);
    f70.x = f69.x;
    vec4 f71 = f70;
    f71.y = f69.y;
    vec4 f72 = f71;
    f72.z = f69.z;
    vec4 f73 = f72;
    f73.w = 1.0;
    float f74 = clamp(exp2((CB0[18].z * f14) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f75 = textureLod(PrefilteredEnvTexture, vec4(f18, 0.0).xyz, max(CB0[18].y, f74) * 5.0).xyz;
    bvec3 f76 = bvec3(!(CB0[18].w == 0.0));
    vec3 f77 = mix(vec3(f76.x ? CB0[19].xyz.x : f75.x, f76.y ? CB0[19].xyz.y : f75.y, f76.z ? CB0[19].xyz.z : f75.z), f73.xyz, vec3(f74));
    vec4 f78 = f73;
    f78.x = f77.x;
    vec4 f79 = f78;
    f79.y = f77.y;
    vec4 f80 = f79;
    f80.z = f77.z;
    vec3 f81 = sqrt(clamp(f80.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f82 = f80;
    f82.x = f81.x;
    vec4 f83 = f82;
    f83.y = f81.y;
    vec4 f84 = f83;
    f84.z = f81.z;
    vec4 f85 = f84;
    f85.w = 1.0;
    _entryPointOutput = f85;
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
