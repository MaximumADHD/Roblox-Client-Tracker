#version 150

const vec3 _213[16] = vec3[](vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0));
const vec3 _225[16] = vec3[](vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.699999988079071044921875, 0.699999988079071044921875, 0.0), vec3(0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, -1.0), vec3(0.0, 0.0, 1.0));

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
    int _601 = int(NORMAL.w);
    vec4 _603 = COLOR0 * 0.0039215688593685626983642578125;
    float _625 = float(CB1[gl_InstanceID * 7 + 3].w > 0.0);
    vec3 _642 = normalize(((NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0)) / (CB1[gl_InstanceID * 7 + 3].xyz + vec3(0.001000000047497451305389404296875)));
    vec3 _648 = POSITION.xyz * CB1[gl_InstanceID * 7 + 3].xyz;
    vec4 _650 = vec4(_648.x, _648.y, _648.z, POSITION.w);
    float _653 = dot(CB1[gl_InstanceID * 7 + 0], _650);
    float _656 = dot(CB1[gl_InstanceID * 7 + 1], _650);
    float _659 = dot(CB1[gl_InstanceID * 7 + 2], _650);
    vec3 _660 = vec3(_653, _656, _659);
    float _664 = dot(CB1[gl_InstanceID * 7 + 0].xyz, _642);
    float _668 = dot(CB1[gl_InstanceID * 7 + 1].xyz, _642);
    float _672 = dot(CB1[gl_InstanceID * 7 + 2].xyz, _642);
    vec3 _673 = vec3(_664, _668, _672);
    vec2 _968 = vec2(0.0);
    _968.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, _213[_601]);
    vec2 _970 = _968;
    _970.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, _225[_601]);
    vec2 _972 = vec2(0.0);
    _972.x = dot(CB1[gl_InstanceID * 7 + 3].xyz, _213[_601]);
    vec2 _974 = _972;
    _974.y = dot(CB1[gl_InstanceID * 7 + 3].xyz, _225[_601]);
    vec3 _740 = CB1[gl_InstanceID * 7 + 4].xyz * mix(_603.xyz, vec3(1.0), vec3(_625));
    vec4 _979 = vec4(_740.x, _740.y, _740.z, _603.w);
    _979.w = CB1[gl_InstanceID * 7 + 4].w;
    float _762 = dot(_673, -CB0[11].xyz);
    vec4 _773 = vec4(_653, _656, _659, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _778 = vec4((TEXCOORD0.xy * _970) + CB1[gl_InstanceID * 7 + 6].xy, 0.0, 0.0);
    vec4 _984 = vec4(0.0, (TEXCOORD0.zw * _974).y, 0.0, 0.0);
    _984.x = max(0.0500000007450580596923828125, mix(1.0 - _603.w, 0.0, _625));
    float _815 = _773.w;
    vec4 _832 = (vec4(10.0) * CB0[24].z) + vec4((0.5 * _815) * CB0[24].y);
    vec4 _989 = vec4(_660 - (CB0[11].xyz * abs(CB1[gl_InstanceID * 7 + 3].w)), 0.0);
    _989.w = CB1[gl_InstanceID * 7 + 5].w * 0.0039215688593685626983642578125;
    gl_Position = _773;
    VARYING0 = vec4(_778.x, _778.y, _832.x, _832.y);
    VARYING1 = vec4(_984.x, _984.y, _832.z, _832.w);
    VARYING2 = _979;
    VARYING3 = vec4(((_660 + (_673 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, 0.0);
    VARYING4 = vec4(CB0[7].xyz - _660, _815);
    VARYING5 = vec4(_664, _668, _672, CB1[gl_InstanceID * 7 + 6].w);
    VARYING6 = vec4((CB0[10].xyz * max(_762, 0.0)) + (CB0[12].xyz * max(-_762, 0.0)), (float(_762 > 0.0) * (CB1[gl_InstanceID * 7 + 6].z * 0.0039215688593685626983642578125)) * CB0[24].w);
    VARYING7 = _989;
    VARYING8 = TEXCOORD2.w - 1.0;
}

