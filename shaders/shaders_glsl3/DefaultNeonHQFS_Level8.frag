#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[52];
uniform samplerCube PrefilteredEnvTexture;

in vec4 VARYING2;
in vec4 VARYING4;
out vec4 _entryPointOutput;

void main()
{
    float f0 = clamp(exp2((CB0[13].z * length(VARYING4.xyz)) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f1 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f0) * 5.0).xyz;
    bvec3 f2 = bvec3(CB0[13].w != 0.0);
    vec3 f3 = sqrt(clamp(mix(vec3(f2.x ? CB0[14].xyz.x : f1.x, f2.y ? CB0[14].xyz.y : f1.y, f2.z ? CB0[14].xyz.z : f1.z), (pow(VARYING2.xyz * 1.35000002384185791015625, vec3(4.0)) * 4.0).xyz, vec3(f0)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f4 = vec4(f3.x, f3.y, f3.z, vec4(0.0).w);
    f4.w = 1.0 - (clamp(f0, 0.0, 1.0) * VARYING2.w);
    _entryPointOutput = f4;
}

//$$PrefilteredEnvTexture=s15
