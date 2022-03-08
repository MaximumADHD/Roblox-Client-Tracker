#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
uniform vec4 CB0[53];
uniform vec4 CB8[24];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform samplerCube PrefilteredEnvBlendTargetTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;

centroid in vec2 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
out vec4 _entryPointOutput;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec3 f1 = VARYING4.xyz / vec3(f0);
    vec4 f2 = texture(DiffuseMapTexture, VARYING0);
    vec4 f3 = f2 * VARYING2;
    vec3 f4 = normalize(VARYING5.xyz) * (gl_FrontFacing ? 1.0 : (-1.0));
    vec3 f5 = -CB0[11].xyz;
    float f6 = dot(f4, f5);
    vec3 f7 = f3.xyz;
    vec3 f8 = f7 * f7;
    vec4 f9 = f3;
    f9.x = f8.x;
    vec4 f10 = f9;
    f10.y = f8.y;
    vec4 f11 = f10;
    f11.z = f8.z;
    vec3 f12 = VARYING6.xyz - (CB0[11].xyz * VARYING3.w);
    float f13 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f14 = VARYING3.yzx - (VARYING3.yzx * f13);
    vec4 f15 = texture(LightMapTexture, f14);
    vec4 f16 = texture(LightGridSkylightTexture, f14);
    vec4 f17 = vec4(clamp(f13, 0.0, 1.0));
    vec4 f18 = mix(f15, vec4(0.0), f17);
    vec4 f19 = mix(f16, vec4(1.0), f17);
    float f20 = f19.x;
    float f21 = f19.y;
    vec3 f22 = f12 - CB0[41].xyz;
    vec3 f23 = f12 - CB0[42].xyz;
    vec3 f24 = f12 - CB0[43].xyz;
    vec4 f25 = vec4(f12, 1.0) * mat4(CB8[((dot(f22, f22) < CB0[41].w) ? 0 : ((dot(f23, f23) < CB0[42].w) ? 1 : ((dot(f24, f24) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f22, f22) < CB0[41].w) ? 0 : ((dot(f23, f23) < CB0[42].w) ? 1 : ((dot(f24, f24) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f22, f22) < CB0[41].w) ? 0 : ((dot(f23, f23) < CB0[42].w) ? 1 : ((dot(f24, f24) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f22, f22) < CB0[41].w) ? 0 : ((dot(f23, f23) < CB0[42].w) ? 1 : ((dot(f24, f24) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f26 = textureLod(ShadowAtlasTexture, f25.xy, 0.0);
    vec2 f27 = vec2(0.0);
    f27.x = CB0[46].z;
    vec2 f28 = f27;
    f28.y = CB0[46].w;
    float f29 = (2.0 * f25.z) - 1.0;
    float f30 = exp(CB0[46].z * f29);
    float f31 = -exp((-CB0[46].w) * f29);
    vec2 f32 = (f28 * CB0[47].y) * vec2(f30, f31);
    vec2 f33 = f32 * f32;
    float f34 = f26.x;
    float f35 = max(f26.y - (f34 * f34), f33.x);
    float f36 = f30 - f34;
    float f37 = f26.z;
    float f38 = max(f26.w - (f37 * f37), f33.y);
    float f39 = f31 - f37;
    float f40 = CB0[26].w * clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    float f41 = 0.08900000154972076416015625 + (VARYING5.w * 0.9110000133514404296875);
    vec3 f42 = reflect(-f1, f4);
    float f43 = f41 * 5.0;
    vec3 f44 = vec4(f42, f43).xyz;
    vec3 f45 = textureLod(PrefilteredEnvIndoorTexture, f44, f43).xyz;
    vec3 f46;
    if (CB0[27].w == 0.0)
    {
        f46 = f45;
    }
    else
    {
        f46 = mix(f45, textureLod(PrefilteredEnvBlendTargetTexture, f44, f43).xyz, vec3(CB0[27].w));
    }
    vec4 f47 = texture(PrecomputedBRDFTexture, vec2(f41, max(9.9999997473787516355514526367188e-05, dot(f4, f1))));
    float f48 = VARYING6.w * f40;
    vec3 f49 = mix(vec3(0.039999999105930328369140625), f11.xyz, vec3(f48));
    vec3 f50 = normalize(f5 + f1);
    float f51 = clamp((f6 * CB0[9].w) * (((f6 * CB0[47].x) > 0.0) ? mix(min((f30 <= f34) ? 1.0 : clamp(((f35 / (f35 + (f36 * f36))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f31 <= f37) ? 1.0 : clamp(((f38 / (f38 + (f39 * f39))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f21, clamp((length(f12 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f21), 0.0, 1.0);
    float f52 = f41 * f41;
    float f53 = max(0.001000000047497451305389404296875, dot(f4, f50));
    float f54 = dot(f5, f50);
    float f55 = 1.0 - f54;
    float f56 = f55 * f55;
    float f57 = (f56 * f56) * f55;
    vec3 f58 = vec3(f57) + (f49 * (1.0 - f57));
    float f59 = f52 * f52;
    float f60 = (((f53 * f59) - f53) * f53) + 1.0;
    float f61 = 1.0 - f48;
    float f62 = f40 * f61;
    vec3 f63 = vec3(f61);
    float f64 = f47.x;
    float f65 = f47.y;
    vec3 f66 = ((f49 * f64) + vec3(f65)) / vec3(f64 + f65);
    vec3 f67 = f4 * f4;
    bvec3 f68 = lessThan(f4, vec3(0.0));
    vec3 f69 = vec3(f68.x ? f67.x : vec3(0.0).x, f68.y ? f67.y : vec3(0.0).y, f68.z ? f67.z : vec3(0.0).z);
    vec3 f70 = f67 - f69;
    float f71 = f70.x;
    float f72 = f70.y;
    float f73 = f70.z;
    float f74 = f69.x;
    float f75 = f69.y;
    float f76 = f69.z;
    vec3 f77 = (((((((f63 - (f58 * f62)) * CB0[10].xyz) * f51) + ((f18.xyz * (f18.w * 120.0)) * 1.0)) + ((f63 - (f66 * f62)) * (((((((CB0[35].xyz * f71) + (CB0[37].xyz * f72)) + (CB0[39].xyz * f73)) + (CB0[36].xyz * f74)) + (CB0[38].xyz * f75)) + (CB0[40].xyz * f76)) + (((((((CB0[29].xyz * f71) + (CB0[31].xyz * f72)) + (CB0[33].xyz * f73)) + (CB0[30].xyz * f74)) + (CB0[32].xyz * f75)) + (CB0[34].xyz * f76)) * f20)))) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f20))) * f11.xyz) + ((((f58 * (((f59 + (f59 * f59)) / (((f60 * f60) * ((f54 * 3.0) + 0.5)) * ((f53 * 0.75) + 0.25))) * f51)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) + ((mix(f46, textureLod(PrefilteredEnvTexture, f44, f43).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f42.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f20)) * f66) * f40));
    vec4 f78 = vec4(0.0);
    f78.x = f77.x;
    vec4 f79 = f78;
    f79.y = f77.y;
    vec4 f80 = f79;
    f80.z = f77.z;
    float f81 = f3.w;
    vec4 f82 = f80;
    f82.w = f81;
    float f83 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f84 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f83) * 5.0).xyz;
    bvec3 f85 = bvec3(!(CB0[13].w == 0.0));
    vec3 f86 = mix(vec3(f85.x ? CB0[14].xyz.x : f84.x, f85.y ? CB0[14].xyz.y : f84.y, f85.z ? CB0[14].xyz.z : f84.z), f82.xyz, vec3(f83));
    vec4 f87 = f82;
    f87.x = f86.x;
    vec4 f88 = f87;
    f88.y = f86.y;
    vec4 f89 = f88;
    f89.z = f86.z;
    vec3 f90 = sqrt(clamp(f89.xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f91 = f89;
    f91.x = f90.x;
    vec4 f92 = f91;
    f92.y = f90.y;
    vec4 f93 = f92;
    f93.z = f90.z;
    vec4 f94 = f93;
    f94.w = f81;
    _entryPointOutput = f94;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrefilteredEnvBlendTargetTexture=s2
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
