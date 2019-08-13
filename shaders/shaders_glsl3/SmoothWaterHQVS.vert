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

struct Params
{
    vec4 WaveParams;
    vec4 WaterColor;
    vec4 WaterParams;
};

uniform vec4 CB0[32];
uniform vec4 CB3[3];
uniform vec4 CB2[74];
uniform vec4 CB1[1];
in vec4 POSITION;
in vec4 NORMAL;
in vec4 TEXCOORD0;
in vec4 TEXCOORD1;
out vec4 VARYING0;
out vec3 VARYING1;
out vec2 VARYING2;
out vec2 VARYING3;
out vec2 VARYING4;
out vec4 VARYING5;
out vec3 VARYING6;
out vec4 VARYING7;
out vec4 VARYING8;

void main()
{
    vec3 _500 = (POSITION.xyz * CB1[0].w) + CB1[0].xyz;
    vec3 _506 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    bvec3 _511 = equal(abs(POSITION.www), vec3(1.0, 2.0, 3.0));
    vec3 _512 = vec3(_511.x ? vec3(1.0).x : vec3(0.0).x, _511.y ? vec3(1.0).y : vec3(0.0).y, _511.z ? vec3(1.0).z : vec3(0.0).z);
    float _518 = dot(_512, TEXCOORD0.xyz) * 0.0039215688593685626983642578125;
    float _637 = _500.z;
    float _639 = _500.x;
    float _672 = _500.y + (((sin(((_637 - _639) * CB3[0].x) - CB3[0].y) + sin(((_637 + _639) * CB3[0].x) + CB3[0].y)) * CB3[0].z) * (_518 * clamp(1.0 - (dot(_500 - CB0[7].xyz, -CB0[6].xyz) * CB0[24].y), 0.0, 1.0)));
    vec3 _877 = _500;
    _877.y = _672;
    vec4 _545 = vec4(_639, _672, _637, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _881 = _545;
    _881.z = _545.z - (float(POSITION.w < 0.0) * 0.00200000009499490261077880859375);
    vec3 _561 = CB0[7].xyz - _877;
    int _696 = int(TEXCOORD1.x);
    int _729 = int(TEXCOORD1.y);
    int _762 = int(TEXCOORD1.z);
    vec4 _889 = vec4(_512.x, _512.y, _512.z, vec4(0.0).w);
    _889.w = _518;
    float _611 = _545.w;
    bvec3 _620 = greaterThan(TEXCOORD1.xyz, vec3(7.5));
    vec2 _798 = (_881.xy * 0.5) + vec2(0.5 * _611);
    gl_Position = _881;
    VARYING0 = _889;
    VARYING1 = vec3(_620.x ? vec3(1.0).x : vec3(0.0).x, _620.y ? vec3(1.0).y : vec3(0.0).y, _620.z ? vec3(1.0).z : vec3(0.0).z);
    VARYING2 = (vec2(dot(_877, CB2[_696 * 1 + 0].xyz), dot(_877, CB2[(18 + _696) * 1 + 0].xyz)) * 0.0500000007450580596923828125) + (vec2(NORMAL.w, floor(NORMAL.w * 2.6651442050933837890625)) * 0.100000001490116119384765625);
    VARYING3 = (vec2(dot(_877, CB2[_729 * 1 + 0].xyz), dot(_877, CB2[(18 + _729) * 1 + 0].xyz)) * 0.0500000007450580596923828125) + (vec2(TEXCOORD0.w, floor(TEXCOORD0.w * 2.6651442050933837890625)) * 0.100000001490116119384765625);
    VARYING4 = (vec2(dot(_877, CB2[_762 * 1 + 0].xyz), dot(_877, CB2[(18 + _762) * 1 + 0].xyz)) * 0.0500000007450580596923828125) + (vec2(TEXCOORD1.w, floor(TEXCOORD1.w * 2.6651442050933837890625)) * 0.100000001490116119384765625);
    VARYING5 = vec4(((_877 + (_506 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, (CB0[13].x * length(_561)) + CB0[13].y);
    VARYING6 = _506;
    VARYING7 = vec4(_561, _611);
    VARYING8 = vec4(_798.x, _798.y, _881.z, _881.w);
}

