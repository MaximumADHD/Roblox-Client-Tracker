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
    vec2 f27 = f17.xz - vec2(0.5);
    float f28 = f27.x;
    vec4 f29 = f17.yxzw;
    f29.y = f28;
    float f30 = f27.y;
    vec4 f31 = f29;
    f31.z = f30;
    vec2 f32 = f20.xz - vec2(0.5);
    float f33 = f32.x;
    vec4 f34 = f20.yxzw;
    f34.y = f33;
    float f35 = f32.y;
    vec4 f36 = f34;
    f36.z = f35;
    vec2 f37 = f23.xz - vec2(0.5);
    float f38 = f37.x;
    vec4 f39 = f23.yxzw;
    f39.y = f38;
    float f40 = f37.y;
    vec4 f41 = f39;
    f41.z = f40;
    vec3 f42;
    vec4 f43;
    if (!(CB4[f24 * 1 + 0].w == 0.0))
    {
        f43 = f31;
        f42 = mix(vec3(1.0), CB4[f24 * 1 + 0].xyz, vec3(f17.w)) * VARYING0.x;
    }
    else
    {
        vec4 f44 = f31;
        f44.x = CB4[f24 * 1 + 0].x * f17.y;
        vec4 f45 = f44;
        f45.y = (CB4[f24 * 1 + 0].y * f28) - (CB4[f24 * 1 + 0].z * f30);
        vec4 f46 = f45;
        f46.z = (CB4[f24 * 1 + 0].z * f28) + (CB4[f24 * 1 + 0].y * f30);
        f43 = f46;
        f42 = vec3(VARYING0.x);
    }
    vec3 f47;
    vec4 f48;
    if (!(CB4[f25 * 1 + 0].w == 0.0))
    {
        f48 = f36;
        f47 = f42 + (mix(vec3(1.0), CB4[f25 * 1 + 0].xyz, vec3(f20.w)) * VARYING0.y);
    }
    else
    {
        vec4 f49 = f36;
        f49.x = CB4[f25 * 1 + 0].x * f20.y;
        vec4 f50 = f49;
        f50.y = (CB4[f25 * 1 + 0].y * f33) - (CB4[f25 * 1 + 0].z * f35);
        vec4 f51 = f50;
        f51.z = (CB4[f25 * 1 + 0].z * f33) + (CB4[f25 * 1 + 0].y * f35);
        f48 = f51;
        f47 = f42 + vec3(VARYING0.y);
    }
    vec3 f52;
    vec4 f53;
    if (!(CB4[f26 * 1 + 0].w == 0.0))
    {
        f53 = f41;
        f52 = f47 + (mix(vec3(1.0), CB4[f26 * 1 + 0].xyz, vec3(f23.w)) * VARYING0.z);
    }
    else
    {
        vec4 f54 = f41;
        f54.x = CB4[f26 * 1 + 0].x * f23.y;
        vec4 f55 = f54;
        f55.y = (CB4[f26 * 1 + 0].y * f38) - (CB4[f26 * 1 + 0].z * f40);
        vec4 f56 = f55;
        f56.z = (CB4[f26 * 1 + 0].z * f38) + (CB4[f26 * 1 + 0].y * f40);
        f53 = f56;
        f52 = f47 + vec3(VARYING0.z);
    }
    vec4 f57 = ((f43 * VARYING0.x) + (f48 * VARYING0.y)) + (f53 * VARYING0.z);
    float f58 = f57.x;
    float f59 = f58 - f57.z;
    vec3 f60 = vec4(vec3(f59, f58, f59) + (vec3(f57.yzy) * vec3(1.0, 1.0, -1.0)), 0.0).xyz * f52;
    vec4 f61 = vec4(0.0);
    f61.x = f60.x;
    vec4 f62 = f61;
    f62.y = f60.y;
    vec4 f63 = f62;
    f63.z = f60.z;
    vec3 f64 = f63.xyz * f63.xyz;
    float f65 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    vec2 f66 = (((texture2DGradARB(NormalMapTexture, f4, dFdx(f5), dFdy(f5)) * VARYING0.x) + (texture2DGradARB(NormalMapTexture, f8, dFdx(f9), dFdy(f9)) * VARYING0.y)) + (texture2DGradARB(NormalMapTexture, f1, dFdx(f3), dFdy(f3)) * VARYING0.z)).wy * 2.0;
    vec2 f67 = f66 - vec2(1.0);
    vec3 f68 = vec3(dot(VARYING7, VARYING0.xyz));
    vec3 f69 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f68) * f67.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f68) * f67.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - f66, f67), 0.0, 1.0)))), 0.0).xyz;
    vec3 f70 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f71 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f72 = VARYING4.yzx - (VARYING4.yzx * f71);
    vec4 f73 = vec4(clamp(f71, 0.0, 1.0));
    vec4 f74 = mix(texture3D(LightMapTexture, f72), vec4(0.0), f73);
    vec4 f75 = mix(texture3D(LightGridSkylightTexture, f72), vec4(1.0), f73);
    vec4 f76 = texture2D(ShadowMapTexture, f70.xy);
    float f77 = f70.z;
    float f78 = 0.08900000154972076416015625 + (f14.y * 0.9110000133514404296875);
    float f79 = f14.x;
    vec3 f80 = -CB0[11].xyz;
    float f81 = (dot(f69, f80) * CB0[9].w) * ((1.0 - ((step(f76.x, f77) * clamp(CB0[24].z + (CB0[24].w * abs(f77 - 0.5)), 0.0, 1.0)) * f76.y)) * f75.y);
    vec3 f82 = normalize(f80 + normalize(VARYING8));
    float f83 = clamp(f81, 0.0, 1.0);
    float f84 = f78 * f78;
    float f85 = max(0.001000000047497451305389404296875, dot(f69, f82));
    float f86 = dot(f80, f82);
    float f87 = 1.0 - f86;
    float f88 = f87 * f87;
    float f89 = (f88 * f88) * f87;
    vec3 f90 = vec3(f89) + (mix(vec3(0.039999999105930328369140625), f64, vec3(f79)) * (1.0 - f89));
    float f91 = f84 * f84;
    float f92 = (((f85 * f91) - f85) * f85) + 1.0;
    float f93 = 1.0 - f79;
    vec3 f94 = (((((((vec3(f93) - (f90 * ((CB0[26].w * f65) * f93))) * CB0[10].xyz) * f83) + (CB0[12].xyz * (f93 * clamp(-f81, 0.0, 1.0)))) + (min((f74.xyz * (f74.w * 120.0)) + (CB0[8].xyz + (CB0[9].xyz * f75.x)), vec3(CB0[16].w)) * 1.0)) + vec3((f14.z * 2.0) * f65)) * f64) + (((((f90 * (((f91 + (f91 * f91)) / (((f92 * f92) * ((f86 * 3.0) + 0.5)) * ((f85 * 0.75) + 0.25))) * f83)) * CB0[10].xyz) * (CB0[9].w * CB0[9].w)) * f65) * VARYING0.w);
    vec4 f95 = vec4(0.0);
    f95.x = f94.x;
    vec4 f96 = f95;
    f96.y = f94.y;
    vec4 f97 = f96;
    f97.z = f94.z;
    vec4 f98 = f97;
    f98.w = 1.0;
    vec3 f99 = mix(CB0[14].xyz, f98.xyz, vec3(clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0)));
    vec4 f100 = f98;
    f100.x = f99.x;
    vec4 f101 = f100;
    f101.y = f99.y;
    vec4 f102 = f101;
    f102.z = f99.z;
    vec3 f103 = sqrt(clamp(f102.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f104 = f102;
    f104.x = f103.x;
    vec4 f105 = f104;
    f105.y = f103.y;
    vec4 f106 = f105;
    f106.z = f103.z;
    gl_FragData[0] = f106;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
