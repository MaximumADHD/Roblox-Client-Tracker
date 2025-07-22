#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[61];
in vec4 VARYING2;
in vec4 VARYING4;
out vec4 _entryPointOutput;

void main()
{
    _entryPointOutput = vec4(mix(vec3(1.0), VARYING2.xyz, vec3(clamp(VARYING2.w * 2.0, 0.0, 1.0))) * clamp(exp2((CB0[18].z * length(VARYING4.xyz)) + CB0[18].x) - CB0[18].w, 0.0, 1.0), 1.0);
}

