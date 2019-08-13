#version 150

struct EmitterParams
{
    vec4 ModulateColor;
    vec4 Params;
    vec4 AtlasParams;
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

uniform vec4 CB1[3];
uniform vec4 CB0[32];
in vec4 POSITION;
in vec4 TEXCOORD0;
in vec2 TEXCOORD1;
in vec4 TEXCOORD2;
in vec2 TEXCOORD3;
out vec3 VARYING0;
out vec4 VARYING1;
out vec2 VARYING2;
out vec4 VARYING3;

void main()
{
    vec2 _347 = (TEXCOORD1 * 2.0) - vec2(1.0);
    vec4 _350 = TEXCOORD0 * vec4(0.00390625, 0.00390625, 0.00019175345369148999452590942382813, 3.0518509447574615478515625e-05);
    vec2 _354 = _350.xy + vec2(127.0);
    float _451 = _350.z;
    float _452 = cos(_451);
    float _455 = sin(_451);
    float _458 = _354.x;
    vec4 _575 = vec4(0.0);
    _575.x = _452 * _458;
    vec4 _578 = _575;
    _578.y = (-_455) * _458;
    float _469 = _354.y;
    vec4 _581 = _578;
    _581.z = _455 * _469;
    vec4 _584 = _581;
    _584.w = _452 * _469;
    vec4 _376 = (vec4(POSITION.xyz, 1.0) + (CB0[4] * dot(_347, _584.xy))) + (CB0[5] * dot(_347, _584.zw));
    mat4 _386 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 _387 = _376 * _386;
    vec3 _587 = vec3(TEXCOORD1.x, TEXCOORD1.y, vec3(0.0).z);
    _587.y = 1.0 - TEXCOORD1.y;
    vec3 _589 = _587;
    _589.z = (CB0[13].x * length(CB0[7].xyz - POSITION.xyz)) + CB0[13].y;
    vec4 _415 = (_376 + (CB0[6] * CB1[1].x)) * _386;
    float _419 = _387.w;
    vec4 _594 = _387;
    _594.z = (_415.z * _419) / _415.w;
    vec2 _492 = (vec2(0.5) * (_594.xy / vec2(_419)).xy) + vec2(0.5);
    vec3 _598 = vec3(_492.x, _492.y, vec3(0.0).z);
    _598.z = min(_419 - CB1[1].x, 495.0);
    vec4 _601 = vec4(_598.x, _598.y, _598.z, vec4(0.0).w);
    _601.w = 1.0 / _458;
    vec2 _517 = (TEXCOORD3 + ((TEXCOORD1 * (CB1[2].z - 1.0)) + vec2(0.5))) * CB1[2].xy;
    vec2 _604 = _517;
    _604.y = 1.0 - _517.y;
    gl_Position = _594;
    VARYING0 = _589;
    VARYING1 = TEXCOORD2 * 0.0039215688593685626983642578125;
    VARYING2 = _604;
    VARYING3 = _601;
}

