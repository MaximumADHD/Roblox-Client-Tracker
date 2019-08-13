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

void main()
{
    vec3 _525 = (POSITION.xyz * CB1[0].w) + CB1[0].xyz;
    vec3 _531 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec4 _536 = vec4(_525, 1.0);
    vec4 _539 = _536 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _1004 = _539;
    _1004.z = _539.z - (float(POSITION.w < 0.0) * 0.00200000009499490261077880859375);
    int _724 = int(TEXCOORD1.x);
    int _737 = 36 + int(TEXCOORD0.x);
    vec2 _749 = vec2(dot(_525, CB2[_724 * 1 + 0].xyz), dot(_525, CB2[(18 + _724) * 1 + 0].xyz)) * CB2[_737 * 1 + 0].x;
    float _755 = ((NORMAL.w * 0.0078125) - 1.0) * CB2[_737 * 1 + 0].z;
    int _795 = int(TEXCOORD1.y);
    int _808 = 36 + int(TEXCOORD0.y);
    vec2 _820 = vec2(dot(_525, CB2[_795 * 1 + 0].xyz), dot(_525, CB2[(18 + _795) * 1 + 0].xyz)) * CB2[_808 * 1 + 0].x;
    float _826 = ((TEXCOORD0.w * 0.0078125) - 1.0) * CB2[_808 * 1 + 0].z;
    int _866 = int(TEXCOORD1.z);
    int _879 = 36 + int(TEXCOORD0.z);
    vec2 _891 = vec2(dot(_525, CB2[_866 * 1 + 0].xyz), dot(_525, CB2[(18 + _866) * 1 + 0].xyz)) * CB2[_879 * 1 + 0].x;
    float _897 = ((TEXCOORD1.w * 0.0078125) - 1.0) * CB2[_879 * 1 + 0].z;
    bvec3 _624 = equal(abs(POSITION.www), vec3(1.0, 2.0, 3.0));
    vec3 _625 = vec3(_624.x ? vec3(1.0).x : vec3(0.0).x, _624.y ? vec3(1.0).y : vec3(0.0).y, _624.z ? vec3(1.0).z : vec3(0.0).z);
    float _631 = dot(_531, -CB0[11].xyz);
    gl_Position = _1004;
    VARYING0 = _625;
    VARYING1 = vec4(((_749 * sqrt(1.0 - (_755 * _755))) + (_749.yx * vec2(_755, -_755))) + (vec2(NORMAL.w, floor(NORMAL.w * 2.6651442050933837890625)) * CB2[_737 * 1 + 0].y), ((_820 * sqrt(1.0 - (_826 * _826))) + (_820.yx * vec2(_826, -_826))) + (vec2(TEXCOORD0.w, floor(TEXCOORD0.w * 2.6651442050933837890625)) * CB2[_808 * 1 + 0].y));
    VARYING2 = vec4(TEXCOORD0.x, 0.0, TEXCOORD0.y, 0.0);
    VARYING3 = vec4(((_891 * sqrt(1.0 - (_897 * _897))) + (_891.yx * vec2(_897, -_897))) + (vec2(TEXCOORD1.w, floor(TEXCOORD1.w * 2.6651442050933837890625)) * CB2[_879 * 1 + 0].y), TEXCOORD0.z, 0.0);
    VARYING4 = vec4(((_525 + (_531 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, (CB0[13].x * length(CB0[7].xyz - _525)) + CB0[13].y);
    VARYING5 = vec3(dot(CB0[21], _536), dot(CB0[22], _536), dot(CB0[23], _536));
    VARYING6 = (CB0[10].xyz * max(_631, 0.0)) + (CB0[12].xyz * max(-_631, 0.0));
    VARYING7 = ((CB4[int(TEXCOORD0.x + 0.5) * 1 + 0] * _625.x) + (CB4[int(TEXCOORD0.y + 0.5) * 1 + 0] * _625.y)) + (CB4[int(TEXCOORD0.z + 0.5) * 1 + 0] * _625.z);
}

