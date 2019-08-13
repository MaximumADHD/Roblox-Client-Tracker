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
    int _635 = int(NORMAL.w);
    vec3 _676 = normalize(((NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0)) / (CB1[gl_InstanceID * 7 + 3].xyz + vec3(0.001000000047497451305389404296875)));
    vec3 _682 = POSITION.xyz * CB1[gl_InstanceID * 7 + 3].xyz;
    vec4 _684 = vec4(_682.x, _682.y, _682.z, POSITION.w);
    float _687 = dot(CB1[gl_InstanceID * 7 + 0], _684);
    float _690 = dot(CB1[gl_InstanceID * 7 + 1], _684);
    float _693 = dot(CB1[gl_InstanceID * 7 + 2], _684);
    vec3 _694 = vec3(_687, _690, _693);
    float _698 = dot(CB1[gl_InstanceID * 7 + 0].xyz, _676);
    float _702 = dot(CB1[gl_InstanceID * 7 + 1].xyz, _676);
    float _706 = dot(CB1[gl_InstanceID * 7 + 2].xyz, _676);
    vec3 _707 = vec3(_698, _702, _706);
    vec2 _1003 = vec2(0.0);
    _1003.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, _260[_635]);
    vec2 _1005 = _1003;
    _1005.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, _272[_635]);
    vec2 _1007 = vec2(0.0);
    _1007.x = dot(CB1[gl_InstanceID * 7 + 3].xyz, _260[_635]);
    vec2 _1009 = _1007;
    _1009.y = dot(CB1[gl_InstanceID * 7 + 3].xyz, _272[_635]);
    vec3 _780 = -CB0[11].xyz;
    float _781 = dot(_707, _780);
    vec3 _788 = CB0[7].xyz - _694;
    vec4 _809 = vec4(_687, _690, _693, 1.0);
    vec4 _812 = _809 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _1016 = vec4(0.0, (TEXCOORD0.zw * _1009).y, 0.0, 0.0);
    _1016.x = max(0.0500000007450580596923828125, mix((COLOR0 * 0.0039215688593685626983642578125).x, 0.0, float(CB1[gl_InstanceID * 7 + 3].w > 0.0)));
    gl_Position = _812;
    VARYING0 = vec4((TEXCOORD0.xy * _1005) + CB1[gl_InstanceID * 7 + 6].xy, 0.0, 0.0);
    VARYING1 = _1016;
    VARYING2 = CB1[gl_InstanceID * 7 + 4];
    VARYING3 = vec4(((_694 + (_707 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, 0.0);
    VARYING4 = vec4(_788, _812.w);
    VARYING5 = vec4(_698, _702, _706, CB1[gl_InstanceID * 7 + 6].w);
    VARYING6 = vec4((CB0[10].xyz * max(_781, 0.0)) + (CB0[12].xyz * max(-_781, 0.0)), ((float(_781 > 0.0) * pow(clamp(dot(_707, normalize(_780 + normalize(_788))), 0.0, 1.0), CB1[gl_InstanceID * 7 + 6].w)) * (CB1[gl_InstanceID * 7 + 6].z * 0.0039215688593685626983642578125)) * CB0[24].w);
    VARYING7 = vec4(dot(CB0[21], _809), dot(CB0[22], _809), dot(CB0[23], _809), 0.0);
    VARYING8 = TEXCOORD2.w - 1.0;
}

