#version 110

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
uniform vec4 CB1[216];
attribute vec4 POSITION;
attribute vec4 NORMAL;
attribute vec2 TEXCOORD0;
attribute vec2 TEXCOORD1;
attribute vec4 COLOR0;
attribute vec4 COLOR1;
attribute vec4 TEXCOORD2;
attribute vec4 TEXCOORD3;
varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;
varying float VARYING8;

void main()
{
    vec3 _459 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec3 _471 = (TEXCOORD2.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    int _476 = int(COLOR1.x) * 3;
    int _482 = _476 + 1;
    int _487 = _476 + 2;
    float _492 = dot(CB1[_476 * 1 + 0], POSITION);
    float _495 = dot(CB1[_482 * 1 + 0], POSITION);
    float _498 = dot(CB1[_487 * 1 + 0], POSITION);
    vec3 _499 = vec3(_492, _495, _498);
    float _503 = dot(CB1[_476 * 1 + 0].xyz, _459);
    float _507 = dot(CB1[_482 * 1 + 0].xyz, _459);
    float _511 = dot(CB1[_487 * 1 + 0].xyz, _459);
    vec3 _525 = vec3(dot(CB1[_476 * 1 + 0].xyz, _471), dot(CB1[_482 * 1 + 0].xyz, _471), dot(CB1[_487 * 1 + 0].xyz, _471));
    vec4 _765 = vec4(0.0);
    _765.w = (TEXCOORD2.w * 0.0078740157186985015869140625) - 1.0;
    vec4 _561 = vec4(_492, _495, _498, 1.0);
    vec4 _564 = _561 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _569 = vec4(TEXCOORD0, 0.0, 0.0);
    vec4 _574 = vec4(TEXCOORD1, 0.0, 0.0);
    float _600 = _564.w;
    vec4 _617 = ((exp2(TEXCOORD3 * 0.0625) - vec4(1.0)) * CB0[24].z) + vec4((0.5 * _600) * CB0[24].y);
    vec4 _771 = vec4(dot(CB0[21], _561), dot(CB0[22], _561), dot(CB0[23], _561), 0.0);
    _771.w = COLOR1.w * 0.0039215688593685626983642578125;
    gl_Position = _564;
    VARYING0 = vec4(_569.x, _569.y, _617.x, _617.y);
    VARYING1 = vec4(_574.x, _574.y, _617.z, _617.w);
    VARYING2 = COLOR0;
    VARYING3 = vec4(((_499 + (vec3(_503, _507, _511) * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, 0.0);
    VARYING4 = vec4(CB0[7].xyz - _499, _600);
    VARYING5 = vec4(_503, _507, _511, COLOR1.z);
    VARYING6 = vec4(_525.x, _525.y, _525.z, _765.w);
    VARYING7 = _771;
    VARYING8 = NORMAL.w;
}

