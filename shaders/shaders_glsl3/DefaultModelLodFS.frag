#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[61];
uniform samplerCube PrefilteredEnvTexture;

in vec3 VARYING0;
in vec3 VARYING1;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = vec4(VARYING0, 1.0);
    float f1 = clamp(exp2((CB0[18].z * length(VARYING1)) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f2;
    do
    {
        if ((CB0[18].w > 0.5) || (CB0[28].w > 0.5))
        {
            f2 = CB0[19].xyz;
            break;
        }
        vec3 f3 = mat3(vec3(CB0[58].xyz), vec3(CB0[59].xyz), vec3(CB0[60].xyz)) * VARYING1;
        bvec3 f4 = bvec3((!(CB0[58].x == 2.0)) && (!(CB0[58].w == 0.0)));
        f2 = textureLod(PrefilteredEnvTexture, vec4(-vec3(f4.x ? f3.x : VARYING1.x, f4.y ? f3.y : VARYING1.y, f4.z ? f3.z : VARYING1.z), 0.0).xyz, max(CB0[18].y, f1) * 5.0).xyz;
        break;
    } while(false);
    vec3 f5 = mix(f2, f0.xyz, vec3(f1));
    vec4 f6 = f0;
    f6.x = f5.x;
    vec4 f7 = f6;
    f7.y = f5.y;
    vec4 f8 = f7;
    f8.z = f5.z;
    vec3 f9 = sqrt(clamp(f8.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f10 = f8;
    f10.x = f9.x;
    vec4 f11 = f10;
    f11.y = f9.y;
    vec4 f12 = f11;
    f12.z = f9.z;
    _entryPointOutput = f12;
}

//$$PrefilteredEnvTexture=s15
