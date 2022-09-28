#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform sampler2D colorTexture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = texture(colorTexture, VARYING0).xyz;
    _entryPointOutput = vec4((f0 * f0) * CB0[20].x, 1.0);
}

//$$colorTexture=s1
