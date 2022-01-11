#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[2];
uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;

void main()
{
    vec4 f0 = texture2D(DiffuseMapTexture, vec4(VARYING0, 0.0, -10.0).xy, -10.0);
    float f1 = f0.w;
    gl_FragData[0] = vec4(((f0.xyz * f1) * CB1[1].xyz) * CB1[1].w, f1 * CB1[1].w);
}

//$$DiffuseMapTexture=s0
