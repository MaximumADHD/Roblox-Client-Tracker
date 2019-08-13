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
    int _626 = int(NORMAL.w);
    vec4 _628 = COLOR0 * 0.0039215688593685626983642578125;
    float _650 = float(CB1[gl_InstanceID * 7 + 3].w > 0.0);
    vec3 _667 = normalize(((NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0)) / (CB1[gl_InstanceID * 7 + 3].xyz + vec3(0.001000000047497451305389404296875)));
    vec3 _673 = POSITION.xyz * CB1[gl_InstanceID * 7 + 3].xyz;
    vec4 _675 = vec4(_673.x, _673.y, _673.z, POSITION.w);
    float _678 = dot(CB1[gl_InstanceID * 7 + 0], _675);
    float _681 = dot(CB1[gl_InstanceID * 7 + 1], _675);
    float _684 = dot(CB1[gl_InstanceID * 7 + 2], _675);
    vec3 _685 = vec3(_678, _681, _684);
    float _689 = dot(CB1[gl_InstanceID * 7 + 0].xyz, _667);
    float _693 = dot(CB1[gl_InstanceID * 7 + 1].xyz, _667);
    float _697 = dot(CB1[gl_InstanceID * 7 + 2].xyz, _667);
    vec3 _698 = vec3(_689, _693, _697);
    vec2 _1008 = vec2(0.0);
    _1008.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, _240[_626]);
    vec2 _1010 = _1008;
    _1010.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, _252[_626]);
    vec2 _1012 = vec2(0.0);
    _1012.x = dot(CB1[gl_InstanceID * 7 + 3].xyz, _240[_626]);
    vec2 _1014 = _1012;
    _1014.y = dot(CB1[gl_InstanceID * 7 + 3].xyz, _252[_626]);
    vec3 _765 = CB1[gl_InstanceID * 7 + 4].xyz * mix(_628.xyz, vec3(1.0), vec3(_650));
    vec4 _1019 = vec4(_765.x, _765.y, _765.z, _628.w);
    _1019.w = CB1[gl_InstanceID * 7 + 4].w;
    float _787 = dot(_698, -CB0[11].xyz);
    vec4 _795 = vec4(_678, _681, _684, 1.0);
    vec4 _798 = _795 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _803 = vec4((TEXCOORD0.xy * _1010) + CB1[gl_InstanceID * 7 + 6].xy, 0.0, 0.0);
    vec4 _1024 = vec4(0.0, (TEXCOORD0.zw * _1014).y, 0.0, 0.0);
    _1024.x = max(0.0500000007450580596923828125, mix(1.0 - _628.w, 0.0, _650));
    float _836 = _798.w;
    vec4 _853 = (vec4(10.0) * CB0[24].z) + vec4((0.5 * _836) * CB0[24].y);
    vec4 _1029 = vec4(dot(CB0[21], _795), dot(CB0[22], _795), dot(CB0[23], _795), 0.0);
    _1029.w = CB1[gl_InstanceID * 7 + 5].w * 0.0039215688593685626983642578125;
    gl_Position = _798;
    VARYING0 = vec4(_803.x, _803.y, _853.x, _853.y);
    VARYING1 = vec4(_1024.x, _1024.y, _853.z, _853.w);
    VARYING2 = _1019;
    VARYING3 = vec4(((_685 + (_698 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, 0.0);
    VARYING4 = vec4(CB0[7].xyz - _685, _836);
    VARYING5 = vec4(_689, _693, _697, CB1[gl_InstanceID * 7 + 6].w);
    VARYING6 = vec4((CB0[10].xyz * max(_787, 0.0)) + (CB0[12].xyz * max(-_787, 0.0)), (float(_787 > 0.0) * (CB1[gl_InstanceID * 7 + 6].z * 0.0039215688593685626983642578125)) * CB0[24].w);
    VARYING7 = _1029;
    VARYING8 = TEXCOORD2.w - 1.0;
}

