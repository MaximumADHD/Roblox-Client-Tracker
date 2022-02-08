#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <RayFrame.h>
#include <CompParams.h>
uniform vec4 CB0[53];
uniform vec4 CB4[1];
uniform vec4 CB2[1];
uniform sampler2D CloudsTexture;

out vec4 _entryPointOutput_color;

void main()
{
    vec2 f0 = gl_FragCoord.xy * 0.5;
    vec2 f1 = CB4[0].zw * ((f0 * CB4[0].xy) - vec2(1.0));
    if (normalize(((CB0[4].xyz * f1.x) + (CB0[5].xyz * f1.y)) - CB0[6].xyz).y < (-0.00999999977648258209228515625))
    {
        discard;
    }
    vec2 f2 = f0 * (CB2[0].xy * 2.0);
    vec4 f3 = texture(CloudsTexture, f2);
    vec4 f4 = vec4(1.0, 1.0, -1.0, 0.0) * CB2[0].xyxy;
    vec2 f5 = f4.xy;
    vec2 f6 = f4.wy;
    vec2 f7 = f4.zy;
    vec4 f8 = (((((((((f3 * 4.0) + textureLod(CloudsTexture, f2 - f5, 0.0)) + (textureLod(CloudsTexture, f2 - f6, 0.0) * 2.0)) + textureLod(CloudsTexture, f2 - f7, 0.0)) + (textureLod(CloudsTexture, f2 + f4.zw, 0.0) * 2.0)) + (textureLod(CloudsTexture, f2 + f4.xw, 0.0) * 2.0)) + textureLod(CloudsTexture, f2 + f7, 0.0)) + (textureLod(CloudsTexture, f2 + f6, 0.0) * 2.0)) + textureLod(CloudsTexture, f2 + f5, 0.0)) * vec4(0.0625);
    vec3 f9 = sqrt(clamp(f8.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    float f10 = f8.w;
    vec4 f11 = vec4(f9.x, f9.y, f9.z, f3.w);
    f11.w = f10 * f10;
    if (!(f10 > 0.119999997317790985107421875))
    {
        discard;
    }
    _entryPointOutput_color = f11;
    gl_FragDepth = 0.50000011920928955078125;
}

//$$CloudsTexture=s0
