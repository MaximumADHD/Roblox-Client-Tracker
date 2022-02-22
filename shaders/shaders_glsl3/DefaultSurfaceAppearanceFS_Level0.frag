#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SAParams.h>
uniform vec4 CB0[53];
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
    vec3 f11 = VARYING6.xyz - (CB0[11].xyz * VARYING3.w);
    float f12 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f13 = VARYING3.yzx - (VARYING3.yzx * f12);
    vec4 f14 = vec4(clamp(f12, 0.0, 1.0));
    vec4 f15 = mix(texture(LightMapTexture, f13), vec4(0.0), f14);
    vec4 f16 = mix(texture(LightGridSkylightTexture, f13), vec4(1.0), f14);
    vec4 f17 = texture(ShadowMapTexture, f11.xy);
    float f18 = f11.z;
    float f19 = (1.0 - ((step(f17.x, f18) * clamp(CB0[24].z + (CB0[24].w * abs(f18 - 0.5)), 0.0, 1.0)) * f17.y)) * f16.y;
    vec3 f20 = (((VARYING5.xyz * f19) + min((f15.xyz * (f15.w * 120.0)) + (CB0[8].xyz + (CB0[9].xyz * f16.x)), vec3(CB0[16].w))) * f10.xyz) + ((CB0[10].xyz * mix(vec3(0.100000001490116119384765625), f10.xyz, vec3(VARYING6.w * CB0[26].w))) * (VARYING5.w * f19));
    vec4 f21 = vec4(0.0);
    f21.x = f20.x;
    vec4 f22 = f21;
    f22.y = f20.y;
    vec4 f23 = f22;
    f23.z = f20.z;
    float f24 = f5.w;
    vec4 f25 = f23;
    f25.w = f24;
    float f26 = clamp(exp2((CB0[13].z * length(VARYING4.xyz)) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f27 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f26) * 5.0).xyz;
    bvec3 f28 = bvec3(!(CB0[13].w == 0.0));
    vec3 f29 = mix(vec3(f28.x ? CB0[14].xyz.x : f27.x, f28.y ? CB0[14].xyz.y : f27.y, f28.z ? CB0[14].xyz.z : f27.z), f25.xyz, vec3(f26));
    vec4 f30 = f25;
    f30.x = f29.x;
    vec4 f31 = f30;
    f31.y = f29.y;
    vec4 f32 = f31;
    f32.z = f29.z;
    vec3 f33 = sqrt(clamp(f32.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f34 = f32;
    f34.x = f33.x;
    vec4 f35 = f34;
    f35.y = f33.y;
    vec4 f36 = f35;
    f36.z = f33.z;
    vec4 f37 = f36;
    f37.w = f24;
    _entryPointOutput = f37;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s3
