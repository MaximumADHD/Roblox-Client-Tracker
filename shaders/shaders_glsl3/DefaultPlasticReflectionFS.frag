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
uniform sampler2D StudsMapTexture;
uniform samplerCube EnvironmentMapTexture;

in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
in float VARYING8;
out vec4 _entryPointOutput;

void main()
{
    vec2 _985 = VARYING1.xy;
    _985.y = (fract(VARYING1.y) + VARYING8) * 0.25;
    vec3 _622 = vec4(VARYING2.xyz * (texture(StudsMapTexture, _985).x * 2.0), VARYING2.w).xyz;
    vec3 _718 = vec3(CB0[15].x);
    float _820 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _764 = VARYING3.yzx - (VARYING3.yzx * _820);
    vec4 _774 = vec4(clamp(_820, 0.0, 1.0));
    vec4 _775 = mix(texture(LightMapTexture, _764), vec4(0.0), _774);
    vec4 _780 = mix(texture(LightGridSkylightTexture, _764), vec4(1.0), _774);
    vec4 _830 = texture(ShadowMapTexture, VARYING7.xy);
    float _843 = (1.0 - ((step(_830.x, VARYING7.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * _830.y)) * _780.y;
    vec3 _641 = texture(EnvironmentMapTexture, reflect(-VARYING4.xyz, VARYING5.xyz)).xyz;
    vec3 _671 = ((min(((_775.xyz * (_775.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _780.x), vec3(CB0[17].w)) + (VARYING6.xyz * _843)) * mix(mix(_622, _622 * _622, _718).xyz, mix(_641, (_641 * _641) * CB0[15].w, _718), vec3(VARYING7.w)).xyz) + (CB0[10].xyz * (VARYING6.w * _843));
    vec4 _999 = vec4(_671.x, _671.y, _671.z, vec4(0.0).w);
    _999.w = VARYING2.w;
    vec3 _910 = mix(CB0[14].xyz, mix(_999.xyz, sqrt(clamp(_999.xyz * CB0[15].z, vec3(0.0), vec3(1.0))), _718).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(_910.x, _910.y, _910.z, _999.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$StudsMapTexture=s0
//$$EnvironmentMapTexture=s2
