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
    vec3 _497 = (POSITION.xyz * CB1[0].w) + CB1[0].xyz;
    vec3 _503 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec4 _508 = vec4(_497, 1.0);
    vec4 _511 = _508 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _954 = _511;
    _954.z = _511.z - (float(POSITION.w < 0.0) * 0.00200000009499490261077880859375);
    vec3 _527 = CB0[7].xyz - _497;
    int _671 = int(TEXCOORD1.x);
    int _684 = 36 + int(TEXCOORD0.x);
    vec2 _696 = vec2(dot(_497, CB2[_671 * 1 + 0].xyz), dot(_497, CB2[(18 + _671) * 1 + 0].xyz)) * CB2[_684 * 1 + 0].x;
    float _702 = ((NORMAL.w * 0.0078125) - 1.0) * CB2[_684 * 1 + 0].z;
    int _742 = int(TEXCOORD1.y);
    int _755 = 36 + int(TEXCOORD0.y);
    vec2 _767 = vec2(dot(_497, CB2[_742 * 1 + 0].xyz), dot(_497, CB2[(18 + _742) * 1 + 0].xyz)) * CB2[_755 * 1 + 0].x;
    float _773 = ((TEXCOORD0.w * 0.0078125) - 1.0) * CB2[_755 * 1 + 0].z;
    int _813 = int(TEXCOORD1.z);
    int _826 = 36 + int(TEXCOORD0.z);
    vec2 _838 = vec2(dot(_497, CB2[_813 * 1 + 0].xyz), dot(_497, CB2[(18 + _813) * 1 + 0].xyz)) * CB2[_826 * 1 + 0].x;
    float _844 = ((TEXCOORD1.w * 0.0078125) - 1.0) * CB2[_826 * 1 + 0].z;
    bvec3 _596 = equal(abs(POSITION.www), vec3(1.0, 2.0, 3.0));
    bvec3 _615 = greaterThan(TEXCOORD1.xyz, vec3(7.5));
    gl_Position = _954;
    VARYING0 = vec3(_596.x ? vec3(1.0).x : vec3(0.0).x, _596.y ? vec3(1.0).y : vec3(0.0).y, _596.z ? vec3(1.0).z : vec3(0.0).z);
    VARYING1 = vec4(((_696 * sqrt(1.0 - (_702 * _702))) + (_696.yx * vec2(_702, -_702))) + (vec2(NORMAL.w, floor(NORMAL.w * 2.6651442050933837890625)) * CB2[_684 * 1 + 0].y), ((_767 * sqrt(1.0 - (_773 * _773))) + (_767.yx * vec2(_773, -_773))) + (vec2(TEXCOORD0.w, floor(TEXCOORD0.w * 2.6651442050933837890625)) * CB2[_755 * 1 + 0].y));
    VARYING2 = vec4(TEXCOORD0.x, 0.0, TEXCOORD0.y, 0.0);
    VARYING3 = vec4(((_838 * sqrt(1.0 - (_844 * _844))) + (_838.yx * vec2(_844, -_844))) + (vec2(TEXCOORD1.w, floor(TEXCOORD1.w * 2.6651442050933837890625)) * CB2[_826 * 1 + 0].y), TEXCOORD0.z, 0.0);
    VARYING4 = vec4(((_497 + (_503 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, (CB0[13].x * length(_527)) + CB0[13].y);
    VARYING5 = vec3(dot(CB0[21], _508), dot(CB0[22], _508), dot(CB0[23], _508));
    VARYING6 = _503;
    VARYING7 = vec4(_527, _511.w);
    VARYING8 = vec3(_615.x ? vec3(1.0).x : vec3(0.0).x, _615.y ? vec3(1.0).y : vec3(0.0).y, _615.z ? vec3(1.0).z : vec3(0.0).z);
    VARYING9 = vec4(TEXCOORD0.xyz, 0.0);
}

