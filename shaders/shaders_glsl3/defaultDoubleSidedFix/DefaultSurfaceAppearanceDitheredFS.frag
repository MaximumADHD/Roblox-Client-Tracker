#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SAParams.h>
uniform vec4 CB0[53];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING0);
    float f1 = f0.w;
    float f2 = fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))));
    if (smoothstep(0.0, 1.0, f1) < (f2 + ((fract(CB0[47].z) - f2) * clamp((0.001000000047497451305389404296875 * floor(CB0[47].z)) * VARYING4.w, 0.0, 1.0))))
    {
        discard;
    }
    vec4 f3 = vec4(mix(VARYING2.xyz, f0.xyz, vec3(f1)), VARYING2.w);
    vec4 f4 = vec4(f0.xyz, VARYING2.w * f1);
    bvec4 f5 = bvec4(CB3[0].x != 0.0);
    vec4 f6 = vec4(f5.x ? f3.x : f4.x, f5.y ? f3.y : f4.y, f5.z ? f3.z : f4.z, f5.w ? f3.w : f4.w);
    vec3 f7 = f6.xyz;
    vec3 f8 = VARYING6.xyz - (CB0[11].xyz * VARYING3.w);
    float f9 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f10 = VARYING3.yzx - (VARYING3.yzx * f9);
    vec4 f11 = vec4(clamp(f9, 0.0, 1.0));
    vec4 f12 = mix(texture(LightMapTexture, f10), vec4(0.0), f11);
    vec4 f13 = mix(texture(LightGridSkylightTexture, f10), vec4(1.0), f11);
    vec4 f14 = texture(ShadowMapTexture, f8.xy);
    float f15 = f8.z;
    float f16 = (1.0 - ((step(f14.x, f15) * clamp(CB0[24].z + (CB0[24].w * abs(f15 - 0.5)), 0.0, 1.0)) * f14.y)) * f13.y;
    vec3 f17 = (f7 * f7).xyz;
    vec3 f18 = (((VARYING5.xyz * f16) + min((f12.xyz * (f12.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f13.x)), vec3(CB0[16].w))) * f17) + ((CB0[10].xyz * mix(vec3(0.100000001490116119384765625), f17, vec3(VARYING6.w * CB0[26].w))) * (VARYING5.w * f16));
    float f19 = f6.w;
    vec4 f20 = vec4(f18.x, f18.y, f18.z, vec4(0.0).w);
    f20.w = f19;
    float f21 = clamp(exp2((CB0[13].z * length(VARYING4.xyz)) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f22 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f21) * 5.0).xyz;
    bvec3 f23 = bvec3(CB0[13].w != 0.0);
    vec3 f24 = sqrt(clamp(mix(vec3(f23.x ? CB0[14].xyz.x : f22.x, f23.y ? CB0[14].xyz.y : f22.y, f23.z ? CB0[14].xyz.z : f22.z), f20.xyz, vec3(f21)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f25 = vec4(f24.x, f24.y, f24.z, f20.w);
    f25.w = f19;
    _entryPointOutput = f25;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s3
