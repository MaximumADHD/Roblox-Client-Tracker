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
    vec3 f13 = normalize(VARYING6);
    vec2 f14 = dFdx(f3);
    vec2 f15 = dFdy(f3);
    vec4 f16 = texture2DGradARB(AlbedoMapTexture, f0, f14, f15);
    vec2 f17 = dFdx(f4);
    vec2 f18 = dFdy(f4);
    vec4 f19 = texture2DGradARB(AlbedoMapTexture, f1, f17, f18);
    vec2 f20 = dFdx(f5);
    vec2 f21 = dFdy(f5);
    vec4 f22 = texture2DGradARB(AlbedoMapTexture, f2, f20, f21);
    int f23 = int(VARYING9.x + 0.5);
    int f24 = int(VARYING9.y + 0.5);
    int f25 = int(VARYING9.z + 0.5);
    vec3 f26;
    if (!(CB4[f23 * 1 + 0].w == 0.0))
    {
        f26 = (mix(vec3(1.0), CB4[f23 * 1 + 0].xyz, vec3(f16.w)) * f16.xyz) * VARYING0.x;
    }
    else
    {
        vec2 f27 = f16.xz - vec2(0.5);
        float f28 = f27.x;
        float f29 = f27.y;
        float f30 = CB4[f23 * 1 + 0].x * f16.y;
        float f31 = (CB4[f23 * 1 + 0].y * f28) - (CB4[f23 * 1 + 0].z * f29);
        float f32 = (CB4[f23 * 1 + 0].z * f28) + (CB4[f23 * 1 + 0].y * f29);
        float f33 = f30 - f32;
        f26 = (vec3(f33, f30, f33) + (vec3(f31, f32, f31) * vec3(1.0, 1.0, -1.0))) * VARYING0.x;
    }
    vec3 f34;
    if (!(CB4[f24 * 1 + 0].w == 0.0))
    {
        f34 = f26 + ((mix(vec3(1.0), CB4[f24 * 1 + 0].xyz, vec3(f19.w)) * f19.xyz) * VARYING0.y);
    }
    else
    {
        vec2 f35 = f19.xz - vec2(0.5);
        float f36 = f35.x;
        float f37 = f35.y;
        float f38 = CB4[f24 * 1 + 0].x * f19.y;
        float f39 = (CB4[f24 * 1 + 0].y * f36) - (CB4[f24 * 1 + 0].z * f37);
        float f40 = (CB4[f24 * 1 + 0].z * f36) + (CB4[f24 * 1 + 0].y * f37);
        float f41 = f38 - f40;
        f34 = f26 + ((vec3(f41, f38, f41) + (vec3(f39, f40, f39) * vec3(1.0, 1.0, -1.0))) * VARYING0.y);
    }
    vec3 f42;
    if (!(CB4[f25 * 1 + 0].w == 0.0))
    {
        f42 = f34 + ((mix(vec3(1.0), CB4[f25 * 1 + 0].xyz, vec3(f22.w)) * f22.xyz) * VARYING0.z);
    }
    else
    {
        vec2 f43 = f22.xz - vec2(0.5);
        float f44 = f43.x;
        float f45 = f43.y;
        float f46 = CB4[f25 * 1 + 0].x * f22.y;
        float f47 = (CB4[f25 * 1 + 0].y * f44) - (CB4[f25 * 1 + 0].z * f45);
        float f48 = (CB4[f25 * 1 + 0].z * f44) + (CB4[f25 * 1 + 0].y * f45);
        float f49 = f46 - f48;
        f42 = f34 + ((vec3(f49, f46, f49) + (vec3(f47, f48, f47) * vec3(1.0, 1.0, -1.0))) * VARYING0.z);
    }
    vec3 f50 = f42 * f42;
    float f51 = clamp(1.0 - (VARYING5.w * CB0[28].y), 0.0, 1.0);
    float f52 = 0.08900000154972076416015625 + (f12.y * 0.9110000133514404296875);
    float f53 = f12.x;
    vec3 f54 = VARYING5.xyz - (CB0[16].xyz * 0.001000000047497451305389404296875);
    float f55 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f56 = VARYING4.yzx - (VARYING4.yzx * f55);
    vec4 f57 = vec4(clamp(f55, 0.0, 1.0));
    vec4 f58 = mix(texture3D(LightMapTexture, f56), vec4(0.0), f57);
    vec4 f59 = mix(texture3D(LightGridSkylightTexture, f56), vec4(1.0), f57);
    vec4 f60 = texture2D(ShadowMapTexture, f54.xy);
    float f61 = f54.z;
    vec3 f62 = -CB0[16].xyz;
    float f63 = dot(f13, f62) * ((1.0 - ((step(f60.x, f61) * clamp(CB0[29].z + (CB0[29].w * abs(f61 - 0.5)), 0.0, 1.0)) * f60.y)) * f59.y);
    vec3 f64 = normalize(normalize(VARYING8) + f62);
    float f65 = clamp(f63, 0.0, 1.0);
    float f66 = f52 * f52;
    float f67 = max(0.001000000047497451305389404296875, dot(f13, f64));
    float f68 = dot(f62, f64);
    float f69 = 1.0 - f68;
    float f70 = f69 * f69;
    float f71 = (f70 * f70) * f69;
    vec3 f72 = vec3(f71) + (mix(vec3(0.039999999105930328369140625), f50, vec3(f53)) * (1.0 - f71));
    float f73 = f66 * f66;
    float f74 = (((f67 * f73) - f67) * f67) + 1.0;
    float f75 = 1.0 - f53;
    vec3 f76 = (((vec3((f12.z * 2.0) * f51) + (min((f58.xyz * (f58.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f59.x)), vec3(CB0[21].w)) * 1.0)) + ((((vec3(f75) - (f72 * ((CB0[31].w * f51) * f75))) * CB0[15].xyz) * f65) + (CB0[17].xyz * (f75 * clamp(-f63, 0.0, 1.0))))) * f50) + (((f72 * (((f73 + (f73 * f73)) / (((f74 * f74) * ((f68 * 3.0) + 0.5)) * ((f67 * 0.75) + 0.25))) * f65)) * CB0[15].xyz) * (f51 * VARYING0.w));
    vec4 f77 = vec4(0.0);
    f77.x = f76.x;
    vec4 f78 = f77;
    f78.y = f76.y;
    vec4 f79 = f78;
    f79.z = f76.z;
    vec4 f80 = f79;
    f80.w = 1.0;
    vec3 f81 = mix(CB0[19].xyz, f80.xyz, vec3(clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f82 = f80;
    f82.x = f81.x;
    vec4 f83 = f82;
    f83.y = f81.y;
    vec4 f84 = f83;
    f84.z = f81.z;
    vec3 f85 = sqrt(clamp(f84.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f86 = f84;
    f86.x = f85.x;
    vec4 f87 = f86;
    f87.y = f85.y;
    vec4 f88 = f87;
    f88.z = f85.z;
    gl_FragData[0] = f88;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$SpecularMapTexture=s3
//$$AlbedoMapTexture=s0
