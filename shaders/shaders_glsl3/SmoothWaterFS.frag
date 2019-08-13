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

struct Params
{
    vec4 WaveParams;
    vec4 WaterColor;
    vec4 WaterParams;
};

uniform vec4 CB0[32];
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
in vec4 VARYING5;
in vec3 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    float _784 = clamp(dot(step(CB0[20].xyz, abs(VARYING5.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _728 = VARYING5.yzx - (VARYING5.yzx * _784);
    vec4 _738 = vec4(clamp(_784, 0.0, 1.0));
    vec4 _739 = mix(texture(LightMapTexture, _728), vec4(0.0), _738);
    vec4 _744 = mix(texture(LightGridSkylightTexture, _728), vec4(1.0), _738);
    vec3 _754 = (_739.xyz * (_739.w * 120.0)).xyz;
    float _761 = _744.x;
    float _831 = -VARYING6.x;
    vec2 _892 = (((texture(NormalMap1Texture, VARYING2) * VARYING0.x) + (texture(NormalMap1Texture, VARYING3) * VARYING0.y)) + (texture(NormalMap1Texture, VARYING4) * VARYING0.z)).wy * 2.0;
    vec2 _894 = _892 - vec2(1.0);
    vec3 _866 = vec3(dot(VARYING1, VARYING0.xyz));
    vec3 _636 = mix(VARYING6, normalize(((mix(vec3(VARYING6.z, 0.0, _831), vec3(VARYING6.y, _831, 0.0), _866) * _894.x) + (mix(vec3(0.0, -1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), _866) * _894.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - _892, _894), 0.0, 1.0)))), vec3(0.25));
    vec3 _643 = normalize(VARYING7.xyz);
    vec3 _670 = texture(EnvMapTexture, reflect(-_643, _636)).xyz;
    vec3 _925 = vec3(CB0[15].x);
    vec3 _682 = mix(CB3[1].xyz * (min((_754 + CB0[8].xyz) + (CB0[9].xyz * _761), vec3(CB0[17].w)) + (CB0[10].xyz * _744.y)), (mix(_670, (_670 * _670) * CB0[15].w, _925) * _761) + (_754 * 0.100000001490116119384765625), vec3((clamp(0.7799999713897705078125 - (2.5 * abs(dot(_636, _643))), 0.0, 1.0) + 0.300000011920928955078125) * CB3[2].z));
    vec4 _1040 = vec4(_682.x, _682.y, _682.z, vec4(0.0).w);
    _1040.w = 1.0;
    vec3 _967 = mix(CB0[14].xyz, mix(_1040.xyz, sqrt(clamp(_1040.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _925).xyz, vec3(clamp(VARYING5.w, 0.0, 1.0)));
    _entryPointOutput = vec4(_967.x, _967.y, _967.z, _1040.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$NormalMap1Texture=s0
//$$EnvMapTexture=s3
