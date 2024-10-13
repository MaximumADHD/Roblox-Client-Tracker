#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <ExtraData.h>
uniform vec4 CB3[1];
uniform vec4 CB4[63];
uniform sampler2D SpecularMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D AlbedoMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec3 VARYING4;
varying vec3 VARYING5;
varying vec3 VARYING6;

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
    vec2 f12 = dFdx(f3);
    vec2 f13 = dFdy(f3);
    vec2 f14 = dFdx(f4);
    vec2 f15 = dFdy(f4);
    vec2 f16 = dFdx(f5);
    vec2 f17 = dFdy(f5);
    vec2 f18 = (((texture2DGradARB(NormalMapTexture, f0, f12, f13) * VARYING0.x) + (texture2DGradARB(NormalMapTexture, f1, f14, f15) * VARYING0.y)) + (texture2DGradARB(NormalMapTexture, f2, f16, f17) * VARYING0.z)).wy * 2.0;
    vec2 f19 = f18 - vec2(1.0);
    vec3 f20 = vec3(dot(VARYING5, VARYING0.xyz));
    vec2 f21 = dFdx(f3);
    vec2 f22 = dFdy(f3);
    vec4 f23 = texture2DGradARB(AlbedoMapTexture, f0, f21, f22);
    vec2 f24 = dFdx(f4);
    vec2 f25 = dFdy(f4);
    vec4 f26 = texture2DGradARB(AlbedoMapTexture, f1, f24, f25);
    vec2 f27 = dFdx(f5);
    vec2 f28 = dFdy(f5);
    vec4 f29 = texture2DGradARB(AlbedoMapTexture, f2, f27, f28);
    int f30 = int(VARYING6.x + 0.5);
    int f31 = int(VARYING6.y + 0.5);
    int f32 = int(VARYING6.z + 0.5);
    vec3 f33;
    if (!(CB4[f30 * 1 + 0].w == 0.0))
    {
        f33 = (mix(vec3(1.0), CB4[f30 * 1 + 0].xyz, vec3(f23.w)) * f23.xyz) * VARYING0.x;
    }
    else
    {
        vec2 f34 = f23.xz - vec2(0.5);
        float f35 = f34.x;
        float f36 = f34.y;
        float f37 = CB4[f30 * 1 + 0].x * f23.y;
        float f38 = (CB4[f30 * 1 + 0].y * f35) - (CB4[f30 * 1 + 0].z * f36);
        float f39 = (CB4[f30 * 1 + 0].z * f35) + (CB4[f30 * 1 + 0].y * f36);
        float f40 = f37 - f39;
        f33 = (vec3(f40, f37, f40) + (vec3(f38, f39, f38) * vec3(1.0, 1.0, -1.0))) * VARYING0.x;
    }
    vec3 f41;
    if (!(CB4[f31 * 1 + 0].w == 0.0))
    {
        f41 = f33 + ((mix(vec3(1.0), CB4[f31 * 1 + 0].xyz, vec3(f26.w)) * f26.xyz) * VARYING0.y);
    }
    else
    {
        vec2 f42 = f26.xz - vec2(0.5);
        float f43 = f42.x;
        float f44 = f42.y;
        float f45 = CB4[f31 * 1 + 0].x * f26.y;
        float f46 = (CB4[f31 * 1 + 0].y * f43) - (CB4[f31 * 1 + 0].z * f44);
        float f47 = (CB4[f31 * 1 + 0].z * f43) + (CB4[f31 * 1 + 0].y * f44);
        float f48 = f45 - f47;
        f41 = f33 + ((vec3(f48, f45, f48) + (vec3(f46, f47, f46) * vec3(1.0, 1.0, -1.0))) * VARYING0.y);
    }
    vec3 f49;
    if (!(CB4[f32 * 1 + 0].w == 0.0))
    {
        f49 = f41 + ((mix(vec3(1.0), CB4[f32 * 1 + 0].xyz, vec3(f29.w)) * f29.xyz) * VARYING0.z);
    }
    else
    {
        vec2 f50 = f29.xz - vec2(0.5);
        float f51 = f50.x;
        float f52 = f50.y;
        float f53 = CB4[f32 * 1 + 0].x * f29.y;
        float f54 = (CB4[f32 * 1 + 0].y * f51) - (CB4[f32 * 1 + 0].z * f52);
        float f55 = (CB4[f32 * 1 + 0].z * f51) + (CB4[f32 * 1 + 0].y * f52);
        float f56 = f53 - f55;
        f49 = f41 + ((vec3(f56, f53, f56) + (vec3(f54, f55, f54) * vec3(1.0, 1.0, -1.0))) * VARYING0.z);
    }
    gl_FragData[0] = vec4(f49 * f49, 1.0);
    gl_FragData[1] = vec4((vec4(normalize(((mix(vec3(VARYING4.z, 0.0, -VARYING4.x), vec3(-VARYING4.y, VARYING4.x, 0.0), f20) * f19.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING4.z, VARYING4.y), f20) * f19.y)) + (VARYING4 * sqrt(clamp(1.0 + dot(vec2(1.0) - f18, f19), 0.0, 1.0)))), 0.0).xyz * 0.5) + vec3(0.5), 1.0);
    gl_FragData[2] = vec4((((texture2DGradARB(SpecularMapTexture, f0, f6, f7) * VARYING0.x) + (texture2DGradARB(SpecularMapTexture, f1, f8, f9) * VARYING0.y)) + (texture2DGradARB(SpecularMapTexture, f2, f10, f11) * VARYING0.z)).xyz, 1.0);
}

//$$SpecularMapTexture=s3
//$$NormalMapTexture=s4
//$$AlbedoMapTexture=s0
