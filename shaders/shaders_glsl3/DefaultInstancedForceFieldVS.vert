#version 150

const vec3 _260[16] = vec3[](vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0));
const vec3 _272[16] = vec3[](vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.699999988079071044921875, 0.699999988079071044921875, 0.0), vec3(0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, -1.0), vec3(0.0, 0.0, 1.0));

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
    int _651 = int(NORMAL.w);
    vec4 _653 = COLOR0 * 0.0039215688593685626983642578125;
    float _675 = float(CB1[gl_InstanceID * 7 + 3].w > 0.0);
    vec3 _692 = normalize(((NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0)) / (CB1[gl_InstanceID * 7 + 3].xyz + vec3(0.001000000047497451305389404296875)));
    vec3 _698 = POSITION.xyz * CB1[gl_InstanceID * 7 + 3].xyz;
    vec4 _700 = vec4(_698.x, _698.y, _698.z, POSITION.w);
    float _703 = dot(CB1[gl_InstanceID * 7 + 0], _700);
    float _706 = dot(CB1[gl_InstanceID * 7 + 1], _700);
    float _709 = dot(CB1[gl_InstanceID * 7 + 2], _700);
    vec3 _710 = vec3(_703, _706, _709);
    float _714 = dot(CB1[gl_InstanceID * 7 + 0].xyz, _692);
    float _718 = dot(CB1[gl_InstanceID * 7 + 1].xyz, _692);
    float _722 = dot(CB1[gl_InstanceID * 7 + 2].xyz, _692);
    vec3 _723 = vec3(_714, _718, _722);
    vec2 _1034 = vec2(0.0);
    _1034.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, _260[_651]);
    vec2 _1036 = _1034;
    _1036.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, _272[_651]);
    vec2 _1038 = vec2(0.0);
    _1038.x = dot(CB1[gl_InstanceID * 7 + 3].xyz, _260[_651]);
    vec2 _1040 = _1038;
    _1040.y = dot(CB1[gl_InstanceID * 7 + 3].xyz, _272[_651]);
    vec3 _790 = CB1[gl_InstanceID * 7 + 4].xyz * mix(_653.xyz, vec3(1.0), vec3(_675));
    vec4 _1045 = vec4(_790.x, _790.y, _790.z, _653.w);
    _1045.w = CB1[gl_InstanceID * 7 + 4].w;
    vec3 _811 = -CB0[11].xyz;
    float _812 = dot(_723, _811);
    vec3 _819 = CB0[7].xyz - _710;
    vec4 _840 = vec4(_703, _706, _709, 1.0);
    vec4 _843 = _840 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _1050 = vec4(0.0, (TEXCOORD0.zw * _1040).y, 0.0, 0.0);
    _1050.x = max(0.0500000007450580596923828125, mix(1.0 - _653.w, 0.0, _675));
    gl_Position = _843;
    VARYING0 = vec4((TEXCOORD0.xy * _1036) + CB1[gl_InstanceID * 7 + 6].xy, 0.0, 0.0);
    VARYING1 = _1050;
    VARYING2 = _1045;
    VARYING3 = vec4(((_710 + (_723 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, 0.0);
    VARYING4 = vec4(_819, _843.w);
    VARYING5 = vec4(_714, _718, _722, CB1[gl_InstanceID * 7 + 6].w);
    VARYING6 = vec4((CB0[10].xyz * max(_812, 0.0)) + (CB0[12].xyz * max(-_812, 0.0)), ((float(_812 > 0.0) * pow(clamp(dot(_723, normalize(_811 + normalize(_819))), 0.0, 1.0), CB1[gl_InstanceID * 7 + 6].w)) * (CB1[gl_InstanceID * 7 + 6].z * 0.0039215688593685626983642578125)) * CB0[24].w);
    VARYING7 = vec4(dot(CB0[21], _840), dot(CB0[22], _840), dot(CB0[23], _840), 0.0);
    VARYING8 = TEXCOORD2.w - 1.0;
}

