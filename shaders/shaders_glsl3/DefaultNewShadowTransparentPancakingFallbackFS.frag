#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[47];
uniform sampler2D DiffuseMapTexture;

in vec3 VARYING0;
in vec2 VARYING1;

void main()
{
    if ((texture(DiffuseMapTexture, VARYING0.xy).w * VARYING0.z) < CB0[46].z)
    {
        discard;
    }
    gl_FragDepth = (clamp(VARYING1.x, 0.0, 1.0) * 0.5) + 0.5;
}

//$$DiffuseMapTexture=s3
