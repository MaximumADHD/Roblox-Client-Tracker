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
    vec3 _468 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    int _479 = int(COLOR1.x) * 3;
    int _485 = _479 + 1;
    int _490 = _479 + 2;
    float _495 = dot(CB1[_479 * 1 + 0], POSITION);
    float _498 = dot(CB1[_485 * 1 + 0], POSITION);
    float _501 = dot(CB1[_490 * 1 + 0], POSITION);
    vec3 _502 = vec3(_495, _498, _501);
    float _506 = dot(CB1[_479 * 1 + 0].xyz, _468);
    float _510 = dot(CB1[_485 * 1 + 0].xyz, _468);
    float _514 = dot(CB1[_490 * 1 + 0].xyz, _468);
    vec3 _515 = vec3(_506, _510, _514);
    float _551 = dot(_515, -CB0[11].xyz);
    vec4 _559 = vec4(_495, _498, _501, 1.0);
    vec4 _562 = _559 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _567 = vec4(TEXCOORD0, 0.0, 0.0);
    vec4 _572 = vec4(TEXCOORD1, 0.0, 0.0);
    float _598 = _562.w;
    vec4 _615 = ((exp2(TEXCOORD3 * 0.0625) - vec4(1.0)) * CB0[24].z) + vec4((0.5 * _598) * CB0[24].y);
    vec4 _781 = vec4(dot(CB0[21], _559), dot(CB0[22], _559), dot(CB0[23], _559), 0.0);
    _781.w = COLOR1.w * 0.0039215688593685626983642578125;
    gl_Position = _562;
    VARYING0 = vec4(_567.x, _567.y, _615.x, _615.y);
    VARYING1 = vec4(_572.x, _572.y, _615.z, _615.w);
    VARYING2 = COLOR0;
    VARYING3 = vec4(((_502 + (_515 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, 0.0);
    VARYING4 = vec4(CB0[7].xyz - _502, _598);
    VARYING5 = vec4(_506, _510, _514, COLOR1.z);
    VARYING6 = vec4((CB0[10].xyz * max(_551, 0.0)) + (CB0[12].xyz * max(-_551, 0.0)), (float(_551 > 0.0) * (COLOR1.y * 0.0039215688593685626983642578125)) * CB0[24].w);
    VARYING7 = _781;
    VARYING8 = NORMAL.w;
}

