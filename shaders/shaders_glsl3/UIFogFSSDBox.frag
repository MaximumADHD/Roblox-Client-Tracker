#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <AdvancedUIShadingParams.h>
uniform vec4 CB0[58];
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
    vec4 f3 = vec4(f2.x ? f1.x : f0.x, f2.y ? f1.y : f0.y, f2.z ? f1.z : f0.z, f2.w ? f1.w : f0.w);
    float f4 = f0.w;
    vec4 f5 = vec4(f0.xyz / vec3(f4), f4);
    bvec4 f6 = bvec4(CB2[0].y > 1.5);
    vec4 f7 = VARYING1 * vec4(f6.x ? f5.x : f3.x, f6.y ? f5.y : f3.y, f6.z ? f5.z : f3.z, f6.w ? f5.w : f3.w);
    vec2 f8 = abs(vec2((VARYING0.x * CB3[0].x) + CB3[0].y, (VARYING0.y * CB3[0].z) + CB3[0].w)) - CB3[1].xy;
    float f9 = length(max(f8, vec2(0.0))) + min(max(f8.x, f8.y), 0.0);
    float f10 = (f7.w * clamp(CB3[1].z - f9, 0.0, 1.0)) * clamp(f9 - CB3[1].w, 0.0, 1.0);
    vec4 f11 = f7;
    f11.w = f10;
    vec4 f12 = f11;
    f12.w = f10;
    vec3 f13 = f12.xyz * f12.xyz;
    vec4 f14 = f12;
    f14.x = f13.x;
    vec4 f15 = f14;
    f15.y = f13.y;
    vec4 f16 = f15;
    f16.z = f13.z;
    float f17 = clamp(exp2((CB0[18].z * length(VARYING2)) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f18 = textureLod(PrefilteredEnvTexture, vec4(-VARYING2, 0.0).xyz, max(CB0[18].y, f17) * 5.0).xyz;
    bvec3 f19 = bvec3(!(CB0[18].w == 0.0));
    vec3 f20 = mix(vec3(f19.x ? CB0[19].xyz.x : f18.x, f19.y ? CB0[19].xyz.y : f18.y, f19.z ? CB0[19].xyz.z : f18.z), f16.xyz, vec3(f17));
    vec4 f21 = f16;
    f21.x = f20.x;
    vec4 f22 = f21;
    f22.y = f20.y;
    vec4 f23 = f22;
    f23.z = f20.z;
    vec3 f24 = sqrt(clamp(f23.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f25 = f23;
    f25.x = f24.x;
    vec4 f26 = f25;
    f26.y = f24.y;
    vec4 f27 = f26;
    f27.z = f24.z;
    _entryPointOutput = f27;
}

//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s0
