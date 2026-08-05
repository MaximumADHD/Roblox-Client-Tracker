#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <RayFrame.h>
#include <CompParams.h>
uniform vec4 CB0[61];
uniform vec4 CB4[2];
uniform vec4 CB2[1];
uniform sampler2D CloudsTexture;

out vec4 _entryPointOutput_color;

void main()
{
    vec2 f0 = (gl_FragCoord.xy * 0.5) / CB0[50].zw;
    vec2 f1 = CB4[1].xy;
    f1.x = CB4[1].xy.x;
    vec2 f2 = (CB4[0].zw * ((f0 * CB4[0].xy) - vec2(1.0))) + f1;
    if (normalize(((CB0[8].xyz * f2.x) + (CB0[9].xyz * f2.y)) - CB0[10].xyz).y < (-0.00999999977648258209228515625))
    {
        discard;
    }
    vec4 f3 = texture(CloudsTexture, f0 * (CB2[0].xy * 2.0));
    vec4 f4 = f3;
    f4.x = f3.x;
    vec4 f5 = f4;
    f5.y = f3.y;
    vec4 f6 = f5;
    f6.z = f3.z;
    vec3 f7 = sqrt(clamp(f6.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f8 = f6;
    f8.x = f7.x;
    vec4 f9 = f8;
    f9.y = f7.y;
    vec4 f10 = f9;
    f10.z = f7.z;
    float f11 = f3.w;
    vec4 f12 = f10;
    f12.w = f11 * f11;
    if (!(f11 > 0.119999997317790985107421875))
    {
        discard;
    }
    _entryPointOutput_color = f12;
    gl_FragDepth = 0.50000011920928955078125;
}

//$$CloudsTexture=s0
