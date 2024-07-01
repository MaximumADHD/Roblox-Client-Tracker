#version 150

#extension GL_ARB_shading_language_include : require
#include <Params.h>
#include <Globals.h>
uniform vec4 CB1[22];
uniform vec4 CB0[58];
uniform sampler2D DiffuseMapTexture;

in vec4 VARYING0;
in vec2 VARYING1;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING1) * VARYING0;
    vec3 f1 = f0.xyz;
    vec3 f2 = (f1 * f1) * exp2(CB1[14].x);
    vec4 f3 = f0;
    f3.x = f2.x;
    vec4 f4 = f3;
    f4.y = f2.y;
    vec4 f5 = f4;
    f5.z = f2.z;
    _entryPointOutput = vec4(sqrt(clamp(f5.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) * f0.w, 0.0);
}

//$$DiffuseMapTexture=s0
