#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[15];
uniform sampler2D Texture0Texture;

varying vec2 VARYING0;

void main()
{
    gl_FragData[0] = texture2DLod(Texture0Texture, VARYING0, CB1[3].x);
}

//$$Texture0Texture=s0
