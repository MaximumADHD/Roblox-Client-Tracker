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
uniform vec4 CB1[216];
in vec4 POSITION;
in vec4 NORMAL;
in vec2 TEXCOORD0;
in vec2 TEXCOORD1;
in vec4 COLOR0;
in vec4 COLOR1;
in vec4 TEXCOORD3;
out vec4 VARYING0;
out vec4 VARYING1;
out vec4 VARYING2;
out vec4 VARYING3;
out vec4 VARYING4;
out vec4 VARYING5;
out vec4 VARYING6;
out vec4 VARYING7;
out float VARYING8;

void main()
{
    vec3 _592 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    int _603 = int(COLOR1.x) * 3;
    int _609 = _603 + 1;
    int _614 = _603 + 2;
    float _619 = dot(CB1[_603 * 1 + 0], POSITION);
    float _622 = dot(CB1[_609 * 1 + 0], POSITION);
    float _625 = dot(CB1[_614 * 1 + 0], POSITION);
    vec3 _626 = vec3(_619, _622, _625);
    float _630 = dot(CB1[_603 * 1 + 0].xyz, _592);
    float _634 = dot(CB1[_609 * 1 + 0].xyz, _592);
    float _638 = dot(CB1[_614 * 1 + 0].xyz, _592);
    vec3 _639 = vec3(_630, _634, _638);
    vec3 _674 = -CB0[11].xyz;
    float _675 = dot(_639, _674);
    vec3 _682 = CB0[7].xyz - _626;
    vec4 _703 = vec4(_619, _622, _625, 1.0);
    vec4 _706 = _703 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _711 = vec4(TEXCOORD0, 0.0, 0.0);
    vec4 _716 = vec4(TEXCOORD1, 0.0, 0.0);
    float _742 = _706.w;
    vec4 _746 = vec4(_682, _742);
    vec4 _759 = ((exp2(TEXCOORD3 * 0.0625) - vec4(1.0)) * CB0[24].z) + vec4((0.5 * _742) * CB0[24].y);
    float _779 = COLOR0.w * 2.0;
    float _781 = clamp(_779 - 1.0, 0.0, 1.0);
    float _785 = clamp(_779, 0.0, 1.0);
    float _803 = (clamp(2.0 - (dot(_639, normalize(_746.xyz)) * 3.0), 0.0, 1.0) * 0.300000011920928955078125) * _785;
    vec4 _976 = COLOR0;
    _976.w = mix(_781, 1.0, _803);
    vec4 _978 = vec4(dot(CB0[21], _703), dot(CB0[22], _703), dot(CB0[23], _703), 0.0);
    _978.w = mix((COLOR1.w * 0.0039215688593685626983642578125) * _781, 1.0, _803);
    gl_Position = _706;
    VARYING0 = vec4(_711.x, _711.y, _759.x, _759.y);
    VARYING1 = vec4(_716.x, _716.y, _759.z, _759.w);
    VARYING2 = _976;
    VARYING3 = vec4(((_626 + (_639 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, 0.0);
    VARYING4 = _746;
    VARYING5 = vec4(_630, _634, _638, COLOR1.z);
    VARYING6 = vec4((CB0[10].xyz * max(_675, 0.0)) + (CB0[12].xyz * max(-_675, 0.0)), (((float(_675 > 0.0) * pow(clamp(dot(_639, normalize(_674 + normalize(_682))), 0.0, 1.0), COLOR1.z)) * _785) * (COLOR1.y * 0.0039215688593685626983642578125)) * CB0[24].w);
    VARYING7 = _978;
    VARYING8 = NORMAL.w;
}

