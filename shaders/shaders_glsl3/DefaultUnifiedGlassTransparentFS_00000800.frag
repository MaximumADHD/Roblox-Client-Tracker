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
    vec3 f10 = VARYING4.xyz / vec3(f9);
    vec3 f11 = reflect(-f10, normalize(VARYING5.xyz));
    float f12 = (!(VARYING7.w == 0.0)) ? 0.0 : ((0.08900000154972076416015625 + (VARYING5.w * 0.9110000133514404296875)) * 5.0);
    bool f13 = !(CB0[58].x == 2.0);
    mat3 f14 = mat3(vec3(CB0[58].xyz), vec3(CB0[59].xyz), vec3(CB0[60].xyz));
    vec3 f15 = f14 * f11;
    bvec3 f16 = bvec3(f13);
    float f17 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f18 = VARYING3.yzx - (VARYING3.yzx * f17);
    vec4 f19 = vec4(clamp(f17, 0.0, 1.0));
    vec4 f20 = mix(texture(LightMapTexture, f18), vec4(0.0), f19);
    vec4 f21 = mix(texture(LightGridSkylightTexture, f18), vec4(1.0), f19);
    float f22 = f21.x;
    float f23 = f21.y;
    vec3 f24 = (((VARYING6.xyz * f23) + min((f20.xyz * (f20.w * 120.0)) + (CB0[32].xyz + (CB0[33].xyz * f22)), vec3(CB0[21].w))) * ((mix(vec3(1.0), textureLod(PrefilteredEnvTexture, vec4(vec3(f16.x ? f15.x : f11.x, f16.y ? f15.y : f11.y, f16.z ? f15.z : f11.z), f12).xyz, f12).xyz * mix(CB0[31].xyz, CB0[30].xyz, vec3(clamp(f11.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f22)) * VARYING7.w) + (f8.xyz * (VARYING2.w - VARYING7.w)))) + (CB0[15].xyz * ((VARYING6.w * f23) * 0.100000001490116119384765625));
    vec4 f25 = vec4(0.0);
    f25.x = f24.x;
    vec4 f26 = f25;
    f26.y = f24.y;
    vec4 f27 = f26;
    f27.z = f24.z;
    vec4 f28 = f27;
    f28.w = VARYING2.w;
    float f29 = clamp(exp2((CB0[18].z * f9) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f30;
    do
    {
        if ((CB0[18].w > 0.5) || (CB0[28].w > 0.5))
        {
            f30 = CB0[19].xyz;
            break;
        }
        vec3 f31 = f14 * f10;
        bvec3 f32 = bvec3(f13 && (!(CB0[58].w == 0.0)));
        f30 = textureLod(PrefilteredEnvTexture, vec4(-vec3(f32.x ? f31.x : f10.x, f32.y ? f31.y : f10.y, f32.z ? f31.z : f10.z), 0.0).xyz, max(CB0[18].y, f29) * 5.0).xyz;
        break;
    } while(false);
    vec3 f33 = mix(f30, f28.xyz, vec3(f29));
    vec4 f34 = f28;
    f34.x = f33.x;
    vec4 f35 = f34;
    f35.y = f33.y;
    vec4 f36 = f35;
    f36.z = f33.z;
    vec3 f37 = max(vec3(0.0), f36.xyz);
    vec4 f38 = f36;
    f38.x = f37.x;
    vec4 f39 = f38;
    f39.y = f37.y;
    vec4 f40 = f39;
    f40.z = f37.z;
    _entryPointOutput = f40;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$DiffuseMapTexture=s3
