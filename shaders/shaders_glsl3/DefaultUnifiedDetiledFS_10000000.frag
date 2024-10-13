#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <PartMaterialParams.h>
uniform vec4 CB0[58];
uniform vec4 CB2[4];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D NoiseMapTexture;
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
    float f0 = texture(NoiseMapTexture, VARYING0 * CB2[2].w).x * 8.0;
    float f1 = floor(f0);
    vec2 f2 = dFdx(VARYING0);
    vec2 f3 = dFdy(VARYING0);
    vec4 f4 = mix(textureGrad(DiffuseMapTexture, sin(vec2(3.0, 7.0) * f1) + VARYING0, f2, f3), textureGrad(DiffuseMapTexture, sin(vec2(3.0, 7.0) * (f1 + 1.0)) + VARYING0, f2, f3), vec4(fract(f0)));
    vec3 f5 = mix(vec3(1.0), VARYING2.xyz, vec3(f4.w)) * f4.xyz;
    vec4 f6 = vec4(0.0);
    f6.x = f5.x;
    vec4 f7 = f6;
    f7.y = f5.y;
    vec4 f8 = f7;
    f8.z = f5.z;
    vec4 f9 = f8;
    f9.w = VARYING2.w;
    vec3 f10 = f9.xyz * f9.xyz;
    vec4 f11 = f9;
    f11.x = f10.x;
    vec4 f12 = f11;
    f12.y = f10.y;
    vec4 f13 = f12;
    f13.z = f10.z;
    float f14 = length(VARYING4.xyz);
    float f15 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f16 = VARYING3.yzx - (VARYING3.yzx * f15);
    vec4 f17 = vec4(clamp(f15, 0.0, 1.0));
    vec4 f18 = mix(texture(LightMapTexture, f16), vec4(0.0), f17);
    vec4 f19 = mix(texture(LightGridSkylightTexture, f16), vec4(1.0), f17);
    float f20 = f19.y;
    vec3 f21 = (((VARYING5.xyz * f20) + min((f18.xyz * (f18.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f19.x)), vec3(CB0[21].w))) * f13.xyz) + ((CB0[15].xyz * mix(vec3(0.100000001490116119384765625), f13.xyz, vec3(VARYING6.w * CB0[31].w))) * (VARYING5.w * f20));
    vec4 f22 = vec4(0.0);
    f22.x = f21.x;
    vec4 f23 = f22;
    f23.y = f21.y;
    vec4 f24 = f23;
    f24.z = f21.z;
    vec4 f25 = f24;
    f25.w = VARYING2.w;
    float f26 = clamp(exp2((CB0[18].z * f14) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f27 = textureLod(PrefilteredEnvTexture, vec4(-(VARYING4.xyz / vec3(f14)), 0.0).xyz, max(CB0[18].y, f26) * 5.0).xyz;
    bvec3 f28 = bvec3(!(CB0[18].w == 0.0));
    vec3 f29 = mix(vec3(f28.x ? CB0[19].xyz.x : f27.x, f28.y ? CB0[19].xyz.y : f27.y, f28.z ? CB0[19].xyz.z : f27.z), f25.xyz, vec3(f26));
    vec4 f30 = f25;
    f30.x = f29.x;
    vec4 f31 = f30;
    f31.y = f29.y;
    vec4 f32 = f31;
    f32.z = f29.z;
    vec3 f33 = sqrt(clamp(f32.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f34 = f32;
    f34.x = f33.x;
    vec4 f35 = f34;
    f35.y = f33.y;
    vec4 f36 = f35;
    f36.z = f33.z;
    vec4 f37 = f36;
    f37.w = VARYING2.w;
    _entryPointOutput = f37;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$NoiseMapTexture=s9
//$$DiffuseMapTexture=s3
