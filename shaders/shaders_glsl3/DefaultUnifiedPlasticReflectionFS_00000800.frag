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
    vec3 f8 = VARYING4.xyz / vec3(f7);
    vec3 f9 = reflect(-f8, normalize(VARYING5.xyz));
    float f10 = (!(VARYING7.w == 0.0)) ? 0.0 : ((0.08900000154972076416015625 + (VARYING5.w * 0.9110000133514404296875)) * 5.0);
    bool f11 = !(CB0[58].x == 2.0);
    mat3 f12 = mat3(vec3(CB0[58].xyz), vec3(CB0[59].xyz), vec3(CB0[60].xyz));
    vec3 f13 = f12 * f9;
    bvec3 f14 = bvec3(f11);
    float f15 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f16 = VARYING3.yzx - (VARYING3.yzx * f15);
    vec4 f17 = vec4(clamp(f15, 0.0, 1.0));
    vec4 f18 = mix(texture(LightMapTexture, f16), vec4(0.0), f17);
    vec4 f19 = mix(texture(LightGridSkylightTexture, f16), vec4(1.0), f17);
    float f20 = f19.y;
    vec3 f21 = (((VARYING6.xyz * f20) + min((f18.xyz * (f18.w * 120.0)) + (CB0[32].xyz + (CB0[33].xyz * f19.x)), vec3(CB0[21].w))) * mix(f6.xyz, textureLod(PrefilteredEnvTexture, vec4(vec3(f14.x ? f13.x : f9.x, f14.y ? f13.y : f9.y, f14.z ? f13.z : f9.z), f10).xyz, f10).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f9.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(VARYING7.w))) + (CB0[15].xyz * ((VARYING6.w * f20) * 0.100000001490116119384765625));
    vec4 f22 = vec4(0.0);
    f22.x = f21.x;
    vec4 f23 = f22;
    f23.y = f21.y;
    vec4 f24 = f23;
    f24.z = f21.z;
    vec4 f25 = f24;
    f25.w = VARYING2.w;
    float f26 = clamp(exp2((CB0[18].z * f7) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f27 = f12 * f8;
    bvec3 f28 = bvec3(f11 && (!(CB0[58].w == 0.0)));
    vec3 f29 = textureLod(PrefilteredEnvTexture, vec4(-vec3(f28.x ? f27.x : f8.x, f28.y ? f27.y : f8.y, f28.z ? f27.z : f8.z), 0.0).xyz, max(CB0[18].y, f26) * 5.0).xyz;
    bvec3 f30 = bvec3(!(CB0[18].w == 0.0));
    vec3 f31 = mix(vec3(f30.x ? CB0[19].xyz.x : f29.x, f30.y ? CB0[19].xyz.y : f29.y, f30.z ? CB0[19].xyz.z : f29.z), f25.xyz, vec3(f26));
    vec4 f32 = f25;
    f32.x = f31.x;
    vec4 f33 = f32;
    f33.y = f31.y;
    vec4 f34 = f33;
    f34.z = f31.z;
    vec3 f35 = max(vec3(0.0), f34.xyz);
    vec4 f36 = f34;
    f36.x = f35.x;
    vec4 f37 = f36;
    f37.y = f35.y;
    vec4 f38 = f37;
    f38.z = f35.z;
    _entryPointOutput = f38;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$StudsMapTexture=s0
