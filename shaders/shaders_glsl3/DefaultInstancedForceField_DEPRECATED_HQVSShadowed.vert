#version 150

const vec3 _240[16] = vec3[](vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0));
const vec3 _252[16] = vec3[](vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.699999988079071044921875, 0.699999988079071044921875, 0.0), vec3(0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, -1.0), vec3(0.0, 0.0, 1.0));

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

struct Instance
{
    vec4 row0;
    vec4 row1;
    vec4 row2;
    vec4 scale;
    vec4 color;
    vec4 uvScale;
    vec4 uvOffset;
};

uniform vec4 CB0[32];
uniform vec4 CB1[511];
in vec4 POSITION;
in vec4 NORMAL;
in vec4 TEXCOORD0;
in vec4 TEXCOORD2;
in vec4 COLOR0;
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
    int _610 = int(NORMAL.w);
    vec3 _651 = normalize(((NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0)) / (CB1[gl_InstanceID * 7 + 3].xyz + vec3(0.001000000047497451305389404296875)));
    vec3 _657 = POSITION.xyz * CB1[gl_InstanceID * 7 + 3].xyz;
    vec4 _659 = vec4(_657.x, _657.y, _657.z, POSITION.w);
    float _662 = dot(CB1[gl_InstanceID * 7 + 0], _659);
    float _665 = dot(CB1[gl_InstanceID * 7 + 1], _659);
    float _668 = dot(CB1[gl_InstanceID * 7 + 2], _659);
    vec3 _669 = vec3(_662, _665, _668);
    float _673 = dot(CB1[gl_InstanceID * 7 + 0].xyz, _651);
    float _677 = dot(CB1[gl_InstanceID * 7 + 1].xyz, _651);
    float _681 = dot(CB1[gl_InstanceID * 7 + 2].xyz, _651);
    vec3 _682 = vec3(_673, _677, _681);
    vec2 _977 = vec2(0.0);
    _977.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, _240[_610]);
    vec2 _979 = _977;
    _979.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, _252[_610]);
    vec2 _981 = vec2(0.0);
    _981.x = dot(CB1[gl_InstanceID * 7 + 3].xyz, _240[_610]);
    vec2 _983 = _981;
    _983.y = dot(CB1[gl_InstanceID * 7 + 3].xyz, _252[_610]);
    float _756 = dot(_682, -CB0[11].xyz);
    vec4 _764 = vec4(_662, _665, _668, 1.0);
    vec4 _767 = _764 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _772 = vec4((TEXCOORD0.xy * _979) + CB1[gl_InstanceID * 7 + 6].xy, 0.0, 0.0);
    vec4 _990 = vec4(0.0, (TEXCOORD0.zw * _983).y, 0.0, 0.0);
    _990.x = max(0.0500000007450580596923828125, mix((COLOR0 * 0.0039215688593685626983642578125).x, 0.0, float(CB1[gl_InstanceID * 7 + 3].w > 0.0)));
    float _805 = _767.w;
    vec4 _822 = (vec4(10.0) * CB0[24].z) + vec4((0.5 * _805) * CB0[24].y);
    vec4 _995 = vec4(dot(CB0[21], _764), dot(CB0[22], _764), dot(CB0[23], _764), 0.0);
    _995.w = CB1[gl_InstanceID * 7 + 5].w * 0.0039215688593685626983642578125;
    gl_Position = _767;
    VARYING0 = vec4(_772.x, _772.y, _822.x, _822.y);
    VARYING1 = vec4(_990.x, _990.y, _822.z, _822.w);
    VARYING2 = CB1[gl_InstanceID * 7 + 4];
    VARYING3 = vec4(((_669 + (_682 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, 0.0);
    VARYING4 = vec4(CB0[7].xyz - _669, _805);
    VARYING5 = vec4(_673, _677, _681, CB1[gl_InstanceID * 7 + 6].w);
    VARYING6 = vec4((CB0[10].xyz * max(_756, 0.0)) + (CB0[12].xyz * max(-_756, 0.0)), (float(_756 > 0.0) * (CB1[gl_InstanceID * 7 + 6].z * 0.0039215688593685626983642578125)) * CB0[24].w);
    VARYING7 = _995;
    VARYING8 = TEXCOORD2.w - 1.0;
}

