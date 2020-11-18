#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <CompParams.h>
uniform vec4 CB0[52];
uniform vec4 CB2[1];
uniform sampler2D CloudsTexture;

out vec4 _entryPointOutput_color;

void main()
{
    vec2 f0 = gl_FragCoord.xy * CB2[0].xy;
    vec4 f1 = texture(CloudsTexture, f0);
    if (!(f1.w >= 0.039999999105930328369140625))
    {
        discard;
    }
    vec4 f2 = vec4(2.0, 2.0, -2.0, 0.0) * CB2[0].xyxy;
    vec2 f3 = f2.xy;
    vec2 f4 = f2.wy;
    vec2 f5 = f2.zy;
    vec3 f6 = sqrt(clamp(((((((((((f1 * 4.0) + texture(CloudsTexture, f0 - f3)) + (texture(CloudsTexture, f0 - f4) * 2.0)) + texture(CloudsTexture, f0 - f5)) + (texture(CloudsTexture, f0 + f2.zw) * 2.0)) + (texture(CloudsTexture, f0 + f2.xw) * 2.0)) + texture(CloudsTexture, f0 + f5)) + (texture(CloudsTexture, f0 + f4) * 2.0)) + texture(CloudsTexture, f0 + f3)) * 0.0625).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    _entryPointOutput_color = vec4(f6.x, f6.y, f6.z, f1.w);
    gl_FragDepth = 0.50000011920928955078125;
}

//$$CloudsTexture=s0
