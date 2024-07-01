#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;

void main()
{
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING0);
    float f1 = f0.w;
    if (f1 < (0.5 * CB0[53].z))
    {
        discard;
    }
    gl_FragData[0] = vec4(0.0, 0.0, 0.0, f1);
}

//$$DiffuseMapTexture=s3
