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
out vec4 VARYING7;
out vec3 VARYING8;

void main()
{
    vec3 _481 = (POSITION.xyz * CB1[0].w) + CB1[0].xyz;
    vec3 _487 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec4 _492 = vec4(_481, 1.0);
    vec4 _495 = _492 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _926 = _495;
    _926.z = _495.z - (float(POSITION.w < 0.0) * 0.00200000009499490261077880859375);
    vec3 _511 = CB0[7].xyz - _481;
    int _647 = int(TEXCOORD1.x);
    int _660 = 36 + int(TEXCOORD0.x);
    vec2 _672 = vec2(dot(_481, CB2[_647 * 1 + 0].xyz), dot(_481, CB2[(18 + _647) * 1 + 0].xyz)) * CB2[_660 * 1 + 0].x;
    float _678 = ((NORMAL.w * 0.0078125) - 1.0) * CB2[_660 * 1 + 0].z;
    int _718 = int(TEXCOORD1.y);
    int _731 = 36 + int(TEXCOORD0.y);
    vec2 _743 = vec2(dot(_481, CB2[_718 * 1 + 0].xyz), dot(_481, CB2[(18 + _718) * 1 + 0].xyz)) * CB2[_731 * 1 + 0].x;
    float _749 = ((TEXCOORD0.w * 0.0078125) - 1.0) * CB2[_731 * 1 + 0].z;
    int _789 = int(TEXCOORD1.z);
    int _802 = 36 + int(TEXCOORD0.z);
    vec2 _814 = vec2(dot(_481, CB2[_789 * 1 + 0].xyz), dot(_481, CB2[(18 + _789) * 1 + 0].xyz)) * CB2[_802 * 1 + 0].x;
    float _820 = ((TEXCOORD1.w * 0.0078125) - 1.0) * CB2[_802 * 1 + 0].z;
    bvec3 _580 = equal(abs(POSITION.www), vec3(1.0, 2.0, 3.0));
    bvec3 _599 = greaterThan(TEXCOORD1.xyz, vec3(7.5));
    gl_Position = _926;
    VARYING0 = vec3(_580.x ? vec3(1.0).x : vec3(0.0).x, _580.y ? vec3(1.0).y : vec3(0.0).y, _580.z ? vec3(1.0).z : vec3(0.0).z);
    VARYING1 = vec4(((_672 * sqrt(1.0 - (_678 * _678))) + (_672.yx * vec2(_678, -_678))) + (vec2(NORMAL.w, floor(NORMAL.w * 2.6651442050933837890625)) * CB2[_660 * 1 + 0].y), ((_743 * sqrt(1.0 - (_749 * _749))) + (_743.yx * vec2(_749, -_749))) + (vec2(TEXCOORD0.w, floor(TEXCOORD0.w * 2.6651442050933837890625)) * CB2[_731 * 1 + 0].y));
    VARYING2 = vec4(TEXCOORD0.x, 0.0, TEXCOORD0.y, 0.0);
    VARYING3 = vec4(((_814 * sqrt(1.0 - (_820 * _820))) + (_814.yx * vec2(_820, -_820))) + (vec2(TEXCOORD1.w, floor(TEXCOORD1.w * 2.6651442050933837890625)) * CB2[_802 * 1 + 0].y), TEXCOORD0.z, 0.0);
    VARYING4 = vec4(((_481 + (_487 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, (CB0[13].x * length(_511)) + CB0[13].y);
    VARYING5 = vec3(dot(CB0[21], _492), dot(CB0[22], _492), dot(CB0[23], _492));
    VARYING6 = _487;
    VARYING7 = vec4(_511, _495.w);
    VARYING8 = vec3(_599.x ? vec3(1.0).x : vec3(0.0).x, _599.y ? vec3(1.0).y : vec3(0.0).y, _599.z ? vec3(1.0).z : vec3(0.0).z);
}

