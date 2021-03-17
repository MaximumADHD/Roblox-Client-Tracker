#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform vec4 CB3[1];
uniform vec4 CB4[36];
uniform vec4 CB5[74];
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
varying vec4 VARYING8;
varying vec3 VARYING9;
varying vec4 VARYING10;

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
    vec4 f8 = texture2DGradARB(SpecularMapTexture, f4, f6, f7);
    vec2 f9 = f0.zw;
    vec2 f10 = f2.zw;
    vec2 f11 = dFdx(f10);
    vec2 f12 = dFdy(f10);
    vec4 f13 = texture2DGradARB(SpecularMapTexture, f9, f11, f12);
    vec2 f14 = dFdx(f3);
    vec2 f15 = dFdy(f3);
    vec4 f16 = texture2DGradARB(SpecularMapTexture, f1, f14, f15);
    vec3 f17;
    if (VARYING8.w < 1.0)
    {
        ivec3 f18 = ivec3(VARYING8.xyz + vec3(0.5));
        int f19 = f18.x;
        int f20 = f18.y;
        int f21 = f18.z;
        float f22 = dot(VARYING0.xyz, vec3(CB5[f19 * 1 + 0].z, CB5[f20 * 1 + 0].z, CB5[f21 * 1 + 0].z));
        float f23 = f8.w;
        float f24 = f13.w;
        float f25 = f16.w;
        vec3 f26 = vec3(f23, f24, f25);
        f26.x = clamp((f23 * CB5[f19 * 1 + 0].x) + CB5[f19 * 1 + 0].y, 0.0, 1.0);
        vec3 f27 = f26;
        f27.y = clamp((f24 * CB5[f20 * 1 + 0].x) + CB5[f20 * 1 + 0].y, 0.0, 1.0);
        vec3 f28 = f27;
        f28.z = clamp((f25 * CB5[f21 * 1 + 0].x) + CB5[f21 * 1 + 0].y, 0.0, 1.0);
        vec3 f29 = VARYING0.xyz * f28;
        float f30 = 1.0 / f22;
        float f31 = 0.5 * f22;
        float f32 = f29.x;
        float f33 = f29.y;
        float f34 = f29.z;
        float f35 = clamp(((f32 - max(f33, f34)) + f31) * f30, 0.0, 1.0);
        float f36 = clamp(((f33 - max(f32, f34)) + f31) * f30, 0.0, 1.0);
        float f37 = clamp(((f34 - max(f32, f33)) + f31) * f30, 0.0, 1.0);
        vec2 f38 = dFdx(VARYING1.xy);
        vec2 f39 = dFdy(VARYING1.xy);
        f17 = mix(vec3(f35, f36, f37) / vec3((f35 + f36) + f37), VARYING0.xyz, vec3(clamp((sqrt(max(dot(f38, f38), dot(f39, f39))) * 7.0) + clamp(VARYING8.w, 0.0, 1.0), 0.0, 1.0)));
    }
    else
    {
        f17 = VARYING0.xyz;
    }
    vec4 f40 = ((f8 * f17.x) + (f13 * f17.y)) + (f16 * f17.z);
    vec4 f41 = texture2DGradARB(AlbedoMapTexture, f4, dFdx(f5), dFdy(f5));
    vec4 f42 = texture2DGradARB(AlbedoMapTexture, f9, dFdx(f10), dFdy(f10));
    vec4 f43 = texture2DGradARB(AlbedoMapTexture, f1, dFdx(f3), dFdy(f3));
    int f44 = int(VARYING10.x + 0.5);
    int f45 = int(VARYING10.y + 0.5);
    int f46 = int(VARYING10.z + 0.5);
    vec2 f47 = f41.xz - vec2(0.5);
    vec2 f48 = f42.xz - vec2(0.5);
    vec2 f49 = f43.xz - vec2(0.5);
    vec3 f50 = vec3(0.0);
    f50.x = CB4[f44 * 1 + 0].x * f41.y;
    float f51 = f47.x;
    float f52 = f47.y;
    vec3 f53 = f50;
    f53.y = (CB4[f44 * 1 + 0].y * f51) - (CB4[f44 * 1 + 0].z * f52);
    vec3 f54 = f53;
    f54.z = (CB4[f44 * 1 + 0].z * f51) + (CB4[f44 * 1 + 0].y * f52);
    vec3 f55 = vec3(0.0);
    f55.x = CB4[f45 * 1 + 0].x * f42.y;
    float f56 = f48.x;
    float f57 = f48.y;
    vec3 f58 = f55;
    f58.y = (CB4[f45 * 1 + 0].y * f56) - (CB4[f45 * 1 + 0].z * f57);
    vec3 f59 = f58;
    f59.z = (CB4[f45 * 1 + 0].z * f56) + (CB4[f45 * 1 + 0].y * f57);
    vec3 f60 = vec3(0.0);
    f60.x = CB4[f46 * 1 + 0].x * f43.y;
    float f61 = f49.x;
    float f62 = f49.y;
    vec3 f63 = f60;
    f63.y = (CB4[f46 * 1 + 0].y * f61) - (CB4[f46 * 1 + 0].z * f62);
    vec3 f64 = f63;
    f64.z = (CB4[f46 * 1 + 0].z * f61) + (CB4[f46 * 1 + 0].y * f62);
    vec4 f65 = ((vec4(f54.x, f54.y, f54.z, f41.w) * f17.x) + (vec4(f59.x, f59.y, f59.z, f42.w) * f17.y)) + (vec4(f64.x, f64.y, f64.z, f43.w) * f17.z);
    float f66 = f65.x;
    float f67 = f66 - f65.z;
    vec3 f68 = vec4(vec3(f67, f66, f67) + (vec3(f65.yzy) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    float f69 = clamp(1.0 - (VARYING5.w * CB0[23].y), 0.0, 1.0);
    float f70 = -VARYING6.x;
    vec2 f71 = (((texture2DGradARB(NormalMapTexture, f4, dFdx(f5), dFdy(f5)) * f17.x) + (texture2DGradARB(NormalMapTexture, f9, dFdx(f10), dFdy(f10)) * f17.y)) + (texture2DGradARB(NormalMapTexture, f1, dFdx(f3), dFdy(f3)) * f17.z)).wy * 2.0;
    vec2 f72 = f71 - vec2(1.0);
    vec3 f73 = normalize(((vec3(f72, sqrt(clamp(1.0 + dot(vec2(1.0) - f71, f72), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f17, f17))) + vec3(0.0, 0.0, 1.0));
    vec3 f74 = vec3(dot(VARYING7, f17));
    vec3 f75 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, f70), vec3(VARYING6.y, f70, 0.0), f74) * f73.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, VARYING6.z, -VARYING6.y), f74) * f73.y)) + (VARYING6 * f73.z)), 0.0).xyz;
    vec3 f76 = VARYING5.xyz - (CB0[11].xyz * 0.001000000047497451305389404296875);
    float f77 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f78 = VARYING4.yzx - (VARYING4.yzx * f77);
    vec4 f79 = vec4(clamp(f77, 0.0, 1.0));
    vec4 f80 = mix(texture3D(LightMapTexture, f78), vec4(0.0), f79);
    vec4 f81 = mix(texture3D(LightGridSkylightTexture, f78), vec4(1.0), f79);
    vec4 f82 = texture2D(ShadowMapTexture, f76.xy);
    float f83 = f76.z;
    float f84 = f40.y;
    vec3 f85 = -CB0[11].xyz;
    float f86 = dot(f75, f85) * ((1.0 - ((step(f82.x, f83) * clamp(CB0[24].z + (CB0[24].w * abs(f83 - 0.5)), 0.0, 1.0)) * f82.y)) * f81.y);
    vec3 f87 = normalize(f85 + normalize(VARYING9));
    float f88 = clamp(f86, 0.0, 1.0);
    float f89 = f84 * f84;
    float f90 = max(0.001000000047497451305389404296875, dot(f75, f87));
    float f91 = dot(f85, f87);
    float f92 = 1.0 - f91;
    float f93 = f92 * f92;
    float f94 = (f93 * f93) * f92;
    vec3 f95 = vec3(f94) + (vec3(0.039999999105930328369140625) * (1.0 - f94));
    float f96 = f89 * f89;
    float f97 = (((f90 * f96) - f90) * f90) + 1.0;
    vec3 f98 = (((((((vec3(1.0) - (f95 * (CB0[26].w * f69))) * CB0[10].xyz) * f88) + (CB0[12].xyz * clamp(-f86, 0.0, 1.0))) + (min((f80.xyz * (f80.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f81.x)), vec3(CB0[16].w)) * 1.0)) + vec3((f40.z * 2.0) * f69)) * (f68 * f68).xyz) + ((((f95 * (((f96 + (f96 * f96)) / (((f97 * f97) * ((f91 * 3.0) + 0.5)) * ((f90 * 0.75) + 0.25))) * f88)) * CB0[10].xyz) * f69) * VARYING0.w);
    vec4 f99 = vec4(f98.x, f98.y, f98.z, vec4(0.0).w);
    f99.w = 1.0;
    vec3 f100 = sqrt(clamp(mix(CB0[14].xyz, f99.xyz, vec3(clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0))).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    gl_FragData[0] = vec4(f100.x, f100.y, f100.z, f99.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
//$$NormalMapTexture=s4
