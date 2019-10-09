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

struct Params
{
    vec4 WaveParams;
    vec4 WaterColor;
    vec4 WaterParams;
};

uniform vec4 CB0[31];
uniform vec4 CB3[3];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D NormalMap1Texture;
uniform samplerCube EnvMapTexture;

in vec4 VARYING0;
in vec3 VARYING1;
in vec2 VARYING2;
in vec2 VARYING3;
in vec2 VARYING4;
in vec3 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    float f0 = clamp(dot(step(CB0[19].xyz, abs(VARYING5 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f1 = VARYING5.yzx - (VARYING5.yzx * f0);
    vec4 f2 = vec4(clamp(f0, 0.0, 1.0));
    vec4 f3 = mix(texture(LightMapTexture, f1), vec4(0.0), f2);
    vec4 f4 = mix(texture(LightGridSkylightTexture, f1), vec4(1.0), f2);
    vec3 f5 = (f3.xyz * (f3.w * 120.0)).xyz;
    float f6 = f4.x;
    float f7 = -VARYING6.x;
    vec2 f8 = (((texture(NormalMap1Texture, VARYING2) * VARYING0.x) + (texture(NormalMap1Texture, VARYING3) * VARYING0.y)) + (texture(NormalMap1Texture, VARYING4) * VARYING0.z)).wy * 2.0;
    vec2 f9 = f8 - vec2(1.0);
    vec3 f10 = vec3(dot(VARYING1, VARYING0.xyz));
    vec3 f11 = mix(VARYING6.xyz, normalize(((mix(vec3(VARYING6.z, 0.0, f7), vec3(VARYING6.y, f7, 0.0), f10) * f9.x) + (mix(vec3(0.0, -1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f10) * f9.y)) + (VARYING6.xyz * sqrt(clamp(1.0 + dot(vec2(1.0) - f8, f9), 0.0, 1.0)))), vec3(0.25));
    vec3 f12 = normalize(VARYING7.xyz);
    vec3 f13 = texture(EnvMapTexture, reflect(-f12, f11)).xyz;
    vec3 f14 = mix(CB3[1].xyz * (min((f5 + CB0[8].xyz) + (CB0[9].xyz * f6), vec3(CB0[16].w)) + (CB0[10].xyz * f4.y)), (((f13 * f13) * CB0[15].x) * f6) + (f5 * 0.100000001490116119384765625), vec3((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f11, f12))), 0.0, 1.0) + 0.300000011920928955078125) * CB3[2].z));
    vec4 f15 = vec4(f14.x, f14.y, f14.z, vec4(0.0).w);
    f15.w = 1.0;
    vec3 f16 = mix(CB0[14].xyz, sqrt(clamp(f15.xyz * CB0[15].y, vec3(0.0), vec3(1.0))).xyz, vec3(clamp(VARYING6.w, 0.0, 1.0)));
    _entryPointOutput = vec4(f16.x, f16.y, f16.z, f15.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$NormalMap1Texture=s0
//$$EnvMapTexture=s3
