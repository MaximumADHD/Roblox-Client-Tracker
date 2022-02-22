#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[8];
uniform sampler2D Texture0Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(Texture0Texture, VARYING0);
    vec3 f1 = clamp(f0.xyz * 2.0, vec3(0.0), vec3(1.0));
    vec4 f2 = f0;
    f2.x = f1.x;
    vec4 f3 = f2;
    f3.y = f1.y;
    vec4 f4 = f3;
    f4.z = f1.z;
    _entryPointOutput = vec4(dot(f4.xyz, CB1[1].xyz) + CB1[1].w, dot(f4.xyz, CB1[2].xyz) + CB1[2].w, dot(f4.xyz, CB1[3].xyz) + CB1[3].w, f0.w);
}

//$$Texture0Texture=s0
