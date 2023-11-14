#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <AdvancedUIShadingParams.h>
uniform vec4 CB0[57];
uniform vec4 CB2[1];
uniform vec4 CB3[2];
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING1;
in vec3 VARYING2;
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
    float f21 = clamp(exp2((CB0[18].z * length(VARYING2)) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f22 = textureLod(PrefilteredEnvTexture, vec4(-VARYING2, 0.0).xyz, max(CB0[18].y, f21) * 5.0).xyz;
    bvec3 f23 = bvec3(!(CB0[18].w == 0.0));
    vec3 f24 = mix(vec3(f23.x ? CB0[19].xyz.x : f22.x, f23.y ? CB0[19].xyz.y : f22.y, f23.z ? CB0[19].xyz.z : f22.z), f20.xyz, vec3(f21));
    vec4 f25 = f20;
    f25.x = f24.x;
    vec4 f26 = f25;
    f26.y = f24.y;
    vec4 f27 = f26;
    f27.z = f24.z;
    vec3 f28 = sqrt(clamp(f27.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f29 = f27;
    f29.x = f28.x;
    vec4 f30 = f29;
    f30.y = f28.y;
    vec4 f31 = f30;
    f31.z = f28.z;
    _entryPointOutput = f31;
}

//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s0
