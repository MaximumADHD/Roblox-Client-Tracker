#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[47];
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING1;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING0) * VARYING1;
    vec3 f1 = f0.xyz;
    float f2 = f0.w;
    _entryPointOutput = vec4(sqrt(clamp((f1 * f1).xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz * f2, f2);
}

//$$DiffuseMapTexture=s0
