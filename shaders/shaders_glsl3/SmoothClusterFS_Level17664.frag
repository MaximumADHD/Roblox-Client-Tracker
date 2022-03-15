#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
uniform vec4 CB0[53];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2DArray AlbedoMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec3 VARYING4;
in vec4 VARYING5;
in vec3 VARYING6;
in vec3 VARYING7;
in vec4 VARYING8;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(AlbedoMapTexture, vec3(VARYING1.xy, VARYING2.x));
    vec4 f1 = texture(AlbedoMapTexture, vec3(VARYING1.zw, VARYING2.z));
    vec4 f2 = texture(AlbedoMapTexture, VARYING3.xyz);
    vec4 f3 = ((f0.yxzw * VARYING0.x) + (f1.yxzw * VARYING0.y)) + (f2.yxzw * VARYING0.z);
    vec2 f4 = f3.yz - vec2(0.5);
    float f5 = f4.x;
    vec4 f6 = f3;
    f6.y = f5;
    float f7 = f4.y;
    vec4 f8 = f6;
    f8.z = f7;
    vec4 f9;
    if (VARYING8.w < 1.0)
    {
        vec3 f10 = vec3(0.0);
        f10.x = VARYING8.x * f3.x;
        vec3 f11 = f10;
        f11.y = (VARYING8.y * f5) - (VARYING8.z * f7);
        vec3 f12 = f11;
        f12.z = (VARYING8.z * f5) + (VARYING8.y * f7);
        vec3 f13 = mix(f12, f8.xyz, vec3(VARYING8.w));
        vec4 f14 = f8;
        f14.x = f13.x;
        vec4 f15 = f14;
        f15.y = f13.y;
        vec4 f16 = f15;
        f16.z = f13.z;
        f9 = f16;
    }
    else
    {
        f9 = f8;
    }
    float f17 = f9.x - f9.z;
    vec3 f18 = vec4(vec3(f17, f9.x, f17) + (vec3(f9.yzy) * vec3(1.0, 1.0, -1.0)), f9.w).xyz;
    vec3 f19 = mix(f18, f18 * VARYING8.xyz, vec3(VARYING8.w * f9.w));
    vec4 f20 = vec4(0.0);
    f20.x = f19.x;
    vec4 f21 = f20;
    f21.y = f19.y;
    vec4 f22 = f21;
    f22.z = f19.z;
    float f23 = clamp(dot(step(CB0[19].xyz, abs(VARYING4 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f24 = VARYING4.yzx - (VARYING4.yzx * f23);
    vec4 f25 = vec4(clamp(f23, 0.0, 1.0));
    vec4 f26 = mix(texture(LightMapTexture, f24), vec4(0.0), f25);
    vec4 f27 = mix(texture(LightGridSkylightTexture, f24), vec4(1.0), f25);
    vec4 f28 = texture(ShadowMapTexture, VARYING5.xy);
    vec3 f29 = (min((f26.xyz * (f26.w * 120.0)) + (CB0[8].xyz + (CB0[9].xyz * f27.x)), vec3(CB0[16].w)) + (VARYING6 * ((1.0 - ((step(f28.x, VARYING5.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * f28.y)) * f27.y))) * (f22.xyz * f22.xyz);
    vec4 f30 = vec4(0.0);
    f30.x = f29.x;
    vec4 f31 = f30;
    f31.y = f29.y;
    vec4 f32 = f31;
    f32.z = f29.z;
    vec4 f33 = f32;
    f33.w = 1.0;
    float f34 = clamp(exp2((CB0[13].z * VARYING5.w) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f35 = textureLod(PrefilteredEnvTexture, vec4(-VARYING7, 0.0).xyz, max(CB0[13].y, f34) * 5.0).xyz;
    bvec3 f36 = bvec3(!(CB0[13].w == 0.0));
    vec3 f37 = mix(vec3(f36.x ? CB0[14].xyz.x : f35.x, f36.y ? CB0[14].xyz.y : f35.y, f36.z ? CB0[14].xyz.z : f35.z), f33.xyz, vec3(f34));
    vec4 f38 = f33;
    f38.x = f37.x;
    vec4 f39 = f38;
    f39.y = f37.y;
    vec4 f40 = f39;
    f40.z = f37.z;
    vec3 f41 = sqrt(clamp(f40.xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    vec4 f42 = f40;
    f42.x = f41.x;
    vec4 f43 = f42;
    f43.y = f41.y;
    vec4 f44 = f43;
    f44.z = f41.z;
    _entryPointOutput = f44;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$AlbedoMapTexture=s0
