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
out float VARYING7;

void main()
{
    int _623 = int(NORMAL.w);
    vec3 _664 = normalize(((NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0)) / (CB1[gl_InstanceID * 7 + 3].xyz + vec3(0.001000000047497451305389404296875)));
    vec3 _670 = POSITION.xyz * CB1[gl_InstanceID * 7 + 3].xyz;
    vec4 _672 = vec4(_670.x, _670.y, _670.z, POSITION.w);
    float _675 = dot(CB1[gl_InstanceID * 7 + 0], _672);
    float _678 = dot(CB1[gl_InstanceID * 7 + 1], _672);
    float _681 = dot(CB1[gl_InstanceID * 7 + 2], _672);
    vec3 _682 = vec3(_675, _678, _681);
    vec3 _695 = vec3(dot(CB1[gl_InstanceID * 7 + 0].xyz, _664), dot(CB1[gl_InstanceID * 7 + 1].xyz, _664), dot(CB1[gl_InstanceID * 7 + 2].xyz, _664));
    vec2 _976 = vec2(0.0);
    _976.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, _260[_623]);
    vec2 _978 = _976;
    _978.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, _272[_623]);
    vec2 _980 = vec2(0.0);
    _980.x = dot(CB1[gl_InstanceID * 7 + 3].xyz, _260[_623]);
    vec2 _982 = _980;
    _982.y = dot(CB1[gl_InstanceID * 7 + 3].xyz, _272[_623]);
    vec3 _767 = -CB0[11].xyz;
    float _768 = dot(_695, _767);
    vec3 _775 = CB0[7].xyz - _682;
    vec4 _796 = vec4(_675, _678, _681, 1.0);
    vec4 _799 = _796 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    gl_Position = _799;
    VARYING0 = vec4((TEXCOORD0.xy * _978) + CB1[gl_InstanceID * 7 + 6].xy, 0.0, 0.0);
    VARYING1 = vec4(TEXCOORD0.zw * _982, 0.0, 0.0);
    VARYING2 = CB1[gl_InstanceID * 7 + 4] * mix(COLOR0 * 0.0039215688593685626983642578125, vec4(1.0), vec4(float(CB1[gl_InstanceID * 7 + 3].w > 0.0)));
    VARYING3 = vec4(((_682 + (_695 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, 0.0);
    VARYING4 = vec4(_775, _799.w);
    VARYING5 = vec4((CB0[10].xyz * max(_768, 0.0)) + (CB0[12].xyz * max(-_768, 0.0)), ((float(_768 > 0.0) * pow(clamp(dot(_695, normalize(_767 + normalize(_775))), 0.0, 1.0), CB1[gl_InstanceID * 7 + 6].w)) * (CB1[gl_InstanceID * 7 + 6].z * 0.0039215688593685626983642578125)) * CB0[24].w);
    VARYING6 = vec4(dot(CB0[21], _796), dot(CB0[22], _796), dot(CB0[23], _796), 0.0);
    VARYING7 = TEXCOORD2.w - 1.0;
}

