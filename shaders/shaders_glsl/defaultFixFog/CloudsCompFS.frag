#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <RayFrame.h>
#include <CompParams.h>
uniform vec4 CB0[58];
uniform vec4 CB4[2];
uniform vec4 CB2[1];
uniform sampler2D CloudsTexture;

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
    vec2 f3 = f0 * (CB2[0].xy * 2.0);
    vec4 f4 = texture2D(CloudsTexture, f3);
    vec4 f5 = vec4(1.0, 1.0, -1.0, 0.0) * CB2[0].xyxy;
    vec2 f6 = f5.xy;
    vec2 f7 = f5.wy;
    vec2 f8 = f5.zy;
    vec4 f9 = (((((((((f4 * 4.0) + texture2DLod(CloudsTexture, f3 - f6, 0.0)) + (texture2DLod(CloudsTexture, f3 - f7, 0.0) * 2.0)) + texture2DLod(CloudsTexture, f3 - f8, 0.0)) + (texture2DLod(CloudsTexture, f3 + f5.zw, 0.0) * 2.0)) + (texture2DLod(CloudsTexture, f3 + f5.xw, 0.0) * 2.0)) + texture2DLod(CloudsTexture, f3 + f8, 0.0)) + (texture2DLod(CloudsTexture, f3 + f7, 0.0) * 2.0)) + texture2DLod(CloudsTexture, f3 + f6, 0.0)) * vec4(0.0625);
    vec4 f10 = f4;
    f10.x = f9.x;
    vec4 f11 = f10;
    f11.y = f9.y;
    vec4 f12 = f11;
    f12.z = f9.z;
    vec3 f13 = sqrt(clamp(f12.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f14 = f12;
    f14.x = f13.x;
    vec4 f15 = f14;
    f15.y = f13.y;
    vec4 f16 = f15;
    f16.z = f13.z;
    float f17 = f9.w;
    vec4 f18 = f16;
    f18.w = f17 * f17;
    if (!(f17 > 0.119999997317790985107421875))
    {
        discard;
    }
    gl_FragData[0] = f18;
    gl_FragDepth = 1.0000000116860974230803549289703e-07;
}

//$$CloudsTexture=s0
