#version 110

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

struct Params
{
    vec4 WaveParams;
    vec4 WaterColor;
    vec4 WaterParams;
};

uniform vec4 CB0[32];
uniform vec4 CB3[3];
uniform vec4 CB2[74];
uniform vec4 CB1[1];
attribute vec4 POSITION;
attribute vec4 NORMAL;
attribute vec4 TEXCOORD0;
attribute vec4 TEXCOORD1;
varying vec4 VARYING0;
varying vec3 VARYING1;
varying vec2 VARYING2;
varying vec2 VARYING3;
varying vec2 VARYING4;
varying vec4 VARYING5;
varying vec3 VARYING6;
varying vec4 VARYING7;
varying vec4 VARYING8;

void main()
{
    vec3 _488 = (POSITION.xyz * CB1[0].w) + CB1[0].xyz;
    vec3 _494 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    bvec3 _499 = equal(abs(POSITION.www), vec3(1.0, 2.0, 3.0));
    vec3 _500 = vec3(_499.x ? vec3(1.0).x : vec3(0.0).x, _499.y ? vec3(1.0).y : vec3(0.0).y, _499.z ? vec3(1.0).z : vec3(0.0).z);
    float _506 = dot(_500, TEXCOORD0.xyz) * 0.0039215688593685626983642578125;
    float _625 = _488.z;
    float _627 = _488.x;
    float _660 = _488.y + (((sin(((_625 - _627) * CB3[0].x) - CB3[0].y) + sin(((_625 + _627) * CB3[0].x) + CB3[0].y)) * CB3[0].z) * (_506 * clamp(1.0 - (dot(_488 - CB0[7].xyz, -CB0[6].xyz) * CB0[24].y), 0.0, 1.0)));
    vec3 _865 = _488;
    _865.y = _660;
    vec4 _533 = vec4(_627, _660, _625, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _869 = _533;
    _869.z = _533.z - (float(POSITION.w < 0.0) * 0.00200000009499490261077880859375);
    vec3 _549 = CB0[7].xyz - _865;
    int _684 = int(TEXCOORD1.x);
    int _717 = int(TEXCOORD1.y);
    int _750 = int(TEXCOORD1.z);
    vec4 _877 = vec4(_500.x, _500.y, _500.z, vec4(0.0).w);
    _877.w = _506;
    float _599 = _533.w;
    bvec3 _608 = greaterThan(TEXCOORD1.xyz, vec3(7.5));
    vec2 _786 = (_869.xy * 0.5) + vec2(0.5 * _599);
    gl_Position = _869;
    VARYING0 = _877;
    VARYING1 = vec3(_608.x ? vec3(1.0).x : vec3(0.0).x, _608.y ? vec3(1.0).y : vec3(0.0).y, _608.z ? vec3(1.0).z : vec3(0.0).z);
    VARYING2 = (vec2(dot(_865, CB2[_684 * 1 + 0].xyz), dot(_865, CB2[(18 + _684) * 1 + 0].xyz)) * 0.0500000007450580596923828125) + (vec2(NORMAL.w, floor(NORMAL.w * 2.6651442050933837890625)) * 0.100000001490116119384765625);
    VARYING3 = (vec2(dot(_865, CB2[_717 * 1 + 0].xyz), dot(_865, CB2[(18 + _717) * 1 + 0].xyz)) * 0.0500000007450580596923828125) + (vec2(TEXCOORD0.w, floor(TEXCOORD0.w * 2.6651442050933837890625)) * 0.100000001490116119384765625);
    VARYING4 = (vec2(dot(_865, CB2[_750 * 1 + 0].xyz), dot(_865, CB2[(18 + _750) * 1 + 0].xyz)) * 0.0500000007450580596923828125) + (vec2(TEXCOORD1.w, floor(TEXCOORD1.w * 2.6651442050933837890625)) * 0.100000001490116119384765625);
    VARYING5 = vec4(((_865 + (_494 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, (CB0[13].x * length(_549)) + CB0[13].y);
    VARYING6 = _494;
    VARYING7 = vec4(_549, _599);
    VARYING8 = vec4(_786.x, _786.y, _869.z, _869.w);
}

