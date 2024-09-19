#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[15];
uniform sampler2D Texture0Texture;
uniform sampler2D Texture2Texture;
uniform sampler2D Texture3Texture;

varying vec2 VARYING0;

void main()
{
    vec3 f0 = texture2D(Texture0Texture, VARYING0).xyz;
    vec3 f1 = texture2D(Texture3Texture, VARYING0).xyz;
    vec3 f2 = texture2D(Texture2Texture, VARYING0).xyz * CB1[5].w;
    gl_FragData[0] = vec4(sqrt(clamp(((((f0 * f0) * 4.0) + ((f1 * f1) * 4.0)) + (f2 * f2)) * 0.25, vec3(0.0), vec3(1.0))), 1.0);
}

//$$Texture0Texture=s0
//$$Texture2Texture=s2
//$$Texture3Texture=s3
