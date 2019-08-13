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
varying vec4 VARYING0;
varying vec3 VARYING1;
varying vec2 VARYING2;
varying vec2 VARYING3;
varying vec2 VARYING4;
varying vec4 VARYING5;
varying vec3 VARYING6;
varying vec4 VARYING7;

void main()
{
    vec3 _374 = (POSITION.xyz * CB1[0].w) + CB1[0].xyz;
    vec3 _380 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    bvec3 _385 = equal(abs(POSITION.www), vec3(1.0, 2.0, 3.0));
    vec3 _386 = vec3(_385.x ? vec3(1.0).x : vec3(0.0).x, _385.y ? vec3(1.0).y : vec3(0.0).y, _385.z ? vec3(1.0).z : vec3(0.0).z);
    vec4 _400 = vec4(_374, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _662 = _400;
    _662.z = _400.z - (float(POSITION.w < 0.0) * 0.00200000009499490261077880859375);
    vec3 _416 = CB0[7].xyz - _374;
    int _500 = int(TEXCOORD1.x);
    int _533 = int(TEXCOORD1.y);
    int _566 = int(TEXCOORD1.z);
    vec4 _670 = vec4(_386.x, _386.y, _386.z, vec4(0.0).w);
    _670.w = dot(_386, TEXCOORD0.xyz) * 0.0039215688593685626983642578125;
    bvec3 _475 = greaterThan(TEXCOORD1.xyz, vec3(7.5));
    gl_Position = _662;
    VARYING0 = _670;
    VARYING1 = vec3(_475.x ? vec3(1.0).x : vec3(0.0).x, _475.y ? vec3(1.0).y : vec3(0.0).y, _475.z ? vec3(1.0).z : vec3(0.0).z);
    VARYING2 = (vec2(dot(_374, CB2[_500 * 1 + 0].xyz), dot(_374, CB2[(18 + _500) * 1 + 0].xyz)) * 0.0500000007450580596923828125) + (vec2(NORMAL.w, floor(NORMAL.w * 2.6651442050933837890625)) * 0.100000001490116119384765625);
    VARYING3 = (vec2(dot(_374, CB2[_533 * 1 + 0].xyz), dot(_374, CB2[(18 + _533) * 1 + 0].xyz)) * 0.0500000007450580596923828125) + (vec2(TEXCOORD0.w, floor(TEXCOORD0.w * 2.6651442050933837890625)) * 0.100000001490116119384765625);
    VARYING4 = (vec2(dot(_374, CB2[_566 * 1 + 0].xyz), dot(_374, CB2[(18 + _566) * 1 + 0].xyz)) * 0.0500000007450580596923828125) + (vec2(TEXCOORD1.w, floor(TEXCOORD1.w * 2.6651442050933837890625)) * 0.100000001490116119384765625);
    VARYING5 = vec4(((_374 + (_380 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, (CB0[13].x * length(_416)) + CB0[13].y);
    VARYING6 = _380;
    VARYING7 = vec4(_416, _400.w);
}

