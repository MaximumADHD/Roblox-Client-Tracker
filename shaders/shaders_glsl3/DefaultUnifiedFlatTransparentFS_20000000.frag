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

in vec2 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING0);
    vec4 f1 = f0 * VARYING1;
    vec3 f2 = normalize(VARYING4.xyz) * (gl_FrontFacing ? 1.0 : (-1.0));
    vec3 f3 = f1.xyz;
    vec3 f4 = f3 * f3;
    vec4 f5 = f1;
    f5.x = f4.x;
    vec4 f6 = f5;
    f6.y = f4.y;
    vec4 f7 = f6;
    f7.z = f4.z;
    float f8 = length(VARYING3.xyz);
    vec3 f9 = VARYING3.xyz / vec3(f8);
    float f10 = CB0[31].w * clamp(1.0 - (VARYING3.w * CB0[28].y), 0.0, 1.0);
    float f11 = 0.08900000154972076416015625 + (VARYING4.w * 0.9110000133514404296875);
    vec3 f12 = -f9;
    vec3 f13 = reflect(f12, f2);
    float f14 = VARYING5.w * f10;
    vec3 f15 = mix(vec3(0.039999999105930328369140625), f7.xyz, vec3(f14));
    vec3 f16 = VARYING5.xyz - (CB0[16].xyz * VARYING2.w);
    float f17 = clamp(dot(step(CB0[24].xyz, abs(VARYING2.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f18 = VARYING2.yzx - (VARYING2.yzx * f17);
    vec4 f19 = texture(LightMapTexture, f18);
    vec4 f20 = texture(LightGridSkylightTexture, f18);
    vec4 f21 = vec4(clamp(f17, 0.0, 1.0));
    vec4 f22 = mix(f19, vec4(0.0), f21);
    vec4 f23 = mix(f20, vec4(1.0), f21);
    float f24 = f23.x;
    vec4 f25 = texture(ShadowMapTexture, f16.xy);
    float f26 = f16.z;
    float f27 = f11 * 5.0;
    vec3 f28 = mat3(vec3(CB0[58].xyz), vec3(CB0[59].xyz), vec3(CB0[60].xyz)) * f13;
    bvec3 f29 = bvec3(!(CB0[58].x == 2.0));
    vec3 f30 = vec4(f13, f27).xyz;
    vec3 f31 = textureLod(PrefilteredEnvIndoorTexture, f30, f27).xyz;
    vec3 f32;
    if (CB0[32].w == 0.0)
    {
        f32 = f31;
    }
    else
    {
        f32 = mix(f31, textureLod(PrefilteredEnvBlendTargetTexture, f30, f27).xyz, vec3(CB0[32].w));
    }
    vec4 f33 = texture(PrecomputedBRDFTexture, vec2(f11, max(9.9999997473787516355514526367188e-05, dot(f2, f9))));
    float f34 = f33.x;
    float f35 = f33.y;
    vec3 f36 = ((f15 * f34) + vec3(f35)) / vec3(f34 + f35);
    float f37 = 1.0 - f14;
    float f38 = f10 * f37;
    vec3 f39 = vec3(f37);
    vec3 f40 = f2 * f2;
    bvec3 f41 = lessThan(f2, vec3(0.0));
    vec3 f42 = vec3(f41.x ? f40.x : vec3(0.0).x, f41.y ? f40.y : vec3(0.0).y, f41.z ? f40.z : vec3(0.0).z);
    vec3 f43 = f40 - f42;
    float f44 = f43.x;
    float f45 = f43.y;
    float f46 = f43.z;
    float f47 = f42.x;
    float f48 = f42.y;
    float f49 = f42.z;
    vec3 f50 = -CB0[16].xyz;
    float f51 = dot(f2, f50) * ((1.0 - ((step(f25.x, f26) * clamp(CB0[29].z + (CB0[29].w * abs(f26 - 0.5)), 0.0, 1.0)) * f25.y)) * f23.y);
    vec3 f52 = normalize(f9 + f50);
    float f53 = clamp(f51, 0.0, 1.0);
    float f54 = f11 * f11;
    float f55 = max(0.001000000047497451305389404296875, dot(f2, f52));
    float f56 = dot(f50, f52);
    float f57 = 1.0 - f56;
    float f58 = f57 * f57;
    float f59 = (f58 * f58) * f57;
    vec3 f60 = vec3(f59) + (f15 * (1.0 - f59));
    float f61 = f54 * f54;
    float f62 = (((f55 * f61) - f55) * f55) + 1.0;
    vec3 f63 = (((((((f39 - (f36 * f38)) * (((((((CB0[40].xyz * f44) + (CB0[42].xyz * f45)) + (CB0[44].xyz * f46)) + (CB0[41].xyz * f47)) + (CB0[43].xyz * f48)) + (CB0[45].xyz * f49)) + (((((((CB0[34].xyz * f44) + (CB0[36].xyz * f45)) + (CB0[38].xyz * f46)) + (CB0[35].xyz * f47)) + (CB0[37].xyz * f48)) + (CB0[39].xyz * f49)) * f24))) * 1.0) + ((CB0[32].xyz + (CB0[33].xyz * f24)) * 1.0)) + ((((f39 - (f60 * f38)) * CB0[15].xyz) * f53) + (CB0[17].xyz * (f37 * clamp(-f51, 0.0, 1.0))))) + (f22.xyz * (f22.w * 120.0))) * f7.xyz) + (((mix(f32, textureLod(PrefilteredEnvTexture, vec4(vec3(f29.x ? f28.x : f13.x, f29.y ? f28.y : f13.y, f29.z ? f28.z : f13.z), f27).xyz, f27).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f13.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f24)) * f36) * f10) + (((f60 * (((f61 + (f61 * f61)) / (((f62 * f62) * ((f56 * 3.0) + 0.5)) * ((f55 * 0.75) + 0.25))) * f53)) * CB0[15].xyz) * 1.0));
    vec4 f64 = vec4(0.0);
    f64.x = f63.x;
    vec4 f65 = f64;
    f65.y = f63.y;
    vec4 f66 = f65;
    f66.z = f63.z;
    float f67 = f1.w;
    vec4 f68 = f66;
    f68.w = f67;
    float f69 = clamp(exp2((CB0[18].z * f8) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f70 = textureLod(PrefilteredEnvTexture, vec4(f12, 0.0).xyz, max(CB0[18].y, f69) * 5.0).xyz;
    bvec3 f71 = bvec3(!(CB0[18].w == 0.0));
    vec3 f72 = mix(vec3(f71.x ? CB0[19].xyz.x : f70.x, f71.y ? CB0[19].xyz.y : f70.y, f71.z ? CB0[19].xyz.z : f70.z), f68.xyz, vec3(f69));
    vec4 f73 = f68;
    f73.x = f72.x;
    vec4 f74 = f73;
    f74.y = f72.y;
    vec4 f75 = f74;
    f75.z = f72.z;
    vec3 f76 = sqrt(clamp(f75.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f77 = f75;
    f77.x = f76.x;
    vec4 f78 = f77;
    f78.y = f76.y;
    vec4 f79 = f78;
    f79.z = f76.z;
    vec4 f80 = f79;
    f80.w = f67;
    _entryPointOutput = f80;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
