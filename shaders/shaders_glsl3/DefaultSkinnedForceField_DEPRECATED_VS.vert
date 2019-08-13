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
    vec3 _511 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    int _526 = int(COLOR1.x) * 3;
    int _532 = _526 + 1;
    int _537 = _526 + 2;
    float _542 = dot(CB1[_526 * 1 + 0], POSITION);
    float _545 = dot(CB1[_532 * 1 + 0], POSITION);
    float _548 = dot(CB1[_537 * 1 + 0], POSITION);
    vec3 _549 = vec3(_542, _545, _548);
    float _553 = dot(CB1[_526 * 1 + 0].xyz, _511);
    float _557 = dot(CB1[_532 * 1 + 0].xyz, _511);
    float _561 = dot(CB1[_537 * 1 + 0].xyz, _511);
    vec3 _562 = vec3(_553, _557, _561);
    vec3 _597 = -CB0[11].xyz;
    float _598 = dot(_562, _597);
    vec3 _605 = CB0[7].xyz - _549;
    vec4 _626 = vec4(_542, _545, _548, 1.0);
    vec4 _629 = _626 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _831 = vec4(TEXCOORD1, 0.0, 0.0);
    _831.x = max(0.0500000007450580596923828125, TEXCOORD1.x);
    gl_Position = _629;
    VARYING0 = vec4(TEXCOORD0, 0.0, 0.0);
    VARYING1 = _831;
    VARYING2 = COLOR0;
    VARYING3 = vec4(((_549 + (_562 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, 0.0);
    VARYING4 = vec4(_605, _629.w);
    VARYING5 = vec4(_553, _557, _561, COLOR1.z);
    VARYING6 = vec4((CB0[10].xyz * max(_598, 0.0)) + (CB0[12].xyz * max(-_598, 0.0)), ((float(_598 > 0.0) * pow(clamp(dot(_562, normalize(_597 + normalize(_605))), 0.0, 1.0), COLOR1.z)) * (COLOR1.y * 0.0039215688593685626983642578125)) * CB0[24].w);
    VARYING7 = vec4(dot(CB0[21], _626), dot(CB0[22], _626), dot(CB0[23], _626), 0.0);
    VARYING8 = NORMAL.w;
}

