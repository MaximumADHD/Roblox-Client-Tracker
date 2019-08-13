#version 110

struct AdornParams
{
    mat4 World;
    vec4 Color;
    vec4 Params;
};

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

uniform vec4 CB1[6];
uniform vec4 CB0[32];
attribute vec4 POSITION;
attribute vec3 NORMAL;
varying vec4 VARYING0;
varying vec3 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;

void main()
{
    mat4 _253 = mat4(CB1[0], CB1[1], CB1[2], CB1[3]);
    vec4 _254 = POSITION * _253;
    vec3 _267 = normalize(NORMAL * mat3(_253[0].xyz, _253[1].xyz, _253[2].xyz));
    vec4 _270 = vec4(1.0, 0.0, 0.0, 1.0) * _253;
    vec4 _273 = vec4(-1.0, 0.0, 0.0, 1.0) * _253;
    float _276 = CB1[5].w + 2.0;
    vec4 _429;
    if (length(_254 - _270) < length(_254 - _273))
    {
        vec3 _310 = _270.xyz + (_267 * ((_276 * (vec4(_270.xyz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3])).w) * CB1[5].x));
        _429 = vec4(_310.x, _310.y, _310.z, _254.w);
    }
    else
    {
        vec3 _334 = _273.xyz + (_267 * ((_276 * (vec4(_273.xyz, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3])).w) * CB1[5].x));
        _429 = vec4(_334.x, _334.y, _334.z, _254.w);
    }
    mat4 _339 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _340 = _429 * _339;
    vec4 _348 = _270 * _339;
    vec4 _353 = _273 * _339;
    vec4 _422 = _340;
    _422.y = _340.y * CB1[5].z;
    vec4 _425 = _348;
    _425.y = _348.y * CB1[5].z;
    vec4 _428 = _353;
    _428.y = _353.y * CB1[5].z;
    gl_Position = _340;
    VARYING0 = _422;
    VARYING1 = CB0[7].xyz - _429.xyz;
    VARYING2 = _425;
    VARYING3 = _428;
}

