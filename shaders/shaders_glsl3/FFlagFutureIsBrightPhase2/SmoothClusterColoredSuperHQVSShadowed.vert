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
out vec4 VARYING9;

void main()
{
    vec3 _468 = (POSITION.xyz * CB1[0].w) + CB1[0].xyz;
    vec3 _474 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec4 _482 = vec4(_468, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _904 = _482;
    _904.z = _482.z - (float(POSITION.w < 0.0) * 0.00200000009499490261077880859375);
    vec3 _498 = CB0[7].xyz - _468;
    int _621 = int(TEXCOORD1.x);
    int _634 = 36 + int(TEXCOORD0.x);
    vec2 _646 = vec2(dot(_468, CB2[_621 * 1 + 0].xyz), dot(_468, CB2[(18 + _621) * 1 + 0].xyz)) * CB2[_634 * 1 + 0].x;
    float _652 = ((NORMAL.w * 0.0078125) - 1.0) * CB2[_634 * 1 + 0].z;
    int _692 = int(TEXCOORD1.y);
    int _705 = 36 + int(TEXCOORD0.y);
    vec2 _717 = vec2(dot(_468, CB2[_692 * 1 + 0].xyz), dot(_468, CB2[(18 + _692) * 1 + 0].xyz)) * CB2[_705 * 1 + 0].x;
    float _723 = ((TEXCOORD0.w * 0.0078125) - 1.0) * CB2[_705 * 1 + 0].z;
    int _763 = int(TEXCOORD1.z);
    int _776 = 36 + int(TEXCOORD0.z);
    vec2 _788 = vec2(dot(_468, CB2[_763 * 1 + 0].xyz), dot(_468, CB2[(18 + _763) * 1 + 0].xyz)) * CB2[_776 * 1 + 0].x;
    float _794 = ((TEXCOORD1.w * 0.0078125) - 1.0) * CB2[_776 * 1 + 0].z;
    bvec3 _566 = equal(abs(POSITION.www), vec3(1.0, 2.0, 3.0));
    bvec3 _585 = greaterThan(TEXCOORD1.xyz, vec3(7.5));
    gl_Position = _904;
    VARYING0 = vec3(_566.x ? vec3(1.0).x : vec3(0.0).x, _566.y ? vec3(1.0).y : vec3(0.0).y, _566.z ? vec3(1.0).z : vec3(0.0).z);
    VARYING1 = vec4(((_646 * sqrt(1.0 - (_652 * _652))) + (_646.yx * vec2(_652, -_652))) + (vec2(NORMAL.w, floor(NORMAL.w * 2.6651442050933837890625)) * CB2[_634 * 1 + 0].y), ((_717 * sqrt(1.0 - (_723 * _723))) + (_717.yx * vec2(_723, -_723))) + (vec2(TEXCOORD0.w, floor(TEXCOORD0.w * 2.6651442050933837890625)) * CB2[_705 * 1 + 0].y));
    VARYING2 = vec4(TEXCOORD0.x, 0.0, TEXCOORD0.y, 0.0);
    VARYING3 = vec4(((_788 * sqrt(1.0 - (_794 * _794))) + (_788.yx * vec2(_794, -_794))) + (vec2(TEXCOORD1.w, floor(TEXCOORD1.w * 2.6651442050933837890625)) * CB2[_776 * 1 + 0].y), TEXCOORD0.z, 0.0);
    VARYING4 = vec4(((_468 + (_474 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, (CB0[13].x * length(_498)) + CB0[13].y);
    VARYING5 = _468;
    VARYING6 = _474;
    VARYING7 = vec4(_498, _482.w);
    VARYING8 = vec3(_585.x ? vec3(1.0).x : vec3(0.0).x, _585.y ? vec3(1.0).y : vec3(0.0).y, _585.z ? vec3(1.0).z : vec3(0.0).z);
    VARYING9 = vec4(TEXCOORD0.xyz, 0.0);
}

