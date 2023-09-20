#version 150

uniform vec4 CB4[63];
uniform vec4 CB5[63];
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
        float f11 = dot(VARYING0.xyz, vec3(CB5[f8 * 1 + 0].z, CB5[f9 * 1 + 0].z, CB5[f10 * 1 + 0].z));
        vec3 f12 = vec3(0.0);
        f12.x = clamp((f1.w * CB5[f8 * 1 + 0].x) + CB5[f8 * 1 + 0].y, 0.0, 1.0);
        vec3 f13 = f12;
        f13.y = clamp((f3.w * CB5[f9 * 1 + 0].x) + CB5[f9 * 1 + 0].y, 0.0, 1.0);
        vec3 f14 = f13;
        f14.z = clamp((f5.w * CB5[f10 * 1 + 0].x) + CB5[f10 * 1 + 0].y, 0.0, 1.0);
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
    vec4 f26 = texture(NormalMapTexture, f0);
    vec4 f27 = texture(NormalMapTexture, f2);
    vec4 f28 = texture(NormalMapTexture, f4);
    vec2 f29 = (((f26 * f6.x) + (f27 * f6.y)) + (f28 * f6.z)).wy * 2.0;
    vec2 f30 = f29 - vec2(1.0);
    vec3 f31 = normalize(((vec3(f30, sqrt(clamp(1.0 + dot(vec2(1.0) - f29, f30), 0.0, 1.0))) - vec3(0.0, 0.0, 1.0)) * inversesqrt(dot(f6, f6))) + vec3(0.0, 0.0, 1.0));
    vec3 f32 = vec3(dot(VARYING5, f6));
    vec4 f33 = texture(AlbedoMapTexture, f0);
    vec4 f34 = texture(AlbedoMapTexture, f2);
    vec4 f35 = texture(AlbedoMapTexture, f4);
    int f36 = int(VARYING6.x + 0.5);
    int f37 = int(VARYING6.y + 0.5);
    int f38 = int(VARYING6.z + 0.5);
    vec3 f39;
    if (!(CB4[f36 * 1 + 0].w == 0.0))
    {
        f39 = (mix(vec3(1.0), CB4[f36 * 1 + 0].xyz, vec3(f33.w)) * f33.xyz) * f6.x;
    }
    else
    {
        vec2 f40 = f33.xz - vec2(0.5);
        float f41 = f40.x;
        float f42 = f40.y;
        float f43 = CB4[f36 * 1 + 0].x * f33.y;
        float f44 = (CB4[f36 * 1 + 0].y * f41) - (CB4[f36 * 1 + 0].z * f42);
        float f45 = (CB4[f36 * 1 + 0].z * f41) + (CB4[f36 * 1 + 0].y * f42);
        float f46 = f43 - f45;
        f39 = (vec3(f46, f43, f46) + (vec3(f44, f45, f44) * vec3(1.0, 1.0, -1.0))) * f6.x;
    }
    vec3 f47;
    if (!(CB4[f37 * 1 + 0].w == 0.0))
    {
        f47 = f39 + ((mix(vec3(1.0), CB4[f37 * 1 + 0].xyz, vec3(f34.w)) * f34.xyz) * f6.y);
    }
    else
    {
        vec2 f48 = f34.xz - vec2(0.5);
        float f49 = f48.x;
        float f50 = f48.y;
        float f51 = CB4[f37 * 1 + 0].x * f34.y;
        float f52 = (CB4[f37 * 1 + 0].y * f49) - (CB4[f37 * 1 + 0].z * f50);
        float f53 = (CB4[f37 * 1 + 0].z * f49) + (CB4[f37 * 1 + 0].y * f50);
        float f54 = f51 - f53;
        f47 = f39 + ((vec3(f54, f51, f54) + (vec3(f52, f53, f52) * vec3(1.0, 1.0, -1.0))) * f6.y);
    }
    vec3 f55;
    if (!(CB4[f38 * 1 + 0].w == 0.0))
    {
        f55 = f47 + ((mix(vec3(1.0), CB4[f38 * 1 + 0].xyz, vec3(f35.w)) * f35.xyz) * f6.z);
    }
    else
    {
        vec2 f56 = f35.xz - vec2(0.5);
        float f57 = f56.x;
        float f58 = f56.y;
        float f59 = CB4[f38 * 1 + 0].x * f35.y;
        float f60 = (CB4[f38 * 1 + 0].y * f57) - (CB4[f38 * 1 + 0].z * f58);
        float f61 = (CB4[f38 * 1 + 0].z * f57) + (CB4[f38 * 1 + 0].y * f58);
        float f62 = f59 - f61;
        f55 = f47 + ((vec3(f62, f59, f62) + (vec3(f60, f61, f60) * vec3(1.0, 1.0, -1.0))) * f6.z);
    }
    _entryPointOutput_albedo = vec4(f55 * f55, 1.0);
    _entryPointOutput_normal = vec4((vec4(normalize(((mix(vec3(VARYING4.z, 0.0, -VARYING4.x), vec3(-VARYING4.y, VARYING4.x, 0.0), f32) * f31.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING4.z, VARYING4.y), f32) * f31.y)) + (VARYING4 * f31.z)), 0.0).xyz * 0.5) + vec3(0.5), 1.0);
    _entryPointOutput_spec = vec4((((f1 * f6.x) + (f3 * f6.y)) + (f5 * f6.z)).xyz, 1.0);
}

//$$SpecularMapTexture=s3
//$$NormalMapTexture=s4
//$$AlbedoMapTexture=s0
