#version 150

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
in vec4 POSITION;
in vec4 NORMAL;
in vec4 TEXCOORD0;
in vec4 TEXCOORD1;
out vec3 VARYING0;
out vec4 VARYING1;
out vec4 VARYING2;
out vec4 VARYING3;
out vec4 VARYING4;
out vec3 VARYING5;
out vec3 VARYING6;

void main()
{
    vec3 _477 = (POSITION.xyz * CB1[0].w) + CB1[0].xyz;
    vec3 _483 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec4 _488 = vec4(_477, 1.0);
    vec4 _491 = _488 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _913 = _491;
    _913.z = _491.z - (float(POSITION.w < 0.0) * 0.00200000009499490261077880859375);
    int _643 = int(TEXCOORD1.x);
    int _656 = 36 + int(TEXCOORD0.x);
    vec2 _668 = vec2(dot(_477, CB2[_643 * 1 + 0].xyz), dot(_477, CB2[(18 + _643) * 1 + 0].xyz)) * CB2[_656 * 1 + 0].x;
    float _674 = ((NORMAL.w * 0.0078125) - 1.0) * CB2[_656 * 1 + 0].z;
    int _714 = int(TEXCOORD1.y);
    int _727 = 36 + int(TEXCOORD0.y);
    vec2 _739 = vec2(dot(_477, CB2[_714 * 1 + 0].xyz), dot(_477, CB2[(18 + _714) * 1 + 0].xyz)) * CB2[_727 * 1 + 0].x;
    float _745 = ((TEXCOORD0.w * 0.0078125) - 1.0) * CB2[_727 * 1 + 0].z;
    int _785 = int(TEXCOORD1.z);
    int _798 = 36 + int(TEXCOORD0.z);
    vec2 _810 = vec2(dot(_477, CB2[_785 * 1 + 0].xyz), dot(_477, CB2[(18 + _785) * 1 + 0].xyz)) * CB2[_798 * 1 + 0].x;
    float _816 = ((TEXCOORD1.w * 0.0078125) - 1.0) * CB2[_798 * 1 + 0].z;
    bvec3 _576 = equal(abs(POSITION.www), vec3(1.0, 2.0, 3.0));
    float _583 = dot(_483, -CB0[11].xyz);
    gl_Position = _913;
    VARYING0 = vec3(_576.x ? vec3(1.0).x : vec3(0.0).x, _576.y ? vec3(1.0).y : vec3(0.0).y, _576.z ? vec3(1.0).z : vec3(0.0).z);
    VARYING1 = vec4(((_668 * sqrt(1.0 - (_674 * _674))) + (_668.yx * vec2(_674, -_674))) + (vec2(NORMAL.w, floor(NORMAL.w * 2.6651442050933837890625)) * CB2[_656 * 1 + 0].y), ((_739 * sqrt(1.0 - (_745 * _745))) + (_739.yx * vec2(_745, -_745))) + (vec2(TEXCOORD0.w, floor(TEXCOORD0.w * 2.6651442050933837890625)) * CB2[_727 * 1 + 0].y));
    VARYING2 = vec4(TEXCOORD0.x, 0.0, TEXCOORD0.y, 0.0);
    VARYING3 = vec4(((_810 * sqrt(1.0 - (_816 * _816))) + (_810.yx * vec2(_816, -_816))) + (vec2(TEXCOORD1.w, floor(TEXCOORD1.w * 2.6651442050933837890625)) * CB2[_798 * 1 + 0].y), TEXCOORD0.z, 0.0);
    VARYING4 = vec4(((_477 + (_483 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, (CB0[13].x * length(CB0[7].xyz - _477)) + CB0[13].y);
    VARYING5 = vec3(dot(CB0[21], _488), dot(CB0[22], _488), dot(CB0[23], _488));
    VARYING6 = (CB0[10].xyz * max(_583, 0.0)) + (CB0[12].xyz * max(-_583, 0.0));
}

