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
    vec3 _452 = (POSITION.xyz * CB1[0].w) + CB1[0].xyz;
    vec3 _458 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec4 _466 = vec4(_452, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _876 = _466;
    _876.z = _466.z - (float(POSITION.w < 0.0) * 0.00200000009499490261077880859375);
    vec3 _482 = CB0[7].xyz - _452;
    int _597 = int(TEXCOORD1.x);
    int _610 = 36 + int(TEXCOORD0.x);
    vec2 _622 = vec2(dot(_452, CB2[_597 * 1 + 0].xyz), dot(_452, CB2[(18 + _597) * 1 + 0].xyz)) * CB2[_610 * 1 + 0].x;
    float _628 = ((NORMAL.w * 0.0078125) - 1.0) * CB2[_610 * 1 + 0].z;
    int _668 = int(TEXCOORD1.y);
    int _681 = 36 + int(TEXCOORD0.y);
    vec2 _693 = vec2(dot(_452, CB2[_668 * 1 + 0].xyz), dot(_452, CB2[(18 + _668) * 1 + 0].xyz)) * CB2[_681 * 1 + 0].x;
    float _699 = ((TEXCOORD0.w * 0.0078125) - 1.0) * CB2[_681 * 1 + 0].z;
    int _739 = int(TEXCOORD1.z);
    int _752 = 36 + int(TEXCOORD0.z);
    vec2 _764 = vec2(dot(_452, CB2[_739 * 1 + 0].xyz), dot(_452, CB2[(18 + _739) * 1 + 0].xyz)) * CB2[_752 * 1 + 0].x;
    float _770 = ((TEXCOORD1.w * 0.0078125) - 1.0) * CB2[_752 * 1 + 0].z;
    bvec3 _550 = equal(abs(POSITION.www), vec3(1.0, 2.0, 3.0));
    bvec3 _569 = greaterThan(TEXCOORD1.xyz, vec3(7.5));
    gl_Position = _876;
    VARYING0 = vec3(_550.x ? vec3(1.0).x : vec3(0.0).x, _550.y ? vec3(1.0).y : vec3(0.0).y, _550.z ? vec3(1.0).z : vec3(0.0).z);
    VARYING1 = vec4(((_622 * sqrt(1.0 - (_628 * _628))) + (_622.yx * vec2(_628, -_628))) + (vec2(NORMAL.w, floor(NORMAL.w * 2.6651442050933837890625)) * CB2[_610 * 1 + 0].y), ((_693 * sqrt(1.0 - (_699 * _699))) + (_693.yx * vec2(_699, -_699))) + (vec2(TEXCOORD0.w, floor(TEXCOORD0.w * 2.6651442050933837890625)) * CB2[_681 * 1 + 0].y));
    VARYING2 = vec4(TEXCOORD0.x, 0.0, TEXCOORD0.y, 0.0);
    VARYING3 = vec4(((_764 * sqrt(1.0 - (_770 * _770))) + (_764.yx * vec2(_770, -_770))) + (vec2(TEXCOORD1.w, floor(TEXCOORD1.w * 2.6651442050933837890625)) * CB2[_752 * 1 + 0].y), TEXCOORD0.z, 0.0);
    VARYING4 = vec4(((_452 + (_458 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, (CB0[13].x * length(_482)) + CB0[13].y);
    VARYING5 = _452;
    VARYING6 = _458;
    VARYING7 = vec4(_482, _466.w);
    VARYING8 = vec3(_569.x ? vec3(1.0).x : vec3(0.0).x, _569.y ? vec3(1.0).y : vec3(0.0).y, _569.z ? vec3(1.0).z : vec3(0.0).z);
}

