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
out vec4 VARYING0;
out vec3 VARYING1;
out vec2 VARYING2;
out vec2 VARYING3;
out vec2 VARYING4;
out vec4 VARYING5;
out vec3 VARYING6;
out vec4 VARYING7;

void main()
{
    vec3 _386 = (POSITION.xyz * CB1[0].w) + CB1[0].xyz;
    vec3 _392 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    bvec3 _397 = equal(abs(POSITION.www), vec3(1.0, 2.0, 3.0));
    vec3 _398 = vec3(_397.x ? vec3(1.0).x : vec3(0.0).x, _397.y ? vec3(1.0).y : vec3(0.0).y, _397.z ? vec3(1.0).z : vec3(0.0).z);
    vec4 _412 = vec4(_386, 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _674 = _412;
    _674.z = _412.z - (float(POSITION.w < 0.0) * 0.00200000009499490261077880859375);
    vec3 _428 = CB0[7].xyz - _386;
    int _512 = int(TEXCOORD1.x);
    int _545 = int(TEXCOORD1.y);
    int _578 = int(TEXCOORD1.z);
    vec4 _682 = vec4(_398.x, _398.y, _398.z, vec4(0.0).w);
    _682.w = dot(_398, TEXCOORD0.xyz) * 0.0039215688593685626983642578125;
    bvec3 _487 = greaterThan(TEXCOORD1.xyz, vec3(7.5));
    gl_Position = _674;
    VARYING0 = _682;
    VARYING1 = vec3(_487.x ? vec3(1.0).x : vec3(0.0).x, _487.y ? vec3(1.0).y : vec3(0.0).y, _487.z ? vec3(1.0).z : vec3(0.0).z);
    VARYING2 = (vec2(dot(_386, CB2[_512 * 1 + 0].xyz), dot(_386, CB2[(18 + _512) * 1 + 0].xyz)) * 0.0500000007450580596923828125) + (vec2(NORMAL.w, floor(NORMAL.w * 2.6651442050933837890625)) * 0.100000001490116119384765625);
    VARYING3 = (vec2(dot(_386, CB2[_545 * 1 + 0].xyz), dot(_386, CB2[(18 + _545) * 1 + 0].xyz)) * 0.0500000007450580596923828125) + (vec2(TEXCOORD0.w, floor(TEXCOORD0.w * 2.6651442050933837890625)) * 0.100000001490116119384765625);
    VARYING4 = (vec2(dot(_386, CB2[_578 * 1 + 0].xyz), dot(_386, CB2[(18 + _578) * 1 + 0].xyz)) * 0.0500000007450580596923828125) + (vec2(TEXCOORD1.w, floor(TEXCOORD1.w * 2.6651442050933837890625)) * 0.100000001490116119384765625);
    VARYING5 = vec4(((_386 + (_392 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, (CB0[13].x * length(_428)) + CB0[13].y);
    VARYING6 = _392;
    VARYING7 = vec4(_428, _412.w);
}

