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
uniform vec4 CB4[36];
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
    vec3 _500 = (POSITION.xyz * CB1[0].w) + CB1[0].xyz;
    vec3 _506 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec4 _514 = vec4(_500, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _967 = _514;
    _967.z = _514.z - (float(POSITION.w < 0.0) * 0.00200000009499490261077880859375);
    vec3 _530 = CB0[7].xyz - _500;
    int _678 = int(TEXCOORD1.x);
    int _691 = 36 + int(TEXCOORD0.x);
    vec2 _703 = vec2(dot(_500, CB2[_678 * 1 + 0].xyz), dot(_500, CB2[(18 + _678) * 1 + 0].xyz)) * CB2[_691 * 1 + 0].x;
    float _709 = ((NORMAL.w * 0.0078125) - 1.0) * CB2[_691 * 1 + 0].z;
    int _749 = int(TEXCOORD1.y);
    int _762 = 36 + int(TEXCOORD0.y);
    vec2 _774 = vec2(dot(_500, CB2[_749 * 1 + 0].xyz), dot(_500, CB2[(18 + _749) * 1 + 0].xyz)) * CB2[_762 * 1 + 0].x;
    float _780 = ((TEXCOORD0.w * 0.0078125) - 1.0) * CB2[_762 * 1 + 0].z;
    int _820 = int(TEXCOORD1.z);
    int _833 = 36 + int(TEXCOORD0.z);
    vec2 _845 = vec2(dot(_500, CB2[_820 * 1 + 0].xyz), dot(_500, CB2[(18 + _820) * 1 + 0].xyz)) * CB2[_833 * 1 + 0].x;
    float _851 = ((TEXCOORD1.w * 0.0078125) - 1.0) * CB2[_833 * 1 + 0].z;
    bvec3 _598 = equal(abs(POSITION.www), vec3(1.0, 2.0, 3.0));
    vec3 _599 = vec3(_598.x ? vec3(1.0).x : vec3(0.0).x, _598.y ? vec3(1.0).y : vec3(0.0).y, _598.z ? vec3(1.0).z : vec3(0.0).z);
    bvec3 _617 = greaterThan(TEXCOORD1.xyz, vec3(7.5));
    gl_Position = _967;
    VARYING0 = _599;
    VARYING1 = vec4(((_703 * sqrt(1.0 - (_709 * _709))) + (_703.yx * vec2(_709, -_709))) + (vec2(NORMAL.w, floor(NORMAL.w * 2.6651442050933837890625)) * CB2[_691 * 1 + 0].y), ((_774 * sqrt(1.0 - (_780 * _780))) + (_774.yx * vec2(_780, -_780))) + (vec2(TEXCOORD0.w, floor(TEXCOORD0.w * 2.6651442050933837890625)) * CB2[_762 * 1 + 0].y));
    VARYING2 = vec4(TEXCOORD0.x, 0.0, TEXCOORD0.y, 0.0);
    VARYING3 = vec4(((_845 * sqrt(1.0 - (_851 * _851))) + (_845.yx * vec2(_851, -_851))) + (vec2(TEXCOORD1.w, floor(TEXCOORD1.w * 2.6651442050933837890625)) * CB2[_833 * 1 + 0].y), TEXCOORD0.z, 0.0);
    VARYING4 = vec4(((_500 + (_506 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, (CB0[13].x * length(_530)) + CB0[13].y);
    VARYING5 = _500;
    VARYING6 = _506;
    VARYING7 = vec4(_530, _514.w);
    VARYING8 = vec3(_617.x ? vec3(1.0).x : vec3(0.0).x, _617.y ? vec3(1.0).y : vec3(0.0).y, _617.z ? vec3(1.0).z : vec3(0.0).z);
    VARYING9 = ((CB4[int(TEXCOORD0.x + 0.5) * 1 + 0] * _599.x) + (CB4[int(TEXCOORD0.y + 0.5) * 1 + 0] * _599.y)) + (CB4[int(TEXCOORD0.z + 0.5) * 1 + 0] * _599.z);
}

