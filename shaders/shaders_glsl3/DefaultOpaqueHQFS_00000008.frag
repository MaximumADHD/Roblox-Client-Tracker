#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
uniform vec4 CB0[58];
uniform vec4 CB8[24];
uniform sampler2D ShadowAtlasTexture;
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
    float f0 = length(VARYING3.xyz);
    vec3 f1 = VARYING3.xyz / vec3(f0);
    vec4 f2 = texture(DiffuseMapTexture, VARYING0) * VARYING1;
    vec3 f3 = normalize(VARYING4.xyz) * (gl_FrontFacing ? 1.0 : (-1.0));
    vec3 f4 = -CB0[16].xyz;
    float f5 = dot(f3, f4);
    vec3 f6 = f2.xyz;
    vec3 f7 = f6 * f6;
    vec4 f8 = f2;
    f8.x = f7.x;
    vec4 f9 = f8;
    f9.y = f7.y;
    vec4 f10 = f9;
    f10.z = f7.z;
    float f11 = CB0[31].w * clamp(1.0 - (VARYING3.w * CB0[28].y), 0.0, 1.0);
    float f12 = 0.08900000154972076416015625 + (VARYING4.w * 0.9110000133514404296875);
    vec3 f13 = reflect(-f1, f3);
    float f14 = VARYING5.w * f11;
    vec3 f15 = mix(vec3(0.039999999105930328369140625), f10.xyz, vec3(f14));
    vec3 f16 = VARYING5.xyz - (CB0[16].xyz * VARYING2.w);
    float f17 = clamp(dot(step(CB0[24].xyz, abs(VARYING2.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f18 = VARYING2.yzx - (VARYING2.yzx * f17);
    vec4 f19 = texture(LightMapTexture, f18);
    vec4 f20 = texture(LightGridSkylightTexture, f18);
    vec4 f21 = vec4(clamp(f17, 0.0, 1.0));
    vec4 f22 = mix(f19, vec4(0.0), f21);
    vec4 f23 = mix(f20, vec4(1.0), f21);
    float f24 = f23.x;
    float f25 = f23.y;
    vec3 f26 = f16 - CB0[46].xyz;
    vec3 f27 = f16 - CB0[47].xyz;
    vec3 f28 = f16 - CB0[48].xyz;
    vec4 f29 = vec4(f16, 1.0) * mat4(CB8[((dot(f26, f26) < CB0[46].w) ? 0 : ((dot(f27, f27) < CB0[47].w) ? 1 : ((dot(f28, f28) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f26, f26) < CB0[46].w) ? 0 : ((dot(f27, f27) < CB0[47].w) ? 1 : ((dot(f28, f28) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f26, f26) < CB0[46].w) ? 0 : ((dot(f27, f27) < CB0[47].w) ? 1 : ((dot(f28, f28) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f26, f26) < CB0[46].w) ? 0 : ((dot(f27, f27) < CB0[47].w) ? 1 : ((dot(f28, f28) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f30 = textureLod(ShadowAtlasTexture, f29.xy, 0.0);
    vec2 f31 = vec2(0.0);
    f31.x = CB0[51].z;
    vec2 f32 = f31;
    f32.y = CB0[51].w;
    float f33 = (2.0 * f29.z) - 1.0;
    float f34 = exp(CB0[51].z * f33);
    float f35 = -exp((-CB0[51].w) * f33);
    vec2 f36 = (f32 * CB0[52].y) * vec2(f34, f35);
    vec2 f37 = f36 * f36;
    float f38 = f30.x;
    float f39 = max(f30.y - (f38 * f38), f37.x);
    float f40 = f34 - f38;
    float f41 = f30.z;
    float f42 = max(f30.w - (f41 * f41), f37.y);
    float f43 = f35 - f41;
    vec3 f44 = normalize(f1 - CB0[16].xyz);
    float f45 = clamp((f5 * CB0[14].w) * (((f5 * CB0[52].x) > 0.0) ? mix(min((f34 <= f38) ? 1.0 : clamp(((f39 / (f39 + (f40 * f40))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f35 <= f41) ? 1.0 : clamp(((f42 / (f42 + (f43 * f43))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f25, clamp((length(f16 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f25), 0.0, 1.0);
    float f46 = f12 * f12;
    float f47 = max(0.001000000047497451305389404296875, dot(f3, f44));
    float f48 = dot(f4, f44);
    float f49 = 1.0 - f48;
    float f50 = f49 * f49;
    float f51 = (f50 * f50) * f49;
    vec3 f52 = vec3(f51) + (f15 * (1.0 - f51));
    float f53 = f46 * f46;
    float f54 = (((f47 * f53) - f47) * f47) + 1.0;
    float f55 = 1.0 - f14;
    float f56 = f11 * f55;
    vec3 f57 = vec3(f55);
    float f58 = f12 * 5.0;
    vec3 f59 = vec4(f13, f58).xyz;
    vec3 f60 = textureLod(PrefilteredEnvIndoorTexture, f59, f58).xyz;
    vec3 f61;
    if (CB0[32].w == 0.0)
    {
        f61 = f60;
    }
    else
    {
        f61 = mix(f60, textureLod(PrefilteredEnvBlendTargetTexture, f59, f58).xyz, vec3(CB0[32].w));
    }
    vec4 f62 = texture(PrecomputedBRDFTexture, vec2(f12, max(9.9999997473787516355514526367188e-05, dot(f3, f1))));
    float f63 = f62.x;
    float f64 = f62.y;
    vec3 f65 = ((f15 * f63) + vec3(f64)) / vec3(f63 + f64);
    vec3 f66 = f3 * f3;
    bvec3 f67 = lessThan(f3, vec3(0.0));
    vec3 f68 = vec3(f67.x ? f66.x : vec3(0.0).x, f67.y ? f66.y : vec3(0.0).y, f67.z ? f66.z : vec3(0.0).z);
    vec3 f69 = f66 - f68;
    float f70 = f69.x;
    float f71 = f69.y;
    float f72 = f69.z;
    float f73 = f68.x;
    float f74 = f68.y;
    float f75 = f68.z;
    vec3 f76 = ((((((f22.xyz * (f22.w * 120.0)) * 1.0) + (((f57 - (f52 * f56)) * CB0[15].xyz) * f45)) + ((f57 - (f65 * f56)) * (((((((CB0[40].xyz * f70) + (CB0[42].xyz * f71)) + (CB0[44].xyz * f72)) + (CB0[41].xyz * f73)) + (CB0[43].xyz * f74)) + (CB0[45].xyz * f75)) + (((((((CB0[34].xyz * f70) + (CB0[36].xyz * f71)) + (CB0[38].xyz * f72)) + (CB0[35].xyz * f73)) + (CB0[37].xyz * f74)) + (CB0[39].xyz * f75)) * f24)))) + ((CB0[32].xyz + (CB0[33].xyz * (f24 * (2.0 - CB0[14].w)))) * 1.0)) * f10.xyz) + ((((f52 * (min((f53 + (f53 * f53)) / (((f54 * f54) * ((f48 * 3.0) + 0.5)) * ((f47 * 0.75) + 0.25)), 65504.0) * f45)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w)) + ((mix(f61, textureLod(PrefilteredEnvTexture, f59, f58).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f13.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f24)) * f65) * f11));
    vec4 f77 = vec4(0.0);
    f77.x = f76.x;
    vec4 f78 = f77;
    f78.y = f76.y;
    vec4 f79 = f78;
    f79.z = f76.z;
    vec4 f80 = f79;
    f80.w = 1.0;
    float f81 = clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f82 = textureLod(PrefilteredEnvTexture, vec4(-VARYING3.xyz, 0.0).xyz, max(CB0[18].y, f81) * 5.0).xyz;
    bvec3 f83 = bvec3(!(CB0[18].w == 0.0));
    vec3 f84 = mix(vec3(f83.x ? CB0[19].xyz.x : f82.x, f83.y ? CB0[19].xyz.y : f82.y, f83.z ? CB0[19].xyz.z : f82.z), f80.xyz, vec3(f81));
    vec4 f85 = f80;
    f85.x = f84.x;
    vec4 f86 = f85;
    f86.y = f84.y;
    vec4 f87 = f86;
    f87.z = f84.z;
    vec3 f88 = sqrt(clamp(f87.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f89 = f87;
    f89.x = f88.x;
    vec4 f90 = f89;
    f90.y = f88.y;
    vec4 f91 = f90;
    f91.z = f88.z;
    vec4 f92 = f91;
    f92.w = 1.0;
    _entryPointOutput = f92;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
