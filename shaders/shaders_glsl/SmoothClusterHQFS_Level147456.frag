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

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec3 VARYING4;
varying vec4 VARYING5;
varying vec3 VARYING6;
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
        vec4 f30 = f17.yxzw;
        f30.y = f29;
        float f31 = f28.y;
        vec4 f32 = f30;
        f32.z = f31;
        vec3 f33 = vec3(0.0);
        f33.x = CB4[f24 * 1 + 0].x * f17.y;
        vec3 f34 = f33;
        f34.y = (CB4[f24 * 1 + 0].y * f29) - (CB4[f24 * 1 + 0].z * f31);
        vec3 f35 = f34;
        f35.z = (CB4[f24 * 1 + 0].z * f29) + (CB4[f24 * 1 + 0].y * f31);
        vec3 f36 = mix(f35, f32.xyz, vec3(CB4[f24 * 1 + 0].w));
        float f37 = f36.x;
        float f38 = f37 - f36.z;
        f27 = (vec3(f38, f37, f38) + (vec3(f36.yzy) * vec3(1.0, 1.0, -1.0))) * VARYING0.x;
    }
    vec3 f39;
    if (!(CB4[f25 * 1 + 0].w == 0.0))
    {
        f39 = f27 + ((mix(vec3(1.0), CB4[f25 * 1 + 0].xyz, vec3(f20.w)) * f20.xyz) * VARYING0.y);
    }
    else
    {
        vec2 f40 = f20.xz - vec2(0.5);
        float f41 = f40.x;
        vec4 f42 = f20.yxzw;
        f42.y = f41;
        float f43 = f40.y;
        vec4 f44 = f42;
        f44.z = f43;
        vec3 f45 = vec3(0.0);
        f45.x = CB4[f25 * 1 + 0].x * f20.y;
        vec3 f46 = f45;
        f46.y = (CB4[f25 * 1 + 0].y * f41) - (CB4[f25 * 1 + 0].z * f43);
        vec3 f47 = f46;
        f47.z = (CB4[f25 * 1 + 0].z * f41) + (CB4[f25 * 1 + 0].y * f43);
        vec3 f48 = mix(f47, f44.xyz, vec3(CB4[f25 * 1 + 0].w));
        float f49 = f48.x;
        float f50 = f49 - f48.z;
        f39 = f27 + ((vec3(f50, f49, f50) + (vec3(f48.yzy) * vec3(1.0, 1.0, -1.0))) * VARYING0.y);
    }
    vec3 f51;
    if (!(CB4[f26 * 1 + 0].w == 0.0))
    {
        f51 = f39 + ((mix(vec3(1.0), CB4[f26 * 1 + 0].xyz, vec3(f23.w)) * f23.xyz) * VARYING0.z);
    }
    else
    {
        vec2 f52 = f23.xz - vec2(0.5);
        float f53 = f52.x;
        vec4 f54 = f23.yxzw;
        f54.y = f53;
        float f55 = f52.y;
        vec4 f56 = f54;
        f56.z = f55;
        vec3 f57 = vec3(0.0);
        f57.x = CB4[f26 * 1 + 0].x * f23.y;
        vec3 f58 = f57;
        f58.y = (CB4[f26 * 1 + 0].y * f53) - (CB4[f26 * 1 + 0].z * f55);
        vec3 f59 = f58;
        f59.z = (CB4[f26 * 1 + 0].z * f53) + (CB4[f26 * 1 + 0].y * f55);
        vec3 f60 = mix(f59, f56.xyz, vec3(CB4[f26 * 1 + 0].w));
        float f61 = f60.x;
        float f62 = f61 - f60.z;
        f51 = f39 + ((vec3(f62, f61, f62) + (vec3(f60.yzy) * vec3(1.0, 1.0, -1.0))) * VARYING0.z);
    }
    vec3 f63 = f51 * f51;
    float f64 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec3 f65 = normalize(VARYING6);
    vec3 f66 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f67 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f68 = VARYING4.yzx - (VARYING4.yzx * f67);
    vec4 f69 = vec4(clamp(f67, 0.0, 1.0));
    vec4 f70 = mix(texture3D(LightMapTexture, f68), vec4(0.0), f69);
    vec4 f71 = mix(texture3D(LightGridSkylightTexture, f68), vec4(1.0), f69);
    vec4 f72 = texture2D(ShadowMapTexture, f66.xy);
    float f73 = f66.z;
    float f74 = f14.y;
    float f75 = f14.x;
    vec3 f76 = -CB0[11].xyz;
    float f77 = (dot(f65, f76) * CB0[9].w) * ((1.0 - ((step(f72.x, f73) * clamp(CB0[24].z + (CB0[24].w * abs(f73 - 0.5)), 0.0, 1.0)) * f72.y)) * f71.y);
    vec3 f78 = normalize(normalize(VARYING8) - CB0[11].xyz);
    float f79 = clamp(f77, 0.0, 1.0);
    float f80 = f74 * f74;
    float f81 = max(0.001000000047497451305389404296875, dot(f65, f78));
    float f82 = dot(f76, f78);
    float f83 = 1.0 - f82;
    float f84 = f83 * f83;
    float f85 = (f84 * f84) * f83;
    vec3 f86 = vec3(f85) + (mix(vec3(0.039999999105930328369140625), f63, vec3(f75)) * (1.0 - f85));
    float f87 = f80 * f80;
    float f88 = (((f81 * f87) - f81) * f81) + 1.0;
    float f89 = 1.0 - f75;
    vec3 f90 = (((((((vec3(f89) - (f86 * ((CB0[26].w * f64) * f89))) * CB0[10].xyz) * f79) + (CB0[12].xyz * (f89 * clamp(-f77, 0.0, 1.0)))) + (min((f70.xyz * (f70.w * 120.0)) + (CB0[8].xyz + (CB0[9].xyz * f71.x)), vec3(CB0[16].w)) * 1.0)) + vec3((f14.z * 2.0) * f64)) * f63) + (((((f86 * (((f87 + (f87 * f87)) / (((f88 * f88) * ((f82 * 3.0) + 0.5)) * ((f81 * 0.75) + 0.25))) * f79)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * f64) * VARYING0.w);
    vec4 f91 = vec4(0.0);
    f91.x = f90.x;
    vec4 f92 = f91;
    f92.y = f90.y;
    vec4 f93 = f92;
    f93.z = f90.z;
    vec4 f94 = f93;
    f94.w = 1.0;
    vec3 f95 = mix(CB0[14].xyz, f94.xyz, vec3(clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0)));
    vec4 f96 = f94;
    f96.x = f95.x;
    vec4 f97 = f96;
    f97.y = f95.y;
    vec4 f98 = f97;
    f98.z = f95.z;
    vec3 f99 = sqrt(clamp(f98.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f100 = f98;
    f100.x = f99.x;
    vec4 f101 = f100;
    f101.y = f99.y;
    vec4 f102 = f101;
    f102.z = f99.z;
    gl_FragData[0] = f102;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
