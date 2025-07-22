#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[61];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING0) * VARYING2;
    vec3 f1 = f0.xyz;
    vec3 f2 = f1 * f1;
    vec4 f3 = f0;
    f3.x = f2.x;
    vec4 f4 = f3;
    f4.y = f2.y;
    vec4 f5 = f4;
    f5.z = f2.z;
    float f6 = length(VARYING4.xyz);
    float f7 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f8 = VARYING3.yzx - (VARYING3.yzx * f7);
    vec4 f9 = vec4(clamp(f7, 0.0, 1.0));
    vec4 f10 = mix(texture(LightMapTexture, f8), vec4(0.0), f9);
    vec4 f11 = mix(texture(LightGridSkylightTexture, f8), vec4(1.0), f9);
    float f12 = f11.y;
    vec3 f13 = (((VARYING5.xyz * f12) + min((f10.xyz * (f10.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f11.x)), vec3(CB0[21].w))) * f5.xyz) + ((CB0[15].xyz * mix(vec3(0.100000001490116119384765625), f5.xyz, vec3(VARYING6.w * CB0[31].w))) * (VARYING5.w * f12));
    vec4 f14 = vec4(0.0);
    f14.x = f13.x;
    vec4 f15 = f14;
    f15.y = f13.y;
    vec4 f16 = f15;
    f16.z = f13.z;
    float f17 = f0.w;
    vec4 f18 = f16;
    f18.w = f17;
    float f19 = clamp(exp2((CB0[18].z * f6) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f20 = textureLod(PrefilteredEnvTexture, vec4(-(VARYING4.xyz / vec3(f6)), 0.0).xyz, max(CB0[18].y, f19) * 5.0).xyz;
    bvec3 f21 = bvec3(!(CB0[18].w == 0.0));
    vec3 f22 = mix(vec3(f21.x ? CB0[19].xyz.x : f20.x, f21.y ? CB0[19].xyz.y : f20.y, f21.z ? CB0[19].xyz.z : f20.z), f18.xyz, vec3(f19));
    vec4 f23 = f18;
    f23.x = f22.x;
    vec4 f24 = f23;
    f24.y = f22.y;
    vec4 f25 = f24;
    f25.z = f22.z;
    vec3 f26 = sqrt(clamp(f25.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f27 = f25;
    f27.x = f26.x;
    vec4 f28 = f27;
    f28.y = f26.y;
    vec4 f29 = f28;
    f29.z = f26.z;
    vec4 f30 = f29;
    f30.w = f17;
    _entryPointOutput = f30;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s3
