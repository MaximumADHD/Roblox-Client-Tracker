#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform sampler2D geomMapTexture;
uniform sampler2D mapTexture;

in vec2 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(geomMapTexture, (VARYING0 * CB0[50].zw) - ((floor(VARYING0 + ((CB0[50].xy * 0.5) / CB0[50].zw)) * 0.5) * CB0[50].xy));
    vec4 f1 = texture(mapTexture, VARYING0);
    vec4 f2 = texture(mapTexture, VARYING1.xy);
    vec4 f3 = texture(mapTexture, VARYING1.zw);
    vec4 f4 = texture(mapTexture, VARYING2.xy);
    vec4 f5 = texture(mapTexture, VARYING2.zw);
    float f6 = f0.x;
    bvec4 f7 = lessThan(abs(vec4(f2.y, f3.y, f4.y, f5.y) - vec4(f6)), vec4(0.0007999999797903001308441162109375));
    vec4 f8 = vec4(f7.x ? vec4(1.0).x : vec4(0.0).x, f7.y ? vec4(1.0).y : vec4(0.0).y, f7.z ? vec4(1.0).z : vec4(0.0).z, f7.w ? vec4(1.0).w : vec4(0.0).w);
    float f9 = dot(f8, vec4(1.0));
    float f10 = f0.y;
    float f11 = ((1.0 - f10) * (((abs(f1.y - f6) * f9) > 3.9999998989515006542205810546875e-05) ? (dot(vec4(f2.x, f3.x, f4.x, f5.x), f8) / f9) : f1.x)) + f10;
    _entryPointOutput = vec4(f11, f11, f11, 1.0);
}

//$$geomMapTexture=s3
//$$mapTexture=s2
