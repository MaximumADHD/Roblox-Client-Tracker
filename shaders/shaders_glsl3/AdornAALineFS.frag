#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <AdornParams.h>
uniform vec4 CB0[53];
uniform vec4 CB1[6];
uniform samplerCube PrefilteredEnvTexture;

in vec4 VARYING0;
in vec3 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = (VARYING3 / vec4(VARYING3.w)).xy;
    vec2 f1 = (VARYING2 / vec4(VARYING2.w)).xy;
    vec2 f2 = normalize(f0 - f1);
    vec2 f3 = (VARYING0 / vec4(VARYING0.w)).xy;
    vec2 f4 = f3 - f1;
    if ((dot(f2, f4) < 0.0) && (dot(f2, (-f3) + f0) < 0.0))
    {
        discard;
    }
    vec4 f5 = vec4(1.0);
    f5.w = clamp(((CB1[5].w * 0.5) + 0.5) - ((abs(dot(vec2(f2.y, -f2.x), f4)) * 0.5) * CB1[5].y), 0.0, 1.0);
    vec4 f6 = f5 * CB1[4];
    float f7 = pow(clamp(1.0 - f6.w, 0.0, 1.0), 0.4545454680919647216796875);
    vec4 f8 = f6;
    f8.w = f7;
    vec4 f9 = f8;
    f9.w = 1.0 - f7;
    float f10 = clamp(exp2((CB0[13].z * length(VARYING1)) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f11 = textureLod(PrefilteredEnvTexture, vec4(-VARYING1, 0.0).xyz, max(CB0[13].y, f10) * 5.0).xyz;
    bvec3 f12 = bvec3(!(CB0[13].w == 0.0));
    vec3 f13 = sqrt(clamp(mix(vec3(f12.x ? CB0[14].xyz.x : f11.x, f12.y ? CB0[14].xyz.y : f11.y, f12.z ? CB0[14].xyz.z : f11.z), (f9.xyz * f9.xyz).xyz, vec3(f10)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput = vec4(f13.x, f13.y, f13.z, f9.w);
}

//$$PrefilteredEnvTexture=s15
