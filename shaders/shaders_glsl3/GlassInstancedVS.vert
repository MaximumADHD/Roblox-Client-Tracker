#version 150

const vec3 _273[16] = vec3[](vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0));
const vec3 _285[16] = vec3[](vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.699999988079071044921875, 0.699999988079071044921875, 0.0), vec3(0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, -1.0), vec3(0.0, 0.0, 1.0));

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
    int _720 = int(NORMAL.w);
    vec3 _761 = normalize(((NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0)) / (CB1[gl_InstanceID * 7 + 3].xyz + vec3(0.001000000047497451305389404296875)));
    vec3 _767 = POSITION.xyz * CB1[gl_InstanceID * 7 + 3].xyz;
    vec4 _769 = vec4(_767.x, _767.y, _767.z, POSITION.w);
    float _772 = dot(CB1[gl_InstanceID * 7 + 0], _769);
    float _775 = dot(CB1[gl_InstanceID * 7 + 1], _769);
    float _778 = dot(CB1[gl_InstanceID * 7 + 2], _769);
    vec3 _779 = vec3(_772, _775, _778);
    float _783 = dot(CB1[gl_InstanceID * 7 + 0].xyz, _761);
    float _787 = dot(CB1[gl_InstanceID * 7 + 1].xyz, _761);
    float _791 = dot(CB1[gl_InstanceID * 7 + 2].xyz, _761);
    vec3 _792 = vec3(_783, _787, _791);
    vec2 _1152 = vec2(0.0);
    _1152.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, _273[_720]);
    vec2 _1154 = _1152;
    _1154.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, _285[_720]);
    vec2 _1156 = vec2(0.0);
    _1156.x = dot(CB1[gl_InstanceID * 7 + 3].xyz, _273[_720]);
    vec2 _1158 = _1156;
    _1158.y = dot(CB1[gl_InstanceID * 7 + 3].xyz, _285[_720]);
    vec4 _849 = CB1[gl_InstanceID * 7 + 4] * mix(COLOR0 * 0.0039215688593685626983642578125, vec4(1.0), vec4(float(CB1[gl_InstanceID * 7 + 3].w > 0.0)));
    vec3 _864 = -CB0[11].xyz;
    float _865 = dot(_792, _864);
    vec3 _872 = CB0[7].xyz - _779;
    vec4 _893 = vec4(_772, _775, _778, 1.0);
    vec4 _896 = _893 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _901 = vec4((TEXCOORD0.xy * _1154) + CB1[gl_InstanceID * 7 + 6].xy, 0.0, 0.0);
    vec4 _906 = vec4(TEXCOORD0.zw * _1158, 0.0, 0.0);
    float _932 = _896.w;
    vec4 _936 = vec4(_872, _932);
    vec4 _949 = (vec4(10.0) * CB0[24].z) + vec4((0.5 * _932) * CB0[24].y);
    float _969 = _849.w * 2.0;
    float _971 = clamp(_969 - 1.0, 0.0, 1.0);
    float _975 = clamp(_969, 0.0, 1.0);
    float _993 = (clamp(2.0 - (dot(_792, normalize(_936.xyz)) * 3.0), 0.0, 1.0) * 0.300000011920928955078125) * _975;
    vec4 _1169 = _849;
    _1169.w = mix(_971, 1.0, _993);
    vec4 _1171 = vec4(dot(CB0[21], _893), dot(CB0[22], _893), dot(CB0[23], _893), 0.0);
    _1171.w = mix((CB1[gl_InstanceID * 7 + 5].w * 0.0039215688593685626983642578125) * _971, 1.0, _993);
    gl_Position = _896;
    VARYING0 = vec4(_901.x, _901.y, _949.x, _949.y);
    VARYING1 = vec4(_906.x, _906.y, _949.z, _949.w);
    VARYING2 = _1169;
    VARYING3 = vec4(((_779 + (_792 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, 0.0);
    VARYING4 = _936;
    VARYING5 = vec4(_783, _787, _791, CB1[gl_InstanceID * 7 + 6].w);
    VARYING6 = vec4((CB0[10].xyz * max(_865, 0.0)) + (CB0[12].xyz * max(-_865, 0.0)), (((float(_865 > 0.0) * pow(clamp(dot(_792, normalize(_864 + normalize(_872))), 0.0, 1.0), CB1[gl_InstanceID * 7 + 6].w)) * _975) * (CB1[gl_InstanceID * 7 + 6].z * 0.0039215688593685626983642578125)) * CB0[24].w);
    VARYING7 = _1171;
    VARYING8 = TEXCOORD2.w - 1.0;
}

