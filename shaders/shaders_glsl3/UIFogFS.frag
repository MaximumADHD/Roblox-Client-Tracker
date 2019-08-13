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
uniform vec4 CB2[1];
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING1;
in vec3 VARYING2;
out vec4 _entryPointOutput;

void main()
{
    vec4 _199 = texture(DiffuseMapTexture, VARYING0);
    vec4 _205 = vec4(1.0, 1.0, 1.0, _199.x);
    bvec4 _207 = bvec4(CB2[0].y > 0.5);
    vec4 _212 = VARYING1 * vec4(_207.x ? _205.x : _199.x, _207.y ? _205.y : _199.y, _207.z ? _205.z : _199.z, _207.w ? _205.w : _199.w);
    vec3 _214 = _212.xyz;
    vec3 _274 = mix(CB0[14].xyz, mix(_214, sqrt(clamp((_214 * _214) * CB0[15].z, vec3(0.0), vec3(1.0))), vec3(CB0[15].x)).xyz, vec3(clamp((CB0[13].x * length(VARYING2)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(_274.x, _274.y, _274.z, _212.w);
}

//$$DiffuseMapTexture=s0
