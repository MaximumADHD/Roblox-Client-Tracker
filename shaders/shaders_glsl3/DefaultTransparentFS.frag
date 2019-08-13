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
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;

in vec4 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
out vec4 _entryPointOutput;

void main()
{
    vec4 _501 = texture(DiffuseMapTexture, VARYING0.xy) * VARYING2;
    vec3 _508 = _501.xyz;
    vec3 _585 = vec3(CB0[15].x);
    float _687 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _631 = VARYING3.yzx - (VARYING3.yzx * _687);
    vec4 _641 = vec4(clamp(_687, 0.0, 1.0));
    vec4 _642 = mix(texture(LightMapTexture, _631), vec4(0.0), _641);
    vec4 _647 = mix(texture(LightGridSkylightTexture, _631), vec4(1.0), _641);
    vec4 _697 = texture(ShadowMapTexture, VARYING6.xy);
    float _710 = (1.0 - ((step(_697.x, VARYING6.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING6.z - 0.5)), 0.0, 1.0)) * _697.y)) * _647.y;
    vec3 _538 = ((min(((_642.xyz * (_642.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _647.x), vec3(CB0[17].w)) + (VARYING5.xyz * _710)) * mix(_508, _508 * _508, _585).xyz) + (CB0[10].xyz * (VARYING5.w * _710));
    vec4 _834 = vec4(_538.x, _538.y, _538.z, vec4(0.0).w);
    _834.w = _501.w;
    vec3 _757 = mix(CB0[14].xyz, mix(_834.xyz, sqrt(clamp(_834.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _585).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(_757.x, _757.y, _757.z, _834.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
