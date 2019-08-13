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
    vec3 _522 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    int _533 = int(COLOR1.x) * 3;
    int _539 = _533 + 1;
    int _544 = _533 + 2;
    float _549 = dot(CB1[_533 * 1 + 0], POSITION);
    float _552 = dot(CB1[_539 * 1 + 0], POSITION);
    float _555 = dot(CB1[_544 * 1 + 0], POSITION);
    vec3 _556 = vec3(_549, _552, _555);
    float _560 = dot(CB1[_533 * 1 + 0].xyz, _522);
    float _564 = dot(CB1[_539 * 1 + 0].xyz, _522);
    float _568 = dot(CB1[_544 * 1 + 0].xyz, _522);
    vec3 _569 = vec3(_560, _564, _568);
    vec3 _604 = -CB0[11].xyz;
    float _605 = dot(_569, _604);
    vec3 _612 = CB0[7].xyz - _556;
    vec4 _633 = vec4(_549, _552, _555, 1.0);
    vec4 _636 = _633 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _641 = vec4(TEXCOORD0, 0.0, 0.0);
    vec4 _646 = vec4(TEXCOORD1, 0.0, 0.0);
    float _672 = _636.w;
    vec4 _689 = ((exp2(TEXCOORD3 * 0.0625) - vec4(1.0)) * CB0[24].z) + vec4((0.5 * _672) * CB0[24].y);
    vec4 _864 = vec4(dot(CB0[21], _633), dot(CB0[22], _633), dot(CB0[23], _633), 0.0);
    _864.w = COLOR1.w * 0.0039215688593685626983642578125;
    gl_Position = _636;
    VARYING0 = vec4(_641.x, _641.y, _689.x, _689.y);
    VARYING1 = vec4(_646.x, _646.y, _689.z, _689.w);
    VARYING2 = COLOR0;
    VARYING3 = vec4(((_556 + (_569 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, 0.0);
    VARYING4 = vec4(_612, _672);
    VARYING5 = vec4(_560, _564, _568, COLOR1.z);
    VARYING6 = vec4((CB0[10].xyz * max(_605, 0.0)) + (CB0[12].xyz * max(-_605, 0.0)), ((float(_605 > 0.0) * pow(clamp(dot(_569, normalize(_604 + normalize(_612))), 0.0, 1.0), COLOR1.z)) * (COLOR1.y * 0.0039215688593685626983642578125)) * CB0[24].w);
    VARYING7 = _864;
    VARYING8 = NORMAL.w;
}

