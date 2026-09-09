#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <AdornParams.h>
uniform vec4 CB0[61];
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
    vec3 f10 = f9.xyz * f9.xyz;
    vec4 f11 = f9;
    f11.x = f10.x;
    vec4 f12 = f11;
    f12.y = f10.y;
    vec4 f13 = f12;
    f13.z = f10.z;
    float f14 = clamp(exp2((CB0[18].z * length(VARYING1)) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f15;
    do
    {
        if ((CB0[18].w > 0.5) || (CB0[28].w > 0.5))
        {
            f15 = CB0[19].xyz;
            break;
        }
        vec3 f16 = mat3(vec3(CB0[58].xyz), vec3(CB0[59].xyz), vec3(CB0[60].xyz)) * VARYING1;
        bvec3 f17 = bvec3((!(CB0[58].x == 2.0)) && (!(CB0[58].w == 0.0)));
        f15 = textureLod(PrefilteredEnvTexture, vec4(-vec3(f17.x ? f16.x : VARYING1.x, f17.y ? f16.y : VARYING1.y, f17.z ? f16.z : VARYING1.z), 0.0).xyz, max(CB0[18].y, f14) * 5.0).xyz;
        break;
    } while(false);
    vec3 f18 = mix(f15, f13.xyz, vec3(f14));
    vec4 f19 = f13;
    f19.x = f18.x;
    vec4 f20 = f19;
    f20.y = f18.y;
    vec4 f21 = f20;
    f21.z = f18.z;
    vec3 f22 = sqrt(clamp(f21.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f23 = f21;
    f23.x = f22.x;
    vec4 f24 = f23;
    f24.y = f22.y;
    vec4 f25 = f24;
    f25.z = f22.z;
    _entryPointOutput = f25;
}

//$$PrefilteredEnvTexture=s15
