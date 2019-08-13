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
varying vec4 VARYING9;

void main()
{
    vec3 _460 = (POSITION.xyz * CB1[0].w) + CB1[0].xyz;
    vec3 _466 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec4 _471 = vec4(_460, 1.0);
    vec4 _474 = _471 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _854 = _474;
    _854.z = _474.z - (float(POSITION.w < 0.0) * 0.00200000009499490261077880859375);
    vec3 _490 = CB0[7].xyz - _460;
    int _632 = int(TEXCOORD1.x);
    int _645 = 36 + int(TEXCOORD0.x);
    int _682 = int(TEXCOORD1.y);
    int _695 = 36 + int(TEXCOORD0.y);
    int _732 = int(TEXCOORD1.z);
    int _745 = 36 + int(TEXCOORD0.z);
    bvec3 _559 = equal(abs(POSITION.www), vec3(1.0, 2.0, 3.0));
    bvec3 _578 = greaterThan(TEXCOORD1.xyz, vec3(7.5));
    gl_Position = _854;
    VARYING0 = vec3(_559.x ? vec3(1.0).x : vec3(0.0).x, _559.y ? vec3(1.0).y : vec3(0.0).y, _559.z ? vec3(1.0).z : vec3(0.0).z);
    VARYING1 = vec4((vec2(dot(_460, CB2[_632 * 1 + 0].xyz), dot(_460, CB2[(18 + _632) * 1 + 0].xyz)) * CB2[_645 * 1 + 0].x) + (vec2(NORMAL.w, floor(NORMAL.w * 2.6651442050933837890625)) * CB2[_645 * 1 + 0].y), (vec2(dot(_460, CB2[_682 * 1 + 0].xyz), dot(_460, CB2[(18 + _682) * 1 + 0].xyz)) * CB2[_695 * 1 + 0].x) + (vec2(TEXCOORD0.w, floor(TEXCOORD0.w * 2.6651442050933837890625)) * CB2[_695 * 1 + 0].y));
    VARYING2 = vec4(CB2[_645 * 1 + 0].zw, CB2[_695 * 1 + 0].zw);
    VARYING3 = vec4((vec2(dot(_460, CB2[_732 * 1 + 0].xyz), dot(_460, CB2[(18 + _732) * 1 + 0].xyz)) * CB2[_745 * 1 + 0].x) + (vec2(TEXCOORD1.w, floor(TEXCOORD1.w * 2.6651442050933837890625)) * CB2[_745 * 1 + 0].y), CB2[_745 * 1 + 0].zw);
    VARYING4 = vec4(((_460 + (_466 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, (CB0[13].x * length(_490)) + CB0[13].y);
    VARYING5 = vec3(dot(CB0[21], _471), dot(CB0[22], _471), dot(CB0[23], _471));
    VARYING6 = _466;
    VARYING7 = vec4(_490, _474.w);
    VARYING8 = vec3(_578.x ? vec3(1.0).x : vec3(0.0).x, _578.y ? vec3(1.0).y : vec3(0.0).y, _578.z ? vec3(1.0).z : vec3(0.0).z);
    VARYING9 = vec4(TEXCOORD0.xyz, 0.0);
}

