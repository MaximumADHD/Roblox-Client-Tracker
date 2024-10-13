#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform vec4 CB4[63];
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
in vec3 VARYING8;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(AlbedoMapTexture, vec3(VARYING1.xy, VARYING2.x));
    vec4 f1 = texture(AlbedoMapTexture, vec3(VARYING1.zw, VARYING2.z));
    vec4 f2 = texture(AlbedoMapTexture, vec3(VARYING3.xyz));
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
        float f9 = f7.y;
        float f10 = CB4[f3 * 1 + 0].x * f0.y;
        float f11 = (CB4[f3 * 1 + 0].y * f8) - (CB4[f3 * 1 + 0].z * f9);
        float f12 = (CB4[f3 * 1 + 0].z * f8) + (CB4[f3 * 1 + 0].y * f9);
        float f13 = f10 - f12;
        f6 = (vec3(f13, f10, f13) + (vec3(f11, f12, f11) * vec3(1.0, 1.0, -1.0))) * VARYING0.x;
    }
    vec3 f14;
    if (!(CB4[f4 * 1 + 0].w == 0.0))
    {
        f14 = f6 + ((mix(vec3(1.0), CB4[f4 * 1 + 0].xyz, vec3(f1.w)) * f1.xyz) * VARYING0.y);
    }
    else
    {
        vec2 f15 = f1.xz - vec2(0.5);
        float f16 = f15.x;
        float f17 = f15.y;
        float f18 = CB4[f4 * 1 + 0].x * f1.y;
        float f19 = (CB4[f4 * 1 + 0].y * f16) - (CB4[f4 * 1 + 0].z * f17);
        float f20 = (CB4[f4 * 1 + 0].z * f16) + (CB4[f4 * 1 + 0].y * f17);
        float f21 = f18 - f20;
        f14 = f6 + ((vec3(f21, f18, f21) + (vec3(f19, f20, f19) * vec3(1.0, 1.0, -1.0))) * VARYING0.y);
    }
    vec3 f22;
    if (!(CB4[f5 * 1 + 0].w == 0.0))
    {
        f22 = f14 + ((mix(vec3(1.0), CB4[f5 * 1 + 0].xyz, vec3(f2.w)) * f2.xyz) * VARYING0.z);
    }
    else
    {
        vec2 f23 = f2.xz - vec2(0.5);
        float f24 = f23.x;
        float f25 = f23.y;
        float f26 = CB4[f5 * 1 + 0].x * f2.y;
        float f27 = (CB4[f5 * 1 + 0].y * f24) - (CB4[f5 * 1 + 0].z * f25);
        float f28 = (CB4[f5 * 1 + 0].z * f24) + (CB4[f5 * 1 + 0].y * f25);
        float f29 = f26 - f28;
        f22 = f14 + ((vec3(f29, f26, f29) + (vec3(f27, f28, f27) * vec3(1.0, 1.0, -1.0))) * VARYING0.z);
    }
    float f30 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f31 = VARYING4.yzx - (VARYING4.yzx * f30);
    vec4 f32 = vec4(clamp(f30, 0.0, 1.0));
    vec4 f33 = mix(texture(LightMapTexture, f31), vec4(0.0), f32);
    vec4 f34 = mix(texture(LightGridSkylightTexture, f31), vec4(1.0), f32);
    vec3 f35 = (min((f33.xyz * (f33.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f34.x)), vec3(CB0[21].w)) + (VARYING6 * f34.y)) * (f22 * f22);
    vec4 f36 = vec4(0.0);
    f36.x = f35.x;
    vec4 f37 = f36;
    f37.y = f35.y;
    vec4 f38 = f37;
    f38.z = f35.z;
    vec4 f39 = f38;
    f39.w = 1.0;
    float f40 = clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f41 = textureLod(PrefilteredEnvTexture, vec4(-VARYING7, 0.0).xyz, max(CB0[18].y, f40) * 5.0).xyz;
    bvec3 f42 = bvec3(!(CB0[18].w == 0.0));
    vec3 f43 = mix(vec3(f42.x ? CB0[19].xyz.x : f41.x, f42.y ? CB0[19].xyz.y : f41.y, f42.z ? CB0[19].xyz.z : f41.z), f39.xyz, vec3(f40));
    vec4 f44 = f39;
    f44.x = f43.x;
    vec4 f45 = f44;
    f45.y = f43.y;
    vec4 f46 = f45;
    f46.z = f43.z;
    vec3 f47 = sqrt(clamp(f46.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f48 = f46;
    f48.x = f47.x;
    vec4 f49 = f48;
    f49.y = f47.y;
    vec4 f50 = f49;
    f50.z = f47.z;
    _entryPointOutput = f50;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$AlbedoMapTexture=s0
