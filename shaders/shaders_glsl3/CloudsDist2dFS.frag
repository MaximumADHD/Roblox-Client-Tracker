#version 150

#extension GL_ARB_shading_language_include : require
#include <RayFrame.h>
#include <Globals.h>
uniform vec4 CB4[2];
uniform vec4 CB0[58];
out vec2 _entryPointOutput;

void main()
{
    vec2 f0 = CB4[1].xy;
    f0.x = CB4[1].xy.x;
    vec2 f1 = (CB4[0].zw * ((gl_FragCoord.xy * CB4[0].xy) - vec2(1.0))) + f0;
    vec3 f2 = normalize(((CB0[8].xyz * f1.x) + (CB0[9].xyz * f1.y)) - CB0[10].xyz);
    vec3 f3 = CB0[11].xyz * 0.00028000000747852027416229248046875;
    vec3 f4 = f3;
    f4.y = f3.y + 971.0;
    float f5 = dot(f2, f4);
    float f6 = 2.0 * f5;
    vec2 f7 = (vec2(f5 * (-2.0)) + sqrt(vec2(f6 * f6) - ((vec2(dot(f4, f4)) - vec2(948676.0, 953552.25)) * 4.0))) * 0.5;
    float f8 = f7.x;
    vec3 f9 = f2;
    f9.y = 0.10598583519458770751953125 + (0.894014179706573486328125 * f2.y);
    _entryPointOutput = vec2((length((f3 + (f9 * f8)) - f3) + (f7.y - f8)) * 0.00200000009499490261077880859375, 0.14285714924335479736328125);
}

