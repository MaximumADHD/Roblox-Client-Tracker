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

uniform vec4 CB0[32];
uniform vec4 CB2[74];
uniform vec4 CB1[1];
attribute vec4 POSITION;
attribute vec4 NORMAL;
attribute vec4 TEXCOORD0;
attribute vec4 TEXCOORD1;
varying vec3 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec3 VARYING5;
varying vec3 VARYING6;

void main()
{
    vec3 _440 = (POSITION.xyz * CB1[0].w) + CB1[0].xyz;
    vec3 _446 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec4 _451 = vec4(_440, 1.0);
    vec4 _454 = _451 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _813 = _454;
    _813.z = _454.z - (float(POSITION.w < 0.0) * 0.00200000009499490261077880859375);
    int _604 = int(TEXCOORD1.x);
    int _617 = 36 + int(TEXCOORD0.x);
    int _654 = int(TEXCOORD1.y);
    int _667 = 36 + int(TEXCOORD0.y);
    int _704 = int(TEXCOORD1.z);
    int _717 = 36 + int(TEXCOORD0.z);
    bvec3 _539 = equal(abs(POSITION.www), vec3(1.0, 2.0, 3.0));
    float _546 = dot(_446, -CB0[11].xyz);
    gl_Position = _813;
    VARYING0 = vec3(_539.x ? vec3(1.0).x : vec3(0.0).x, _539.y ? vec3(1.0).y : vec3(0.0).y, _539.z ? vec3(1.0).z : vec3(0.0).z);
    VARYING1 = vec4((vec2(dot(_440, CB2[_604 * 1 + 0].xyz), dot(_440, CB2[(18 + _604) * 1 + 0].xyz)) * CB2[_617 * 1 + 0].x) + (vec2(NORMAL.w, floor(NORMAL.w * 2.6651442050933837890625)) * CB2[_617 * 1 + 0].y), (vec2(dot(_440, CB2[_654 * 1 + 0].xyz), dot(_440, CB2[(18 + _654) * 1 + 0].xyz)) * CB2[_667 * 1 + 0].x) + (vec2(TEXCOORD0.w, floor(TEXCOORD0.w * 2.6651442050933837890625)) * CB2[_667 * 1 + 0].y));
    VARYING2 = vec4(CB2[_617 * 1 + 0].zw, CB2[_667 * 1 + 0].zw);
    VARYING3 = vec4((vec2(dot(_440, CB2[_704 * 1 + 0].xyz), dot(_440, CB2[(18 + _704) * 1 + 0].xyz)) * CB2[_717 * 1 + 0].x) + (vec2(TEXCOORD1.w, floor(TEXCOORD1.w * 2.6651442050933837890625)) * CB2[_717 * 1 + 0].y), CB2[_717 * 1 + 0].zw);
    VARYING4 = vec4(((_440 + (_446 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, (CB0[13].x * length(CB0[7].xyz - _440)) + CB0[13].y);
    VARYING5 = vec3(dot(CB0[21], _451), dot(CB0[22], _451), dot(CB0[23], _451));
    VARYING6 = (CB0[10].xyz * max(_546, 0.0)) + (CB0[12].xyz * max(-_546, 0.0));
}

