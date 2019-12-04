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
    vec3 Exposure;
    vec4 LightConfig0;
    vec4 LightConfig1;
    vec4 LightConfig2;
    vec4 LightConfig3;
    vec4 ShadowMatrix0;
    vec4 ShadowMatrix1;
    vec4 ShadowMatrix2;
    vec4 RefractionBias_FadeDistance_GlowFactor_SpecMul;
    vec4 OutlineBrightness_ShadowInfo;
    vec4 SkyGradientTop_EnvDiffuse;
    vec4 SkyGradientBottom_EnvSpec;
    vec3 AmbientColorNoIBL;
    vec3 SkyAmbientNoIBL;
    vec4 AmbientCube[12];
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
    float debugFlags;
};

struct LightShadowGPUTransform
{
    mat4 transform;
};

struct GridParam
{
    vec4 GridScale;
};

uniform vec4 CB0[47];
uniform vec4 CB8[24];
uniform vec4 CB3[1];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D ShadowAtlasTexture;
uniform sampler2D DiffuseMapTexture;

in vec4 VARYING2;
in vec3 VARYING3;
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
    float f9 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f10 = VARYING3.yzx - (VARYING3.yzx * f9);
    vec4 f11 = vec4(clamp(f9, 0.0, 1.0));
    vec4 f12 = mix(texture(LightMapTexture, f10), vec4(0.0), f11);
    vec4 f13 = mix(texture(LightGridSkylightTexture, f10), vec4(1.0), f11);
    float f14 = f13.y;
    vec3 f15 = VARYING7.xyz - CB0[41].xyz;
    vec3 f16 = VARYING7.xyz - CB0[42].xyz;
    vec3 f17 = VARYING7.xyz - CB0[43].xyz;
    vec4 f18 = vec4(VARYING7.xyz, 1.0) * mat4(CB8[((dot(f15, f15) < CB0[41].w) ? 0 : ((dot(f16, f16) < CB0[42].w) ? 1 : ((dot(f17, f17) < CB0[43].w) ? 2 : 3))) * 4 + 0], CB8[((dot(f15, f15) < CB0[41].w) ? 0 : ((dot(f16, f16) < CB0[42].w) ? 1 : ((dot(f17, f17) < CB0[43].w) ? 2 : 3))) * 4 + 1], CB8[((dot(f15, f15) < CB0[41].w) ? 0 : ((dot(f16, f16) < CB0[42].w) ? 1 : ((dot(f17, f17) < CB0[43].w) ? 2 : 3))) * 4 + 2], CB8[((dot(f15, f15) < CB0[41].w) ? 0 : ((dot(f16, f16) < CB0[42].w) ? 1 : ((dot(f17, f17) < CB0[43].w) ? 2 : 3))) * 4 + 3]);
    vec4 f19 = textureLod(ShadowAtlasTexture, f18.xy, 0.0);
    vec2 f20 = vec2(0.0);
    f20.x = CB0[45].z;
    vec2 f21 = f20;
    f21.y = CB0[45].w;
    float f22 = (2.0 * f18.z) - 1.0;
    float f23 = exp(CB0[45].z * f22);
    float f24 = -exp((-CB0[45].w) * f22);
    vec2 f25 = (f21 * CB0[46].y) * vec2(f23, f24);
    vec2 f26 = f25 * f25;
    float f27 = f19.x;
    float f28 = max(f19.y - (f27 * f27), f26.x);
    float f29 = f23 - f27;
    float f30 = f19.z;
    float f31 = max(f19.w - (f30 * f30), f26.y);
    float f32 = f24 - f30;
    float f33 = (dot(normalize(VARYING5.xyz), -CB0[11].xyz) > 0.0) ? mix(f14, mix(min((f23 <= f27) ? 1.0 : clamp(((f28 / (f28 + (f29 * f29))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0), (f24 <= f30) ? 1.0 : clamp(((f31 / (f31 + (f32 * f32))) - 0.20000000298023223876953125) * 1.25, 0.0, 1.0)), f14, clamp((length(VARYING7.xyz - CB0[7].xyz) * CB0[45].y) - (CB0[45].x * CB0[45].y), 0.0, 1.0)), CB0[46].x) : 0.0;
    vec3 f34 = (((VARYING6.xyz * f33) + min((f12.xyz * (f12.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f13.x)), vec3(CB0[16].w))) * (f8 * f8).xyz) + (CB0[10].xyz * ((VARYING6.w * f33) * 0.100000001490116119384765625));
    vec4 f35 = vec4(f34.x, f34.y, f34.z, vec4(0.0).w);
    f35.w = f7.w;
    vec3 f36 = mix(CB0[14].xyz, sqrt(clamp(f35.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(f36.x, f36.y, f36.z, f35.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$ShadowAtlasTexture=s1
//$$DiffuseMapTexture=s3
