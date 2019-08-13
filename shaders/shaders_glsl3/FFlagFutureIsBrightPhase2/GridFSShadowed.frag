#version 150

struct Globals
{
    mat4 ViewProjection;
    vec4 ViewRight;
    vec4 ViewUp;
    vec4 ViewDir;
    vec3 CameraPosition;
    vec3 AmbientColor;
    vec3 SkyAmbient;
    vec3 Lamp0Color;
    vec3 Lamp0Dir;
    vec3 Lamp1Color;
    vec4 FogParams;
    vec4 FogColor_GlobalForceFieldTime;
    vec4 Technology_Exposure;
    vec4 LightBorder;
    vec4 LightConfig0;
    vec4 LightConfig1;
    vec4 LightConfig2;
    vec4 LightConfig3;
    vec4 ShadowMatrix0;
    vec4 ShadowMatrix1;
    vec4 ShadowMatrix2;
    vec4 RefractionBias_FadeDistance_GlowFactor_SpecMul;
    vec4 OutlineBrightness_ShadowInfo;
    vec4 CascadeSphere0;
    vec4 CascadeSphere1;
    vec4 CascadeSphere2;
    vec4 CascadeSphere3;
    float hybridLerpDist;
    float hybridLerpSlope;
    float evsmPosExp;
    float evsmNegExp;
    float globalShadow;
    float shadowBias;
    float shadowAlphaRef;
    float debugFlagsShadows;
};

struct LightShadowGPUTransform
{
    mat4 transform;
};

struct GridParam
{
    vec4 GridScale;
};

uniform vec4 CB0[32];
uniform vec4 CB8[24];
uniform vec4 CB3[1];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D ShadowAtlasTexture;
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
    vec3 f9 = vec3(CB0[15].x);
    float f10 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f11 = VARYING3.yzx - (VARYING3.yzx * f10);
    vec4 f12 = vec4(clamp(f10, 0.0, 1.0));
    vec4 f13 = mix(texture(LightMapTexture, f11), vec4(0.0), f12);
    vec4 f14 = mix(texture(LightGridSkylightTexture, f11), vec4(1.0), f12);
    float f15 = f14.y;
    vec3 f16 = VARYING7.xyz - CB0[26].xyz;
    vec3 f17 = VARYING7.xyz - CB0[27].xyz;
    vec3 f18 = VARYING7.xyz - CB0[28].xyz;
    vec4 f19 = vec4(VARYING7.xyz, 1.0) * mat4(CB8[((dot(f16, f16) < CB0[26].w) ? 0 : ((dot(f17, f17) < CB0[27].w) ? 1 : ((dot(f18, f18) < CB0[28].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f16, f16) < CB0[26].w) ? 0 : ((dot(f17, f17) < CB0[27].w) ? 1 : ((dot(f18, f18) < CB0[28].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f16, f16) < CB0[26].w) ? 0 : ((dot(f17, f17) < CB0[27].w) ? 1 : ((dot(f18, f18) < CB0[28].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f16, f16) < CB0[26].w) ? 0 : ((dot(f17, f17) < CB0[27].w) ? 1 : ((dot(f18, f18) < CB0[28].w) ? 2 : 3))) * 4 + 3]);
    vec4 f20 = textureLod(ShadowAtlasTexture, f19.xy, 0.0);
    vec2 f21 = vec2(0.0);
    f21.x = CB0[30].z;
    vec2 f22 = f21;
    f22.y = CB0[30].w;
    float f23 = (2.0 * f19.z) - 1.0;
    float f24 = exp(CB0[30].z * f23);
    float f25 = -exp((-CB0[30].w) * f23);
    vec2 f26 = (f22 * CB0[31].y) * vec2(f24, f25);
    vec2 f27 = f26 * f26;
    float f28 = f20.x;
    float f29 = max(f20.y - (f28 * f28), f27.x);
    float f30 = f24 - f28;
    float f31 = f20.z;
    float f32 = max(f20.w - (f31 * f31), f27.y);
    float f33 = f25 - f31;
    float f34 = (dot(VARYING5.xyz, -CB0[11].xyz) > 0.0) ? mix(f15, mix(min((f24 <= f28) ? 1.0 : clamp(((f29 / (f29 + (f30 * f30))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f25 <= f31) ? 1.0 : clamp(((f32 / (f32 + (f33 * f33))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f15, clamp((length(VARYING7.xyz - CB0[7].xyz) * CB0[30].y) - (CB0[30].x * CB0[30].y), 0.0, 1.0)), CB0[31].x) : 0.0;
    vec3 f35 = ((min(((f13.xyz * (f13.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * f14.x), vec3(CB0[17].w)) + (VARYING6.xyz * f34)) * mix(f8, f8 * f8, f9).xyz) + (CB0[10].xyz * (VARYING6.w * f34));
    vec4 f36 = vec4(f35.x, f35.y, f35.z, vec4(0.0).w);
    f36.w = f7.w;
    vec3 f37 = mix(CB0[14].xyz, mix(f36.xyz, sqrt(clamp(f36.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), f9).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(f37.x, f37.y, f37.z, f36.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$ShadowAtlasTexture=s1
//$$DiffuseMapTexture=s3
