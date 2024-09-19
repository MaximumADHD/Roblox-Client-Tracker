#version 150

#extension GL_ARB_shading_language_include : require
#include <RayFrame.h>
#include <Params.h>
#include <Globals.h>
uniform vec4 CB4[2];
uniform vec4 CB1[15];
uniform vec4 CB0[58];
uniform sampler2D distTexture;
uniform sampler2D cloudColorTexture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = CB4[1].xy;
    f0.x = CB4[1].xy.x;
    vec2 f1 = (CB4[0].zw * (((VARYING0 * CB1[0].xy) * CB4[0].xy) - vec2(1.0))) + f0;
    if (normalize(((CB0[8].xyz * f1.x) + (CB0[9].xyz * f1.y)) - CB0[10].xyz).y < (-0.5))
    {
        discard;
    }
    vec4 f2 = vec4(1.0, 1.0, -1.0, 0.0) * CB1[0].zwzw;
    vec2 f3 = f2.xy;
    vec2 f4 = f2.wy;
    vec2 f5 = f2.zy;
    vec4 f6 = (((((((((textureLod(cloudColorTexture, VARYING0, 0.0) * 4.0) + textureLod(cloudColorTexture, VARYING0 - f3, 0.0)) + (textureLod(cloudColorTexture, VARYING0 - f4, 0.0) * 2.0)) + textureLod(cloudColorTexture, VARYING0 - f5, 0.0)) + (textureLod(cloudColorTexture, VARYING0 + f2.zw, 0.0) * 2.0)) + (textureLod(cloudColorTexture, VARYING0 + f2.xw, 0.0) * 2.0)) + textureLod(cloudColorTexture, VARYING0 + f5, 0.0)) + (textureLod(cloudColorTexture, VARYING0 + f4, 0.0) * 2.0)) + textureLod(cloudColorTexture, VARYING0 + f3, 0.0)) * vec4(0.0625);
    float f7 = clamp(((textureLod(distTexture, VARYING0, 0.0).x * 500.0) - 227.4499969482421875) * 0.0975609719753265380859375, 0.0, 1.0);
    vec4 f8 = f6;
    f8.w = mix(f6.w, 0.0, f7 * f7);
    _entryPointOutput = f8;
}

//$$distTexture=s3
//$$cloudColorTexture=s0
