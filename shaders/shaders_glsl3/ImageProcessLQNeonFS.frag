#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[10];
uniform sampler2D Texture0Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = texture(Texture0Texture, VARYING0).xyz;
    vec3 f1 = (f0 * f0) * 4.0;
    vec3 f2 = f1 * CB1[5].x;
    vec3 f3 = ((f1 * (f2 + vec3(CB1[5].y))) / ((f1 * (f2 + vec3(CB1[5].z))) + vec3(CB1[5].w))) * CB1[6].x;
    _entryPointOutput = vec4(dot(f3, CB1[1].xyz) + CB1[1].w, dot(f3, CB1[2].xyz) + CB1[2].w, dot(f3, CB1[3].xyz) + CB1[3].w, 1.0);
}

//$$Texture0Texture=s0
