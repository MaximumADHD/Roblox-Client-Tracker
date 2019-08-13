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
    vec3 _580 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    int _591 = int(COLOR1.x) * 3;
    int _597 = _591 + 1;
    int _602 = _591 + 2;
    float _607 = dot(CB1[_591 * 1 + 0], POSITION);
    float _610 = dot(CB1[_597 * 1 + 0], POSITION);
    float _613 = dot(CB1[_602 * 1 + 0], POSITION);
    vec3 _614 = vec3(_607, _610, _613);
    float _618 = dot(CB1[_591 * 1 + 0].xyz, _580);
    float _622 = dot(CB1[_597 * 1 + 0].xyz, _580);
    float _626 = dot(CB1[_602 * 1 + 0].xyz, _580);
    vec3 _627 = vec3(_618, _622, _626);
    vec3 _662 = -CB0[11].xyz;
    float _663 = dot(_627, _662);
    vec3 _670 = CB0[7].xyz - _614;
    vec4 _691 = vec4(_607, _610, _613, 1.0);
    vec4 _694 = _691 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _699 = vec4(TEXCOORD0, 0.0, 0.0);
    vec4 _704 = vec4(TEXCOORD1, 0.0, 0.0);
    float _730 = _694.w;
    vec4 _734 = vec4(_670, _730);
    vec4 _747 = ((exp2(TEXCOORD3 * 0.0625) - vec4(1.0)) * CB0[24].z) + vec4((0.5 * _730) * CB0[24].y);
    float _767 = COLOR0.w * 2.0;
    float _769 = clamp(_767 - 1.0, 0.0, 1.0);
    float _773 = clamp(_767, 0.0, 1.0);
    float _791 = (clamp(2.0 - (dot(_627, normalize(_734.xyz)) * 3.0), 0.0, 1.0) * 0.300000011920928955078125) * _773;
    vec4 _964 = COLOR0;
    _964.w = mix(_769, 1.0, _791);
    vec4 _966 = vec4(dot(CB0[21], _691), dot(CB0[22], _691), dot(CB0[23], _691), 0.0);
    _966.w = mix((COLOR1.w * 0.0039215688593685626983642578125) * _769, 1.0, _791);
    gl_Position = _694;
    VARYING0 = vec4(_699.x, _699.y, _747.x, _747.y);
    VARYING1 = vec4(_704.x, _704.y, _747.z, _747.w);
    VARYING2 = _964;
    VARYING3 = vec4(((_614 + (_627 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, 0.0);
    VARYING4 = _734;
    VARYING5 = vec4(_618, _622, _626, COLOR1.z);
    VARYING6 = vec4((CB0[10].xyz * max(_663, 0.0)) + (CB0[12].xyz * max(-_663, 0.0)), (((float(_663 > 0.0) * pow(clamp(dot(_627, normalize(_662 + normalize(_670))), 0.0, 1.0), COLOR1.z)) * _773) * (COLOR1.y * 0.0039215688593685626983642578125)) * CB0[24].w);
    VARYING7 = _966;
    VARYING8 = NORMAL.w;
}

