#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[52];
uniform sampler2D DiffuseMapTexture;

in vec3 VARYING0;

void main()
{
    if ((texture(DiffuseMapTexture, VARYING0.xy).w * VARYING0.z) < CB0[46].z)
    {
        discard;
    }
}

//$$DiffuseMapTexture=s3
