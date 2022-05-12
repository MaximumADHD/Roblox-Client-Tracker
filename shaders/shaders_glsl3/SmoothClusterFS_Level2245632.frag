#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform vec4 CB4[63];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2DArray AlbedoMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec3 VARYING4;
in vec4 VARYING5;
in vec3 VARYING6;
in vec3 VARYING7;
in vec4 VARYING8;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(AlbedoMapTexture, vec3(VARYING1.xy, VARYING2.x));
    vec4 f1 = texture(AlbedoMapTexture, vec3(VARYING1.zw, VARYING2.z));
    vec4 f2 = texture(AlbedoMapTexture, VARYING3.xyz);
    int f3 = int(VARYING8.x + 0.5);
    int f4 = int(VARYING8.y + 0.5);
    int f5 = int(VARYING8.z + 0.5);
    vec3 f6;
    if (!(CB4[f3 * 1 + 0].w == 0.0))
    {
        f6 = (mix(vec3(1.0), CB4[f3 * 1 + 0].xyz, vec3(f0.w)) * f0.xyz) * VARYING0.x;
    }
    else
    {
        vec2 f7 = f0.xz - vec2(0.5);
        float f8 = f7.x;
        vec4 f9 = f0.yxzw;
        f9.y = f8;
        float f10 = f7.y;
        vec4 f11 = f9;
        f11.z = f10;
        vec3 f12 = vec3(0.0);
        f12.x = CB4[f3 * 1 + 0].x * f0.y;
        vec3 f13 = f12;
        f13.y = (CB4[f3 * 1 + 0].y * f8) - (CB4[f3 * 1 + 0].z * f10);
        vec3 f14 = f13;
        f14.z = (CB4[f3 * 1 + 0].z * f8) + (CB4[f3 * 1 + 0].y * f10);
        vec3 f15 = mix(f14, f11.xyz, vec3(CB4[f3 * 1 + 0].w));
        float f16 = f15.x;
        float f17 = f16 - f15.z;
        f6 = (vec3(f17, f16, f17) + (vec3(f15.yzy) * vec3(1.0, 1.0, -1.0))) * VARYING0.x;
    }
    vec3 f18;
    if (!(CB4[f4 * 1 + 0].w == 0.0))
    {
        f18 = f6 + ((mix(vec3(1.0), CB4[f4 * 1 + 0].xyz, vec3(f1.w)) * f1.xyz) * VARYING0.y);
    }
    else
    {
        vec2 f19 = f1.xz - vec2(0.5);
        float f20 = f19.x;
        vec4 f21 = f1.yxzw;
        f21.y = f20;
        float f22 = f19.y;
        vec4 f23 = f21;
        f23.z = f22;
        vec3 f24 = vec3(0.0);
        f24.x = CB4[f4 * 1 + 0].x * f1.y;
        vec3 f25 = f24;
        f25.y = (CB4[f4 * 1 + 0].y * f20) - (CB4[f4 * 1 + 0].z * f22);
        vec3 f26 = f25;
        f26.z = (CB4[f4 * 1 + 0].z * f20) + (CB4[f4 * 1 + 0].y * f22);
        vec3 f27 = mix(f26, f23.xyz, vec3(CB4[f4 * 1 + 0].w));
        float f28 = f27.x;
        float f29 = f28 - f27.z;
        f18 = f6 + ((vec3(f29, f28, f29) + (vec3(f27.yzy) * vec3(1.0, 1.0, -1.0))) * VARYING0.y);
    }
    vec3 f30;
    if (!(CB4[f5 * 1 + 0].w == 0.0))
    {
        f30 = f18 + ((mix(vec3(1.0), CB4[f5 * 1 + 0].xyz, vec3(f2.w)) * f2.xyz) * VARYING0.z);
    }
    else
    {
        vec2 f31 = f2.xz - vec2(0.5);
        float f32 = f31.x;
        vec4 f33 = f2.yxzw;
        f33.y = f32;
        float f34 = f31.y;
        vec4 f35 = f33;
        f35.z = f34;
        vec3 f36 = vec3(0.0);
        f36.x = CB4[f5 * 1 + 0].x * f2.y;
        vec3 f37 = f36;
        f37.y = (CB4[f5 * 1 + 0].y * f32) - (CB4[f5 * 1 + 0].z * f34);
        vec3 f38 = f37;
        f38.z = (CB4[f5 * 1 + 0].z * f32) + (CB4[f5 * 1 + 0].y * f34);
        vec3 f39 = mix(f38, f35.xyz, vec3(CB4[f5 * 1 + 0].w));
        float f40 = f39.x;
        float f41 = f40 - f39.z;
        f30 = f18 + ((vec3(f41, f40, f41) + (vec3(f39.yzy) * vec3(1.0, 1.0, -1.0))) * VARYING0.z);
    }
    float f42 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f43 = VARYING4.yzx - (VARYING4.yzx * f42);
    vec4 f44 = vec4(clamp(f42, 0.0, 1.0));
    vec4 f45 = mix(texture(LightMapTexture, f43), vec4(0.0), f44);
    vec4 f46 = mix(texture(LightGridSkylightTexture, f43), vec4(1.0), f44);
    vec4 f47 = texture(ShadowMapTexture, VARYING5.xy);
    vec3 f48 = (min((f45.xyz * (f45.w * 120.0)) + (CB0[8].xyz + (CB0[9].xyz * f46.x)), vec3(CB0[16].w)) + (VARYING6 * ((1.0 - ((step(f47.x, VARYING5.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * f47.y)) * f46.y))) * (f30 * f30);
    vec4 f49 = vec4(0.0);
    f49.x = f48.x;
    vec4 f50 = f49;
    f50.y = f48.y;
    vec4 f51 = f50;
    f51.z = f48.z;
    vec4 f52 = f51;
    f52.w = 1.0;
    float f53 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f54 = textureLod(PrefilteredEnvTexture, vec4(-VARYING7, 0.0).xyz, max(CB0[13].y, f53) * 5.0).xyz;
    bvec3 f55 = bvec3(!(CB0[13].w == 0.0));
    vec3 f56 = mix(vec3(f55.x ? CB0[14].xyz.x : f54.x, f55.y ? CB0[14].xyz.y : f54.y, f55.z ? CB0[14].xyz.z : f54.z), f52.xyz, vec3(f53));
    vec4 f57 = f52;
    f57.x = f56.x;
    vec4 f58 = f57;
    f58.y = f56.y;
    vec4 f59 = f58;
    f59.z = f56.z;
    vec3 f60 = sqrt(clamp(f59.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f61 = f59;
    f61.x = f60.x;
    vec4 f62 = f61;
    f62.y = f60.y;
    vec4 f63 = f62;
    f63.z = f60.z;
    _entryPointOutput = f63;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$AlbedoMapTexture=s0
