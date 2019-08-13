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
uniform sampler2D NormalMap2Texture;
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
    float _913 = clamp(dot(step(CB0[20].xyz, abs(VARYING5.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _857 = VARYING5.yzx - (VARYING5.yzx * _913);
    vec4 _867 = vec4(clamp(_913, 0.0, 1.0));
    vec4 _868 = mix(texture(LightMapTexture, _857), vec4(0.0), _867);
    vec4 _873 = mix(texture(LightGridSkylightTexture, _857), vec4(1.0), _867);
    vec3 _883 = (_868.xyz * (_868.w * 120.0)).xyz;
    float _890 = _873.x;
    float _908 = _873.y;
    vec4 _943 = vec4(CB3[0].w);
    float _981 = -VARYING6.x;
    vec2 _1042 = (((mix(texture(NormalMap1Texture, VARYING2), texture(NormalMap2Texture, VARYING2), _943) * VARYING0.x) + (mix(texture(NormalMap1Texture, VARYING3), texture(NormalMap2Texture, VARYING3), _943) * VARYING0.y)) + (mix(texture(NormalMap1Texture, VARYING4), texture(NormalMap2Texture, VARYING4), _943) * VARYING0.z)).wy * 2.0;
    vec2 _1044 = _1042 - vec2(1.0);
    vec3 _1016 = vec3(dot(VARYING1, VARYING0.xyz));
    vec3 _1037 = normalize(((mix(vec3(VARYING6.z, 0.0, _981), vec3(VARYING6.y, _981, 0.0), _1016) * _1044.x) + (mix(vec3(0.0, -1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), _1016) * _1044.y)) + (VARYING6 * sqrt(clamp(1.0 + dot(vec2(1.0) - _1042, _1044), 0.0, 1.0))));
    vec3 _727 = mix(VARYING6, _1037, vec3(0.25));
    vec3 _734 = normalize(VARYING7.xyz);
    vec3 _764 = texture(EnvMapTexture, reflect(-_734, _727)).xyz;
    vec3 _1075 = vec3(CB0[15].x);
    vec3 _813 = mix(CB3[1].xyz * (min((_883 + CB0[8].xyz) + (CB0[9].xyz * _890), vec3(CB0[17].w)) + (CB0[10].xyz * _908)), (mix(_764, (_764 * _764) * CB0[15].w, _1075) * _890) + (_883 * 0.100000001490116119384765625), vec3(((clamp(0.7799999713897705078125 - (2.5 * abs(dot(_727, _734))), 0.0, 1.0) + 0.300000011920928955078125) * VARYING0.w) * CB3[2].z)) + (CB0[10].xyz * ((((2.0 * clamp(1.0 - (VARYING7.w * CB0[24].y), 0.0, 1.0)) * CB3[2].z) * _908) * pow(clamp(dot(_1037, normalize((-CB0[11].xyz) + _734)), 0.0, 1.0), 900.0)));
    vec4 _1210 = vec4(_813.x, _813.y, _813.z, vec4(0.0).w);
    _1210.w = 1.0;
    vec3 _1129 = mix(CB0[14].xyz, mix(_1210.xyz, sqrt(clamp(_1210.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _1075).xyz, vec3(clamp(VARYING5.w, 0.0, 1.0)));
    _entryPointOutput = vec4(_1129.x, _1129.y, _1129.z, _1210.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$EnvMapTexture=s3
