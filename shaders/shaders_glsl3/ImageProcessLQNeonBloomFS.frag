#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[10];
uniform sampler2D Texture0Texture;
uniform sampler2D Texture3Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(Texture0Texture, VARYING0);
    vec3 f1 = f0.xyz;
    vec3 f2 = texture(Texture3Texture, VARYING0).xyz + ((f1 * ((vec3(max(max(max(f0.x, f0.y), f0.z) - CB1[9].y, 0.0)) * CB1[9].x) * 3.2999999523162841796875)) * 2.0);
    vec3 f3 = ((f1 * f1) * 4.0) + ((f2 * f2) * 4.0);
    vec3 f4 = f3 * CB1[5].x;
    vec3 f5 = ((f3 * (f4 + vec3(CB1[5].y))) / ((f3 * (f4 + vec3(CB1[5].z))) + vec3(CB1[5].w))) * CB1[6].x;
    _entryPointOutput = vec4(dot(f5, CB1[1].xyz) + CB1[1].w, dot(f5, CB1[2].xyz) + CB1[2].w, dot(f5, CB1[3].xyz) + CB1[3].w, 1.0);
}

//$$Texture0Texture=s0
//$$Texture3Texture=s3
