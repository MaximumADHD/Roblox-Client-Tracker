#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <Params.h>
uniform vec4 CB0[52];
uniform vec4 CB1[8];
uniform sampler2D GBufferDepthTexture;
uniform sampler3D OccupancyTexture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(GBufferDepthTexture, VARYING0);
    float f1 = f0.x * 500.0;
    if (f1 > 499.0)
    {
        discard;
    }
    vec3 f2 = vec3((vec2((VARYING0.x * 2.0) - 1.0, 1.0 - (VARYING0.y * 2.0)) * CB1[4].xy) + CB1[4].zw, -1.0) * f1;
    _entryPointOutput = vec4(texture(OccupancyTexture, (((((CB0[7].xyz + (CB0[4].xyz * f2.x)) + (CB0[5].xyz * f2.y)) + (CB0[6].xyz * f2.z)).yxz * CB0[16].xyz) + CB0[17].xyz).yzx).xyz, 1.0);
}

//$$GBufferDepthTexture=s0
//$$OccupancyTexture=s1
