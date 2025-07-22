#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[61];
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
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = texture(DiffuseMapTexture, VARYING0).xyz * VARYING2.xyz;
    vec4 f1 = vec4(0.0);
    f1.x = f0.x;
    vec4 f2 = f1;
    f2.y = f0.y;
    vec4 f3 = f2;
    f3.z = f0.z;
    vec4 f4 = f3;
    f4.w = VARYING2.w;
    vec3 f5 = f4.xyz * f4.xyz;
    vec4 f6 = f4;
    f6.x = f5.x;
    vec4 f7 = f6;
    f7.y = f5.y;
    vec4 f8 = f7;
    f8.z = f5.z;
    float f9 = length(VARYING4.xyz);
    vec3 f10 = -(VARYING4.xyz / vec3(f9));
    vec3 f11 = reflect(f10, normalize(VARYING5.xyz));
    float f12 = (!(VARYING7.w == 0.0)) ? 0.0 : ((0.08900000154972076416015625 + (VARYING5.w * 0.9110000133514404296875)) * 5.0);
    vec3 f13 = mat3(vec3(CB0[58].xyz), vec3(CB0[59].xyz), vec3(CB0[60].xyz)) * f11;
    bvec3 f14 = bvec3(!(CB0[58].x == 2.0));
    vec3 f15 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f16 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f17 = VARYING3.yzx - (VARYING3.yzx * f16);
    vec4 f18 = vec4(clamp(f16, 0.0, 1.0));
    vec4 f19 = mix(texture(LightMapTexture, f17), vec4(0.0), f18);
    vec4 f20 = mix(texture(LightGridSkylightTexture, f17), vec4(1.0), f18);
    float f21 = f20.x;
    vec4 f22 = texture(ShadowMapTexture, f15.xy);
    float f23 = f15.z;
    float f24 = (1.0 - ((step(f22.x, f23) * clamp(CB0[29].z + (CB0[29].w * abs(f23 - 0.5)), 0.0, 1.0)) * f22.y)) * f20.y;
    vec3 f25 = (((VARYING6.xyz * f24) + min((f19.xyz * (f19.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f21)), vec3(CB0[21].w))) * ((mix(vec3(1.0), textureLod(PrefilteredEnvTexture, vec4(vec3(f14.x ? f13.x : f11.x, f14.y ? f13.y : f11.y, f14.z ? f13.z : f11.z), f12).xyz, f12).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f11.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f21)) * VARYING7.w) + (f8.xyz * (VARYING2.w - VARYING7.w)))) + (CB0[15].xyz * ((VARYING6.w * f24) * 0.100000001490116119384765625));
    vec4 f26 = vec4(0.0);
    f26.x = f25.x;
    vec4 f27 = f26;
    f27.y = f25.y;
    vec4 f28 = f27;
    f28.z = f25.z;
    vec4 f29 = f28;
    f29.w = VARYING2.w;
    float f30 = clamp(exp2((CB0[18].z * f9) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f31 = textureLod(PrefilteredEnvTexture, vec4(f10, 0.0).xyz, max(CB0[18].y, f30) * 5.0).xyz;
    bvec3 f32 = bvec3(!(CB0[18].w == 0.0));
    vec3 f33 = mix(vec3(f32.x ? CB0[19].xyz.x : f31.x, f32.y ? CB0[19].xyz.y : f31.y, f32.z ? CB0[19].xyz.z : f31.z), f29.xyz, vec3(f30));
    vec4 f34 = f29;
    f34.x = f33.x;
    vec4 f35 = f34;
    f35.y = f33.y;
    vec4 f36 = f35;
    f36.z = f33.z;
    vec3 f37 = sqrt(clamp(f36.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f38 = f36;
    f38.x = f37.x;
    vec4 f39 = f38;
    f39.y = f37.y;
    vec4 f40 = f39;
    f40.z = f37.z;
    float f41 = 1.0 - ((1.0 - VARYING2.w) * f30);
    vec4 f42 = f40;
    f42.w = f41;
    vec4 f43 = f42;
    f43.w = f41;
    _entryPointOutput = f43;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s3
