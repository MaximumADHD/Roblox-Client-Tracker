#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[15];
uniform sampler2D EvsmTexture0Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    float f0 = (2.0 * texture(EvsmTexture0Texture, VARYING0).x) - 1.0;
    float f1 = (2.0 * (((CB1[3].y / (f0 - CB1[3].x)) * CB1[3].z) + (f0 * CB1[3].w))) - 1.0;
    float f2 = exp(CB1[2].z * f1);
    float f3 = -exp((-CB1[2].w) * f1);
    _entryPointOutput = vec4(f2, f2 * f2, f3, f3 * f3);
}

//$$EvsmTexture0Texture=s0
