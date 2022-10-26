#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
#include <GridParam.h>
uniform vec4 CB0[58];
uniform vec4 CB8[24];
uniform vec4 CB3[1];
uniform sampler2D ShadowAtlasTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D DiffuseMapTexture;

in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec3 f1 = (CB0[11].xyz - VARYING4.xyz) * CB3[0].x;
    vec3 f2 = abs(VARYING5.xyz);
    float f3 = f2.x;
    float f4 = f2.y;
    float f5 = f2.z;
    vec2 f6;
    if ((f3 >= f4) && (f3 >= f5))
    {
        f6 = f1.yz;
    }
    else
    {
        vec2 f7;
        if ((f4 >= f3) && (f4 >= f5))
        {
            f7 = f1.xz;
        }
        else
        {
            f7 = f1.xy;
        }
        f6 = f7;
    }
    vec4 f8 = texture(DiffuseMapTexture, f6) * VARYING2;
    vec3 f9 = f8.xyz;
    vec3 f10 = f9 * f9;
    vec4 f11 = f8;
    f11.x = f10.x;
    vec4 f12 = f11;
    f12.y = f10.y;
    vec4 f13 = f12;
    f13.z = f10.z;
    vec3 f14 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f15 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f16 = VARYING3.yzx - (VARYING3.yzx * f15);
    vec4 f17 = vec4(clamp(f15, 0.0, 1.0));
    vec4 f18 = mix(texture(LightMapTexture, f16), vec4(0.0), f17);
    vec4 f19 = mix(texture(LightGridSkylightTexture, f16), vec4(1.0), f17);
    float f20 = f19.y;
    vec3 f21 = f14 - CB0[46].xyz;
    vec3 f22 = f14 - CB0[47].xyz;
    vec3 f23 = f14 - CB0[48].xyz;
    vec4 f24 = vec4(f14, 1.0) * mat4(CB8[((dot(f21, f21) < CB0[46].w) ? 0 : ((dot(f22, f22) < CB0[47].w) ? 1 : ((dot(f23, f23) < CB0[48].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f21, f21) < CB0[46].w) ? 0 : ((dot(f22, f22) < CB0[47].w) ? 1 : ((dot(f23, f23) < CB0[48].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f21, f21) < CB0[46].w) ? 0 : ((dot(f22, f22) < CB0[47].w) ? 1 : ((dot(f23, f23) < CB0[48].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f21, f21) < CB0[46].w) ? 0 : ((dot(f22, f22) < CB0[47].w) ? 1 : ((dot(f23, f23) < CB0[48].w) ? 2 : 3))) * 4 + 3]);
    vec4 f25 = textureLod(ShadowAtlasTexture, f24.xy, 0.0);
    vec2 f26 = vec2(0.0);
    f26.x = CB0[51].z;
    vec2 f27 = f26;
    f27.y = CB0[51].w;
    float f28 = (2.0 * f24.z) - 1.0;
    float f29 = exp(CB0[51].z * f28);
    float f30 = -exp((-CB0[51].w) * f28);
    vec2 f31 = (f27 * CB0[52].y) * vec2(f29, f30);
    vec2 f32 = f31 * f31;
    float f33 = f25.x;
    float f34 = max(f25.y - (f33 * f33), f32.x);
    float f35 = f29 - f33;
    float f36 = f25.z;
    float f37 = max(f25.w - (f36 * f36), f32.y);
    float f38 = f30 - f36;
    float f39 = ((dot(normalize(VARYING5.xyz) * (gl_FrontFacing ? 1.0 : (-1.0)), -CB0[16].xyz) * CB0[52].x) > 0.0) ? mix(min((f29 <= f33) ? 1.0 : clamp(((f34 / (f34 + (f35 * f35))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f30 <= f36) ? 1.0 : clamp(((f37 / (f37 + (f38 * f38))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f20, clamp((length(f14 - CB0[11].xyz) * CB0[51].y) - (CB0[51].x * CB0[51].y), 0.0, 1.0)) : f20;
    vec3 f40 = (((VARYING6.xyz * f39) + min((f18.xyz * (f18.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f19.x)), vec3(CB0[21].w))) * f13.xyz) + (CB0[15].xyz * ((VARYING6.w * f39) * 0.100000001490116119384765625));
    vec4 f41 = vec4(0.0);
    f41.x = f40.x;
    vec4 f42 = f41;
    f42.y = f40.y;
    vec4 f43 = f42;
    f43.z = f40.z;
    float f44 = f8.w;
    vec4 f45 = f43;
    f45.w = f44;
    float f46 = clamp(exp2((CB0[18].z * f0) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f47 = textureLod(PrefilteredEnvTexture, vec4(-(VARYING4.xyz / vec3(f0)), 0.0).xyz, max(CB0[18].y, f46) * 5.0).xyz;
    bvec3 f48 = bvec3(!(CB0[18].w == 0.0));
    vec3 f49 = mix(vec3(f48.x ? CB0[19].xyz.x : f47.x, f48.y ? CB0[19].xyz.y : f47.y, f48.z ? CB0[19].xyz.z : f47.z), f45.xyz, vec3(f46));
    vec4 f50 = f45;
    f50.x = f49.x;
    vec4 f51 = f50;
    f51.y = f49.y;
    vec4 f52 = f51;
    f52.z = f49.z;
    vec3 f53 = sqrt(clamp(f52.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f54 = f52;
    f54.x = f53.x;
    vec4 f55 = f54;
    f55.y = f53.y;
    vec4 f56 = f55;
    f56.z = f53.z;
    vec4 f57 = f56;
    f57.w = f44;
    _entryPointOutput = f57;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s3
