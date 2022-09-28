#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <Params.h>
uniform vec4 CB0[58];
uniform vec4 CB1[10];
uniform sampler2D GBufferDepthTexture;
uniform sampler3D OccupancyTexture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = vec2((VARYING0.x * 2.0) - 1.0, 1.0 - (VARYING0.y * 2.0));
    vec4 f1 = texture(GBufferDepthTexture, VARYING0);
    float f2 = f1.x * 500.0;
    if (f2 > 499.0)
    {
        discard;
    }
    vec3 f3 = vec3(vec2(dot(f0, CB1[3].xy), dot(f0, CB1[3].zw)) + CB1[4].zw, -1.0) * f2;
    _entryPointOutput = vec4(texture(OccupancyTexture, (((((CB0[11].xyz + (CB0[8].xyz * f3.x)) + (CB0[9].xyz * f3.y)) + (CB0[10].xyz * f3.z)).yxz * CB0[21].xyz) + CB0[22].xyz).yzx).xyz, 1.0);
}

//$$GBufferDepthTexture=s0
//$$OccupancyTexture=s1
