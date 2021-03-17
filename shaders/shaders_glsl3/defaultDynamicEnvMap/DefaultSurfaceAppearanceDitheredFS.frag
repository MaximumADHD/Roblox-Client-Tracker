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
    if (smoothstep(0.0, 1.0, f1) < (fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125)))) * CB0[47].z))
    {
        discard;
    }
    vec4 f2 = vec4(mix(VARYING2.xyz, f0.xyz, vec3(f1)), VARYING2.w);
    vec4 f3 = vec4(f0.xyz, VARYING2.w * f1);
    bvec4 f4 = bvec4(CB3[0].x != 0.0);
    vec4 f5 = vec4(f4.x ? f2.x : f3.x, f4.y ? f2.y : f3.y, f4.z ? f2.z : f3.z, f4.w ? f2.w : f3.w);
    vec3 f6 = f5.xyz;
    vec3 f7 = VARYING6.xyz - (CB0[11].xyz * VARYING3.w);
    float f8 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f9 = VARYING3.yzx - (VARYING3.yzx * f8);
    vec4 f10 = vec4(clamp(f8, 0.0, 1.0));
    vec4 f11 = mix(texture(LightMapTexture, f9), vec4(0.0), f10);
    vec4 f12 = mix(texture(LightGridSkylightTexture, f9), vec4(1.0), f10);
    vec4 f13 = texture(ShadowMapTexture, f7.xy);
    float f14 = f7.z;
    float f15 = (1.0 - ((step(f13.x, f14) * clamp(CB0[24].z + (CB0[24].w * abs(f14 - 0.5)), 0.0, 1.0)) * f13.y)) * f12.y;
    vec3 f16 = (f6 * f6).xyz;
    vec3 f17 = (((VARYING5.xyz * f15) + min((f11.xyz * (f11.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f12.x)), vec3(CB0[16].w))) * f16) + ((CB0[10].xyz * mix(vec3(0.100000001490116119384765625), f16, vec3(VARYING6.w * CB0[26].w))) * (VARYING5.w * f15));
    float f18 = f5.w;
    vec4 f19 = vec4(f17.x, f17.y, f17.z, vec4(0.0).w);
    f19.w = f18;
    float f20 = clamp(exp2((CB0[13].z * length(VARYING4.xyz)) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f21 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f20) * 5.0).xyz;
    bvec3 f22 = bvec3(CB0[13].w != 0.0);
    vec3 f23 = sqrt(clamp(mix(vec3(f22.x ? CB0[14].xyz.x : f21.x, f22.y ? CB0[14].xyz.y : f21.y, f22.z ? CB0[14].xyz.z : f21.z), f19.xyz, vec3(f20)).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f24 = vec4(f23.x, f23.y, f23.z, f19.w);
    f24.w = f18;
    _entryPointOutput = f24;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s3
