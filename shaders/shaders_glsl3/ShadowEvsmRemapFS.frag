#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[15];
uniform sampler2D EvsmTexture0Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(EvsmTexture0Texture, VARYING0) * CB1[3];
    vec2 f1 = clamp(f0.xy, CB1[4].xy, CB1[4].zw);
    vec4 f2 = f0;
    f2.x = f1.x;
    vec4 f3 = f2;
    f3.y = f1.y;
    vec4 f4 = f3;
    f4.z = clamp(f0.z, -CB1[4].z, -CB1[4].x);
    vec4 f5 = f4;
    f5.w = clamp(f0.w, CB1[4].y, CB1[4].w);
    _entryPointOutput = f5;
}

//$$EvsmTexture0Texture=s0
