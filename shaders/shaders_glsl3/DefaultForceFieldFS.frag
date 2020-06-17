#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[52];
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec2 VARYING1;
in vec4 VARYING2;
in vec4 VARYING4;
in vec4 VARYING5;
out vec4 _entryPointOutput;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec4 f1 = texture(DiffuseMapTexture, VARYING0);
    float f2 = f1.x;
    float f3 = (f2 > 0.0) ? ((1.0 - clamp(abs(f2 - CB0[14].w) * 13.0, 0.0, 1.0)) * f1.w) : 0.0;
    float f4 = max(max(1.0 - clamp(abs(dot(normalize(VARYING5.xyz), VARYING4.xyz / vec3(f0))) * 2.0, 0.0, 1.0), 0.0), f3);
    float f5 = VARYING2.w * max(mix(f3, 1.0, f4) * f4, VARYING1.x);
    vec4 f6 = vec4(VARYING2.xyz * VARYING2.xyz, f5);
    float f7 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f8 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f7) * 5.0).xyz;
    bvec3 f9 = bvec3(CB0[13].w != 0.0);
    vec3 f10 = mix(vec3(f9.x ? CB0[14].xyz.x : f8.x, f9.y ? CB0[14].xyz.y : f8.y, f9.z ? CB0[14].xyz.z : f8.z), f6.xyz, vec3(f7));
    float f11 = f7 * f5;
    vec4 f12 = vec4(f10.x, f10.y, f10.z, f6.w);
    f12.w = f11;
    vec3 f13 = sqrt(clamp(f12.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f14 = vec4(f13.x, f13.y, f13.z, f12.w);
    f14.w = f11;
    _entryPointOutput = f14;
}

//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s3
