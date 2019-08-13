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
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;

in vec4 VARYING1;
in vec3 VARYING2;
in vec4 VARYING3;
in vec3 VARYING4;
out vec4 _entryPointOutput;

void main()
{
    float _452 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _396 = VARYING3.yzx - (VARYING3.yzx * _452);
    vec4 _406 = vec4(clamp(_452, 0.0, 1.0));
    vec4 _407 = mix(texture(LightMapTexture, _396), vec4(0.0), _406);
    vec3 _460 = vec3(CB0[15].x);
    vec3 _342 = (min(((_407.xyz * (_407.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * mix(texture(LightGridSkylightTexture, _396), vec4(1.0), _406).x), vec3(CB0[17].w)) + VARYING2) * mix(VARYING1.xyz, VARYING1.xyz * VARYING1.xyz, _460);
    vec4 _546 = vec4(_342.x, _342.y, _342.z, vec4(0.0).w);
    _546.w = VARYING1.w;
    vec3 _500 = mix(CB0[14].xyz, mix(_546.xyz, sqrt(clamp(_546.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _460).xyz, vec3(clamp((CB0[13].x * length(VARYING4)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(_500.x, _500.y, _500.z, _546.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
