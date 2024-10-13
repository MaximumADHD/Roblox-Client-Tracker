#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform vec4 CB5[1];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D TranslationMapTexture;
uniform sampler2D AlbedoMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec3 VARYING3;
varying vec4 VARYING5;
varying vec2 VARYING6;

void main()
{
    vec2 f0 = (VARYING6 * vec2(0.03125)) + CB5[0].zw;
    bool f1 = CB5[0].z < 0.0;
    vec4 f2;
    if (!f1)
    {
        f2 = texture2D(TranslationMapTexture, vec4(f0, 0.0, 6.5).xy, 6.5);
    }
    else
    {
        f2 = vec4(0.0);
    }
    vec3 f3;
    if (((f2.w < 0.0) || f1) || (VARYING0.w > 0.0))
    {
        f3 = VARYING5.xyz * VARYING5.xyz;
    }
    else
    {
        f3 = texture2D(AlbedoMapTexture, (f0 * f2.z) + f2.xy).xyz;
    }
    float f4 = clamp(dot(step(CB0[24].xyz, abs(VARYING0.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f5 = VARYING0.yzx - (VARYING0.yzx * f4);
    vec4 f6 = vec4(clamp(f4, 0.0, 1.0));
    vec4 f7 = mix(texture3D(LightMapTexture, f5), vec4(0.0), f6);
    vec4 f8 = mix(texture3D(LightGridSkylightTexture, f5), vec4(1.0), f6);
    vec3 f9 = (min((f7.xyz * (f7.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f8.x)), vec3(CB0[21].w)) + (VARYING3 * f8.y)) * f3;
    vec4 f10 = vec4(0.0);
    f10.x = f9.x;
    vec4 f11 = f10;
    f11.y = f9.y;
    vec4 f12 = f11;
    f12.z = f9.z;
    vec4 f13 = f12;
    f13.w = 1.0;
    vec3 f14 = mix(CB0[19].xyz, f13.xyz, vec3(clamp(exp2((CB0[18].z * VARYING1.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f15 = f13;
    f15.x = f14.x;
    vec4 f16 = f15;
    f16.y = f14.y;
    vec4 f17 = f16;
    f17.z = f14.z;
    vec3 f18 = sqrt(clamp(f17.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f19 = f17;
    f19.x = f18.x;
    vec4 f20 = f19;
    f20.y = f18.y;
    vec4 f21 = f20;
    f21.z = f18.z;
    gl_FragData[0] = f21;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$TranslationMapTexture=s5
//$$AlbedoMapTexture=s0
