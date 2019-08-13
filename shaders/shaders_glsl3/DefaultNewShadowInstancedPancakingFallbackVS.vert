#version 150

const vec3 _94[16] = vec3[](vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0));
const vec3 _109[16] = vec3[](vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.0, 0.699999988079071044921875, 0.699999988079071044921875), vec3(0.699999988079071044921875, 0.699999988079071044921875, 0.0), vec3(0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, 1.0), vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 1.0), vec3(0.0, 0.0, -1.0), vec3(0.0, 0.0, 1.0));

struct Instance
{
    vec4 row0;
    vec4 row1;
    vec4 row2;
    vec4 scale;
    vec4 color;
    vec4 uvScale;
    vec4 uvOffset;
};

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

uniform vec4 CB1[511];
uniform vec4 CB0[32];
in vec4 POSITION;
in vec4 NORMAL;
in vec2 TEXCOORD0;
out vec3 VARYING0;
out vec2 VARYING1;

void main()
{
    int _273 = int(NORMAL.x);
    vec3 _280 = POSITION.xyz * CB1[gl_InstanceID * 7 + 3].xyz;
    vec4 _282 = vec4(_280.x, _280.y, _280.z, POSITION.w);
    vec2 _378 = vec2(0.0);
    _378.x = dot(CB1[gl_InstanceID * 7 + 5].xyz, _94[_273]);
    vec2 _380 = _378;
    _380.y = dot(CB1[gl_InstanceID * 7 + 5].xyz, _109[_273]);
    vec2 _310 = TEXCOORD0 * _380;
    vec4 _328 = vec4(dot(CB1[gl_InstanceID * 7 + 0], _282), dot(CB1[gl_InstanceID * 7 + 1], _282), dot(CB1[gl_InstanceID * 7 + 2], _282), 1.0) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _386 = _328;
    _386.z = 0.5;
    vec3 _388 = vec3(_310.x, _310.y, vec3(0.0).z);
    _388.z = CB1[gl_InstanceID * 7 + 4].w * mix(NORMAL.w * 0.0039215688593685626983642578125, 1.0, CB1[gl_InstanceID * 7 + 3].w);
    gl_Position = _386;
    VARYING0 = _388;
    VARYING1 = vec2(_328.zw);
}

