#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowTransformGPU.h>
#include <UIParams.h>
uniform vec4 CB0[58];
uniform vec4 CB8[24];
uniform vec4 CB1[9];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING1;
in vec3 VARYING2;
in vec3 VARYING3;
in vec4 VARYING4;
in vec3 VARYING5;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0;
    if (CB1[5].y < 0.5)
    {
        f0 = texture(DiffuseMapTexture, VARYING0);
    }
    else
    {
        vec4 f1;
        if (CB1[5].y < 1.5)
        {
            f1 = vec4(1.0, 1.0, 1.0, texture(DiffuseMapTexture, VARYING0).x);
        }
        else
        {
            vec4 f2;
            if (CB1[5].y < 2.5)
            {
                vec4 f3 = texture(DiffuseMapTexture, VARYING0);
                float f4 = f3.w;
                vec3 f5 = f3.xyz / vec3(f4);
                bvec3 f6 = bvec3(f4 == 0.0);
                f2 = vec4(vec3(f6.x ? vec3(0.0).x : f5.x, f6.y ? vec3(0.0).y : f5.y, f6.z ? vec3(0.0).z : f5.z), f4);
            }
            else
            {
                vec4 f7;
                if (CB1[5].y < 3.5)
                {
                    float f8 = CB1[8].x - 2.0;
                    float f9 = CB1[8].y - 2.0;
                    float f10 = f9 * 0.3333333432674407958984375;
                    float f11 = 1.0 - (f10 / CB1[8].y);
                    vec2 f12 = (VARYING0 * vec2(f8 * 0.5, f10)) / CB1[8].xy;
                    f7 = vec4((vec4(texture(DiffuseMapTexture, (VARYING0 * vec2(f8, f9 * 0.666666686534881591796875)) / CB1[8].xy).x, texture(DiffuseMapTexture, vec2(0.0, f11) + f12).x, texture(DiffuseMapTexture, vec2(0.5, f11) + f12).x, 1.0) * mat4(vec4(1.164000034332275390625, 0.0, 1.7929999828338623046875, -0.969500005245208740234375), vec4(1.164000034332275390625, -0.212999999523162841796875, -0.53299999237060546875, 0.300000011920928955078125), vec4(1.164000034332275390625, 2.111999988555908203125, 0.0, -1.1289999485015869140625), vec4(0.0, 0.0, 0.0, 1.0))).xyz, 1.0);
                }
                else
                {
                    f7 = texture(DiffuseMapTexture, VARYING0);
                }
                f2 = f7;
            }
            f1 = f2;
        }
        f0 = f1;
    }
    vec4 f13 = VARYING1 * f0;
    vec2 f14 = abs(vec2((VARYING0.x * CB1[6].x) + CB1[6].y, (VARYING0.y * CB1[6].z) + CB1[6].w)) - CB1[7].xy;
    float f15 = length(max(f14, vec2(0.0))) + min(max(f14.x, f14.y), 0.0);
    float f16 = (f13.w * clamp(CB1[7].z - f15, 0.0, 1.0)) * clamp(f15 - CB1[7].w, 0.0, 1.0);
    vec4 f17 = f13;
    f17.w = f16;
    vec4 f18 = f17;
    f18.w = f16;
    vec3 f19 = f18.xyz * f18.xyz;
    vec4 f20 = f18;
    f20.x = f19.x;
    vec4 f21 = f20;
    f21.y = f19.y;
    vec4 f22 = f21;
    f22.z = f19.z;
    float f23 = clamp(dot(step(CB0[24].xyz, abs(VARYING3 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f24 = VARYING3.yzx - (VARYING3.yzx * f23);
    vec4 f25 = vec4(clamp(f23, 0.0, 1.0));
    vec4 f26 = mix(texture(LightMapTexture, f24), vec4(0.0), f25);
    vec4 f27 = mix(texture(LightGridSkylightTexture, f24), vec4(1.0), f25);
    float f28 = f27.y;
    vec3 f29 = VARYING4.xyz - CB0[46].xyz;
    vec3 f30 = VARYING4.xyz - CB0[47].xyz;
    vec3 f31 = VARYING4.xyz - CB0[48].xyz;
    vec4 f32 = vec4(VARYING4.xyz, 1.0) * mat4(CB8[((dot(f29, f29) < CB0[46].w) ? 0 : ((dot(f30, f30) < CB0[47].w) ? 1 : ((dot(f31, f31) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f29, f29) < CB0[46].w) ? 0 : ((dot(f30, f30) < CB0[47].w) ? 1 : ((dot(f31, f31) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f29, f29) < CB0[46].w) ? 0 : ((dot(f30, f30) < CB0[47].w) ? 1 : ((dot(f31, f31) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f29, f29) < CB0[46].w) ? 0 : ((dot(f30, f30) < CB0[47].w) ? 1 : ((dot(f31, f31) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f33 = textureLod(ShadowAtlasTexture, f32.xy, 0.0);
    vec2 f34 = vec2(0.0);
    f34.x = CB0[52].z;
    vec2 f35 = f34;
    f35.y = CB0[52].w;
    float f36 = (2.0 * f32.z) - 1.0;
    float f37 = exp(CB0[52].z * f36);
    float f38 = -exp((-CB0[52].w) * f36);
    vec2 f39 = (f35 * CB0[53].y) * vec2(f37, f38);
    vec2 f40 = f39 * f39;
    float f41 = f33.x;
    float f42 = max(f33.y - (f41 * f41), f40.x);
    float f43 = f37 - f41;
    float f44 = f33.z;
    float f45 = max(f33.w - (f44 * f44), f40.y);
    float f46 = f38 - f44;
    vec3 f47 = mix(f22.xyz * CB1[5].w, (min((f26.xyz * (f26.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f27.x)), vec3(CB0[21].w)) + (VARYING2 * (((VARYING4.w * CB0[53].x) > 0.0) ? mix(min((f37 <= f41) ? 1.0 : clamp(((f42 / (f42 + (f43 * f43))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f38 <= f44) ? 1.0 : clamp(((f45 / (f45 + (f46 * f46))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f28, clamp((length(VARYING4.xyz - CB0[11].xyz) * CB0[52].y) - (CB0[52].x * CB0[52].y), 0.0, 1.0)) : f28))) * f22.xyz, vec3(CB1[5].z));
    vec4 f48 = f22;
    f48.x = f47.x;
    vec4 f49 = f48;
    f49.y = f47.y;
    vec4 f50 = f49;
    f50.z = f47.z;
    float f51 = clamp(exp2((CB0[18].z * length(VARYING5)) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f52 = textureLod(PrefilteredEnvTexture, vec4(-VARYING5, 0.0).xyz, max(CB0[18].y, f51) * 5.0).xyz;
    bvec3 f53 = bvec3(!(CB0[18].w == 0.0));
    vec3 f54 = mix(vec3(f53.x ? CB0[19].xyz.x : f52.x, f53.y ? CB0[19].xyz.y : f52.y, f53.z ? CB0[19].xyz.z : f52.z), f50.xyz, vec3(f51));
    vec4 f55 = f50;
    f55.x = f54.x;
    vec4 f56 = f55;
    f56.y = f54.y;
    vec4 f57 = f56;
    f57.z = f54.z;
    vec3 f58 = sqrt(clamp(f57.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f59 = f57;
    f59.x = f58.x;
    vec4 f60 = f59;
    f60.y = f58.y;
    vec4 f61 = f60;
    f61.z = f58.z;
    _entryPointOutput = f61;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s0
