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
varying vec4 VARYING7;
varying vec3 VARYING8;

void main()
{
    vec3 _444 = (POSITION.xyz * CB1[0].w) + CB1[0].xyz;
    vec3 _450 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec4 _455 = vec4(_444, 1.0);
    vec4 _458 = _455 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _826 = _458;
    _826.z = _458.z - (float(POSITION.w < 0.0) * 0.00200000009499490261077880859375);
    vec3 _474 = CB0[7].xyz - _444;
    int _608 = int(TEXCOORD1.x);
    int _621 = 36 + int(TEXCOORD0.x);
    int _658 = int(TEXCOORD1.y);
    int _671 = 36 + int(TEXCOORD0.y);
    int _708 = int(TEXCOORD1.z);
    int _721 = 36 + int(TEXCOORD0.z);
    bvec3 _543 = equal(abs(POSITION.www), vec3(1.0, 2.0, 3.0));
    bvec3 _562 = greaterThan(TEXCOORD1.xyz, vec3(7.5));
    gl_Position = _826;
    VARYING0 = vec3(_543.x ? vec3(1.0).x : vec3(0.0).x, _543.y ? vec3(1.0).y : vec3(0.0).y, _543.z ? vec3(1.0).z : vec3(0.0).z);
    VARYING1 = vec4((vec2(dot(_444, CB2[_608 * 1 + 0].xyz), dot(_444, CB2[(18 + _608) * 1 + 0].xyz)) * CB2[_621 * 1 + 0].x) + (vec2(NORMAL.w, floor(NORMAL.w * 2.6651442050933837890625)) * CB2[_621 * 1 + 0].y), (vec2(dot(_444, CB2[_658 * 1 + 0].xyz), dot(_444, CB2[(18 + _658) * 1 + 0].xyz)) * CB2[_671 * 1 + 0].x) + (vec2(TEXCOORD0.w, floor(TEXCOORD0.w * 2.6651442050933837890625)) * CB2[_671 * 1 + 0].y));
    VARYING2 = vec4(CB2[_621 * 1 + 0].zw, CB2[_671 * 1 + 0].zw);
    VARYING3 = vec4((vec2(dot(_444, CB2[_708 * 1 + 0].xyz), dot(_444, CB2[(18 + _708) * 1 + 0].xyz)) * CB2[_721 * 1 + 0].x) + (vec2(TEXCOORD1.w, floor(TEXCOORD1.w * 2.6651442050933837890625)) * CB2[_721 * 1 + 0].y), CB2[_721 * 1 + 0].zw);
    VARYING4 = vec4(((_444 + (_450 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, (CB0[13].x * length(_474)) + CB0[13].y);
    VARYING5 = vec3(dot(CB0[21], _455), dot(CB0[22], _455), dot(CB0[23], _455));
    VARYING6 = _450;
    VARYING7 = vec4(_474, _458.w);
    VARYING8 = vec3(_562.x ? vec3(1.0).x : vec3(0.0).x, _562.y ? vec3(1.0).y : vec3(0.0).y, _562.z ? vec3(1.0).z : vec3(0.0).z);
}

