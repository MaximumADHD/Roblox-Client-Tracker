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
    int _583 = int(NORMAL.w);
    vec3 _624 = normalize(((NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0)) / (CB1[gl_InstanceID * 7 + 3].xyz + vec3(0.001000000047497451305389404296875)));
    vec3 _630 = POSITION.xyz * CB1[gl_InstanceID * 7 + 3].xyz;
    vec4 _632 = vec4(_630.x, _630.y, _630.z, POSITION.w);
    float _635 = dot(CB1[gl_InstanceID * 7 + 0], _632);
    float _638 = dot(CB1[gl_InstanceID * 7 + 1], _632);
    float _641 = dot(CB1[gl_InstanceID * 7 + 2], _632);
    vec3 _642 = vec3(_635, _638, _641);
    float _646 = dot(CB1[gl_InstanceID * 7 + 0].xyz, _624);
    float _650 = dot(CB1[gl_InstanceID * 7 + 1].xyz, _624);
    float _654 = dot(CB1[gl_InstanceID * 7 + 2].xyz, _624);
    vec3 _655 = vec3(_646, _650, _654);
    vec2 _931 = vec2(0.0);
    _931.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, _213[_583]);
    vec2 _933 = _931;
    _933.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, _225[_583]);
    vec2 _935 = vec2(0.0);
    _935.x = dot(CB1[gl_InstanceID * 7 + 3].xyz, _213[_583]);
    vec2 _937 = _935;
    _937.y = dot(CB1[gl_InstanceID * 7 + 3].xyz, _225[_583]);
    float _728 = dot(_655, -CB0[11].xyz);
    vec4 _739 = vec4(_635, _638, _641, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _744 = vec4((TEXCOORD0.xy * _933) + CB1[gl_InstanceID * 7 + 6].xy, 0.0, 0.0);
    vec4 _749 = vec4(TEXCOORD0.zw * _937, 0.0, 0.0);
    float _779 = _739.w;
    vec4 _796 = (vec4(10.0) * CB0[24].z) + vec4((0.5 * _779) * CB0[24].y);
    vec4 _946 = vec4(_642 - (CB0[11].xyz * abs(CB1[gl_InstanceID * 7 + 3].w)), 0.0);
    _946.w = CB1[gl_InstanceID * 7 + 5].w * 0.0039215688593685626983642578125;
    gl_Position = _739;
    VARYING0 = vec4(_744.x, _744.y, _796.x, _796.y);
    VARYING1 = vec4(_749.x, _749.y, _796.z, _796.w);
    VARYING2 = CB1[gl_InstanceID * 7 + 4] * mix(COLOR0 * 0.0039215688593685626983642578125, vec4(1.0), vec4(float(CB1[gl_InstanceID * 7 + 3].w > 0.0)));
    VARYING3 = vec4(((_642 + (_655 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, 0.0);
    VARYING4 = vec4(CB0[7].xyz - _642, _779);
    VARYING5 = vec4(_646, _650, _654, CB1[gl_InstanceID * 7 + 6].w);
    VARYING6 = vec4((CB0[10].xyz * max(_728, 0.0)) + (CB0[12].xyz * max(-_728, 0.0)), (float(_728 > 0.0) * (CB1[gl_InstanceID * 7 + 6].z * 0.0039215688593685626983642578125)) * CB0[24].w);
    VARYING7 = _946;
    VARYING8 = TEXCOORD2.w - 1.0;
}

