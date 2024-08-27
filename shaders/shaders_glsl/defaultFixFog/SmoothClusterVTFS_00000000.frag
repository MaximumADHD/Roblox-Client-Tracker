#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform vec4 CB5[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D TranslationMapTexture;
uniform sampler2D AlbedoMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec3 VARYING3;
varying vec3 VARYING4;
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
    vec4 f9 = texture2D(ShadowMapTexture, VARYING1.xy);
    vec3 f10 = (min((f7.xyz * (f7.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f8.x)), vec3(CB0[21].w)) + (VARYING3 * ((1.0 - ((step(f9.x, VARYING1.z) * clamp(CB0[29].z + (CB0[29].w * abs(VARYING1.z - 0.5)), 0.0, 1.0)) * f9.y)) * f8.y))) * f3;
    vec4 f11 = vec4(0.0);
    f11.x = f10.x;
    vec4 f12 = f11;
    f12.y = f10.y;
    vec4 f13 = f12;
    f13.z = f10.z;
    vec4 f14 = f13;
    f14.w = 1.0;
    vec3 f15 = normalize(-VARYING4);
    vec3 f16 = f15 * f15;
    bvec3 f17 = lessThan(f15, vec3(0.0));
    vec3 f18 = vec3(f17.x ? f16.x : vec3(0.0).x, f17.y ? f16.y : vec3(0.0).y, f17.z ? f16.z : vec3(0.0).z);
    vec3 f19 = f16 - f18;
    vec3 f20 = (((((CB0[34].xyz * f19.x) + (CB0[36].xyz * f19.y)) + (CB0[38].xyz * f19.z)) + (CB0[35].xyz * f18.x)) + (CB0[37].xyz * f18.y)) + (CB0[39].xyz * f18.z);
    bvec3 f21 = bvec3(!(CB0[18].w == 0.0));
    vec3 f22 = mix(vec3(f21.x ? CB0[19].xyz.x : f20.x, f21.y ? CB0[19].xyz.y : f20.y, f21.z ? CB0[19].xyz.z : f20.z), f14.xyz, vec3(clamp(exp2((CB0[18].z * VARYING1.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f23 = f14;
    f23.x = f22.x;
    vec4 f24 = f23;
    f24.y = f22.y;
    vec4 f25 = f24;
    f25.z = f22.z;
    vec3 f26 = sqrt(clamp(f25.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f27 = f25;
    f27.x = f26.x;
    vec4 f28 = f27;
    f28.y = f26.y;
    vec4 f29 = f28;
    f29.z = f26.z;
    gl_FragData[0] = f29;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$TranslationMapTexture=s5
//$$AlbedoMapTexture=s0
