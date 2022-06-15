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
        vec4 f10 = f1.yxzw;
        f10.y = f9;
        float f11 = f8.y;
        vec4 f12 = f10;
        f12.z = f11;
        vec3 f13 = vec3(0.0);
        f13.x = CB4[f4 * 1 + 0].x * f1.y;
        vec3 f14 = f13;
        f14.y = (CB4[f4 * 1 + 0].y * f9) - (CB4[f4 * 1 + 0].z * f11);
        vec3 f15 = f14;
        f15.z = (CB4[f4 * 1 + 0].z * f9) + (CB4[f4 * 1 + 0].y * f11);
        vec3 f16 = mix(f15, f12.xyz, vec3(CB4[f4 * 1 + 0].w));
        float f17 = f16.x;
        float f18 = f17 - f16.z;
        f7 = (vec3(f18, f17, f18) + (vec3(f16.yzy) * vec3(1.0, 1.0, -1.0))) * VARYING0.x;
    }
    vec3 f19;
    if (!(CB4[f5 * 1 + 0].w == 0.0))
    {
        f19 = f7 + ((mix(vec3(1.0), CB4[f5 * 1 + 0].xyz, vec3(f2.w)) * f2.xyz) * VARYING0.y);
    }
    else
    {
        vec2 f20 = f2.xz - vec2(0.5);
        float f21 = f20.x;
        vec4 f22 = f2.yxzw;
        f22.y = f21;
        float f23 = f20.y;
        vec4 f24 = f22;
        f24.z = f23;
        vec3 f25 = vec3(0.0);
        f25.x = CB4[f5 * 1 + 0].x * f2.y;
        vec3 f26 = f25;
        f26.y = (CB4[f5 * 1 + 0].y * f21) - (CB4[f5 * 1 + 0].z * f23);
        vec3 f27 = f26;
        f27.z = (CB4[f5 * 1 + 0].z * f21) + (CB4[f5 * 1 + 0].y * f23);
        vec3 f28 = mix(f27, f24.xyz, vec3(CB4[f5 * 1 + 0].w));
        float f29 = f28.x;
        float f30 = f29 - f28.z;
        f19 = f7 + ((vec3(f30, f29, f30) + (vec3(f28.yzy) * vec3(1.0, 1.0, -1.0))) * VARYING0.y);
    }
    vec3 f31;
    if (!(CB4[f6 * 1 + 0].w == 0.0))
    {
        f31 = f19 + ((mix(vec3(1.0), CB4[f6 * 1 + 0].xyz, vec3(f3.w)) * f3.xyz) * VARYING0.z);
    }
    else
    {
        vec2 f32 = f3.xz - vec2(0.5);
        float f33 = f32.x;
        vec4 f34 = f3.yxzw;
        f34.y = f33;
        float f35 = f32.y;
        vec4 f36 = f34;
        f36.z = f35;
        vec3 f37 = vec3(0.0);
        f37.x = CB4[f6 * 1 + 0].x * f3.y;
        vec3 f38 = f37;
        f38.y = (CB4[f6 * 1 + 0].y * f33) - (CB4[f6 * 1 + 0].z * f35);
        vec3 f39 = f38;
        f39.z = (CB4[f6 * 1 + 0].z * f33) + (CB4[f6 * 1 + 0].y * f35);
        vec3 f40 = mix(f39, f36.xyz, vec3(CB4[f6 * 1 + 0].w));
        float f41 = f40.x;
        float f42 = f41 - f40.z;
        f31 = f19 + ((vec3(f42, f41, f42) + (vec3(f40.yzy) * vec3(1.0, 1.0, -1.0))) * VARYING0.z);
    }
    float f43 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f44 = VARYING4.yzx - (VARYING4.yzx * f43);
    vec4 f45 = vec4(clamp(f43, 0.0, 1.0));
    vec4 f46 = mix(texture3D(LightMapTexture, f44), vec4(0.0), f45);
    vec4 f47 = mix(texture3D(LightGridSkylightTexture, f44), vec4(1.0), f45);
    vec4 f48 = texture2D(ShadowMapTexture, VARYING5.xy);
    vec3 f49 = (min((f46.xyz * (f46.w * 120.0)) + (CB0[8].xyz + (CB0[9].xyz * f47.x)), vec3(CB0[16].w)) + (VARYING6 * ((1.0 - ((step(f48.x, VARYING5.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * f48.y)) * f47.y))) * (f31 * f31);
    vec4 f50 = vec4(0.0);
    f50.x = f49.x;
    vec4 f51 = f50;
    f51.y = f49.y;
    vec4 f52 = f51;
    f52.z = f49.z;
    vec4 f53 = f52;
    f53.w = 1.0;
    vec3 f54 = mix(CB0[14].xyz, f53.xyz, vec3(clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0)));
    vec4 f55 = f53;
    f55.x = f54.x;
    vec4 f56 = f55;
    f56.y = f54.y;
    vec4 f57 = f56;
    f57.z = f54.z;
    vec3 f58 = sqrt(clamp(f57.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f59 = f57;
    f59.x = f58.x;
    vec4 f60 = f59;
    f60.y = f58.y;
    vec4 f61 = f60;
    f61.z = f58.z;
    gl_FragData[0] = f61;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$AlbedoMapTexture=s0
