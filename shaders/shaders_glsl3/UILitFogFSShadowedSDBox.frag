#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
#include <AdvancedUIShadingParams.h>
uniform vec4 CB0[57];
uniform vec4 CB8[24];
uniform vec4 CB2[1];
uniform vec4 CB3[2];
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
    if (CB2[0].y < 0.5)
    {
        f0 = texture(DiffuseMapTexture, VARYING0);
    }
    else
    {
        vec4 f1;
        if (CB2[0].y < 1.5)
        {
            f1 = vec4(1.0, 1.0, 1.0, texture(DiffuseMapTexture, VARYING0).x);
        }
        else
        {
            vec4 f2;
            if (CB2[0].y < 2.5)
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
                if (CB2[0].y < 3.5)
                {
                    float f8 = VARYING0.x * 0.5;
                    float f9 = VARYING0.y * 0.3333333432674407958984375;
                    vec2 f10 = vec2(f8, f9);
                    vec2 f11 = f10;
                    f11.y = f9 + 0.666666686534881591796875;
                    vec2 f12 = f10;
                    f12.x = f8 + 0.5;
                    vec2 f13 = f12;
                    f13.y = f9 + 0.666666686534881591796875;
                    f7 = vec4((vec4(texture(DiffuseMapTexture, vec2(VARYING0.x, VARYING0.y * 0.666666686534881591796875)).x, texture(DiffuseMapTexture, f11).x, texture(DiffuseMapTexture, f13).x, 1.0) * mat4(vec4(1.16429996490478515625, 0.0, 1.59580004215240478515625, -0.8705999851226806640625), vec4(1.16429996490478515625, -0.391730010509490966796875, -0.812900006771087646484375, 0.52960002422332763671875), vec4(1.16429996490478515625, 2.0169999599456787109375, 0.0, -1.0813000202178955078125), vec4(0.0, 0.0, 0.0, 1.0))).xyz, 1.0);
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
    vec4 f14 = VARYING1 * f0;
    vec2 f15 = abs(vec2((VARYING0.x * CB3[0].x) + CB3[0].y, (VARYING0.y * CB3[0].z) + CB3[0].w)) - CB3[1].xy;
    float f16 = length(max(f15, vec2(0.0))) + min(max(f15.x, f15.y), 0.0);
    float f17 = (f14.w * clamp(CB3[1].z - f16, 0.0, 1.0)) * clamp(f16 - CB3[1].w, 0.0, 1.0);
    vec4 f18 = f14;
    f18.w = f17;
    vec4 f19 = f18;
    f19.w = f17;
    vec3 f20 = f19.xyz * f19.xyz;
    vec4 f21 = f19;
    f21.x = f20.x;
    vec4 f22 = f21;
    f22.y = f20.y;
    vec4 f23 = f22;
    f23.z = f20.z;
    float f24 = clamp(dot(step(CB0[24].xyz, abs(VARYING3 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f25 = VARYING3.yzx - (VARYING3.yzx * f24);
    vec4 f26 = vec4(clamp(f24, 0.0, 1.0));
    vec4 f27 = mix(texture(LightMapTexture, f25), vec4(0.0), f26);
    vec4 f28 = mix(texture(LightGridSkylightTexture, f25), vec4(1.0), f26);
    float f29 = f28.y;
    vec3 f30 = VARYING4.xyz - CB0[46].xyz;
    vec3 f31 = VARYING4.xyz - CB0[47].xyz;
    vec3 f32 = VARYING4.xyz - CB0[48].xyz;
    vec4 f33 = vec4(VARYING4.xyz, 1.0) * mat4(CB8[((dot(f30, f30) < CB0[46].w) ? 0 : ((dot(f31, f31) < CB0[47].w) ? 1 : ((dot(f32, f32) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f30, f30) < CB0[46].w) ? 0 : ((dot(f31, f31) < CB0[47].w) ? 1 : ((dot(f32, f32) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f30, f30) < CB0[46].w) ? 0 : ((dot(f31, f31) < CB0[47].w) ? 1 : ((dot(f32, f32) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f30, f30) < CB0[46].w) ? 0 : ((dot(f31, f31) < CB0[47].w) ? 1 : ((dot(f32, f32) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f34 = textureLod(ShadowAtlasTexture, f33.xy, 0.0);
    vec2 f35 = vec2(0.0);
    f35.x = CB0[51].z;
    vec2 f36 = f35;
    f36.y = CB0[51].w;
    float f37 = (2.0 * f33.z) - 1.0;
    float f38 = exp(CB0[51].z * f37);
    float f39 = -exp((-CB0[51].w) * f37);
    vec2 f40 = (f36 * CB0[52].y) * vec2(f38, f39);
    vec2 f41 = f40 * f40;
    float f42 = f34.x;
    float f43 = max(f34.y - (f42 * f42), f41.x);
    float f44 = f38 - f42;
    float f45 = f34.z;
    float f46 = max(f34.w - (f45 * f45), f41.y);
    float f47 = f39 - f45;
    vec3 f48 = mix(f23.xyz * CB2[0].w, (min((f27.xyz * (f27.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f28.x)), vec3(CB0[21].w)) + (VARYING2 * (((VARYING4.w * CB0[52].x) > 0.0) ? mix(min((f38 <= f42) ? 1.0 : clamp(((f43 / (f43 + (f44 * f44))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f39 <= f45) ? 1.0 : clamp(((f46 / (f46 + (f47 * f47))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f29, clamp((length(VARYING4.xyz - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f29))) * f23.xyz, vec3(CB2[0].z));
    vec4 f49 = f23;
    f49.x = f48.x;
    vec4 f50 = f49;
    f50.y = f48.y;
    vec4 f51 = f50;
    f51.z = f48.z;
    float f52 = clamp(exp2((CB0[18].z * length(VARYING5)) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f53 = textureLod(PrefilteredEnvTexture, vec4(-VARYING5, 0.0).xyz, max(CB0[18].y, f52) * 5.0).xyz;
    bvec3 f54 = bvec3(!(CB0[18].w == 0.0));
    vec3 f55 = mix(vec3(f54.x ? CB0[19].xyz.x : f53.x, f54.y ? CB0[19].xyz.y : f53.y, f54.z ? CB0[19].xyz.z : f53.z), f51.xyz, vec3(f52));
    vec4 f56 = f51;
    f56.x = f55.x;
    vec4 f57 = f56;
    f57.y = f55.y;
    vec4 f58 = f57;
    f58.z = f55.z;
    vec3 f59 = sqrt(clamp(f58.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f60 = f58;
    f60.x = f59.x;
    vec4 f61 = f60;
    f61.y = f59.y;
    vec4 f62 = f61;
    f62.z = f59.z;
    _entryPointOutput = f62;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s0
