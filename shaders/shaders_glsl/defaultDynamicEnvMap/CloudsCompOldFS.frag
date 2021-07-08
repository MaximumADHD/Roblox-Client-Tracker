#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <CompParams.h>
uniform vec4 CB0[53];
uniform vec4 CB2[1];
uniform sampler2D CloudsTexture;

void main()
{
    vec2 f0 = gl_FragCoord.xy * CB2[0].xy;
    vec4 f1 = texture2D(CloudsTexture, f0);
    float f2 = f1.w;
    if (!(f2 >= 0.003899999894201755523681640625))
    {
        discard;
    }
    vec4 f3 = vec4(4.0, 4.0, -4.0, 0.0) * CB2[0].xyxy;
    vec4 f4 = vec4(0.0);
    f4.w = (f2 * f2) * f2;
    vec2 f5 = f3.xy;
    vec2 f6 = f3.wy;
    vec2 f7 = f3.zy;
    vec3 f8 = sqrt(clamp(((((((((((f1 * 4.0) + texture2D(CloudsTexture, f0 - f5)) + (texture2D(CloudsTexture, f0 - f6) * 2.0)) + texture2D(CloudsTexture, f0 - f7)) + (texture2D(CloudsTexture, f0 + f3.zw) * 2.0)) + (texture2D(CloudsTexture, f0 + f3.xw) * 2.0)) + texture2D(CloudsTexture, f0 + f7)) + (texture2D(CloudsTexture, f0 + f6) * 2.0)) + texture2D(CloudsTexture, f0 + f5)) * 0.0625).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    gl_FragData[0] = vec4(f8.x, f8.y, f8.z, f4.w);
    gl_FragDepth = 1.0000000116860974230803549289703e-07;
}

//$$CloudsTexture=s0
