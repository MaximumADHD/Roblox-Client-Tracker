#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform vec4 CB3[1];
uniform vec4 CB4[63];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D AlbedoMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec3 VARYING4;
varying vec4 VARYING5;
varying vec3 VARYING6;
varying vec4 VARYING8;

void main()
{
    vec4 f0 = (fract(VARYING1) * CB3[0].xyxy) + VARYING2;
    vec4 f1 = texture2D(AlbedoMapTexture, f0.xy);
    vec4 f2 = texture2D(AlbedoMapTexture, f0.zw);
    vec4 f3 = texture2D(AlbedoMapTexture, (fract(VARYING3.xy) * CB3[0].xy) + VARYING3.zw);
    int f4 = int(VARYING8.x + 0.5);
    int f5 = int(VARYING8.y + 0.5);
    int f6 = int(VARYING8.z + 0.5);
    vec3 f7;
    if (!(CB4[f4 * 1 + 0].w == 0.0))
    {
        f7 = (mix(vec3(1.0), CB4[f4 * 1 + 0].xyz, vec3(f1.w)) * f1.xyz) * VARYING0.x;
    }
    else
    {
        vec2 f8 = f1.xz - vec2(0.5);
        float f9 = f8.x;
        float f10 = f8.y;
        float f11 = CB4[f4 * 1 + 0].x * f1.y;
        float f12 = (CB4[f4 * 1 + 0].y * f9) - (CB4[f4 * 1 + 0].z * f10);
        float f13 = (CB4[f4 * 1 + 0].z * f9) + (CB4[f4 * 1 + 0].y * f10);
        float f14 = f11 - f13;
        f7 = (vec3(f14, f11, f14) + (vec3(f12, f13, f12) * vec3(1.0, 1.0, -1.0))) * VARYING0.x;
    }
    vec3 f15;
    if (!(CB4[f5 * 1 + 0].w == 0.0))
    {
        f15 = f7 + ((mix(vec3(1.0), CB4[f5 * 1 + 0].xyz, vec3(f2.w)) * f2.xyz) * VARYING0.y);
    }
    else
    {
        vec2 f16 = f2.xz - vec2(0.5);
        float f17 = f16.x;
        float f18 = f16.y;
        float f19 = CB4[f5 * 1 + 0].x * f2.y;
        float f20 = (CB4[f5 * 1 + 0].y * f17) - (CB4[f5 * 1 + 0].z * f18);
        float f21 = (CB4[f5 * 1 + 0].z * f17) + (CB4[f5 * 1 + 0].y * f18);
        float f22 = f19 - f21;
        f15 = f7 + ((vec3(f22, f19, f22) + (vec3(f20, f21, f20) * vec3(1.0, 1.0, -1.0))) * VARYING0.y);
    }
    vec3 f23;
    if (!(CB4[f6 * 1 + 0].w == 0.0))
    {
        f23 = f15 + ((mix(vec3(1.0), CB4[f6 * 1 + 0].xyz, vec3(f3.w)) * f3.xyz) * VARYING0.z);
    }
    else
    {
        vec2 f24 = f3.xz - vec2(0.5);
        float f25 = f24.x;
        float f26 = f24.y;
        float f27 = CB4[f6 * 1 + 0].x * f3.y;
        float f28 = (CB4[f6 * 1 + 0].y * f25) - (CB4[f6 * 1 + 0].z * f26);
        float f29 = (CB4[f6 * 1 + 0].z * f25) + (CB4[f6 * 1 + 0].y * f26);
        float f30 = f27 - f29;
        f23 = f15 + ((vec3(f30, f27, f30) + (vec3(f28, f29, f28) * vec3(1.0, 1.0, -1.0))) * VARYING0.z);
    }
    float f31 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f32 = VARYING4.yzx - (VARYING4.yzx * f31);
    vec4 f33 = vec4(clamp(f31, 0.0, 1.0));
    vec4 f34 = mix(texture3D(LightMapTexture, f32), vec4(0.0), f33);
    vec4 f35 = mix(texture3D(LightGridSkylightTexture, f32), vec4(1.0), f33);
    vec4 f36 = texture2D(ShadowMapTexture, VARYING5.xy);
    vec3 f37 = (min((f34.xyz * (f34.w * 120.0)) + (CB0[8].xyz + (CB0[9].xyz * f35.x)), vec3(CB0[16].w)) + (VARYING6 * ((1.0 - ((step(f36.x, VARYING5.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * f36.y)) * f35.y))) * (f23 * f23);
    vec4 f38 = vec4(0.0);
    f38.x = f37.x;
    vec4 f39 = f38;
    f39.y = f37.y;
    vec4 f40 = f39;
    f40.z = f37.z;
    vec4 f41 = f40;
    f41.w = 1.0;
    vec3 f42 = mix(CB0[14].xyz, f41.xyz, vec3(clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0)));
    vec4 f43 = f41;
    f43.x = f42.x;
    vec4 f44 = f43;
    f44.y = f42.y;
    vec4 f45 = f44;
    f45.z = f42.z;
    vec3 f46 = sqrt(clamp(f45.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f47 = f45;
    f47.x = f46.x;
    vec4 f48 = f47;
    f48.y = f46.y;
    vec4 f49 = f48;
    f49.z = f46.z;
    gl_FragData[0] = f49;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$AlbedoMapTexture=s0
