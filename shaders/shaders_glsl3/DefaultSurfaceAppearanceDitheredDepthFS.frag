#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING0);
    float f1 = f0.w;
    if (smoothstep(0.0, 1.0, f1) < (fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125)))) * CB0[47].z))
    {
        discard;
    }
    _entryPointOutput = vec4(0.0, 0.0, 0.0, f1);
}

//$$DiffuseMapTexture=s3
