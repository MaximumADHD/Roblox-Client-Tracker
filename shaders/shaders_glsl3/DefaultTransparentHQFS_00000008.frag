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
    vec4 f2 = texture(DiffuseMapTexture, VARYING0);
    vec4 f3 = f2 * VARYING1;
    vec3 f4 = normalize(VARYING4.xyz) * (gl_FrontFacing ? 1.0 : (-1.0));
    vec3 f5 = -CB0[16].xyz;
    float f6 = dot(f4, f5);
    vec3 f7 = f3.xyz;
    vec3 f8 = f7 * f7;
    vec4 f9 = f3;
    f9.x = f8.x;
    vec4 f10 = f9;
    f10.y = f8.y;
    vec4 f11 = f10;
    f11.z = f8.z;
    float f12 = CB0[31].w * clamp(1.0 - (VARYING3.w * CB0[28].y), 0.0, 1.0);
    float f13 = 0.08900000154972076416015625 + (VARYING4.w * 0.9110000133514404296875);
    vec3 f14 = -f1;
    vec3 f15 = reflect(f14, f4);
    float f16 = VARYING5.w * f12;
    vec3 f17 = mix(vec3(0.039999999105930328369140625), f11.xyz, vec3(f16));
    vec3 f18 = VARYING5.xyz - (CB0[16].xyz * VARYING2.w);
    float f19 = clamp(dot(step(CB0[24].xyz, abs(VARYING2.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f20 = VARYING2.yzx - (VARYING2.yzx * f19);
    vec4 f21 = texture(LightMapTexture, f20);
    vec4 f22 = texture(LightGridSkylightTexture, f20);
    vec4 f23 = vec4(clamp(f19, 0.0, 1.0));
    vec4 f24 = mix(f21, vec4(0.0), f23);
    vec4 f25 = mix(f22, vec4(1.0), f23);
    float f26 = f25.x;
    float f27 = f25.y;
    vec3 f28 = f18 - CB0[46].xyz;
    vec3 f29 = f18 - CB0[47].xyz;
    vec3 f30 = f18 - CB0[48].xyz;
    vec4 f31 = vec4(f18, 1.0) * mat4(CB8[((dot(f28, f28) < CB0[46].w) ? 0 : ((dot(f29, f29) < CB0[47].w) ? 1 : ((dot(f30, f30) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f28, f28) < CB0[46].w) ? 0 : ((dot(f29, f29) < CB0[47].w) ? 1 : ((dot(f30, f30) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f28, f28) < CB0[46].w) ? 0 : ((dot(f29, f29) < CB0[47].w) ? 1 : ((dot(f30, f30) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f28, f28) < CB0[46].w) ? 0 : ((dot(f29, f29) < CB0[47].w) ? 1 : ((dot(f30, f30) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f32 = textureLod(ShadowAtlasTexture, f31.xy, 0.0);
    vec2 f33 = vec2(0.0);
    f33.x = CB0[51].z;
    vec2 f34 = f33;
    f34.y = CB0[51].w;
    float f35 = (2.0 * f31.z) - 1.0;
    float f36 = exp(CB0[51].z * f35);
    float f37 = -exp((-CB0[51].w) * f35);
    vec2 f38 = (f34 * CB0[52].y) * vec2(f36, f37);
    vec2 f39 = f38 * f38;
    float f40 = f32.x;
    float f41 = max(f32.y - (f40 * f40), f39.x);
    float f42 = f36 - f40;
    float f43 = f32.z;
    float f44 = max(f32.w - (f43 * f43), f39.y);
    float f45 = f37 - f43;
    vec3 f46 = normalize(f1 - CB0[16].xyz);
    float f47 = clamp((f6 * CB0[14].w) * (((f6 * CB0[52].x) > 0.0) ? mix(min((f36 <= f40) ? 1.0 : clamp(((f41 / (f41 + (f42 * f42))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f37 <= f43) ? 1.0 : clamp(((f44 / (f44 + (f45 * f45))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f27, clamp((length(f18 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f27), 0.0, 1.0);
    float f48 = f13 * f13;
    float f49 = max(0.001000000047497451305389404296875, dot(f4, f46));
    float f50 = dot(f5, f46);
    float f51 = 1.0 - f50;
    float f52 = f51 * f51;
    float f53 = (f52 * f52) * f51;
    vec3 f54 = vec3(f53) + (f17 * (1.0 - f53));
    float f55 = f48 * f48;
    float f56 = (((f49 * f55) - f49) * f49) + 1.0;
    float f57 = 1.0 - f16;
    float f58 = f12 * f57;
    vec3 f59 = vec3(f57);
    float f60 = f13 * 5.0;
    vec3 f61 = vec4(f15, f60).xyz;
    vec3 f62 = textureLod(PrefilteredEnvIndoorTexture, f61, f60).xyz;
    vec3 f63;
    if (CB0[32].w == 0.0)
    {
        f63 = f62;
    }
    else
    {
        f63 = mix(f62, textureLod(PrefilteredEnvBlendTargetTexture, f61, f60).xyz, vec3(CB0[32].w));
    }
    vec4 f64 = texture(PrecomputedBRDFTexture, vec2(f13, max(9.9999997473787516355514526367188e-05, dot(f4, f1))));
    float f65 = f64.x;
    float f66 = f64.y;
    vec3 f67 = ((f17 * f65) + vec3(f66)) / vec3(f65 + f66);
    vec3 f68 = f4 * f4;
    bvec3 f69 = lessThan(f4, vec3(0.0));
    vec3 f70 = vec3(f69.x ? f68.x : vec3(0.0).x, f69.y ? f68.y : vec3(0.0).y, f69.z ? f68.z : vec3(0.0).z);
    vec3 f71 = f68 - f70;
    float f72 = f71.x;
    float f73 = f71.y;
    float f74 = f71.z;
    float f75 = f70.x;
    float f76 = f70.y;
    float f77 = f70.z;
    vec3 f78 = ((((((f24.xyz * (f24.w * 120.0)) * 1.0) + (((f59 - (f54 * f58)) * CB0[15].xyz) * f47)) + ((f59 - (f67 * f58)) * (((((((CB0[40].xyz * f72) + (CB0[42].xyz * f73)) + (CB0[44].xyz * f74)) + (CB0[41].xyz * f75)) + (CB0[43].xyz * f76)) + (CB0[45].xyz * f77)) + (((((((CB0[34].xyz * f72) + (CB0[36].xyz * f73)) + (CB0[38].xyz * f74)) + (CB0[35].xyz * f75)) + (CB0[37].xyz * f76)) + (CB0[39].xyz * f77)) * f26)))) + ((CB0[32].xyz + (CB0[33].xyz * (f26 * (2.0 - CB0[14].w)))) * 1.0)) * f11.xyz) + ((((f54 * (((f55 + (f55 * f55)) / max(((f56 * f56) * ((f50 * 3.0) + 0.5)) * ((f49 * 0.75) + 0.25), 3.0999999580672010779380798339844e-05)) * f47)) * CB0[15].xyz) * (CB0[14].w * CB0[14].w)) + ((mix(f63, textureLod(PrefilteredEnvTexture, f61, f60).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f15.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f26)) * f67) * f12));
    vec4 f79 = vec4(0.0);
    f79.x = f78.x;
    vec4 f80 = f79;
    f80.y = f78.y;
    vec4 f81 = f80;
    f81.z = f78.z;
    float f82 = f3.w;
    vec4 f83 = f81;
    f83.w = f82;
    float f84 = clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f85 = textureLod(PrefilteredEnvTexture, vec4(f14, 0.0).xyz, max(CB0[18].y, f84) * 5.0).xyz;
    bvec3 f86 = bvec3(!(CB0[18].w == 0.0));
    vec3 f87 = mix(vec3(f86.x ? CB0[19].xyz.x : f85.x, f86.y ? CB0[19].xyz.y : f85.y, f86.z ? CB0[19].xyz.z : f85.z), f83.xyz, vec3(f84));
    vec4 f88 = f83;
    f88.x = f87.x;
    vec4 f89 = f88;
    f89.y = f87.y;
    vec4 f90 = f89;
    f90.z = f87.z;
    vec3 f91 = sqrt(clamp(f90.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f92 = f90;
    f92.x = f91.x;
    vec4 f93 = f92;
    f93.y = f91.y;
    vec4 f94 = f93;
    f94.z = f91.z;
    vec4 f95 = f94;
    f95.w = f82;
    _entryPointOutput = f95;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
