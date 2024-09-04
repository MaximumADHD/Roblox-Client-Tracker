#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in float VARYING1;
in vec4 VARYING2;
in vec4 VARYING4;
in vec4 VARYING5;
out vec4 _entryPointOutput;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec4 f1 = texture(DiffuseMapTexture, VARYING0);
    float f2 = f1.x;
    float f3 = (f2 > 0.0) ? ((1.0 - clamp(abs(f2 - CB0[19].w) * 13.0, 0.0, 1.0)) * f1.w) : 0.0;
    float f4 = max(max(1.0 - clamp(abs(dot(normalize(VARYING5.xyz), VARYING4.xyz / vec3(f0))) * 2.0, 0.0, 1.0), 0.0), f3);
    float f5 = VARYING2.w * max(mix(f3, 1.0, f4) * f4, VARYING1);
    vec4 f6 = vec4(VARYING2.xyz * VARYING2.xyz, f5);
    float f7 = clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f8 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[18].y, f7) * 5.0).xyz;
    bvec3 f9 = bvec3(!(CB0[18].w == 0.0));
    vec3 f10 = mix(vec3(f9.x ? CB0[19].xyz.x : f8.x, f9.y ? CB0[19].xyz.y : f8.y, f9.z ? CB0[19].xyz.z : f8.z), f6.xyz, vec3(f7));
    float f11 = f7 * f5;
    vec4 f12 = f6;
    f12.x = f10.x;
    vec4 f13 = f12;
    f13.y = f10.y;
    vec4 f14 = f13;
    f14.z = f10.z;
    vec4 f15 = f14;
    f15.w = f11;
    vec3 f16 = sqrt(clamp(f15.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f17 = f15;
    f17.x = f16.x;
    vec4 f18 = f17;
    f18.y = f16.y;
    vec4 f19 = f18;
    f19.z = f16.z;
    vec4 f20 = f19;
    f20.w = f11;
    _entryPointOutput = f20;
}

//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s3
