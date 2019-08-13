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
varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying float VARYING7;

void main()
{
    vec3 _483 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    int _494 = int(COLOR1.x) * 3;
    int _500 = _494 + 1;
    int _505 = _494 + 2;
    float _510 = dot(CB1[_494 * 1 + 0], POSITION);
    float _513 = dot(CB1[_500 * 1 + 0], POSITION);
    float _516 = dot(CB1[_505 * 1 + 0], POSITION);
    vec3 _517 = vec3(_510, _513, _516);
    vec3 _530 = vec3(dot(CB1[_494 * 1 + 0].xyz, _483), dot(CB1[_500 * 1 + 0].xyz, _483), dot(CB1[_505 * 1 + 0].xyz, _483));
    vec3 _565 = -CB0[11].xyz;
    float _566 = dot(_530, _565);
    vec3 _573 = CB0[7].xyz - _517;
    vec4 _594 = vec4(_510, _513, _516, 1.0);
    vec4 _597 = _594 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    gl_Position = _597;
    VARYING0 = vec4(TEXCOORD0, 0.0, 0.0);
    VARYING1 = vec4(TEXCOORD1, 0.0, 0.0);
    VARYING2 = COLOR0;
    VARYING3 = vec4(((_517 + (_530 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, 0.0);
    VARYING4 = vec4(_573, _597.w);
    VARYING5 = vec4((CB0[10].xyz * max(_566, 0.0)) + (CB0[12].xyz * max(-_566, 0.0)), ((float(_566 > 0.0) * pow(clamp(dot(_530, normalize(_565 + normalize(_573))), 0.0, 1.0), COLOR1.z)) * (COLOR1.y * 0.0039215688593685626983642578125)) * CB0[24].w);
    VARYING6 = vec4(dot(CB0[21], _594), dot(CB0[22], _594), dot(CB0[23], _594), 0.0);
    VARYING7 = NORMAL.w;
}

