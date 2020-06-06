#version 110

#extension GL_ARB_shading_language_include : require
#include <Params.h>
uniform vec4 CB1[8];
uniform sampler2D Texture0Texture;
uniform sampler2D Texture3Texture;
uniform sampler2D Texture1Texture;

varying vec2 VARYING0;

void main()
{
    vec4 f0 = texture2D(Texture0Texture, VARYING0);
    vec3 f1 = f0.xyz;
    vec3 f2 = texture2D(Texture3Texture, VARYING0).xyz + ((f1 * ((vec3(max(max(max(f0.x, f0.y), f0.z) - CB1[7].y, 0.0)) * CB1[7].x) * 3.2999999523162841796875)) * 2.0);
    vec3 f3 = texture2D(Texture1Texture, VARYING0).xyz;
    vec3 f4 = mix(((f1 * f1) * 4.0) + ((f2 * f2) * 4.0), (f3 * f3) * 4.0, vec3(CB1[4].x));
    vec3 f5 = f4 * CB1[5].x;
    vec3 f6 = ((f4 * (f5 + vec3(CB1[5].y))) / ((f4 * (f5 + vec3(CB1[5].z))) + vec3(CB1[5].w))) * CB1[6].x;
    gl_FragData[0] = vec4(dot(f6, CB1[1].xyz) + CB1[1].w, dot(f6, CB1[2].xyz) + CB1[2].w, dot(f6, CB1[3].xyz) + CB1[3].w, 1.0);
}

//$$Texture0Texture=s0
//$$Texture3Texture=s3
//$$Texture1Texture=s1
