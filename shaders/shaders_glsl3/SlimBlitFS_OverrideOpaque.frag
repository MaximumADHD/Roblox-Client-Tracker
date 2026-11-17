#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[18];
uniform sampler2D Texture0Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(Texture0Texture, VARYING0);
    vec3 f1 = mix(CB1[2].xyz, CB1[3].xyz * f0.xyz, vec3(f0.w));
    vec4 f2 = f0;
    f2.x = f1.x;
    vec4 f3 = f2;
    f3.y = f1.y;
    vec4 f4 = f3;
    f4.z = f1.z;
    vec4 f5 = f4;
    f5.w = 1.0;
    vec4 f6 = f5;
    f6.w = CB1[2].w;
    _entryPointOutput = f6;
}

//$$Texture0Texture=s0
