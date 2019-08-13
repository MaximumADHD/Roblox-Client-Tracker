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
    int _585 = int(NORMAL.w);
    vec3 _626 = normalize(((NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0)) / (CB1[gl_InstanceID * 7 + 3].xyz + vec3(0.001000000047497451305389404296875)));
    vec3 _632 = POSITION.xyz * CB1[gl_InstanceID * 7 + 3].xyz;
    vec4 _634 = vec4(_632.x, _632.y, _632.z, POSITION.w);
    float _637 = dot(CB1[gl_InstanceID * 7 + 0], _634);
    float _640 = dot(CB1[gl_InstanceID * 7 + 1], _634);
    float _643 = dot(CB1[gl_InstanceID * 7 + 2], _634);
    vec3 _644 = vec3(_637, _640, _643);
    float _648 = dot(CB1[gl_InstanceID * 7 + 0].xyz, _626);
    float _652 = dot(CB1[gl_InstanceID * 7 + 1].xyz, _626);
    float _656 = dot(CB1[gl_InstanceID * 7 + 2].xyz, _626);
    vec3 _657 = vec3(_648, _652, _656);
    vec2 _937 = vec2(0.0);
    _937.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, _213[_585]);
    vec2 _939 = _937;
    _939.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, _225[_585]);
    vec2 _941 = vec2(0.0);
    _941.x = dot(CB1[gl_InstanceID * 7 + 3].xyz, _213[_585]);
    vec2 _943 = _941;
    _943.y = dot(CB1[gl_InstanceID * 7 + 3].xyz, _225[_585]);
    float _731 = dot(_657, -CB0[11].xyz);
    vec4 _742 = vec4(_637, _640, _643, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _747 = vec4((TEXCOORD0.xy * _939) + CB1[gl_InstanceID * 7 + 6].xy, 0.0, 0.0);
    vec4 _950 = vec4(0.0, (TEXCOORD0.zw * _943).y, 0.0, 0.0);
    _950.x = max(0.0500000007450580596923828125, mix((COLOR0 * 0.0039215688593685626983642578125).x, 0.0, float(CB1[gl_InstanceID * 7 + 3].w > 0.0)));
    float _784 = _742.w;
    vec4 _801 = (vec4(10.0) * CB0[24].z) + vec4((0.5 * _784) * CB0[24].y);
    vec4 _955 = vec4(_644 - (CB0[11].xyz * abs(CB1[gl_InstanceID * 7 + 3].w)), 0.0);
    _955.w = CB1[gl_InstanceID * 7 + 5].w * 0.0039215688593685626983642578125;
    gl_Position = _742;
    VARYING0 = vec4(_747.x, _747.y, _801.x, _801.y);
    VARYING1 = vec4(_950.x, _950.y, _801.z, _801.w);
    VARYING2 = CB1[gl_InstanceID * 7 + 4];
    VARYING3 = vec4(((_644 + (_657 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, 0.0);
    VARYING4 = vec4(CB0[7].xyz - _644, _784);
    VARYING5 = vec4(_648, _652, _656, CB1[gl_InstanceID * 7 + 6].w);
    VARYING6 = vec4((CB0[10].xyz * max(_731, 0.0)) + (CB0[12].xyz * max(-_731, 0.0)), (float(_731 > 0.0) * (CB1[gl_InstanceID * 7 + 6].z * 0.0039215688593685626983642578125)) * CB0[24].w);
    VARYING7 = _955;
    VARYING8 = TEXCOORD2.w - 1.0;
}

