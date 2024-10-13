#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <GridParam.h>
uniform vec4 CB0[58];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;

varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;

void main()
{
    vec3 f0 = (CB0[11].xyz - VARYING3.xyz) * CB3[0].x;
    vec3 f1 = abs(VARYING4.xyz);
    float f2 = f1.x;
    float f3 = f1.y;
    float f4 = f1.z;
    vec2 f5;
    if ((f2 >= f3) && (f2 >= f4))
    {
        f5 = f0.yz;
    }
    else
    {
        vec2 f6;
        if ((f3 >= f2) && (f3 >= f4))
        {
            f6 = f0.xz;
        }
        else
        {
            f6 = f0.xy;
        }
        f5 = f6;
    }
    vec4 f7 = texture2D(DiffuseMapTexture, f5) * VARYING1;
    vec3 f8 = normalize(VARYING4.xyz) * (gl_FrontFacing ? 1.0 : (-1.0));
    vec3 f9 = f7.xyz;
    vec3 f10 = f9 * f9;
    vec4 f11 = f7;
    f11.x = f10.x;
    vec4 f12 = f11;
    f12.y = f10.y;
    vec4 f13 = f12;
    f13.z = f10.z;
    float f14 = length(VARYING3.xyz);
    float f15 = 0.08900000154972076416015625 + (VARYING4.w * 0.9110000133514404296875);
    vec3 f16 = VARYING5.xyz - (CB0[16].xyz * VARYING2.w);
    float f17 = clamp(dot(step(CB0[24].xyz, abs(VARYING2.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f18 = VARYING2.yzx - (VARYING2.yzx * f17);
    vec4 f19 = vec4(clamp(f17, 0.0, 1.0));
    vec4 f20 = mix(texture3D(LightMapTexture, f18), vec4(0.0), f19);
    vec4 f21 = mix(texture3D(LightGridSkylightTexture, f18), vec4(1.0), f19);
    vec4 f22 = texture2D(ShadowMapTexture, f16.xy);
    float f23 = f16.z;
    vec3 f24 = -CB0[16].xyz;
    float f25 = dot(f8, f24) * ((1.0 - ((step(f22.x, f23) * clamp(CB0[29].z + (CB0[29].w * abs(f23 - 0.5)), 0.0, 1.0)) * f22.y)) * f21.y);
    vec3 f26 = normalize((VARYING3.xyz / vec3(f14)) + f24);
    float f27 = clamp(f25, 0.0, 1.0);
    float f28 = f15 * f15;
    float f29 = max(0.001000000047497451305389404296875, dot(f8, f26));
    float f30 = dot(f24, f26);
    float f31 = 1.0 - f30;
    float f32 = f31 * f31;
    float f33 = (f32 * f32) * f31;
    vec3 f34 = vec3(f33) + (vec3(0.039999999105930328369140625) * (1.0 - f33));
    float f35 = f28 * f28;
    float f36 = (((f29 * f35) - f29) * f29) + 1.0;
    vec3 f37 = (((min((f20.xyz * (f20.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f21.x)), vec3(CB0[21].w)) * 1.0) + ((((vec3(1.0) - (f34 * (CB0[31].w * clamp(1.0 - (VARYING3.w * CB0[28].y), 0.0, 1.0)))) * CB0[15].xyz) * f27) + (CB0[17].xyz * clamp(-f25, 0.0, 1.0)))) * f13.xyz) + (((f34 * (((f35 + (f35 * f35)) / (((f36 * f36) * ((f30 * 3.0) + 0.5)) * ((f29 * 0.75) + 0.25))) * f27)) * CB0[15].xyz) * 1.0);
    vec4 f38 = vec4(0.0);
    f38.x = f37.x;
    vec4 f39 = f38;
    f39.y = f37.y;
    vec4 f40 = f39;
    f40.z = f37.z;
    float f41 = f7.w;
    vec4 f42 = f40;
    f42.w = f41;
    vec3 f43 = mix(CB0[19].xyz, f42.xyz, vec3(clamp(exp2((CB0[18].z * f14) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f44 = f42;
    f44.x = f43.x;
    vec4 f45 = f44;
    f45.y = f43.y;
    vec4 f46 = f45;
    f46.z = f43.z;
    vec3 f47 = sqrt(clamp(f46.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f48 = f46;
    f48.x = f47.x;
    vec4 f49 = f48;
    f49.y = f47.y;
    vec4 f50 = f49;
    f50.z = f47.z;
    vec4 f51 = f50;
    f51.w = f41;
    gl_FragData[0] = f51;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
