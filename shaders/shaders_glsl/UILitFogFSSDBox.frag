#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <AdvancedUIShadingParams.h>
uniform vec4 CB0[57];
uniform vec4 CB2[1];
uniform vec4 CB3[2];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING1;
varying vec3 VARYING2;
varying vec3 VARYING3;
varying vec4 VARYING4;
varying vec3 VARYING5;

void main()
{
    vec4 f0;
    do
    {
        if (CB2[0].y < 0.5)
        {
            f0 = texture2D(DiffuseMapTexture, VARYING0);
            break;
        }
        else
        {
            if (CB2[0].y < 1.5)
            {
                f0 = vec4(1.0, 1.0, 1.0, texture2D(DiffuseMapTexture, VARYING0).x);
                break;
            }
            else
            {
                if (CB2[0].y < 2.5)
                {
                    vec4 f1 = texture2D(DiffuseMapTexture, VARYING0);
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
                        f0 = vec4((vec4(texture2D(DiffuseMapTexture, vec2(VARYING0.x, VARYING0.y * 0.666666686534881591796875)).x, texture2D(DiffuseMapTexture, f8).x, texture2D(DiffuseMapTexture, f10).x, 1.0) * mat4(vec4(1.16429996490478515625, 0.0, 1.59580004215240478515625, -0.8705999851226806640625), vec4(1.16429996490478515625, -0.391730010509490966796875, -0.812900006771087646484375, 0.52960002422332763671875), vec4(1.16429996490478515625, 2.0169999599456787109375, 0.0, -1.0813000202178955078125), vec4(0.0, 0.0, 0.0, 1.0))).xyz, 1.0);
                        break;
                    }
                    else
                    {
                        f0 = texture2D(DiffuseMapTexture, VARYING0);
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
    vec4 f24 = mix(texture3D(LightMapTexture, f22), vec4(0.0), f23);
    vec4 f25 = mix(texture3D(LightGridSkylightTexture, f22), vec4(1.0), f23);
    vec4 f26 = texture2D(ShadowMapTexture, VARYING4.xy);
    vec3 f27 = mix(f20.xyz * CB2[0].w, (min((f24.xyz * (f24.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f25.x)), vec3(CB0[21].w)) + (VARYING2 * ((1.0 - ((step(f26.x, VARYING4.z) * clamp(CB0[29].z + (CB0[29].w * abs(VARYING4.z - 0.5)), 0.0, 1.0)) * f26.y)) * f25.y))) * f20.xyz, vec3(CB2[0].z));
    vec4 f28 = f20;
    f28.x = f27.x;
    vec4 f29 = f28;
    f29.y = f27.y;
    vec4 f30 = f29;
    f30.z = f27.z;
    vec3 f31 = mix(CB0[19].xyz, f30.xyz, vec3(clamp(exp2((CB0[18].z * length(VARYING5)) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f32 = f30;
    f32.x = f31.x;
    vec4 f33 = f32;
    f33.y = f31.y;
    vec4 f34 = f33;
    f34.z = f31.z;
    vec3 f35 = sqrt(clamp(f34.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f36 = f34;
    f36.x = f35.x;
    vec4 f37 = f36;
    f37.y = f35.y;
    vec4 f38 = f37;
    f38.z = f35.z;
    gl_FragData[0] = f38;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s0
