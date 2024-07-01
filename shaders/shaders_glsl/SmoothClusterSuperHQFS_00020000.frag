#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <ExtraData.h>
uniform vec4 CB0[58];
uniform vec4 CB3[1];
uniform vec4 CB4[63];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D SpecularMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D AlbedoMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec3 VARYING4;
varying vec4 VARYING5;
varying vec3 VARYING6;
varying vec3 VARYING7;
varying vec3 VARYING8;
varying vec3 VARYING9;

void main()
{
    vec2 f0 = (fract(VARYING1.xy) * CB3[0].xy) + VARYING2.xy;
    vec2 f1 = (fract(VARYING1.zw) * CB3[0].xy) + VARYING2.zw;
    vec2 f2 = (fract(VARYING3.xy) * CB3[0].xy) + VARYING3.zw;
    vec2 f3 = VARYING1.xy * CB3[0].xy;
    vec2 f4 = VARYING1.zw * CB3[0].xy;
    vec2 f5 = VARYING3.xy * CB3[0].xy;
    vec2 f6 = dFdx(f3);
    vec2 f7 = dFdy(f3);
    vec2 f8 = dFdx(f4);
    vec2 f9 = dFdy(f4);
    vec2 f10 = dFdx(f5);
    vec2 f11 = dFdy(f5);
    vec4 f12 = ((texture2DGradARB(SpecularMapTexture, f0, f6, f7) * VARYING0.x) + (texture2DGradARB(SpecularMapTexture, f1, f8, f9) * VARYING0.y)) + (texture2DGradARB(SpecularMapTexture, f2, f10, f11) * VARYING0.z);
    vec2 f13 = dFdx(f3);
    vec2 f14 = dFdy(f3);
    vec2 f15 = dFdx(f4);
    vec2 f16 = dFdy(f4);
    vec2 f17 = dFdx(f5);
    vec2 f18 = dFdy(f5);
    vec2 f19 = (((texture2DGradARB(NormalMapTexture, f0, f13, f14) * VARYING0.x) + (texture2DGradARB(NormalMapTexture, f1, f15, f16) * VARYING0.y)) + (texture2DGradARB(NormalMapTexture, f2, f17, f18) * VARYING0.z)).wy * 2.0;
    vec2 f20 = f19 - vec2(1.0);
    vec3 f21 = vec3(dot(VARYING7, VARYING0.xyz));
    vec3 f22 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f21) * f20.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f21) * f20.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - f19, f20), 0.0, 1.0)))), 0.0).xyz;
    vec2 f23 = dFdx(f3);
    vec2 f24 = dFdy(f3);
    vec4 f25 = texture2DGradARB(AlbedoMapTexture, f0, f23, f24);
    vec2 f26 = dFdx(f4);
    vec2 f27 = dFdy(f4);
    vec4 f28 = texture2DGradARB(AlbedoMapTexture, f1, f26, f27);
    vec2 f29 = dFdx(f5);
    vec2 f30 = dFdy(f5);
    vec4 f31 = texture2DGradARB(AlbedoMapTexture, f2, f29, f30);
    int f32 = int(VARYING9.x + 0.5);
    int f33 = int(VARYING9.y + 0.5);
    int f34 = int(VARYING9.z + 0.5);
    vec3 f35;
    if (!(CB4[f32 * 1 + 0].w == 0.0))
    {
        f35 = (mix(vec3(1.0), CB4[f32 * 1 + 0].xyz, vec3(f25.w)) * f25.xyz) * VARYING0.x;
    }
    else
    {
        vec2 f36 = f25.xz - vec2(0.5);
        float f37 = f36.x;
        float f38 = f36.y;
        float f39 = CB4[f32 * 1 + 0].x * f25.y;
        float f40 = (CB4[f32 * 1 + 0].y * f37) - (CB4[f32 * 1 + 0].z * f38);
        float f41 = (CB4[f32 * 1 + 0].z * f37) + (CB4[f32 * 1 + 0].y * f38);
        float f42 = f39 - f41;
        f35 = (vec3(f42, f39, f42) + (vec3(f40, f41, f40) * vec3(1.0, 1.0, -1.0))) * VARYING0.x;
    }
    vec3 f43;
    if (!(CB4[f33 * 1 + 0].w == 0.0))
    {
        f43 = f35 + ((mix(vec3(1.0), CB4[f33 * 1 + 0].xyz, vec3(f28.w)) * f28.xyz) * VARYING0.y);
    }
    else
    {
        vec2 f44 = f28.xz - vec2(0.5);
        float f45 = f44.x;
        float f46 = f44.y;
        float f47 = CB4[f33 * 1 + 0].x * f28.y;
        float f48 = (CB4[f33 * 1 + 0].y * f45) - (CB4[f33 * 1 + 0].z * f46);
        float f49 = (CB4[f33 * 1 + 0].z * f45) + (CB4[f33 * 1 + 0].y * f46);
        float f50 = f47 - f49;
        f43 = f35 + ((vec3(f50, f47, f50) + (vec3(f48, f49, f48) * vec3(1.0, 1.0, -1.0))) * VARYING0.y);
    }
    vec3 f51;
    if (!(CB4[f34 * 1 + 0].w == 0.0))
    {
        f51 = f43 + ((mix(vec3(1.0), CB4[f34 * 1 + 0].xyz, vec3(f31.w)) * f31.xyz) * VARYING0.z);
    }
    else
    {
        vec2 f52 = f31.xz - vec2(0.5);
        float f53 = f52.x;
        float f54 = f52.y;
        float f55 = CB4[f34 * 1 + 0].x * f31.y;
        float f56 = (CB4[f34 * 1 + 0].y * f53) - (CB4[f34 * 1 + 0].z * f54);
        float f57 = (CB4[f34 * 1 + 0].z * f53) + (CB4[f34 * 1 + 0].y * f54);
        float f58 = f55 - f57;
        f51 = f43 + ((vec3(f58, f55, f58) + (vec3(f56, f57, f56) * vec3(1.0, 1.0, -1.0))) * VARYING0.z);
    }
    vec3 f59 = f51 * f51;
    float f60 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    float f61 = 0.08900000154972076416015625 + (f12.y * 0.9110000133514404296875);
    float f62 = f12.x;
    vec3 f63 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f64 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f65 = VARYING4.yzx - (VARYING4.yzx * f64);
    vec4 f66 = vec4(clamp(f64, 0.0, 1.0));
    vec4 f67 = mix(texture3D(LightMapTexture, f65), vec4(0.0), f66);
    vec4 f68 = mix(texture3D(LightGridSkylightTexture, f65), vec4(1.0), f66);
    vec4 f69 = texture2D(ShadowMapTexture, f63.xy);
    float f70 = f63.z;
    vec3 f71 = -CB0[16].xyz;
    float f72 = dot(f22, f71) * ((1.0 - ((step(f69.x, f70) * clamp(CB0[29].z + (CB0[29].w * abs(f70 - 0.5)), 0.0, 1.0)) * f69.y)) * f68.y);
    vec3 f73 = normalize(normalize(VARYING8) + f71);
    float f74 = clamp(f72, 0.0, 1.0);
    float f75 = f61 * f61;
    float f76 = max(0.001000000047497451305389404296875, dot(f22, f73));
    float f77 = dot(f71, f73);
    float f78 = 1.0 - f77;
    float f79 = f78 * f78;
    float f80 = (f79 * f79) * f78;
    vec3 f81 = vec3(f80) + (mix(vec3(0.039999999105930328369140625), f59, vec3(f62)) * (1.0 - f80));
    float f82 = f75 * f75;
    float f83 = (((f76 * f82) - f76) * f76) + 1.0;
    float f84 = 1.0 - f62;
    vec3 f85 = (((vec3((f12.z * 2.0) * f60) + (min((f67.xyz * (f67.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f68.x)), vec3(CB0[21].w)) * 1.0)) + ((((vec3(f84) - (f81 * ((CB0[31].w * f60) * f84))) * CB0[15].xyz) * f74) + (CB0[17].xyz * (f84 * clamp(-f72, 0.0, 1.0))))) * f59) + (((f81 * (((f82 + (f82 * f82)) / (((f83 * f83) * ((f77 * 3.0) + 0.5)) * ((f76 * 0.75) + 0.25))) * f74)) * CB0[15].xyz) * (f60 * VARYING0.w));
    vec4 f86 = vec4(0.0);
    f86.x = f85.x;
    vec4 f87 = f86;
    f87.y = f85.y;
    vec4 f88 = f87;
    f88.z = f85.z;
    vec4 f89 = f88;
    f89.w = 1.0;
    vec3 f90 = mix(CB0[19].xyz, f89.xyz, vec3(clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f91 = f89;
    f91.x = f90.x;
    vec4 f92 = f91;
    f92.y = f90.y;
    vec4 f93 = f92;
    f93.z = f90.z;
    vec3 f94 = sqrt(clamp(f93.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f95 = f93;
    f95.x = f94.x;
    vec4 f96 = f95;
    f96.y = f94.y;
    vec4 f97 = f96;
    f97.z = f94.z;
    gl_FragData[0] = f97;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$SpecularMapTexture=s3
//$$NormalMapTexture=s4
//$$AlbedoMapTexture=s0
