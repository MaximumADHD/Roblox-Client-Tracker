#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
#include <Params.h>
uniform vec4 CB0[58];
uniform vec4 CB8[24];
uniform vec4 CB3[3];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D NormalMap1Texture;
uniform sampler2D NormalMap2Texture;

in vec4 VARYING0;
in vec3 VARYING1;
in vec2 VARYING2;
in vec2 VARYING3;
in vec2 VARYING4;
in vec3 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = CB0[11].xyz - VARYING7.xyz;
    vec3 f1 = -CB0[16].xyz;
    float f2 = clamp(dot(step(CB0[24].xyz, abs(VARYING5 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f3 = VARYING5.yzx - (VARYING5.yzx * f2);
    vec4 f4 = texture(LightMapTexture, f3);
    vec4 f5 = texture(LightGridSkylightTexture, f3);
    vec4 f6 = vec4(clamp(f2, 0.0, 1.0));
    vec4 f7 = mix(f4, vec4(0.0), f6);
    vec4 f8 = mix(f5, vec4(1.0), f6);
    vec3 f9 = f7.xyz * (f7.w * 120.0);
    float f10 = f8.x;
    float f11 = f8.y;
    vec3 f12 = f0 - CB0[46].xyz;
    vec3 f13 = f0 - CB0[47].xyz;
    vec3 f14 = f0 - CB0[48].xyz;
    vec4 f15 = vec4(f0, 1.0) * mat4(CB8[((dot(f12, f12) < CB0[46].w) ? 0 : ((dot(f13, f13) < CB0[47].w) ? 1 : ((dot(f14, f14) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f12, f12) < CB0[46].w) ? 0 : ((dot(f13, f13) < CB0[47].w) ? 1 : ((dot(f14, f14) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f12, f12) < CB0[46].w) ? 0 : ((dot(f13, f13) < CB0[47].w) ? 1 : ((dot(f14, f14) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f12, f12) < CB0[46].w) ? 0 : ((dot(f13, f13) < CB0[47].w) ? 1 : ((dot(f14, f14) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f16 = textureLod(ShadowAtlasTexture, f15.xy, 0.0);
    vec2 f17 = vec2(0.0);
    f17.x = CB0[51].z;
    vec2 f18 = f17;
    f18.y = CB0[51].w;
    float f19 = (2.0 * f15.z) - 1.0;
    float f20 = exp(CB0[51].z * f19);
    float f21 = -exp((-CB0[51].w) * f19);
    vec2 f22 = (f18 * CB0[52].y) * vec2(f20, f21);
    vec2 f23 = f22 * f22;
    float f24 = f16.x;
    float f25 = max(f16.y - (f24 * f24), f23.x);
    float f26 = f20 - f24;
    float f27 = f16.z;
    float f28 = max(f16.w - (f27 * f27), f23.y);
    float f29 = f21 - f27;
    float f30 = ((dot(VARYING6.xyz, f1) * CB0[52].x) > 0.0) ? mix(min((f20 <= f24) ? 1.0 : clamp(((f25 / (f25 + (f26 * f26))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f21 <= f27) ? 1.0 : clamp(((f28 / (f28 + (f29 * f29))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f11, clamp((length(f0 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f11;
    vec4 f31 = texture(NormalMap1Texture, VARYING2);
    vec4 f32 = texture(NormalMap2Texture, VARYING2);
    vec4 f33 = vec4(CB3[0].w);
    vec4 f34 = texture(NormalMap1Texture, VARYING3);
    vec4 f35 = texture(NormalMap2Texture, VARYING3);
    vec4 f36 = texture(NormalMap1Texture, VARYING4);
    vec4 f37 = texture(NormalMap2Texture, VARYING4);
    vec4 f38 = ((mix(f31, f32, f33) * VARYING0.x) + (mix(f34, f35, f33) * VARYING0.y)) + (mix(f36, f37, f33) * VARYING0.z);
    vec2 f39 = f38.wy * 2.0;
    vec2 f40 = f39 - vec2(1.0);
    float f41 = f38.x;
    vec3 f42 = vec3(dot(VARYING1, VARYING0.xyz));
    vec3 f43 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f42) * f40.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f42) * f40.y)) + (VARYING6.xyz * sqrt(clamp(1.0 + dot(vec2(1.0) - f39, f40), 0.0, 1.0)))), f41).xyz;
    vec3 f44 = mix(VARYING6.xyz, f43, vec3(0.25));
    vec3 f45 = normalize(VARYING7.xyz);
    vec3 f46 = f43 * f43;
    bvec3 f47 = lessThan(f43, vec3(0.0));
    vec3 f48 = vec3(f47.x ? f46.x : vec3(0.0).x, f47.y ? f46.y : vec3(0.0).y, f47.z ? f46.z : vec3(0.0).z);
    vec3 f49 = f46 - f48;
    float f50 = f49.x;
    float f51 = f49.y;
    float f52 = f49.z;
    float f53 = f48.x;
    float f54 = f48.y;
    float f55 = f48.z;
    vec3 f56 = -f45;
    vec3 f57 = reflect(f56, f44);
    float f58 = 0.08900000154972076416015625 + (f41 * 0.9110000133514404296875);
    float f59 = (dot(f43, f1) * CB0[14].w) * f30;
    vec3 f60;
    if (f59 > 0.0)
    {
        vec3 f61 = normalize(f45 - CB0[16].xyz);
        float f62 = f58 * f58;
        float f63 = max(0.001000000047497451305389404296875, dot(f43, f61));
        float f64 = dot(f1, f61);
        float f65 = 1.0 - f64;
        float f66 = f65 * f65;
        float f67 = (f66 * f66) * f65;
        float f68 = f62 * f62;
        float f69 = (((f63 * f68) - f63) * f63) + 1.0;
        f60 = (((vec3(f67) + (vec3(0.0199999995529651641845703125) * (1.0 - f67))) * (((f68 + (f68 * f68)) / max(((f69 * f69) * ((f64 * 3.0) + 0.5)) * ((f63 * 0.75) + 0.25), 3.0999999580672010779380798339844e-05)) * clamp(f59, 0.0, 1.0))) * CB0[15].xyz) * (CB0[14].w * CB0[14].w);
    }
    else
    {
        f60 = vec3(0.0);
    }
    vec3 f70 = mix(((min(f9 + (CB0[32].xyz + (CB0[33].xyz * (f10 * (2.0 - CB0[14].w)))), vec3(CB0[21].w)) + (((((((CB0[40].xyz * f50) + (CB0[42].xyz * f51)) + (CB0[44].xyz * f52)) + (CB0[41].xyz * f53)) + (CB0[43].xyz * f54)) + (CB0[45].xyz * f55)) + (((((((CB0[34].xyz * f50) + (CB0[36].xyz * f51)) + (CB0[38].xyz * f52)) + (CB0[35].xyz * f53)) + (CB0[37].xyz * f54)) + (CB0[39].xyz * f55)) * f10))) + (CB0[15].xyz * f30)) * CB3[1].xyz, ((textureLod(PrefilteredEnvTexture, vec4(f57, 0.0).xyz, 0.0).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f57.y * 1.58823525905609130859375, 0.0, 1.0)))) * f10) + (f9 * 0.100000001490116119384765625), vec3((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f44, f45))), 0.0, 1.0) + 0.300000011920928955078125) * (VARYING0.w * CB3[2].z))) + (f60 * clamp(1.0 - (VARYING7.w * CB0[28].y), 0.0, 1.0));
    vec4 f71 = vec4(0.0);
    f71.x = f70.x;
    vec4 f72 = f71;
    f72.y = f70.y;
    vec4 f73 = f72;
    f73.z = f70.z;
    vec4 f74 = f73;
    f74.w = 1.0;
    vec3 f75 = textureLod(PrefilteredEnvTexture, vec4(f56, 0.0).xyz, max(CB0[18].y, VARYING6.w) * 5.0).xyz;
    bvec3 f76 = bvec3(!(CB0[18].w == 0.0));
    vec3 f77 = mix(vec3(f76.x ? CB0[19].xyz.x : f75.x, f76.y ? CB0[19].xyz.y : f75.y, f76.z ? CB0[19].xyz.z : f75.z), f74.xyz, vec3(VARYING6.w));
    vec4 f78 = f74;
    f78.x = f77.x;
    vec4 f79 = f78;
    f79.y = f77.y;
    vec4 f80 = f79;
    f80.z = f77.z;
    vec3 f81 = sqrt(clamp(f80.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f82 = f80;
    f82.x = f81.x;
    vec4 f83 = f82;
    f83.y = f81.y;
    vec4 f84 = f83;
    f84.z = f81.z;
    _entryPointOutput = f84;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
