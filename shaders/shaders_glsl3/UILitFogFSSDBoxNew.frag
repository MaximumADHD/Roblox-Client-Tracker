#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <UIParams.h>
uniform vec4 CB0[61];
uniform vec4 CB1[9];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING1;
in vec3 VARYING2;
in vec3 VARYING3;
in vec4 VARYING4;
in vec3 VARYING5;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0;
    if (CB1[5].y < 0.5)
    {
        f0 = texture(DiffuseMapTexture, VARYING0);
    }
    else
    {
        vec4 f1;
        if (CB1[5].y < 1.5)
        {
            f1 = vec4(1.0, 1.0, 1.0, texture(DiffuseMapTexture, VARYING0).x);
        }
        else
        {
            vec4 f2;
            if (CB1[5].y < 2.5)
            {
                vec4 f3 = texture(DiffuseMapTexture, VARYING0);
                float f4 = f3.w;
                vec3 f5 = f3.xyz / vec3(f4);
                bvec3 f6 = bvec3(f4 == 0.0);
                f2 = vec4(vec3(f6.x ? vec3(0.0).x : f5.x, f6.y ? vec3(0.0).y : f5.y, f6.z ? vec3(0.0).z : f5.z), f4);
            }
            else
            {
                vec4 f7;
                if (CB1[5].y < 3.5)
                {
                    float f8 = CB1[8].x - 2.0;
                    float f9 = CB1[8].y - 2.0;
                    float f10 = f9 * 0.3333333432674407958984375;
                    float f11 = 1.0 - (f10 / CB1[8].y);
                    vec2 f12 = (VARYING0 * vec2(f8 * 0.5, f10)) / CB1[8].xy;
                    f7 = vec4((vec4(texture(DiffuseMapTexture, (VARYING0 * vec2(f8, f9 * 0.666666686534881591796875)) / CB1[8].xy).x, texture(DiffuseMapTexture, vec2(0.0, f11) + f12).x, texture(DiffuseMapTexture, vec2(0.5, f11) + f12).x, 1.0) * mat4(vec4(1.164000034332275390625, 0.0, 1.7929999828338623046875, -0.969500005245208740234375), vec4(1.164000034332275390625, -0.212999999523162841796875, -0.53299999237060546875, 0.300000011920928955078125), vec4(1.164000034332275390625, 2.111999988555908203125, 0.0, -1.1289999485015869140625), vec4(0.0, 0.0, 0.0, 1.0))).xyz, 1.0);
                }
                else
                {
                    f7 = texture(DiffuseMapTexture, VARYING0);
                }
                f2 = f7;
            }
            f1 = f2;
        }
        f0 = f1;
    }
    vec4 f13 = VARYING1 * f0;
    vec2 f14 = vec2((VARYING0.x * CB1[6].x) + CB1[6].y, (VARYING0.y * CB1[6].z) + CB1[6].w);
    vec4 f15;
    if (CB1[7].w <= (-9999.0))
    {
        vec2 f16 = (abs(f14) - CB1[7].xy) + vec2(CB1[7].z);
        float f17 = (length(max(f16, vec2(0.0))) + min(max(f16.x, f16.y), 0.0)) - CB1[7].z;
        vec4 f18 = f13;
        f18.w = f13.w * smoothstep(0.0, 1.0, (f17 / (-fwidth(f17))) + 0.5);
        f15 = f18;
    }
    else
    {
        vec2 f19 = abs(f14) - CB1[7].xy;
        float f20 = length(max(f19, vec2(0.0))) + min(max(f19.x, f19.y), 0.0);
        vec4 f21 = f13;
        f21.w = (f13.w * clamp(CB1[7].z - f20, 0.0, 1.0)) * clamp(f20 - CB1[7].w, 0.0, 1.0);
        f15 = f21;
    }
    vec4 f22 = f15;
    f22.w = f15.w;
    vec3 f23 = f22.xyz * f22.xyz;
    vec4 f24 = f22;
    f24.x = f23.x;
    vec4 f25 = f24;
    f25.y = f23.y;
    vec4 f26 = f25;
    f26.z = f23.z;
    float f27 = clamp(dot(step(CB0[24].xyz, abs(VARYING3 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f28 = VARYING3.yzx - (VARYING3.yzx * f27);
    vec4 f29 = vec4(clamp(f27, 0.0, 1.0));
    vec4 f30 = mix(texture(LightMapTexture, f28), vec4(0.0), f29);
    vec4 f31 = mix(texture(LightGridSkylightTexture, f28), vec4(1.0), f29);
    vec4 f32 = texture(ShadowMapTexture, VARYING4.xy);
    vec3 f33 = mix(f26.xyz * CB1[5].w, (min((f30.xyz * (f30.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f31.x)), vec3(CB0[21].w)) + (VARYING2 * ((1.0 - ((step(f32.x, VARYING4.z) * clamp(CB0[29].z + (CB0[29].w * abs(VARYING4.z - 0.5)), 0.0, 1.0)) * f32.y)) * f31.y))) * f26.xyz, vec3(CB1[5].z));
    vec4 f34 = f26;
    f34.x = f33.x;
    vec4 f35 = f34;
    f35.y = f33.y;
    vec4 f36 = f35;
    f36.z = f33.z;
    float f37 = clamp(exp2((CB0[18].z * length(VARYING5)) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f38 = textureLod(PrefilteredEnvTexture, vec4(-VARYING5, 0.0).xyz, max(CB0[18].y, f37) * 5.0).xyz;
    bvec3 f39 = bvec3(!(CB0[18].w == 0.0));
    vec3 f40 = mix(vec3(f39.x ? CB0[19].xyz.x : f38.x, f39.y ? CB0[19].xyz.y : f38.y, f39.z ? CB0[19].xyz.z : f38.z), f36.xyz, vec3(f37));
    vec4 f41 = f36;
    f41.x = f40.x;
    vec4 f42 = f41;
    f42.y = f40.y;
    vec4 f43 = f42;
    f43.z = f40.z;
    vec3 f44 = sqrt(clamp(f43.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f45 = f43;
    f45.x = f44.x;
    vec4 f46 = f45;
    f46.y = f44.y;
    vec4 f47 = f46;
    f47.z = f44.z;
    _entryPointOutput = f47;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s0
