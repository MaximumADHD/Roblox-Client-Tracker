#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[8];
uniform sampler2D Texture0Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(Texture0Texture, VARYING0) * CB1[2];
    vec2 f1 = clamp(f0.xy, CB1[3].xy, CB1[3].zw);
    vec4 f2 = vec4(f1.x, f1.y, f0.z, f0.w);
    f2.z = clamp(f0.z, -CB1[3].z, -CB1[3].x);
    vec4 f3 = f2;
    f3.w = clamp(f0.w, CB1[3].y, CB1[3].w);
    _entryPointOutput = f3;
}

//$$Texture0Texture=s0
