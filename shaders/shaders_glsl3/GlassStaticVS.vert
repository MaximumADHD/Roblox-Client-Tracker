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
    vec3 _527 = (NORMAL.xyz * 0.0078740157186985015869140625) - vec3(1.0);
    vec3 _559 = -CB0[11].xyz;
    float _560 = dot(_527, _559);
    vec3 _567 = CB0[7].xyz - POSITION.xyz;
    vec4 _588 = vec4(POSITION.xyz, 1.0);
    vec4 _591 = _588 * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _596 = vec4(TEXCOORD0, 0.0, 0.0);
    vec4 _601 = vec4(TEXCOORD1, 0.0, 0.0);
    float _627 = _591.w;
    vec4 _631 = vec4(_567, _627);
    vec4 _644 = ((exp2(TEXCOORD3 * 0.0625) - vec4(1.0)) * CB0[24].z) + vec4((0.5 * _627) * CB0[24].y);
    float _664 = COLOR0.w * 2.0;
    float _666 = clamp(_664 - 1.0, 0.0, 1.0);
    float _670 = clamp(_664, 0.0, 1.0);
    float _688 = (clamp(2.0 - (dot(_527, normalize(_631.xyz)) * 3.0), 0.0, 1.0) * 0.300000011920928955078125) * _670;
    vec4 _859 = COLOR0;
    _859.w = mix(_666, 1.0, _688);
    vec4 _861 = vec4(dot(CB0[21], _588), dot(CB0[22], _588), dot(CB0[23], _588), 0.0);
    _861.w = mix((COLOR1.w * 0.0039215688593685626983642578125) * _666, 1.0, _688);
    gl_Position = _591;
    VARYING0 = vec4(_596.x, _596.y, _644.x, _644.y);
    VARYING1 = vec4(_601.x, _601.y, _644.z, _644.w);
    VARYING2 = _859;
    VARYING3 = vec4(((POSITION.xyz + (_527 * 6.0)).yxz * CB0[17].xyz) + CB0[18].xyz, 0.0);
    VARYING4 = _631;
    VARYING5 = vec4(_527, COLOR1.z);
    VARYING6 = vec4((CB0[10].xyz * max(_560, 0.0)) + (CB0[12].xyz * max(-_560, 0.0)), (((float(_560 > 0.0) * pow(clamp(dot(_527, normalize(_559 + normalize(_567))), 0.0, 1.0), COLOR1.z)) * _670) * (COLOR1.y * 0.0039215688593685626983642578125)) * CB0[24].w);
    VARYING7 = _861;
    VARYING8 = NORMAL.w;
}

