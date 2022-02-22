#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <AdvancedUIShadingParams.h>
uniform vec4 CB0[53];
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
    vec4 f0 = texture(DiffuseMapTexture, VARYING0);
    vec4 f1 = vec4(1.0, 1.0, 1.0, f0.x);
    bvec4 f2 = bvec4(CB2[0].y > 0.5);
    vec4 f3 = VARYING1 * vec4(f2.x ? f1.x : f0.x, f2.y ? f1.y : f0.y, f2.z ? f1.z : f0.z, f2.w ? f1.w : f0.w);
    vec2 f4 = abs(vec2((VARYING0.x * CB3[0].x) + CB3[0].y, (VARYING0.y * CB3[0].z) + CB3[0].w)) - CB3[1].xy;
    float f5 = length(max(f4, vec2(0.0))) + min(max(f4.x, f4.y), 0.0);
    float f6 = (f3.w * clamp(CB3[1].z - f5, 0.0, 1.0)) * clamp(f5 - CB3[1].w, 0.0, 1.0);
    vec4 f7 = f3;
    f7.w = f6;
    vec4 f8 = f7;
    f8.w = f6;
    vec3 f9 = f8.xyz * f8.xyz;
    vec4 f10 = f8;
    f10.x = f9.x;
    vec4 f11 = f10;
    f11.y = f9.y;
    vec4 f12 = f11;
    f12.z = f9.z;
    float f13 = clamp(exp2((CB0[13].z * length(VARYING2)) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f14 = textureLod(PrefilteredEnvTexture, vec4(-VARYING2, 0.0).xyz, max(CB0[13].y, f13) * 5.0).xyz;
    bvec3 f15 = bvec3(!(CB0[13].w == 0.0));
    vec3 f16 = mix(vec3(f15.x ? CB0[14].xyz.x : f14.x, f15.y ? CB0[14].xyz.y : f14.y, f15.z ? CB0[14].xyz.z : f14.z), f12.xyz, vec3(f13));
    vec4 f17 = f12;
    f17.x = f16.x;
    vec4 f18 = f17;
    f18.y = f16.y;
    vec4 f19 = f18;
    f19.z = f16.z;
    vec3 f20 = sqrt(clamp(f19.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f21 = f19;
    f21.x = f20.x;
    vec4 f22 = f21;
    f22.y = f20.y;
    vec4 f23 = f22;
    f23.z = f20.z;
    _entryPointOutput = f23;
}

//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s0
