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
in vec4 POSITION;
in vec4 NORMAL;
in vec2 TEXCOORD0;
in vec2 TEXCOORD1;
in vec4 COLOR0;
in vec4 COLOR1;
in vec4 TEXCOORD2;
in vec4 TEXCOORD3;
out vec4 VARYING0;
out vec4 VARYING1;
out vec4 VARYING2;
out vec4 VARYING3;
out vec4 VARYING4;
out vec4 VARYING5;
out vec4 VARYING6;
out vec4 VARYING7;
out float VARYING8;

void main()
{
    vec3 _406 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec3 _418 = (TEXCOORD2.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec4 _660 = vec4(0.0);
    _660.w = (TEXCOORD2.w * 0.0078740157186985015869140625) - 1.0;
    vec4 _458 = vec4(POSITION.xyz, 1.0);
    vec4 _461 = _458 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _466 = vec4(TEXCOORD0, 0.0, 0.0);
    vec4 _471 = vec4(TEXCOORD1, 0.0, 0.0);
    float _497 = _461.w;
    vec4 _514 = ((exp2(TEXCOORD3 * 0.0625) - vec4(1.0)) * CB0[24].z) + vec4((0.5 * _497) * CB0[24].y);
    vec4 _666 = vec4(dot(CB0[21], _458), dot(CB0[22], _458), dot(CB0[23], _458), 0.0);
    _666.w = COLOR1.w * 0.0039215688593685626983642578125;
    gl_Position = _461;
    VARYING0 = vec4(_466.x, _466.y, _514.x, _514.y);
    VARYING1 = vec4(_471.x, _471.y, _514.z, _514.w);
    VARYING2 = COLOR0;
    VARYING3 = vec4(((POSITION.xyz + (_406 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, 0.0);
    VARYING4 = vec4(CB0[7].xyz - POSITION.xyz, _497);
    VARYING5 = vec4(_406, COLOR1.z);
    VARYING6 = vec4(_418.x, _418.y, _418.z, _660.w);
    VARYING7 = _666;
    VARYING8 = NORMAL.w;
}

