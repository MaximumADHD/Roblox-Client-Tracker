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

uniform vec4 CB0[32];
in vec4 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
out vec4 _entryPointOutput;

void main()
{
    vec3 _154 = VARYING1.xyz - VARYING2.xyz;
    float _168 = max(0.0, VARYING2.w - 1.0);
    float _172 = 2.0 * dot(_154, normalize(VARYING1.xyz - CB0[7].xyz));
    float _175 = dot(_154, _154);
    float _189 = _172 * _172;
    if (_189 < (4.0 * (_175 - (VARYING2.w * VARYING2.w))))
    {
        discard;
    }
    if (_189 > (4.0 * (_175 - (_168 * _168))))
    {
        discard;
    }
    _entryPointOutput = VARYING0;
}

