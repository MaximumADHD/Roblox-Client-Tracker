#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SurfaceAppearanceConsts.h>
uniform vec4 CB0[61];
uniform vec4 CB3[2];
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
in vec3 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING0);
    float f1 = f0.w;
    if (f1 < (0.5 * CB0[53].z))
    {
        discard;
    }
    vec3 f2 = f0.xyz;
    vec3 f3 = f2 * VARYING7;
    vec3 f4 = vec3(f1);
    vec4 f5 = mix(mix(vec4(f3, VARYING2.w * f1), vec4(mix(VARYING2.xyz, f3, f4), VARYING2.w), vec4(CB3[0].x)), vec4(mix(f2, f3, f4), VARYING2.w), vec4(CB3[0].y));
    vec3 f6 = f5.xyz;
    vec3 f7 = f6 * f6;
    vec4 f8 = f5;
    f8.x = f7.x;
    vec4 f9 = f8;
    f9.y = f7.y;
    vec4 f10 = f9;
    f10.z = f7.z;
    float f11 = length(VARYING4.xyz);
    float f12 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f13 = VARYING3.yzx - (VARYING3.yzx * f12);
    vec4 f14 = vec4(clamp(f12, 0.0, 1.0));
    vec4 f15 = mix(texture(LightMapTexture, f13), vec4(0.0), f14);
    vec4 f16 = mix(texture(LightGridSkylightTexture, f13), vec4(1.0), f14);
    float f17 = f16.y;
    vec3 f18 = (((VARYING5.xyz * f17) + min((f15.xyz * (f15.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f16.x)), vec3(CB0[21].w))) * f10.xyz) + ((CB0[15].xyz * mix(vec3(0.100000001490116119384765625), f10.xyz, vec3(VARYING6.w * CB0[31].w))) * (VARYING5.w * f17));
    vec4 f19 = vec4(0.0);
    f19.x = f18.x;
    vec4 f20 = f19;
    f20.y = f18.y;
    vec4 f21 = f20;
    f21.z = f18.z;
    float f22 = f5.w;
    vec4 f23 = f21;
    f23.w = f22;
    float f24 = clamp(exp2((CB0[18].z * f11) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f25 = textureLod(PrefilteredEnvTexture, vec4(-(VARYING4.xyz / vec3(f11)), 0.0).xyz, max(CB0[18].y, f24) * 5.0).xyz;
    bvec3 f26 = bvec3(!(CB0[18].w == 0.0));
    vec3 f27 = mix(vec3(f26.x ? CB0[19].xyz.x : f25.x, f26.y ? CB0[19].xyz.y : f25.y, f26.z ? CB0[19].xyz.z : f25.z), f23.xyz, vec3(f24));
    vec4 f28 = f23;
    f28.x = f27.x;
    vec4 f29 = f28;
    f29.y = f27.y;
    vec4 f30 = f29;
    f30.z = f27.z;
    vec3 f31 = sqrt(clamp(f30.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f32 = f30;
    f32.x = f31.x;
    vec4 f33 = f32;
    f33.y = f31.y;
    vec4 f34 = f33;
    f34.z = f31.z;
    vec4 f35 = f34;
    f35.w = f22;
    _entryPointOutput = f35;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s3
