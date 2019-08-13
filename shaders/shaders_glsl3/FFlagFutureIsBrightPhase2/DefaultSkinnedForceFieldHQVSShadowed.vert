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
    vec3 _461 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    int _476 = int(COLOR1.x) * 3;
    int _482 = _476 + 1;
    int _487 = _476 + 2;
    float _492 = dot(CB1[_476 * 1 + 0], POSITION);
    float _495 = dot(CB1[_482 * 1 + 0], POSITION);
    float _498 = dot(CB1[_487 * 1 + 0], POSITION);
    vec3 _499 = vec3(_492, _495, _498);
    float _503 = dot(CB1[_476 * 1 + 0].xyz, _461);
    float _507 = dot(CB1[_482 * 1 + 0].xyz, _461);
    float _511 = dot(CB1[_487 * 1 + 0].xyz, _461);
    vec3 _512 = vec3(_503, _507, _511);
    float _548 = dot(_512, -CB0[11].xyz);
    vec4 _559 = vec4(_492, _495, _498, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _564 = vec4(TEXCOORD0, 0.0, 0.0);
    vec4 _764 = vec4(TEXCOORD1, 0.0, 0.0);
    _764.x = max(0.0500000007450580596923828125, TEXCOORD1.x);
    float _601 = _559.w;
    vec4 _618 = ((exp2(TEXCOORD3 * 0.0625) - vec4(1.0)) * CB0[24].z) + vec4((0.5 * _601) * CB0[24].y);
    vec4 _769 = vec4(_492, _495, _498, 0.0);
    _769.w = COLOR1.w * 0.0039215688593685626983642578125;
    gl_Position = _559;
    VARYING0 = vec4(_564.x, _564.y, _618.x, _618.y);
    VARYING1 = vec4(_764.x, _764.y, _618.z, _618.w);
    VARYING2 = COLOR0;
    VARYING3 = vec4(((_499 + (_512 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, 0.0);
    VARYING4 = vec4(CB0[7].xyz - _499, _601);
    VARYING5 = vec4(_503, _507, _511, COLOR1.z);
    VARYING6 = vec4((CB0[10].xyz * max(_548, 0.0)) + (CB0[12].xyz * max(-_548, 0.0)), (float(_548 > 0.0) * (COLOR1.y * 0.0039215688593685626983642578125)) * CB0[24].w);
    VARYING7 = _769;
    VARYING8 = NORMAL.w;
}

