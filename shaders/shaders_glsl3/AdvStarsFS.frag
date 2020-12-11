#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
#include <Globals.h>
uniform vec4 CB1[18];
uniform vec4 CB0[53];
uniform sampler2D DiffuseMapTexture;

in vec4 VARYING0;
in vec2 VARYING1;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING1) * VARYING0;
    vec3 f1 = f0.xyz;
    _entryPointOutput = vec4(sqrt(clamp(((f1 * f1) * exp2(CB1[10].x)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) * f0.w, 0.0);
}

//$$DiffuseMapTexture=s0
