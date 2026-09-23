#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <GridParam.h>
uniform vec4 CB0[61];
uniform vec4 CB3[1];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D DiffuseMapTexture;

in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = (CB0[11].xyz - VARYING4.xyz) * CB3[0].x;
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
    float f13 = length(VARYING4.xyz);
    vec3 f14 = VARYING4.xyz / vec3(f13);
    float f15 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f16 = VARYING3.yzx - (VARYING3.yzx * f15);
    vec4 f17 = vec4(clamp(f15, 0.0, 1.0));
    vec4 f18 = mix(texture(LightMapTexture, f16), vec4(0.0), f17);
    vec4 f19 = mix(texture(LightGridSkylightTexture, f16), vec4(1.0), f17);
    float f20 = f19.y;
    vec3 f21 = (((VARYING6.xyz * f20) + min((f18.xyz * (f18.w * 120.0)) + (CB0[32].xyz + (CB0[33].xyz * f19.x)), vec3(CB0[21].w))) * f12.xyz) + (CB0[15].xyz * ((VARYING6.w * f20) * 0.100000001490116119384765625));
    vec4 f22 = vec4(0.0);
    f22.x = f21.x;
    vec4 f23 = f22;
    f23.y = f21.y;
    vec4 f24 = f23;
    f24.z = f21.z;
    vec4 f25 = f24;
    f25.w = f7.w;
    float f26 = clamp(exp2((CB0[18].z * f13) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f27 = mat3(vec3(CB0[58].xyz), vec3(CB0[59].xyz), vec3(CB0[60].xyz)) * f14;
    bvec3 f28 = bvec3((!(CB0[58].x == 2.0)) && (!(CB0[58].w == 0.0)));
    vec3 f29 = textureLod(PrefilteredEnvTexture, vec4(-vec3(f28.x ? f27.x : f14.x, f28.y ? f27.y : f14.y, f28.z ? f27.z : f14.z), 0.0).xyz, max(CB0[18].y, f26) * 5.0).xyz;
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
//$$DiffuseMapTexture=s3
