#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[58];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D StudsMapTexture;

in vec3 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    vec2 f0 = VARYING1.xy;
    f0.y = (fract(VARYING1.y) + VARYING1.z) * 0.25;
    vec4 f1 = vec4((VARYING2.xyz * texture(StudsMapTexture, f0).x) * 2.0, VARYING2.w);
    vec3 f2 = f1.xyz;
    vec3 f3 = f2 * f2;
    vec4 f4 = f1;
    f4.x = f3.x;
    vec4 f5 = f4;
    f5.y = f3.y;
    vec4 f6 = f5;
    f6.z = f3.z;
    float f7 = length(VARYING4.xyz);
    vec3 f8 = -(VARYING4.xyz / vec3(f7));
    vec3 f9 = reflect(f8, normalize(VARYING5.xyz));
    float f10 = (!(VARYING7.w == 0.0)) ? 0.0 : ((0.08900000154972076416015625 + (VARYING5.w * 0.9110000133514404296875)) * 5.0);
    float f11 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f12 = VARYING3.yzx - (VARYING3.yzx * f11);
    vec4 f13 = vec4(clamp(f11, 0.0, 1.0));
    vec4 f14 = mix(texture(LightMapTexture, f12), vec4(0.0), f13);
    vec4 f15 = mix(texture(LightGridSkylightTexture, f12), vec4(1.0), f13);
    float f16 = f15.y;
    vec3 f17 = (((VARYING6.xyz * f16) + min((f14.xyz * (f14.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f15.x)), vec3(CB0[21].w))) * mix(f6.xyz, textureLod(PrefilteredEnvTexture, vec4(f9, f10).xyz, f10).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f9.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(VARYING7.w))) + (CB0[15].xyz * ((VARYING6.w * f16) * 0.100000001490116119384765625));
    vec4 f18 = vec4(0.0);
    f18.x = f17.x;
    vec4 f19 = f18;
    f19.y = f17.y;
    vec4 f20 = f19;
    f20.z = f17.z;
    vec4 f21 = f20;
    f21.w = VARYING2.w;
    float f22 = clamp(exp2((CB0[18].z * f7) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f23 = textureLod(PrefilteredEnvTexture, vec4(f8, 0.0).xyz, max(CB0[18].y, f22) * 5.0).xyz;
    bvec3 f24 = bvec3(!(CB0[18].w == 0.0));
    vec3 f25 = mix(vec3(f24.x ? CB0[19].xyz.x : f23.x, f24.y ? CB0[19].xyz.y : f23.y, f24.z ? CB0[19].xyz.z : f23.z), f21.xyz, vec3(f22));
    vec4 f26 = f21;
    f26.x = f25.x;
    vec4 f27 = f26;
    f27.y = f25.y;
    vec4 f28 = f27;
    f28.z = f25.z;
    vec3 f29 = sqrt(clamp(f28.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f30 = f28;
    f30.x = f29.x;
    vec4 f31 = f30;
    f31.y = f29.y;
    vec4 f32 = f31;
    f32.z = f29.z;
    vec4 f33 = f32;
    f33.w = VARYING2.w;
    _entryPointOutput = f33;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$StudsMapTexture=s0
