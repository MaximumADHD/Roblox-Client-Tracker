#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform vec4 CB3[1];
uniform vec4 CB4[63];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D SpecularMapTexture;
uniform sampler2D AlbedoMapTexture;
uniform sampler2D NormalMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec3 VARYING4;
varying vec4 VARYING5;
varying vec3 VARYING6;
varying vec3 VARYING7;
varying vec3 VARYING8;
varying vec4 VARYING9;

void main()
{
    vec4 f0 = (fract(VARYING1) * CB3[0].xyxy) + VARYING2;
    vec2 f1 = (fract(VARYING3.xy) * CB3[0].xy) + VARYING3.zw;
    vec4 f2 = VARYING1 * CB3[0].xyxy;
    vec2 f3 = VARYING3.xy * CB3[0].xy;
    vec2 f4 = f0.xy;
    vec2 f5 = f2.xy;
    vec2 f6 = dFdx(f5);
    vec2 f7 = dFdy(f5);
    vec2 f8 = f0.zw;
    vec2 f9 = f2.zw;
    vec2 f10 = dFdx(f9);
    vec2 f11 = dFdy(f9);
    vec2 f12 = dFdx(f3);
    vec2 f13 = dFdy(f3);
    vec4 f14 = ((texture2DGradARB(SpecularMapTexture, f4, f6, f7) * VARYING0.x) + (texture2DGradARB(SpecularMapTexture, f8, f10, f11) * VARYING0.y)) + (texture2DGradARB(SpecularMapTexture, f1, f12, f13) * VARYING0.z);
    vec2 f15 = dFdx(f5);
    vec2 f16 = dFdy(f5);
    vec4 f17 = texture2DGradARB(AlbedoMapTexture, f4, f15, f16);
    vec2 f18 = dFdx(f9);
    vec2 f19 = dFdy(f9);
    vec4 f20 = texture2DGradARB(AlbedoMapTexture, f8, f18, f19);
    vec2 f21 = dFdx(f3);
    vec2 f22 = dFdy(f3);
    vec4 f23 = texture2DGradARB(AlbedoMapTexture, f1, f21, f22);
    int f24 = int(VARYING9.x + 0.5);
    int f25 = int(VARYING9.y + 0.5);
    int f26 = int(VARYING9.z + 0.5);
    vec3 f27;
    if (!(CB4[f24 * 1 + 0].w == 0.0))
    {
        f27 = (mix(vec3(1.0), CB4[f24 * 1 + 0].xyz, vec3(f17.w)) * f17.xyz) * VARYING0.x;
    }
    else
    {
        vec2 f28 = f17.xz - vec2(0.5);
        float f29 = f28.x;
        float f30 = f28.y;
        float f31 = CB4[f24 * 1 + 0].x * f17.y;
        float f32 = (CB4[f24 * 1 + 0].y * f29) - (CB4[f24 * 1 + 0].z * f30);
        float f33 = (CB4[f24 * 1 + 0].z * f29) + (CB4[f24 * 1 + 0].y * f30);
        float f34 = f31 - f33;
        f27 = (vec3(f34, f31, f34) + (vec3(f32, f33, f32) * vec3(1.0, 1.0, -1.0))) * VARYING0.x;
    }
    vec3 f35;
    if (!(CB4[f25 * 1 + 0].w == 0.0))
    {
        f35 = f27 + ((mix(vec3(1.0), CB4[f25 * 1 + 0].xyz, vec3(f20.w)) * f20.xyz) * VARYING0.y);
    }
    else
    {
        vec2 f36 = f20.xz - vec2(0.5);
        float f37 = f36.x;
        float f38 = f36.y;
        float f39 = CB4[f25 * 1 + 0].x * f20.y;
        float f40 = (CB4[f25 * 1 + 0].y * f37) - (CB4[f25 * 1 + 0].z * f38);
        float f41 = (CB4[f25 * 1 + 0].z * f37) + (CB4[f25 * 1 + 0].y * f38);
        float f42 = f39 - f41;
        f35 = f27 + ((vec3(f42, f39, f42) + (vec3(f40, f41, f40) * vec3(1.0, 1.0, -1.0))) * VARYING0.y);
    }
    vec3 f43;
    if (!(CB4[f26 * 1 + 0].w == 0.0))
    {
        f43 = f35 + ((mix(vec3(1.0), CB4[f26 * 1 + 0].xyz, vec3(f23.w)) * f23.xyz) * VARYING0.z);
    }
    else
    {
        vec2 f44 = f23.xz - vec2(0.5);
        float f45 = f44.x;
        float f46 = f44.y;
        float f47 = CB4[f26 * 1 + 0].x * f23.y;
        float f48 = (CB4[f26 * 1 + 0].y * f45) - (CB4[f26 * 1 + 0].z * f46);
        float f49 = (CB4[f26 * 1 + 0].z * f45) + (CB4[f26 * 1 + 0].y * f46);
        float f50 = f47 - f49;
        f43 = f35 + ((vec3(f50, f47, f50) + (vec3(f48, f49, f48) * vec3(1.0, 1.0, -1.0))) * VARYING0.z);
    }
    vec3 f51 = f43 * f43;
    float f52 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    float f53 = -VARYING6.x;
    vec2 f54 = (((texture2DGradARB(NormalMapTexture, f4, dFdx(f5), dFdy(f5)) * VARYING0.x) + (texture2DGradARB(NormalMapTexture, f8, dFdx(f9), dFdy(f9)) * VARYING0.y)) + (texture2DGradARB(NormalMapTexture, f1, dFdx(f3), dFdy(f3)) * VARYING0.z)).wy * 2.0;
    vec2 f55 = f54 - vec2(1.0);
    vec3 f56 = vec3(dot(VARYING7, VARYING0.xyz));
    vec3 f57 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f53), vec3(VARYING6.y, f53, 0.0), f56) * f55.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f56) * f55.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - f54, f55), 0.0, 1.0)))), 0.0).xyz;
    vec3 f58 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f59 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f60 = VARYING4.yzx - (VARYING4.yzx * f59);
    vec4 f61 = vec4(clamp(f59, 0.0, 1.0));
    vec4 f62 = mix(texture3D(LightMapTexture, f60), vec4(0.0), f61);
    vec4 f63 = mix(texture3D(LightGridSkylightTexture, f60), vec4(1.0), f61);
    vec4 f64 = texture2D(ShadowMapTexture, f58.xy);
    float f65 = f58.z;
    float f66 = 0.08900000154972076416015625 + (f14.y * 0.9110000133514404296875);
    float f67 = f14.x;
    vec3 f68 = -CB0[11].xyz;
    float f69 = (dot(f57, f68) * CB0[9].w) * ((1.0 - ((step(f64.x, f65) * clamp(CB0[24].z + (CB0[24].w * abs(f65 - 0.5)), 0.0, 1.0)) * f64.y)) * f63.y);
    vec3 f70 = normalize(f68 + normalize(VARYING8));
    float f71 = clamp(f69, 0.0, 1.0);
    float f72 = f66 * f66;
    float f73 = max(0.001000000047497451305389404296875, dot(f57, f70));
    float f74 = dot(f68, f70);
    float f75 = 1.0 - f74;
    float f76 = f75 * f75;
    float f77 = (f76 * f76) * f75;
    vec3 f78 = vec3(f77) + (mix(vec3(0.039999999105930328369140625), f51, vec3(f67)) * (1.0 - f77));
    float f79 = f72 * f72;
    float f80 = (((f73 * f79) - f73) * f73) + 1.0;
    float f81 = 1.0 - f67;
    vec3 f82 = (((((((vec3(f81) - (f78 * ((CB0[26].w * f52) * f81))) * CB0[10].xyz) * f71) + (CB0[12].xyz * (f81 * clamp(-f69, 0.0, 1.0)))) + (min((f62.xyz * (f62.w * 120.0)) + (CB0[8].xyz + (CB0[9].xyz * f63.x)), vec3(CB0[16].w)) * 1.0)) + vec3((f14.z * 2.0) * f52)) * f51) + (((((f78 * (((f79 + (f79 * f79)) / (((f80 * f80) * ((f74 * 3.0) + 0.5)) * ((f73 * 0.75) + 0.25))) * f71)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * f52) * VARYING0.w);
    vec4 f83 = vec4(0.0);
    f83.x = f82.x;
    vec4 f84 = f83;
    f84.y = f82.y;
    vec4 f85 = f84;
    f85.z = f82.z;
    vec4 f86 = f85;
    f86.w = 1.0;
    vec3 f87 = mix(CB0[14].xyz, f86.xyz, vec3(clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0)));
    vec4 f88 = f86;
    f88.x = f87.x;
    vec4 f89 = f88;
    f89.y = f87.y;
    vec4 f90 = f89;
    f90.z = f87.z;
    vec3 f91 = sqrt(clamp(f90.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f92 = f90;
    f92.x = f91.x;
    vec4 f93 = f92;
    f93.y = f91.y;
    vec4 f94 = f93;
    f94.z = f91.z;
    gl_FragData[0] = f94;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
