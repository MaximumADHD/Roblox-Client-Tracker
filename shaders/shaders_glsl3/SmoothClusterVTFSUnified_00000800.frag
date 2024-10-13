#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform vec4 CB5[1];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D TranslationMapTexture;
uniform sampler2D AlbedoMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec3 VARYING3;
in vec3 VARYING4;
in vec4 VARYING5;
in vec2 VARYING6;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = (VARYING6 * vec2(0.03125)) + CB5[0].zw;
    bool f1 = CB5[0].z < 0.0;
    vec4 f2;
    if (!f1)
    {
        f2 = texture(TranslationMapTexture, vec4(f0, 0.0, 6.5).xy, 6.5);
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
        f3 = texture(AlbedoMapTexture, (f0 * f2.z) + f2.xy).xyz;
    }
    float f4 = clamp(dot(step(CB0[24].xyz, abs(VARYING0.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f5 = VARYING0.yzx - (VARYING0.yzx * f4);
    vec4 f6 = vec4(clamp(f4, 0.0, 1.0));
    vec4 f7 = mix(texture(LightMapTexture, f5), vec4(0.0), f6);
    vec4 f8 = mix(texture(LightGridSkylightTexture, f5), vec4(1.0), f6);
    vec3 f9 = (min((f7.xyz * (f7.w * 120.0)) + (CB0[32].xyz + (CB0[33].xyz * f8.x)), vec3(CB0[21].w)) + (VARYING3 * f8.y)) * f3;
    vec4 f10 = vec4(0.0);
    f10.x = f9.x;
    vec4 f11 = f10;
    f11.y = f9.y;
    vec4 f12 = f11;
    f12.z = f9.z;
    vec4 f13 = f12;
    f13.w = 1.0;
    float f14 = clamp(exp2((CB0[18].z * VARYING1.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f15 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4, 0.0).xyz, max(CB0[18].y, f14) * 5.0).xyz;
    bvec3 f16 = bvec3(!(CB0[18].w == 0.0));
    vec3 f17 = mix(vec3(f16.x ? CB0[19].xyz.x : f15.x, f16.y ? CB0[19].xyz.y : f15.y, f16.z ? CB0[19].xyz.z : f15.z), f13.xyz, vec3(f14));
    vec4 f18 = f13;
    f18.x = f17.x;
    vec4 f19 = f18;
    f19.y = f17.y;
    vec4 f20 = f19;
    f20.z = f17.z;
    _entryPointOutput = f20;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$TranslationMapTexture=s5
//$$AlbedoMapTexture=s0
