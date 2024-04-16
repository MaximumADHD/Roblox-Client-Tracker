#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <UIParams.h>
uniform vec4 CB0[57];
uniform vec4 CB1[8];
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
    if (CB1[5].y < 0.5)
    {
        f0 = texture2D(DiffuseMapTexture, VARYING0);
    }
    else
    {
        vec4 f1;
        if (CB1[5].y < 1.5)
        {
            f1 = vec4(1.0, 1.0, 1.0, texture2D(DiffuseMapTexture, VARYING0).x);
        }
        else
        {
            vec4 f2;
            if (CB1[5].y < 2.5)
            {
                vec4 f3 = texture2D(DiffuseMapTexture, VARYING0);
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
                    float f8 = VARYING0.x * 0.5;
                    float f9 = VARYING0.y * 0.3333333432674407958984375;
                    vec2 f10 = vec2(f8, f9);
                    vec2 f11 = f10;
                    f11.y = f9 + 0.666666686534881591796875;
                    vec2 f12 = f10;
                    f12.x = f8 + 0.5;
                    vec2 f13 = f12;
                    f13.y = f9 + 0.666666686534881591796875;
                    f7 = vec4((vec4(texture2D(DiffuseMapTexture, vec2(VARYING0.x, VARYING0.y * 0.666666686534881591796875)).x, texture2D(DiffuseMapTexture, f11).x, texture2D(DiffuseMapTexture, f13).x, 1.0) * mat4(vec4(1.16429996490478515625, 0.0, 1.59580004215240478515625, -0.8705999851226806640625), vec4(1.16429996490478515625, -0.391730010509490966796875, -0.812900006771087646484375, 0.52960002422332763671875), vec4(1.16429996490478515625, 2.0169999599456787109375, 0.0, -1.0813000202178955078125), vec4(0.0, 0.0, 0.0, 1.0))).xyz, 1.0);
                }
                else
                {
                    f7 = texture2D(DiffuseMapTexture, VARYING0);
                }
                f2 = f7;
            }
            f1 = f2;
        }
        f0 = f1;
    }
    vec4 f14 = VARYING1 * f0;
    vec2 f15 = abs(vec2((VARYING0.x * CB1[6].x) + CB1[6].y, (VARYING0.y * CB1[6].z) + CB1[6].w)) - CB1[7].xy;
    float f16 = length(max(f15, vec2(0.0))) + min(max(f15.x, f15.y), 0.0);
    float f17 = (f14.w * clamp(CB1[7].z - f16, 0.0, 1.0)) * clamp(f16 - CB1[7].w, 0.0, 1.0);
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
    vec4 f27 = mix(texture3D(LightMapTexture, f25), vec4(0.0), f26);
    vec4 f28 = mix(texture3D(LightGridSkylightTexture, f25), vec4(1.0), f26);
    vec4 f29 = texture2D(ShadowMapTexture, VARYING4.xy);
    vec3 f30 = mix(f23.xyz * CB1[5].w, (min((f27.xyz * (f27.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f28.x)), vec3(CB0[21].w)) + (VARYING2 * ((1.0 - ((step(f29.x, VARYING4.z) * clamp(CB0[29].z + (CB0[29].w * abs(VARYING4.z - 0.5)), 0.0, 1.0)) * f29.y)) * f28.y))) * f23.xyz, vec3(CB1[5].z));
    vec4 f31 = f23;
    f31.x = f30.x;
    vec4 f32 = f31;
    f32.y = f30.y;
    vec4 f33 = f32;
    f33.z = f30.z;
    vec3 f34 = -VARYING5;
    vec3 f35 = f34 * f34;
    bvec3 f36 = lessThan(f34, vec3(0.0));
    vec3 f37 = vec3(f36.x ? f35.x : vec3(0.0).x, f36.y ? f35.y : vec3(0.0).y, f36.z ? f35.z : vec3(0.0).z);
    vec3 f38 = f35 - f37;
    vec3 f39 = (((((CB0[34].xyz * f38.x) + (CB0[36].xyz * f38.y)) + (CB0[38].xyz * f38.z)) + (CB0[35].xyz * f37.x)) + (CB0[37].xyz * f37.y)) + (CB0[39].xyz * f37.z);
    bvec3 f40 = bvec3(!(CB0[18].w == 0.0));
    vec3 f41 = mix(vec3(f40.x ? CB0[19].xyz.x : f39.x, f40.y ? CB0[19].xyz.y : f39.y, f40.z ? CB0[19].xyz.z : f39.z), f33.xyz, vec3(clamp(exp2((CB0[18].z * length(VARYING5)) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f42 = f33;
    f42.x = f41.x;
    vec4 f43 = f42;
    f43.y = f41.y;
    vec4 f44 = f43;
    f44.z = f41.z;
    vec3 f45 = sqrt(clamp(f44.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f46 = f44;
    f46.x = f45.x;
    vec4 f47 = f46;
    f47.y = f45.y;
    vec4 f48 = f47;
    f48.z = f45.z;
    gl_FragData[0] = f48;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s0
