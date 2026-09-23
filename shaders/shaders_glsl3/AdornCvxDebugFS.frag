#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[61];
uniform samplerCube PrefilteredEnvTexture;

in vec2 VARYING0;
in vec4 VARYING1;
in vec3 VARYING2;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = dFdx(VARYING2);
    vec3 f1 = dFdy(VARYING2);
    vec3 f2 = cross(f0, f1);
    vec3 f3 = f2 * inversesqrt(max(dot(f2, f2), 9.9999999392252902907785028219223e-09));
    vec3 f4;
    if (dot(f3, VARYING2) < 0.0)
    {
        f4 = -f3;
    }
    else
    {
        f4 = f3;
    }
    float f5 = fract((VARYING0.x * 7.309999942779541015625) + (VARYING0.y * 13.1700000762939453125));
    vec3 f6 = vec3(VARYING0, (max(VARYING0.x, VARYING0.y) < 0.4000000059604644775390625) ? ((f5 * 0.60000002384185791015625) + 0.4000000059604644775390625) : f5);
    vec4 f7 = vec4(mix(f6, vec3(dot(f6, vec3(0.2989999949932098388671875, 0.58700001239776611328125, 0.114000000059604644775390625))), vec3(0.300000011920928955078125)) * (0.5 + (0.5 * clamp(dot(f4, normalize(VARYING2)), 0.0, 1.0))), VARYING1.w);
    vec3 f8 = f7.xyz;
    vec3 f9 = f8 * f8;
    vec4 f10 = f7;
    f10.x = f9.x;
    vec4 f11 = f10;
    f11.y = f9.y;
    vec4 f12 = f11;
    f12.z = f9.z;
    float f13 = clamp(exp2((CB0[18].z * length(VARYING2)) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f14 = mat3(vec3(CB0[58].xyz), vec3(CB0[59].xyz), vec3(CB0[60].xyz)) * VARYING2;
    bvec3 f15 = bvec3((!(CB0[58].x == 2.0)) && (!(CB0[58].w == 0.0)));
    vec3 f16 = textureLod(PrefilteredEnvTexture, vec4(-vec3(f15.x ? f14.x : VARYING2.x, f15.y ? f14.y : VARYING2.y, f15.z ? f14.z : VARYING2.z), 0.0).xyz, max(CB0[18].y, f13) * 5.0).xyz;
    bvec3 f17 = bvec3(!(CB0[18].w == 0.0));
    vec3 f18 = mix(vec3(f17.x ? CB0[19].xyz.x : f16.x, f17.y ? CB0[19].xyz.y : f16.y, f17.z ? CB0[19].xyz.z : f16.z), f12.xyz, vec3(f13));
    vec4 f19 = f12;
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
    gl_FragDepth = min(1.0, gl_FragCoord.z + 9.9999997473787516355514526367188e-06);
}

//$$PrefilteredEnvTexture=s15
