#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
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
varying vec3 VARYING9;

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
    float f52 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    vec3 f53 = normalize(VARYING6);
    float f54 = 0.08900000154972076416015625 + (f14.y * 0.9110000133514404296875);
    float f55 = f14.x;
    vec3 f56 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f57 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f58 = VARYING4.yzx - (VARYING4.yzx * f57);
    vec4 f59 = vec4(clamp(f57, 0.0, 1.0));
    vec4 f60 = mix(texture3D(LightMapTexture, f58), vec4(0.0), f59);
    vec4 f61 = mix(texture3D(LightGridSkylightTexture, f58), vec4(1.0), f59);
    vec4 f62 = texture2D(ShadowMapTexture, f56.xy);
    float f63 = f56.z;
    vec3 f64 = -CB0[16].xyz;
    float f65 = dot(f53, f64) * ((1.0 - ((step(f62.x, f63) * clamp(CB0[29].z + (CB0[29].w * abs(f63 - 0.5)), 0.0, 1.0)) * f62.y)) * f61.y);
    vec3 f66 = normalize(normalize(VARYING8) - CB0[16].xyz);
    float f67 = clamp(f65, 0.0, 1.0);
    float f68 = f54 * f54;
    float f69 = max(0.001000000047497451305389404296875, dot(f53, f66));
    float f70 = dot(f64, f66);
    float f71 = 1.0 - f70;
    float f72 = f71 * f71;
    float f73 = (f72 * f72) * f71;
    vec3 f74 = vec3(f73) + (mix(vec3(0.039999999105930328369140625), f51, vec3(f55)) * (1.0 - f73));
    float f75 = f68 * f68;
    float f76 = (((f69 * f75) - f69) * f69) + 1.0;
    float f77 = 1.0 - f55;
    vec3 f78 = (((((((vec3(f77) - (f74 * ((CB0[31].w * f52) * f77))) * CB0[15].xyz) * f67) + (CB0[17].xyz * (f77 * clamp(-f65, 0.0, 1.0)))) + (min((f60.xyz * (f60.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f61.x)), vec3(CB0[21].w)) * 1.0)) + vec3((f14.z * 2.0) * f52)) * f51) + ((((f74 * (((f75 + (f75 * f75)) / max(((f76 * f76) * ((f70 * 3.0) + 0.5)) * ((f69 * 0.75) + 0.25), 7.0000001869630068540573120117188e-05)) * f67)) * CB0[15].xyz) * 1.0) * (f52 * VARYING0.w));
    vec4 f79 = vec4(0.0);
    f79.x = f78.x;
    vec4 f80 = f79;
    f80.y = f78.y;
    vec4 f81 = f80;
    f81.z = f78.z;
    vec4 f82 = f81;
    f82.w = 1.0;
    vec3 f83 = mix(CB0[19].xyz, f82.xyz, vec3(clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f84 = f82;
    f84.x = f83.x;
    vec4 f85 = f84;
    f85.y = f83.y;
    vec4 f86 = f85;
    f86.z = f83.z;
    vec3 f87 = sqrt(clamp(f86.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f88 = f86;
    f88.x = f87.x;
    vec4 f89 = f88;
    f89.y = f87.y;
    vec4 f90 = f89;
    f90.z = f87.z;
    gl_FragData[0] = f90;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
