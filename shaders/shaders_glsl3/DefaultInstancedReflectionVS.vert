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
    int _662 = int(NORMAL.w);
    vec3 _703 = normalize(((NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0)) / (CB1[gl_InstanceID * 7 + 3].xyz + vec3(0.001000000047497451305389404296875)));
    vec3 _709 = POSITION.xyz * CB1[gl_InstanceID * 7 + 3].xyz;
    vec4 _711 = vec4(_709.x, _709.y, _709.z, POSITION.w);
    float _714 = dot(CB1[gl_InstanceID * 7 + 0], _711);
    float _717 = dot(CB1[gl_InstanceID * 7 + 1], _711);
    float _720 = dot(CB1[gl_InstanceID * 7 + 2], _711);
    vec3 _721 = vec3(_714, _717, _720);
    float _725 = dot(CB1[gl_InstanceID * 7 + 0].xyz, _703);
    float _729 = dot(CB1[gl_InstanceID * 7 + 1].xyz, _703);
    float _733 = dot(CB1[gl_InstanceID * 7 + 2].xyz, _703);
    vec3 _734 = vec3(_725, _729, _733);
    vec2 _1054 = vec2(0.0);
    _1054.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, _260[_662]);
    vec2 _1056 = _1054;
    _1056.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, _272[_662]);
    vec2 _1058 = vec2(0.0);
    _1058.x = dot(CB1[gl_InstanceID * 7 + 3].xyz, _260[_662]);
    vec2 _1060 = _1058;
    _1060.y = dot(CB1[gl_InstanceID * 7 + 3].xyz, _272[_662]);
    vec3 _806 = -CB0[11].xyz;
    float _807 = dot(_734, _806);
    vec3 _814 = CB0[7].xyz - _721;
    vec4 _835 = vec4(_714, _717, _720, 1.0);
    vec4 _838 = _835 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _843 = vec4((TEXCOORD0.xy * _1056) + CB1[gl_InstanceID * 7 + 6].xy, 0.0, 0.0);
    vec4 _848 = vec4(TEXCOORD0.zw * _1060, 0.0, 0.0);
    float _874 = _838.w;
    vec4 _891 = (vec4(10.0) * CB0[24].z) + vec4((0.5 * _874) * CB0[24].y);
    vec4 _1069 = vec4(dot(CB0[21], _835), dot(CB0[22], _835), dot(CB0[23], _835), 0.0);
    _1069.w = CB1[gl_InstanceID * 7 + 5].w * 0.0039215688593685626983642578125;
    gl_Position = _838;
    VARYING0 = vec4(_843.x, _843.y, _891.x, _891.y);
    VARYING1 = vec4(_848.x, _848.y, _891.z, _891.w);
    VARYING2 = CB1[gl_InstanceID * 7 + 4] * mix(COLOR0 * 0.0039215688593685626983642578125, vec4(1.0), vec4(float(CB1[gl_InstanceID * 7 + 3].w > 0.0)));
    VARYING3 = vec4(((_721 + (_734 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, 0.0);
    VARYING4 = vec4(_814, _874);
    VARYING5 = vec4(_725, _729, _733, CB1[gl_InstanceID * 7 + 6].w);
    VARYING6 = vec4((CB0[10].xyz * max(_807, 0.0)) + (CB0[12].xyz * max(-_807, 0.0)), ((float(_807 > 0.0) * pow(clamp(dot(_734, normalize(_806 + normalize(_814))), 0.0, 1.0), CB1[gl_InstanceID * 7 + 6].w)) * (CB1[gl_InstanceID * 7 + 6].z * 0.0039215688593685626983642578125)) * CB0[24].w);
    VARYING7 = _1069;
    VARYING8 = TEXCOORD2.w - 1.0;
}

