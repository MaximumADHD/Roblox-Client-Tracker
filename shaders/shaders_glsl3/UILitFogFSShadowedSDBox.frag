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
    do
    {
        if (CB2[0].y < 0.5)
        {
            f0 = texture(DiffuseMapTexture, VARYING0);
            break;
        }
        else
        {
            if (CB2[0].y < 1.5)
            {
                f0 = vec4(1.0, 1.0, 1.0, texture(DiffuseMapTexture, VARYING0).x);
                break;
            }
            else
            {
                if (CB2[0].y < 2.5)
                {
                    vec4 f1 = texture(DiffuseMapTexture, VARYING0);
                    float f2 = f1.w;
                    vec3 f3 = f1.xyz / vec3(f2);
                    bvec3 f4 = bvec3(f2 == 0.0);
                    f0 = vec4(vec3(f4.x ? vec3(0.0).x : f3.x, f4.y ? vec3(0.0).y : f3.y, f4.z ? vec3(0.0).z : f3.z), f2);
                    break;
                }
                else
                {
                    if (CB2[0].y < 3.5)
                    {
                        float f5 = VARYING0.x * 0.5;
                        float f6 = VARYING0.y * 0.3333333432674407958984375;
                        vec2 f7 = vec2(f5, f6);
                        vec2 f8 = f7;
                        f8.y = f6 + 0.666666686534881591796875;
                        vec2 f9 = f7;
                        f9.x = f5 + 0.5;
                        vec2 f10 = f9;
                        f10.y = f6 + 0.666666686534881591796875;
                        f0 = vec4((vec4(texture(DiffuseMapTexture, vec2(VARYING0.x, VARYING0.y * 0.666666686534881591796875)).x, texture(DiffuseMapTexture, f8).x, texture(DiffuseMapTexture, f10).x, 1.0) * mat4(vec4(1.16429996490478515625, 0.0, 1.59580004215240478515625, -0.8705999851226806640625), vec4(1.16429996490478515625, -0.391730010509490966796875, -0.812900006771087646484375, 0.52960002422332763671875), vec4(1.16429996490478515625, 2.0169999599456787109375, 0.0, -1.0813000202178955078125), vec4(0.0, 0.0, 0.0, 1.0))).xyz, 1.0);
                        break;
                    }
                    else
                    {
                        f0 = texture(DiffuseMapTexture, VARYING0);
                        break;
                    }
                }
            }
        }
    } while(false);
    vec4 f11 = VARYING1 * f0;
    vec2 f12 = abs(vec2((VARYING0.x * CB3[0].x) + CB3[0].y, (VARYING0.y * CB3[0].z) + CB3[0].w)) - CB3[1].xy;
    float f13 = length(max(f12, vec2(0.0))) + min(max(f12.x, f12.y), 0.0);
    float f14 = (f11.w * clamp(CB3[1].z - f13, 0.0, 1.0)) * clamp(f13 - CB3[1].w, 0.0, 1.0);
    vec4 f15 = f11;
    f15.w = f14;
    vec4 f16 = f15;
    f16.w = f14;
    vec3 f17 = f16.xyz * f16.xyz;
    vec4 f18 = f16;
    f18.x = f17.x;
    vec4 f19 = f18;
    f19.y = f17.y;
    vec4 f20 = f19;
    f20.z = f17.z;
    float f21 = clamp(dot(step(CB0[24].xyz, abs(VARYING3 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f22 = VARYING3.yzx - (VARYING3.yzx * f21);
    vec4 f23 = vec4(clamp(f21, 0.0, 1.0));
    vec4 f24 = mix(texture(LightMapTexture, f22), vec4(0.0), f23);
    vec4 f25 = mix(texture(LightGridSkylightTexture, f22), vec4(1.0), f23);
    float f26 = f25.y;
    vec3 f27 = VARYING4.xyz - CB0[46].xyz;
    vec3 f28 = VARYING4.xyz - CB0[47].xyz;
    vec3 f29 = VARYING4.xyz - CB0[48].xyz;
    vec4 f30 = vec4(VARYING4.xyz, 1.0) * mat4(CB8[((dot(f27, f27) < CB0[46].w) ? 0 : ((dot(f28, f28) < CB0[47].w) ? 1 : ((dot(f29, f29) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f27, f27) < CB0[46].w) ? 0 : ((dot(f28, f28) < CB0[47].w) ? 1 : ((dot(f29, f29) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f27, f27) < CB0[46].w) ? 0 : ((dot(f28, f28) < CB0[47].w) ? 1 : ((dot(f29, f29) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f27, f27) < CB0[46].w) ? 0 : ((dot(f28, f28) < CB0[47].w) ? 1 : ((dot(f29, f29) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f31 = textureLod(ShadowAtlasTexture, f30.xy, 0.0);
    vec2 f32 = vec2(0.0);
    f32.x = CB0[51].z;
    vec2 f33 = f32;
    f33.y = CB0[51].w;
    float f34 = (2.0 * f30.z) - 1.0;
    float f35 = exp(CB0[51].z * f34);
    float f36 = -exp((-CB0[51].w) * f34);
    vec2 f37 = (f33 * CB0[52].y) * vec2(f35, f36);
    vec2 f38 = f37 * f37;
    float f39 = f31.x;
    float f40 = max(f31.y - (f39 * f39), f38.x);
    float f41 = f35 - f39;
    float f42 = f31.z;
    float f43 = max(f31.w - (f42 * f42), f38.y);
    float f44 = f36 - f42;
    vec3 f45 = mix(f20.xyz * CB2[0].w, (min((f24.xyz * (f24.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f25.x)), vec3(CB0[21].w)) + (VARYING2 * (((VARYING4.w * CB0[52].x) > 0.0) ? mix(min((f35 <= f39) ? 1.0 : clamp(((f40 / (f40 + (f41 * f41))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f36 <= f42) ? 1.0 : clamp(((f43 / (f43 + (f44 * f44))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f26, clamp((length(VARYING4.xyz - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f26))) * f20.xyz, vec3(CB2[0].z));
    vec4 f46 = f20;
    f46.x = f45.x;
    vec4 f47 = f46;
    f47.y = f45.y;
    vec4 f48 = f47;
    f48.z = f45.z;
    float f49 = clamp(exp2((CB0[18].z * length(VARYING5)) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f50 = textureLod(PrefilteredEnvTexture, vec4(-VARYING5, 0.0).xyz, max(CB0[18].y, f49) * 5.0).xyz;
    bvec3 f51 = bvec3(!(CB0[18].w == 0.0));
    vec3 f52 = mix(vec3(f51.x ? CB0[19].xyz.x : f50.x, f51.y ? CB0[19].xyz.y : f50.y, f51.z ? CB0[19].xyz.z : f50.z), f48.xyz, vec3(f49));
    vec4 f53 = f48;
    f53.x = f52.x;
    vec4 f54 = f53;
    f54.y = f52.y;
    vec4 f55 = f54;
    f55.z = f52.z;
    vec3 f56 = sqrt(clamp(f55.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f57 = f55;
    f57.x = f56.x;
    vec4 f58 = f57;
    f58.y = f56.y;
    vec4 f59 = f58;
    f59.z = f56.z;
    _entryPointOutput = f59;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s0
