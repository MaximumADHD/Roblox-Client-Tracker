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
    int _608 = int(NORMAL.w);
    vec3 _649 = normalize(((NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0)) / (CB1[gl_InstanceID * 7 + 3].xyz + vec3(0.001000000047497451305389404296875)));
    vec3 _655 = POSITION.xyz * CB1[gl_InstanceID * 7 + 3].xyz;
    vec4 _657 = vec4(_655.x, _655.y, _655.z, POSITION.w);
    float _660 = dot(CB1[gl_InstanceID * 7 + 0], _657);
    float _663 = dot(CB1[gl_InstanceID * 7 + 1], _657);
    float _666 = dot(CB1[gl_InstanceID * 7 + 2], _657);
    vec3 _667 = vec3(_660, _663, _666);
    float _671 = dot(CB1[gl_InstanceID * 7 + 0].xyz, _649);
    float _675 = dot(CB1[gl_InstanceID * 7 + 1].xyz, _649);
    float _679 = dot(CB1[gl_InstanceID * 7 + 2].xyz, _649);
    vec3 _680 = vec3(_671, _675, _679);
    vec2 _971 = vec2(0.0);
    _971.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, _240[_608]);
    vec2 _973 = _971;
    _973.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, _252[_608]);
    vec2 _975 = vec2(0.0);
    _975.x = dot(CB1[gl_InstanceID * 7 + 3].xyz, _240[_608]);
    vec2 _977 = _975;
    _977.y = dot(CB1[gl_InstanceID * 7 + 3].xyz, _252[_608]);
    float _753 = dot(_680, -CB0[11].xyz);
    vec4 _761 = vec4(_660, _663, _666, 1.0);
    vec4 _764 = _761 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _769 = vec4((TEXCOORD0.xy * _973) + CB1[gl_InstanceID * 7 + 6].xy, 0.0, 0.0);
    vec4 _774 = vec4(TEXCOORD0.zw * _977, 0.0, 0.0);
    float _800 = _764.w;
    vec4 _817 = (vec4(10.0) * CB0[24].z) + vec4((0.5 * _800) * CB0[24].y);
    vec4 _986 = vec4(dot(CB0[21], _761), dot(CB0[22], _761), dot(CB0[23], _761), 0.0);
    _986.w = CB1[gl_InstanceID * 7 + 5].w * 0.0039215688593685626983642578125;
    gl_Position = _764;
    VARYING0 = vec4(_769.x, _769.y, _817.x, _817.y);
    VARYING1 = vec4(_774.x, _774.y, _817.z, _817.w);
    VARYING2 = CB1[gl_InstanceID * 7 + 4] * mix(COLOR0 * 0.0039215688593685626983642578125, vec4(1.0), vec4(float(CB1[gl_InstanceID * 7 + 3].w > 0.0)));
    VARYING3 = vec4(((_667 + (_680 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, 0.0);
    VARYING4 = vec4(CB0[7].xyz - _667, _800);
    VARYING5 = vec4(_671, _675, _679, CB1[gl_InstanceID * 7 + 6].w);
    VARYING6 = vec4((CB0[10].xyz * max(_753, 0.0)) + (CB0[12].xyz * max(-_753, 0.0)), (float(_753 > 0.0) * (CB1[gl_InstanceID * 7 + 6].z * 0.0039215688593685626983642578125)) * CB0[24].w);
    VARYING7 = _986;
    VARYING8 = TEXCOORD2.w - 1.0;
}

