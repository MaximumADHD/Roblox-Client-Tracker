#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[61];
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
    vec3 f11 = mat3(vec3(CB0[58].xyz), vec3(CB0[59].xyz), vec3(CB0[60].xyz)) * f9;
    bvec3 f12 = bvec3(!(CB0[58].x == 2.0));
    float f13 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f14 = VARYING3.yzx - (VARYING3.yzx * f13);
    vec4 f15 = vec4(clamp(f13, 0.0, 1.0));
    vec4 f16 = mix(texture(LightMapTexture, f14), vec4(0.0), f15);
    vec4 f17 = mix(texture(LightGridSkylightTexture, f14), vec4(1.0), f15);
    float f18 = f17.y;
    vec3 f19 = (((VARYING6.xyz * f18) + min((f16.xyz * (f16.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f17.x)), vec3(CB0[21].w))) * mix(f6.xyz, textureLod(PrefilteredEnvTexture, vec4(vec3(f12.x ? f11.x : f9.x, f12.y ? f11.y : f9.y, f12.z ? f11.z : f9.z), f10).xyz, f10).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f9.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(VARYING7.w))) + (CB0[15].xyz * ((VARYING6.w * f18) * 0.100000001490116119384765625));
    vec4 f20 = vec4(0.0);
    f20.x = f19.x;
    vec4 f21 = f20;
    f21.y = f19.y;
    vec4 f22 = f21;
    f22.z = f19.z;
    vec4 f23 = f22;
    f23.w = VARYING2.w;
    float f24 = clamp(exp2((CB0[18].z * f7) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f25 = textureLod(PrefilteredEnvTexture, vec4(f8, 0.0).xyz, max(CB0[18].y, f24) * 5.0).xyz;
    bvec3 f26 = bvec3(!(CB0[18].w == 0.0));
    vec3 f27 = mix(vec3(f26.x ? CB0[19].xyz.x : f25.x, f26.y ? CB0[19].xyz.y : f25.y, f26.z ? CB0[19].xyz.z : f25.z), f23.xyz, vec3(f24));
    vec4 f28 = f23;
    f28.x = f27.x;
    vec4 f29 = f28;
    f29.y = f27.y;
    vec4 f30 = f29;
    f30.z = f27.z;
    vec3 f31 = sqrt(clamp(f30.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f32 = f30;
    f32.x = f31.x;
    vec4 f33 = f32;
    f33.y = f31.y;
    vec4 f34 = f33;
    f34.z = f31.z;
    vec4 f35 = f34;
    f35.w = VARYING2.w;
    _entryPointOutput = f35;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$StudsMapTexture=s0
