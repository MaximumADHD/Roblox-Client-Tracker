#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[61];
uniform samplerCube PrefilteredEnvTexture;

in vec4 VARYING0;
in vec3 VARYING1;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = VARYING0.xyz * VARYING0.xyz;
    vec4 f1 = VARYING0;
    f1.x = f0.x;
    vec4 f2 = f1;
    f2.y = f0.y;
    vec4 f3 = f2;
    f3.z = f0.z;
    float f4 = clamp(exp2((CB0[18].z * length(VARYING1)) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f5;
    do
    {
        if ((CB0[18].w > 0.5) || (CB0[28].w > 0.5))
        {
            f5 = CB0[19].xyz;
            break;
        }
        vec3 f6 = mat3(vec3(CB0[58].xyz), vec3(CB0[59].xyz), vec3(CB0[60].xyz)) * VARYING1;
        bvec3 f7 = bvec3((!(CB0[58].x == 2.0)) && (!(CB0[58].w == 0.0)));
        f5 = textureLod(PrefilteredEnvTexture, vec4(-vec3(f7.x ? f6.x : VARYING1.x, f7.y ? f6.y : VARYING1.y, f7.z ? f6.z : VARYING1.z), 0.0).xyz, max(CB0[18].y, f4) * 5.0).xyz;
        break;
    } while(false);
    vec3 f8 = mix(f5, f3.xyz, vec3(f4));
    vec4 f9 = f3;
    f9.x = f8.x;
    vec4 f10 = f9;
    f10.y = f8.y;
    vec4 f11 = f10;
    f11.z = f8.z;
    vec3 f12 = sqrt(clamp(f11.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f13 = f11;
    f13.x = f12.x;
    vec4 f14 = f13;
    f14.y = f12.y;
    vec4 f15 = f14;
    f15.z = f12.z;
    _entryPointOutput = f15;
}

//$$PrefilteredEnvTexture=s15
