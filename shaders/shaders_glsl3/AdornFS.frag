#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[61];
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING1;
in vec3 VARYING2;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING0) * VARYING1;
    vec3 f1 = f0.xyz;
    vec3 f2 = f1 * f1;
    vec4 f3 = f0;
    f3.x = f2.x;
    vec4 f4 = f3;
    f4.y = f2.y;
    vec4 f5 = f4;
    f5.z = f2.z;
    float f6 = clamp(exp2((CB0[18].z * length(VARYING2)) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f7;
    do
    {
        if ((CB0[18].w > 0.5) || (CB0[28].w > 0.5))
        {
            f7 = CB0[19].xyz;
            break;
        }
        vec3 f8 = mat3(vec3(CB0[58].xyz), vec3(CB0[59].xyz), vec3(CB0[60].xyz)) * VARYING2;
        bvec3 f9 = bvec3((!(CB0[58].x == 2.0)) && (!(CB0[58].w == 0.0)));
        f7 = textureLod(PrefilteredEnvTexture, vec4(-vec3(f9.x ? f8.x : VARYING2.x, f9.y ? f8.y : VARYING2.y, f9.z ? f8.z : VARYING2.z), 0.0).xyz, max(CB0[18].y, f6) * 5.0).xyz;
        break;
    } while(false);
    vec3 f10 = mix(f7, f5.xyz, vec3(f6));
    vec4 f11 = f5;
    f11.x = f10.x;
    vec4 f12 = f11;
    f12.y = f10.y;
    vec4 f13 = f12;
    f13.z = f10.z;
    vec3 f14 = sqrt(clamp(f13.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f15 = f13;
    f15.x = f14.x;
    vec4 f16 = f15;
    f16.y = f14.y;
    vec4 f17 = f16;
    f17.z = f14.z;
    _entryPointOutput = f17;
}

//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s0
