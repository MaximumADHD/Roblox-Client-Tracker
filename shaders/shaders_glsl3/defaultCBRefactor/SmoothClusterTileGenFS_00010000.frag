#version 150

#extension GL_ARB_shading_language_include : require
#include <SCLayerData.h>
uniform vec4 CB5[189];
uniform sampler2DArray SpecularMapTexture;
uniform sampler2DArray NormalMapTexture;
uniform sampler2DArray AlbedoMapTexture;

in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec3 VARYING4;
in vec3 VARYING5;
in vec4 VARYING6;
out vec4 _entryPointOutput_albedo;
out vec4 _entryPointOutput_normal;
out vec4 _entryPointOutput_spec;

void main()
{
    vec3 f0 = vec3(VARYING1.xy, VARYING2.x);
    vec4 f1 = texture(SpecularMapTexture, f0);
    vec3 f2 = vec3(VARYING1.zw, VARYING2.z);
    vec4 f3 = texture(SpecularMapTexture, f2);
    vec3 f4 = vec3(VARYING3.xyz);
    vec4 f5 = texture(SpecularMapTexture, f4);
    vec3 f6;
    if (VARYING6.w < 1.0)
    {
        ivec3 f7 = ivec3(VARYING6.xyz + vec3(0.5));
        int f8 = f7.x;
        int f9 = f7.y;
        int f10 = f7.z;
        float f11 = dot(VARYING0.xyz, vec3(CB5[f8 * 3 + 1].z, CB5[f9 * 3 + 1].z, CB5[f10 * 3 + 1].z));
        vec3 f12 = vec3(0.0);
        f12.x = clamp((f1.w * CB5[f8 * 3 + 1].x) + CB5[f8 * 3 + 1].y, 0.0, 1.0);
        vec3 f13 = f12;
        f13.y = clamp((f3.w * CB5[f9 * 3 + 1].x) + CB5[f9 * 3 + 1].y, 0.0, 1.0);
        vec3 f14 = f13;
        f14.z = clamp((f5.w * CB5[f10 * 3 + 1].x) + CB5[f10 * 3 + 1].y, 0.0, 1.0);
        vec3 f15 = VARYING0.xyz * f14;
        float f16 = 1.0 / f11;
        float f17 = 0.5 * f11;
        float f18 = f15.x;
        float f19 = f15.y;
        float f20 = f15.z;
        float f21 = clamp(((f18 - max(f19, f20)) + f17) * f16, 0.0, 1.0);
        float f22 = clamp(((f19 - max(f18, f20)) + f17) * f16, 0.0, 1.0);
        float f23 = clamp(((f20 - max(f18, f19)) + f17) * f16, 0.0, 1.0);
        vec2 f24 = dFdx(VARYING1.xy);
        vec2 f25 = dFdy(VARYING1.xy);
        f6 = mix(vec3(f21, f22, f23) / vec3((f21 + f22) + f23), VARYING0.xyz, vec3(clamp((sqrt(max(dot(f24, f24), dot(f25, f25))) * 7.0) + clamp(VARYING6.w, 0.0, 1.0), 0.0, 1.0)));
    }
    else
    {
        f6 = VARYING0.xyz;
    }
    vec2 f26 = (((texture(NormalMapTexture, f0) * f6.x) + (texture(NormalMapTexture, f2) * f6.y)) + (texture(NormalMapTexture, f4) * f6.z)).wy * 2.0;
    vec2 f27 = f26 - vec2(1.0);
    vec3 f28 = normalize(((vec3(f27, sqrt(clamp(1.0 + dot(vec2(1.0) - f26, f27), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f6, f6))) + vec3(0.0, 0.0, 1.0));
    vec3 f29 = vec3(dot(VARYING5, f6));
    vec4 f30 = texture(AlbedoMapTexture, f0);
    vec4 f31 = texture(AlbedoMapTexture, f2);
    vec4 f32 = texture(AlbedoMapTexture, f4);
    int f33 = int(VARYING6.x + 0.5);
    int f34 = int(VARYING6.y + 0.5);
    int f35 = int(VARYING6.z + 0.5);
    vec2 f36 = f30.xz - vec2(0.5);
    float f37 = f36.x;
    vec4 f38 = f30.yxzw;
    f38.y = f37;
    float f39 = f36.y;
    vec4 f40 = f38;
    f40.z = f39;
    vec2 f41 = f31.xz - vec2(0.5);
    float f42 = f41.x;
    vec4 f43 = f31.yxzw;
    f43.y = f42;
    float f44 = f41.y;
    vec4 f45 = f43;
    f45.z = f44;
    vec2 f46 = f32.xz - vec2(0.5);
    float f47 = f46.x;
    vec4 f48 = f32.yxzw;
    f48.y = f47;
    float f49 = f46.y;
    vec4 f50 = f48;
    f50.z = f49;
    vec4 f51 = f40;
    f51.x = CB5[f33 * 3 + 2].x * f30.y;
    vec4 f52 = f51;
    f52.y = (CB5[f33 * 3 + 2].y * f37) - (CB5[f33 * 3 + 2].z * f39);
    vec4 f53 = f52;
    f53.z = (CB5[f33 * 3 + 2].z * f37) + (CB5[f33 * 3 + 2].y * f39);
    vec4 f54 = f45;
    f54.x = CB5[f34 * 3 + 2].x * f31.y;
    vec4 f55 = f54;
    f55.y = (CB5[f34 * 3 + 2].y * f42) - (CB5[f34 * 3 + 2].z * f44);
    vec4 f56 = f55;
    f56.z = (CB5[f34 * 3 + 2].z * f42) + (CB5[f34 * 3 + 2].y * f44);
    vec4 f57 = f50;
    f57.x = CB5[f35 * 3 + 2].x * f32.y;
    vec4 f58 = f57;
    f58.y = (CB5[f35 * 3 + 2].y * f47) - (CB5[f35 * 3 + 2].z * f49);
    vec4 f59 = f58;
    f59.z = (CB5[f35 * 3 + 2].z * f47) + (CB5[f35 * 3 + 2].y * f49);
    vec4 f60 = ((f53 * f6.x) + (f56 * f6.y)) + (f59 * f6.z);
    float f61 = f60.x;
    float f62 = f61 - f60.z;
    vec3 f63 = vec4(vec3(f62, f61, f62) + (vec3(f60.yzy) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    _entryPointOutput_albedo = vec4(f63 * f63, 1.0);
    _entryPointOutput_normal = vec4((vec4(normalize(((mix(vec3(VARYING4.z, 0.0, -VARYING4.x), vec3(-VARYING4.y, VARYING4.x, 0.0), f29) * f28.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING4.z, VARYING4.y), f29) * f28.y)) + (VARYING4 * f28.z)), 0.0).xyz * 0.5) + vec3(0.5), 1.0);
    _entryPointOutput_spec = vec4((((f1 * f6.x) + (f3 * f6.y)) + (f5 * f6.z)).xyz, 1.0);
}

//$$SpecularMapTexture=s3
//$$NormalMapTexture=s4
//$$AlbedoMapTexture=s0
