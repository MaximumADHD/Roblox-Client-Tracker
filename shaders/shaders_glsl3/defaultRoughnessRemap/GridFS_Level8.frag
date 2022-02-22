#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <LightShadowGPUTransform.h>
#include <GridParam.h>
uniform vec4 CB0[53];
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
    vec3 f0 = (CB0[7].xyz - VARYING4.xyz) * CB3[0].x;
    vec3 f1 = abs(VARYING5.xyz);
    float f2 = f1.x;
    float f3 = f1.y;
    float f4 = f1.z;
    vec2 f5;
    if ((f2 >= f3) && (f2 >= f4))
    {
        f5 = f0.yz;
    }
    else
    {
        vec2 f6;
        if ((f3 >= f2) && (f3 >= f4))
        {
            f6 = f0.xz;
        }
        else
        {
            f6 = f0.xy;
        }
        f5 = f6;
    }
    vec4 f7 = texture(DiffuseMapTexture, f5) * VARYING2;
    vec3 f8 = f7.xyz;
    vec3 f9 = f8 * f8;
    vec4 f10 = f7;
    f10.x = f9.x;
    vec4 f11 = f10;
    f11.y = f9.y;
    vec4 f12 = f11;
    f12.z = f9.z;
    vec3 f13 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f14 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f15 = VARYING3.yzx - (VARYING3.yzx * f14);
    vec4 f16 = vec4(clamp(f14, 0.0, 1.0));
    vec4 f17 = mix(texture(LightMapTexture, f15), vec4(0.0), f16);
    vec4 f18 = mix(texture(LightGridSkylightTexture, f15), vec4(1.0), f16);
    float f19 = f18.y;
    vec3 f20 = f13 - CB0[41].xyz;
    vec3 f21 = f13 - CB0[42].xyz;
    vec3 f22 = f13 - CB0[43].xyz;
    vec4 f23 = vec4(f13, 1.0) * mat4(CB8[((dot(f20, f20) < CB0[41].w) ? 0 : ((dot(f21, f21) < CB0[42].w) ? 1 : ((dot(f22, f22) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f20, f20) < CB0[41].w) ? 0 : ((dot(f21, f21) < CB0[42].w) ? 1 : ((dot(f22, f22) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f20, f20) < CB0[41].w) ? 0 : ((dot(f21, f21) < CB0[42].w) ? 1 : ((dot(f22, f22) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f20, f20) < CB0[41].w) ? 0 : ((dot(f21, f21) < CB0[42].w) ? 1 : ((dot(f22, f22) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f24 = textureLod(ShadowAtlasTexture, f23.xy, 0.0);
    vec2 f25 = vec2(0.0);
    f25.x = CB0[46].z;
    vec2 f26 = f25;
    f26.y = CB0[46].w;
    float f27 = (2.0 * f23.z) - 1.0;
    float f28 = exp(CB0[46].z * f27);
    float f29 = -exp((-CB0[46].w) * f27);
    vec2 f30 = (f26 * CB0[47].y) * vec2(f28, f29);
    vec2 f31 = f30 * f30;
    float f32 = f24.x;
    float f33 = max(f24.y - (f32 * f32), f31.x);
    float f34 = f28 - f32;
    float f35 = f24.z;
    float f36 = max(f24.w - (f35 * f35), f31.y);
    float f37 = f29 - f35;
    float f38 = ((dot(normalize(VARYING5.xyz) * (gl_FrontFacing ? 1.0 : (-1.0)), -CB0[11].xyz) * CB0[47].x) > 0.0) ? mix(min((f28 <= f32) ? 1.0 : clamp(((f33 / (f33 + (f34 * f34))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f29 <= f35) ? 1.0 : clamp(((f36 / (f36 + (f37 * f37))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f19, clamp((length(f13 - CB0[7].xyz) * CB0[46].y) - (CB0[46].x * CB0[46].y), 0.0, 1.0)) : f19;
    vec3 f39 = (((VARYING6.xyz * f38) + min((f17.xyz * (f17.w * 120.0)) + (CB0[8].xyz + (CB0[9].xyz * f18.x)), vec3(CB0[16].w))) * f12.xyz) + (CB0[10].xyz * ((VARYING6.w * f38) * 0.100000001490116119384765625));
    vec4 f40 = vec4(0.0);
    f40.x = f39.x;
    vec4 f41 = f40;
    f41.y = f39.y;
    vec4 f42 = f41;
    f42.z = f39.z;
    float f43 = f7.w;
    vec4 f44 = f42;
    f44.w = f43;
    float f45 = clamp(exp2((CB0[13].z * length(VARYING4.xyz)) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f46 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f45) * 5.0).xyz;
    bvec3 f47 = bvec3(!(CB0[13].w == 0.0));
    vec3 f48 = mix(vec3(f47.x ? CB0[14].xyz.x : f46.x, f47.y ? CB0[14].xyz.y : f46.y, f47.z ? CB0[14].xyz.z : f46.z), f44.xyz, vec3(f45));
    vec4 f49 = f44;
    f49.x = f48.x;
    vec4 f50 = f49;
    f50.y = f48.y;
    vec4 f51 = f50;
    f51.z = f48.z;
    vec3 f52 = sqrt(clamp(f51.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f53 = f51;
    f53.x = f52.x;
    vec4 f54 = f53;
    f54.y = f52.y;
    vec4 f55 = f54;
    f55.z = f52.z;
    vec4 f56 = f55;
    f56.w = f43;
    _entryPointOutput = f56;
}

//$$ShadowAtlasTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s3
