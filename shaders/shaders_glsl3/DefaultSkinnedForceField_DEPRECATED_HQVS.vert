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
    vec3 _486 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    int _501 = int(COLOR1.x) * 3;
    int _507 = _501 + 1;
    int _512 = _501 + 2;
    float _517 = dot(CB1[_501 * 1 + 0], POSITION);
    float _520 = dot(CB1[_507 * 1 + 0], POSITION);
    float _523 = dot(CB1[_512 * 1 + 0], POSITION);
    vec3 _524 = vec3(_517, _520, _523);
    float _528 = dot(CB1[_501 * 1 + 0].xyz, _486);
    float _532 = dot(CB1[_507 * 1 + 0].xyz, _486);
    float _536 = dot(CB1[_512 * 1 + 0].xyz, _486);
    vec3 _537 = vec3(_528, _532, _536);
    float _573 = dot(_537, -CB0[11].xyz);
    vec4 _581 = vec4(_517, _520, _523, 1.0);
    vec4 _584 = _581 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _589 = vec4(TEXCOORD0, 0.0, 0.0);
    vec4 _805 = vec4(TEXCOORD1, 0.0, 0.0);
    _805.x = max(0.0500000007450580596923828125, TEXCOORD1.x);
    float _622 = _584.w;
    vec4 _639 = ((exp2(TEXCOORD3 * 0.0625) - vec4(1.0)) * CB0[24].z) + vec4((0.5 * _622) * CB0[24].y);
    vec4 _810 = vec4(dot(CB0[21], _581), dot(CB0[22], _581), dot(CB0[23], _581), 0.0);
    _810.w = COLOR1.w * 0.0039215688593685626983642578125;
    gl_Position = _584;
    VARYING0 = vec4(_589.x, _589.y, _639.x, _639.y);
    VARYING1 = vec4(_805.x, _805.y, _639.z, _639.w);
    VARYING2 = COLOR0;
    VARYING3 = vec4(((_524 + (_537 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, 0.0);
    VARYING4 = vec4(CB0[7].xyz - _524, _622);
    VARYING5 = vec4(_528, _532, _536, COLOR1.z);
    VARYING6 = vec4((CB0[10].xyz * max(_573, 0.0)) + (CB0[12].xyz * max(-_573, 0.0)), (float(_573 > 0.0) * (COLOR1.y * 0.0039215688593685626983642578125)) * CB0[24].w);
    VARYING7 = _810;
    VARYING8 = NORMAL.w;
}

