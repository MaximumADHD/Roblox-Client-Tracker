#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[61];
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
    float f15 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f16 = VARYING3.yzx - (VARYING3.yzx * f15);
    vec4 f17 = vec4(clamp(f15, 0.0, 1.0));
    vec4 f18 = mix(texture(LightMapTexture, f16), vec4(0.0), f17);
    vec4 f19 = mix(texture(LightGridSkylightTexture, f16), vec4(1.0), f17);
    float f20 = f19.x;
    float f21 = f19.y;
    vec3 f22 = (((VARYING6.xyz * f21) + min((f18.xyz * (f18.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f20)), vec3(CB0[21].w))) * ((mix(vec3(1.0), textureLod(PrefilteredEnvTexture, vec4(vec3(f14.x ? f13.x : f11.x, f14.y ? f13.y : f11.y, f14.z ? f13.z : f11.z), f12).xyz, f12).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f11.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f20)) * VARYING7.w) + (f8.xyz * (VARYING2.w - VARYING7.w)))) + (CB0[15].xyz * ((VARYING6.w * f21) * 0.100000001490116119384765625));
    vec4 f23 = vec4(0.0);
    f23.x = f22.x;
    vec4 f24 = f23;
    f24.y = f22.y;
    vec4 f25 = f24;
    f25.z = f22.z;
    vec4 f26 = f25;
    f26.w = VARYING2.w;
    float f27 = clamp(exp2((CB0[18].z * f9) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f28 = textureLod(PrefilteredEnvTexture, vec4(f10, 0.0).xyz, max(CB0[18].y, f27) * 5.0).xyz;
    bvec3 f29 = bvec3(!(CB0[18].w == 0.0));
    vec3 f30 = mix(vec3(f29.x ? CB0[19].xyz.x : f28.x, f29.y ? CB0[19].xyz.y : f28.y, f29.z ? CB0[19].xyz.z : f28.z), f26.xyz, vec3(f27));
    vec4 f31 = f26;
    f31.x = f30.x;
    vec4 f32 = f31;
    f32.y = f30.y;
    vec4 f33 = f32;
    f33.z = f30.z;
    vec3 f34 = sqrt(clamp(f33.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f35 = f33;
    f35.x = f34.x;
    vec4 f36 = f35;
    f36.y = f34.y;
    vec4 f37 = f36;
    f37.z = f34.z;
    float f38 = 1.0 - ((1.0 - VARYING2.w) * f27);
    vec4 f39 = f37;
    f39.w = f38;
    vec4 f40 = f39;
    f40.w = f38;
    _entryPointOutput = f40;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s3
