#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D StudsMapTexture;

in vec2 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
in float VARYING8;
out vec4 _entryPointOutput;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec2 f1 = VARYING1;
    f1.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    vec4 f2 = vec4((VARYING2.xyz * texture(StudsMapTexture, f1).x) * 2.0, VARYING2.w);
    vec3 f3 = f2.xyz;
    vec3 f4 = f3 * f3;
    vec4 f5 = f2;
    f5.x = f4.x;
    vec4 f6 = f5;
    f6.y = f4.y;
    vec4 f7 = f6;
    f7.z = f4.z;
    vec3 f8 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f9 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f10 = VARYING3.yzx - (VARYING3.yzx * f9);
    vec4 f11 = vec4(clamp(f9, 0.0, 1.0));
    vec4 f12 = mix(texture(LightMapTexture, f10), vec4(0.0), f11);
    vec4 f13 = mix(texture(LightGridSkylightTexture, f10), vec4(1.0), f11);
    vec4 f14 = texture(ShadowMapTexture, f8.xy);
    float f15 = f8.z;
    float f16 = (1.0 - ((step(f14.x, f15) * clamp(CB0[24].z + (CB0[24].w * abs(f15 - 0.5)), 0.0, 1.0)) * f14.y)) * f13.y;
    vec3 f17 = reflect(-(VARYING4.xyz / vec3(f0)), normalize(VARYING5.xyz));
    float f18 = (!(VARYING7.w == 0.0)) ? 0.0 : (max(VARYING5.w, 0.04500000178813934326171875) * 5.0);
    vec3 f19 = (((VARYING6.xyz * f16) + min((f12.xyz * (f12.w * 120.0)) + (CB0[27].xyz + ((CB0[28].xyz * (2.0 - CB0[9].w)) * f13.x)), vec3(CB0[16].w))) * mix(f7.xyz, textureLod(PrefilteredEnvTexture, vec4(f17, f18).xyz, f18).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f17.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(VARYING7.w))) + (CB0[10].xyz * ((VARYING6.w * f16) * 0.100000001490116119384765625));
    vec4 f20 = vec4(0.0);
    f20.x = f19.x;
    vec4 f21 = f20;
    f21.y = f19.y;
    vec4 f22 = f21;
    f22.z = f19.z;
    vec4 f23 = f22;
    f23.w = VARYING2.w;
    float f24 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f25 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f24) * 5.0).xyz;
    bvec3 f26 = bvec3(!(CB0[13].w == 0.0));
    vec3 f27 = mix(vec3(f26.x ? CB0[14].xyz.x : f25.x, f26.y ? CB0[14].xyz.y : f25.y, f26.z ? CB0[14].xyz.z : f25.z), f23.xyz, vec3(f24));
    vec4 f28 = f23;
    f28.x = f27.x;
    vec4 f29 = f28;
    f29.y = f27.y;
    vec4 f30 = f29;
    f30.z = f27.z;
    vec3 f31 = max(vec3(0.0), f30.xyz);
    vec4 f32 = f30;
    f32.x = f31.x;
    vec4 f33 = f32;
    f33.y = f31.y;
    vec4 f34 = f33;
    f34.z = f31.z;
    _entryPointOutput = f34;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$StudsMapTexture=s0
