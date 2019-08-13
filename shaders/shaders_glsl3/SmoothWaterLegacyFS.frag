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
    float _769 = clamp(dot(step(CB0[20].xyz, abs(VARYING5.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _713 = VARYING5.yzx - (VARYING5.yzx * _769);
    vec4 _723 = vec4(clamp(_769, 0.0, 1.0));
    vec4 _724 = mix(texture(LightMapTexture, _713), vec4(0.0), _723);
    vec4 _729 = mix(texture(LightGridSkylightTexture, _713), vec4(1.0), _723);
    float _816 = -VARYING6.x;
    vec2 _877 = (((texture(NormalMap1Texture, VARYING2) * VARYING0.x) + (texture(NormalMap1Texture, VARYING3) * VARYING0.y)) + (texture(NormalMap1Texture, VARYING4) * VARYING0.z)).wy * 2.0;
    vec2 _879 = _877 - vec2(1.0);
    vec3 _851 = vec3(dot(VARYING1, VARYING0.xyz));
    vec3 _628 = mix(VARYING6, normalize(((mix(vec3(VARYING6.z, 0.0, _816), vec3(VARYING6.y, _816, 0.0), _851) * _879.x) + (mix(vec3(0.0, -1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), _851) * _879.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - _877, _879), 0.0, 1.0)))), vec3(0.25));
    vec3 _635 = normalize(VARYING7.xyz);
    vec3 _650 = texture(EnvMapTexture, reflect(-_635, _628)).xyz;
    vec3 _910 = vec3(CB0[15].x);
    vec3 _667 = mix(CB3[1].xyz, mix(_650, (_650 * _650) * CB0[15].w, _910) * 1.0, vec3((clamp(0.7799999713897705078125 - (2.5 * abs(dot(_628, _635))), 0.0, 1.0) + 0.300000011920928955078125) * CB3[2].z)) * (min(((_724.xyz * (_724.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _729.x), vec3(CB0[17].w)) + (CB0[10].xyz * _729.y));
    vec4 _1023 = vec4(_667.x, _667.y, _667.z, vec4(0.0).w);
    _1023.w = 1.0;
    vec3 _952 = mix(CB0[14].xyz, mix(_1023.xyz, sqrt(clamp(_1023.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _910).xyz, vec3(clamp(VARYING5.w, 0.0, 1.0)));
    _entryPointOutput = vec4(_952.x, _952.y, _952.z, _1023.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$NormalMap1Texture=s0
//$$EnvMapTexture=s3
