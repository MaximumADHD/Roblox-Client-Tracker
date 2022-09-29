#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SAParams.h>
uniform vec4 CB0[58];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
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
    vec4 f0 = texture(DiffuseMapTexture, VARYING0);
    float f1 = f0.w;
    if (f1 < (0.5 * CB0[52].z))
    {
        discard;
    }
    vec4 f2 = vec4(mix(VARYING2.xyz, f0.xyz, vec3(f1)), VARYING2.w);
    vec4 f3 = vec4(f0.xyz, VARYING2.w * f1);
    bvec4 f4 = bvec4(!(CB3[0].x == 0.0));
    vec4 f5 = vec4(f4.x ? f2.x : f3.x, f4.y ? f2.y : f3.y, f4.z ? f2.z : f3.z, f4.w ? f2.w : f3.w);
    vec3 f6 = f5.xyz;
    vec3 f7 = f6 * f6;
    vec4 f8 = f5;
    f8.x = f7.x;
    vec4 f9 = f8;
    f9.y = f7.y;
    vec4 f10 = f9;
    f10.z = f7.z;
    vec3 f11 = VARYING6.xyz - (CB0[16].xyz * VARYING3.w);
    float f12 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f13 = VARYING3.yzx - (VARYING3.yzx * f12);
    vec4 f14 = vec4(clamp(f12, 0.0, 1.0));
    vec4 f15 = mix(texture(LightMapTexture, f13), vec4(0.0), f14);
    vec4 f16 = mix(texture(LightGridSkylightTexture, f13), vec4(1.0), f14);
    vec4 f17 = texture(ShadowMapTexture, f11.xy);
    float f18 = f11.z;
    float f19 = (1.0 - ((step(f17.x, f18) * clamp(CB0[29].z + (CB0[29].w * abs(f18 - 0.5)), 0.0, 1.0)) * f17.y)) * f16.y;
    vec3 f20 = (((VARYING5.xyz * f19) + min((f15.xyz * (f15.w * 120.0)) + (CB0[32].xyz + ((CB0[33].xyz * 1.0) * f16.x)), vec3(CB0[21].w))) * f10.xyz) + ((CB0[15].xyz * mix(vec3(0.100000001490116119384765625), f10.xyz, vec3(VARYING6.w * CB0[31].w))) * (VARYING5.w * f19));
    vec4 f21 = vec4(0.0);
    f21.x = f20.x;
    vec4 f22 = f21;
    f22.y = f20.y;
    vec4 f23 = f22;
    f23.z = f20.z;
    vec4 f24 = f23;
    f24.w = f5.w;
    float f25 = clamp(exp2((CB0[18].z * length(VARYING4.xyz)) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f26 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[18].y, f25) * 5.0).xyz;
    bvec3 f27 = bvec3(!(CB0[18].w == 0.0));
    vec3 f28 = mix(vec3(f27.x ? CB0[19].xyz.x : f26.x, f27.y ? CB0[19].xyz.y : f26.y, f27.z ? CB0[19].xyz.z : f26.z), f24.xyz, vec3(f25));
    vec4 f29 = f24;
    f29.x = f28.x;
    vec4 f30 = f29;
    f30.y = f28.y;
    vec4 f31 = f30;
    f31.z = f28.z;
    vec3 f32 = max(vec3(0.0), f31.xyz);
    vec4 f33 = f31;
    f33.x = f32.x;
    vec4 f34 = f33;
    f34.y = f32.y;
    vec4 f35 = f34;
    f35.z = f32.z;
    _entryPointOutput = f35;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s3
